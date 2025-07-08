BIN_DIR := bin
BINARY := $(BIN_DIR)/paxos-chat

.PHONY: all build run clean fmt tidy

all: build

build:
	@mkdir -p $(BIN_DIR)
	go build -o $(BINARY) ./cmd/paxos-chat

run: build
	@$(BINARY)

clean:
	@rm -rf $(BIN_DIR)

fmt:
	go fmt ./...

tidy:
	go mod tidy

