#!/bin/bash
# This script can be used to include the data folder context in your AI prompts

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DATA_FOLDER="${SCRIPT_DIR}/data"
PROMPT_CONTEXT="${DATA_FOLDER}/prompt-context.md"

echo "Adding Potbelly Automation Web V2 context to your prompt..."
echo ""
echo "====================== PROJECT CONTEXT ======================"
cat ${PROMPT_CONTEXT}
echo "============================================================"
echo ""
echo "Please include this project context in your considerations when responding."
