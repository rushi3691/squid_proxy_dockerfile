# FILEPATH: /home/rushikesh/Documents/projects/squid_proxy/test.py
import requests
from requests.auth import HTTPProxyAuth

proxy = "http://127.0.0.1:3128"
auth = HTTPProxyAuth('test', 'test')
proxies = {
    'http': proxy,
    'https': proxy
}

response = requests.get('https://medium.com', proxies=proxies, auth=auth)
print(response.text)
