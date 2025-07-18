# Data Folder

This folder contains all the necessary data for the Potbelly Automation Web V2 project. All tools and services are configured to reference this folder by default.

## Folder Structure

- `figma-screens/`: Contains Figma screenshots and design assets
- `project documentation/`: Project-related documentation and requirements
- `test plans/`: Test plans and test strategies
- `user stories/`: User stories and acceptance criteria
- `prompt-context.md`: Central reference file used for AI prompts

## Environment Variables

The following environment variables have been set in the `.vscode/mcp.json` configuration:

- `DATA_FOLDER_PATH`: Points to this root data directory
- `FIGMA_SCREENS_PATH`: Points to the Figma screens subfolder
- `PROJECT_DOCS_PATH`: Points to the project documentation subfolder
- `TEST_PLANS_PATH`: Points to the test plans subfolder
- `USER_STORIES_PATH`: Points to the user stories subfolder
- `ALWAYS_USE_DATA_FOLDER`: Set to "true" to ensure tools always reference this data folder

## Including Data Folder in AI Prompts

To ensure that the data folder is always included in AI prompts:

1. **Reference the prompt-context.md file:** When working with AI assistants, reference the prompt-context.md file which contains key information about the project's test data.

2. **Source the environment setup script:** Before starting your work session, run:
   ```bash
   source /Users/dtidigital/Documents/potbelly-automation-web-v2/potbelly-env.sh
   ```

3. **Use the helper functions:** After sourcing the environment script, you can use:
   - `pb-project` - Navigate to the project root
   - `pb-data` - Navigate to the data folder
   - `pb-context` - Display the project context information

4. **Add to your shell profile:** For permanent access, add this line to your ~/.zshrc or ~/.bashrc:
   ```bash
   source /Users/dtidigital/Documents/potbelly-automation-web-v2/potbelly-env.sh
   ```

## Usage

When developing tests or adding new fixtures, please place them in the appropriate subfolder within this data directory. This ensures that all tools and services can locate the required data consistently.

### Adding Figma Screens

To add Figma screens:

1. Export screens from Figma as PNG or JPG files
2. Save them in the `figma-screens/` directory
3. Reference them in your tests using the environment variable: `process.env.FIGMA_SCREENS_PATH`

### Adding Documentation

Add any project documentation to the appropriate subfolder and reference it using the corresponding environment variable.

## Notes

- All paths are absolute to ensure consistency across different execution environments
- If you need to modify the path structure, update the environment variables in `.vscode/mcp.json`
