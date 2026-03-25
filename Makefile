.PHONY: install build run clean

install:
	sudo apt-get install -y libportaudio2 portaudio19-dev
	wget -q -O silero_vad.onnx \
		https://github.com/snakers4/silero-vad/raw/master/src/silero_vad/data/silero_vad.onnx
	go mod download

build:
	go build -o bin/main ./...

run:
	./bin/main

clean:
	rm -f bin/main silero_vad.onnx
