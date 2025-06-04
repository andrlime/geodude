"""
A class to prompt the OpenAI REST API
"""

from openai import OpenAI

from geodude.core.config import AppConfig
from geodude.core.file_reader import read_file


class LLMPrompter:
    """
    Prompts the LLM using the given previous prompt (which can be None)
    """

    def __init__(self, model: str = "gpt-4.1"):
        api = AppConfig().get_environment_variable("OPENAI_API_KEY")
        self.model = model
        self.client = OpenAI(api_key=api)
    
    def set_system_prompt(self, new_prompt: str) -> None:
        self.system_prompt = new_prompt

    def read_system_prompt(self, path: str) -> None:
        self.system_prompt = read_file(path)

    def generate(self, content: str) -> str:
        if not hasattr(self, "system_prompt"):
            raise ValueError("You must set the system prompt before calling prompt()")
        
        return self.prompt(self.system_prompt, content)

    def prompt(self, system_prompt: str, content: str) -> str:
        """
        Prompts the LLM and returns the response
        """
        chat_response = self.client.chat.completions.create(
            messages=[
                {"role": "system", "content": system_prompt},
                {"role": "user", "content": content},
            ],
            model=self.model,
        )

        if not chat_response.choices[0].message.content:
            return ""

        return chat_response.choices[0].message.content
