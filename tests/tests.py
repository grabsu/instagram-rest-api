from fastapi.testclient import TestClient
from app.main import app


def test_media_pk_from_code() -> None:
    with TestClient(app) as client:
        response = client.get(
            app.url_path_for("media_pk_from_code"),
            params={"code": "B1LbfVPlwIA"}
        )
    assert response.status_code == 200
    assert response.text == "\"2110901750722920960\""


def test_version() -> None:
    with TestClient(app) as client:
        response = client.get(
            app.url_path_for("version"),
        )
    data = response.json()
    assert response.status_code == 200
    assert data["instagrapi"] == "2.1.3"
