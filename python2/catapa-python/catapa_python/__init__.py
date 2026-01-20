"""CATAPA Python SDK.

Main package for the CATAPA Python client library.

This package provides access to all CATAPA APIs with automatic OAuth2 authentication.

Authors:
    Handrian Alandi (handrian.alandi@gdplabs.id)

References:
    NONE
"""

# Re-export main components from catapa for easier imports
from catapa import (
    __all__ as _client_all,
)
from catapa import (
    __version__ as _client_version,
)

__version__ = _client_version
__all__ = ["_client_all"]
