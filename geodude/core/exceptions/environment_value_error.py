"""
Error class for when a env variable has an error
"""

from geodude.core.exceptions.value_error_wrapper import ValueErrorWrapper


class EnvironmentValueError(ValueErrorWrapper):
    pass
