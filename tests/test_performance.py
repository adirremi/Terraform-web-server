import requests
import time

def test_server_performance():
    start_time = time.time()
    
    # שלח מספר בקשות לשרת
    for _ in range(100):
        response = requests.get("http://34.136.212.112/")
        assert response.status_code == 200
    
    end_time = time.time()
    duration = end_time - start_time
    print(f"Performance test duration: {duration} seconds")
    assert duration < 60  # דאג שהבדיקה תעבור בזמן סביר
