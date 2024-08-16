
import requests

def test_server_response():
    response = requests.get("http://34.136.212.112/")
    assert response.status_code == 200
    assert "<h1>Hey Amir\nIt works!</h1>" in response.text
