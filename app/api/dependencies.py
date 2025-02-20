from typing import Generator

from app.clients.storages import ClientStorage


def get_clients() -> Generator:
    try:
        clients = ClientStorage()
        yield clients
    finally:
        clients.close()
