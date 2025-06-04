"""
CLI class that reads specific arguments for use by LLM resume generator
"""

from typing import AnyStr

import argparse
import os
import sys
import pathlib

from geodude.core.exceptions import CLIValueError, PathError


def argv() -> list[str]:
    return sys.argv[1:]

class AppCLI:
    """
    Singleton CLI class to read arguments from an array of strings
    """

    def __new__(cls) -> "AppCLI":
        if not hasattr(cls, "instance"):
            cls.instance = super(AppCLI, cls).__new__(cls)
        return cls.instance

    def __init__(self) -> None:
        if hasattr(self, "args"):
            return

        arguments = argv()

        parser = argparse.ArgumentParser(
            prog="geodude",
            description="""
Employs a large language model to systematically tailor resumes for specific job descriptions and industries
            """,
        )

        parser.add_argument(
            "-r",
            "--role",
            help="Target role system prompt to use. Must be in config.yml:system_prompt_folder with .md extension",
            type=str,
            required=True,
        )
        parser.add_argument(
            "-c",
            "--config",
            help="Path to config.yml or config.yaml file",
            type=pathlib.Path,
            required=True,
        )
        parser.add_argument(
            "-d",
            "--job-description",
            help="Job description to optimise for",
            type=pathlib.Path,
            required=False,
        )

        self.args = parser.parse_args(arguments)
        self.lint()

    def lint(self) -> None:
        arguments = self.args

        if not os.path.isfile(arguments.config):
            raise PathError(
                f"Invalid config file {arguments.config}"
            )
        
        if self.args.job_description is not None:
            if not os.path.isfile(arguments.job_description):
                raise PathError(
                    f"Invalid job description file {arguments.job_description}"
                )

    def get_parameters(self) -> dict[str, str]:
        return vars(self.args)

    def get_parameter_by_key(self, key: AnyStr) -> str:
        try:
            key_str = str(key)
            return str(vars(self.args)[key_str])
        except ValueError as e:
            raise CLIValueError(f"CLI does not contain key {str(key)}") from e

    def get_path_by_key(self, key: AnyStr) -> str:
        path = self.get_parameter_by_key(key)
        return os.path.abspath(path)
