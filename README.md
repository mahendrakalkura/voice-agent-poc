# voice-agent-poc

Voice agent proof of concept with STT → LLM → TTS pipeline.

## Prerequisites

- Go 1.21+
- See `make install` below

## Setup

```bash
make install
cp settings.toml.example settings.toml  # fill in API keys
```

## Usage

```bash
make build
./bin/main --action=serve
./bin/main --microphone=default
./bin/main --microphone=list
./bin/main --action=report
```

## See also

- [`1.md`](1.md) — implementation plan
