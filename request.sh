curl -s http://localhost:30000/v1/chat/completions \
  -H "Content-Type: application/json" \
  -d '{"model": "qwen/qwen2.5-0.5b-instruct", "messages": [{"role": "user", "content": "Write me a 2 page essay on bubbles."}]}'
