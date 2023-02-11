use std::io::{self, Write};
use std::sync::mpsc::channel;
use std::thread;
use reqwest::Client;

fn main() -> Result<(), reqwest::Error> {
	while True:
		let url = "https://www.google.com/";
		let n_threads = 7777777;

		let (tx, rx) = channel();
		for _ in 0..n_threads {
			let tx = tx.clone();
			let client = Client::new();

			thread::spawn(move || {
				let res = client.get(url).send();
				match res {
					Ok(res) => {
						if res.status().is_success() {
							tx.send(()).unwrap();
						} else {
							eprintln!("Request failed with status: {}", res.status());
						}
					}
					Err(err) => {
						eprintln!("Request error: {}", err);
					}
				}
			});
		}

		for _ in 0..n_threads {
			rx.recv().unwrap();
		}

		println!("All requests completed successfully!");
		Ok(())
	}
