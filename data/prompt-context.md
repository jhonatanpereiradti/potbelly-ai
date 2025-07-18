# Potbelly Project Data Reference

This file serves as a central reference point for the Potbelly Automation Web V2 project. When working on this project, always consider the data sources in this folder as authoritative for test information, fixtures, and documentation.

## Data Organization

- `/data/figma-screens/`: Contains UI design screenshots and visual references
- `/data/project documentation/`: Contains project requirements and specifications
- `/data/test plans/`: Contains structured test plans and test cases
- `/data/user stories/`: Contains user stories and acceptance criteria

**Azure DevOps Integration (when needed):**

- `/data/azure-devops-links.md`: Contains direct links to live Azure DevOps wikis, test plans, work item queries, builds, and dashboards
- Use the Azure DevOps MCP server (already configured) to query live data when specifically requested

## Key Test Data

- **Gift Cards**:
  - Test Gift Card: 8840029000006211815 (PIN: 688558)
  - This is a 19-digit card for testing gift card input functionality

- **Restaurants**:
  - See `/data/fixtures/` for mock restaurant data
  - Test restaurant: "Zippy's Restaurants"
  - Test address: "111 N Canal St, Chicago, IL"

- **Delivery**:
  - Test address: "1765 S King St, Honolulu, HI 96826 US"
  - Alternative address: "1725 S King St, Honolulu, HI 96826 US"

## Important Notes

- Always use the environment variables set in mcp.json to access these folders
- All tests should reference fixtures from this data folder
- Documentation for test scenarios is maintained in the project documentation subfolder
- Any new test data should be added to this folder with appropriate documentation

This file serves as both documentation and a context reference for the project.
