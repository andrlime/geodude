import os

from geodude.prompter.job_role_prompter import JobRolePrompter
from geodude.compiler.emit_typst import dump_typst

if __name__ == "__main__":
    dump_typst(JobRolePrompter().process_all_templates())
