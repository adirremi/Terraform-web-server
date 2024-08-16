import subprocess
import requests
import time

def test_apache_installation():
    # הרץ את הסקריפט install.sh
    subprocess.run(["bash", "install.sh"], check=True)

    # המתן מספר שניות כדי שהשירותים יעלו
    time.sleep(10)

    # בדוק אם Apache פועל והדף נכון
    response = requests.get("http://34.136.212.112/")
    assert response.status_code == 200
    assert "<h1>Hey Amir\nIt works!</h1>" in response.text
