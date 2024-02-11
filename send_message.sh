#!/bin/bash

# Ask the user for their message
echo -n "Enter your message: "
read user_message

# Prepare the JSON payload. Note: Be careful with special characters.
json_payload="{\"model\": \"luna-ai-llama2\", \"messages\": [{\"role\": \"user\", \"content\": \"$user_message\"}], \"temperature\": 0.9}"

# Use curl to send the request
curl -X POST http://localhost:8080/v1/chat/completions \
-H "Content-Type: application/json" \
-d "$json_payload"
