# Use the official LocalAI image
FROM quay.io/go-skynet/localai:v2.17.0

# Download a lightweight model (TinyLlama 1.1B)
RUN mkdir -p /models && \
    curl -L https://huggingface.co/TheBloke/TinyLlama-1.1B-Chat-v1.0-GGUF/resolve/main/tinyllama-1.1b-chat-v1.0.Q4_K_M.gguf -o /models/tinyllama.gguf

# Start LocalAI
CMD ["local-ai", "--models-path", "/models"]
