import app

def test_health():
    with app.app.test_client() as client:
        response = client.get('/health')
        assert response.status_code == 200
        assert response.data == b'OK'
