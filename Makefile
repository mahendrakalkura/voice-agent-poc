.PHONY: bootstrap build install lint run

bootstrap:
	go get ./...
	go mod tidy
	goimports -w .
	gofmt -w .

build:
	go build -o main .

install:
	sudo apt-get install -y libportaudio2 portaudio19-dev
	wget -O silero_vad.onnx -q https://github.com/snakers4/silero-vad/raw/master/src/silero_vad/data/silero_vad.onnx
	go mod download
	go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
	go install golang.org/x/tools/cmd/goimports@latest

lint:
	golangci-lint run ./...

run:
	./main
