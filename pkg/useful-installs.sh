#!/bin/bash

# Rust
curl -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env

# Golang
curl -s https://golang.org/dl/go1.16.3.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.3.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
source $HOME/.profile
rm go1.16.3.linux-amd64.tar.gz

