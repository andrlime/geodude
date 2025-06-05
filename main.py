import os

from geodude.core.config import AppConfig
from geodude.compiler.emit_typst import dump_typst
from geodude.prompter.job_role_prompter import JobRolePrompter

if __name__ == "__main__":
    dump_typst(
        JobRolePrompter().process_all_templates(),
        f"andrew_li__{AppConfig().get_cli_variable("role")}__resume.typ"
    )
