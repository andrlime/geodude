"""
A wrapper of the OpenAI API class that prompts for jobs
"""

import os

from openai import OpenAI

from geodude.core.config import AppConfig
from geodude.core.file_reader import read_file
from geodude.core.yml_reader import read_yaml_file
from geodude.prompter.llm_prompter import LLMPrompter


class JobRolePrompter:
    """
    Prompts the LLM using the given previous prompt (which can be None)
    """

    def __init__(self, model: str = "gpt-4.1"):
        self.engine = LLMPrompter(model)
        
        target_role = AppConfig().get_cli_variable("role")
        system_prompt_folder = AppConfig().get_config_variable("system_prompt_folder")
        path_to_system_prompt = f"{system_prompt_folder}/{target_role}.md"

        if not os.path.isfile(path_to_system_prompt):
            raise ValueError(f"Could not find system prompt for role {target_role}")

        self.engine.read_system_prompt(path_to_system_prompt)
        self.templates = AppConfig().get_config_variable("templates")
        self.job_description = AppConfig().get_cli_variable("job_description")
    
    def get_path(self, folder, file) -> str:
        return os.path.join("", folder, file)

    def process_wrapper(self, template) -> str:
        template_name = template.get("name", None)
        template_folder = template.get("folder", None)
        files = os.listdir(template_folder)
        prompt = read_file(self.get_path(template_folder, template.get("prompt", None)))

        processed_inside = ""
        for f in files:
            if not f.endswith(".yml") and not f.endswith(".yaml"):
                continue
            if "template" in f:
                continue

            inside = read_file(self.get_path(template_folder, f))
            
            content_prompt = prompt + "\n\n\n# User Input\n" + inside + "\n\nPlease generate the output Typst code."
            if self.job_description is not None:
                content_prompt += "\n\n## Job Description\nOptimise for this job:\n" + read_file(self.job_description)
            processed_inside += self.engine.generate(content_prompt + "\n\n")

        return processed_inside
    
    def process_template(self, template) -> str:
        """
        Example input
            {'name': 'Education', 'folder': './data/education', 'prompt': 'prompt.md'}
        means a Typst section headered Education, with data in that folder, with that system prompt
        """

        template_name = template.get("name", None)
        output = f"#section(\"{template_name}\")\n"
        return output + self.process_wrapper(template) + "\n\n"
    
    def process_all_templates(self) -> str:
        output = ""
        for template in self.templates:
            output += self.process_template(template) + "\n"
        return output
