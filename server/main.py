import requests

url = 'http://localhost:8080/upload'
files = {'file': open('../server/Dockerfile', 'rb')}
response = requests.post(url, files=files)

print(response.text)