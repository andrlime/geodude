"""
App config singleton class
"""

import os

from typing import Any

from dotenv import load_dotenv
from yaml import load, Loader

from geodude.core.yml_reader import read_yaml_file
from geodude.core.cli import AppCLI
from geodude.core.exceptions import ConfigValueError, CLIValueError, EnvironmentValueError


class AppConfig(object):
    """
    Singleton AppConfig class to read config from .env and config.yml and
    return a single dictionary with those values
    """

    def __new__(cls) -> "AppConfig":
        if not hasattr(cls, "instance"):
            cls.instance = super(AppConfig, cls).__new__(cls)
        return cls.instance

    def __init__(self) -> None:
        if hasattr(self, "config"):
            return

        cli_instance = AppCLI()
        load_dotenv()

        yml_config = read_yaml_file(cli_instance.get_parameter_by_key("config"))

        self.config = {
            "config": yml_config,
            "env": os.environ,
            "cli": cli_instance.get_parameters()
        }

    def get_config_variable(self, key: str) -> Any:
        try:
            config = self.config.get("config")
            if config is None:
                raise ConfigValueError("Config environment doesn't exist")
            value_of_key = config.get(key, False)
            if not value_of_key:
                raise ConfigValueError(f"Key {key} missing in config")
            return config.get(key)
        except ValueError as e:
            raise ConfigValueError("Config value not found") from e

    def get_cli_variable(self, key: str) -> Any:
        try:
            cli_instance = self.config.get("cli")
            if cli_instance is None:
                raise CLIValueError("CLI environment doesn't exist")
            return cli_instance.get(key, None)
        except ValueError as e:
            raise CLIValueError("CLI value not found") from e

    def get_environment_variable(self, key: str) -> Any:
        try:
            environ = self.config.get("env")
            if environ is None:
                raise EnvironmentValueError("ENV environment doesn't exist")
            value_of_key = environ.get(key, False)
            if not value_of_key:
                raise EnvironmentValueError(f"Key {key} missing in ENV")
            return environ.get(key)
        except ValueError as e:
            raise EnvironmentValueError("Environment variable not found") from e

    def read_yaml_config_file(self, path: str) -> Any:
        """
        Read config from the config.yml file
        """

        stream = open(path, "r", encoding="utf-8")
        content = load(stream, Loader)
        stream.close()

        return content
    
    def __str__(self) -> str:
        return str(self.config)
