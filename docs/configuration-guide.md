# Configuration Guide for CORE ASI OS Model

## Overview

This guide provides detailed instructions on how to configure the CORE ASI OS Model to suit different environments and requirements.

## Configuration Files

### `config.json`

The `config.json` file is located in the `configuration` directory. This file contains key parameters that need to be set for the CORE ASI OS Model to function correctly.

### Example `config.json`

```json
{
  "core_env": "production",
  "core_db_host": "localhost",
  "api_url": "http://core-asi-os.local/api",
  "max_load": 100
}
```

### Parameters

- **core_env**: Defines the environment in which CORE is running. Common values are `development`, `staging`, and `production`.
- **core_db_host**: The hostname or IP address of the database server.
- **api_url**: The base URL for the CORE ASI OS Model's API.
- **max_load**: The maximum load that the system can handle. Adjust this value based on your system's capacity.

## Environment Variables

Environment variables are used to configure the CORE ASI OS Model dynamically. Below is a list of essential environment variables:

- **CORE_ENV**: Same as `core_env` in `config.json`.
- **CORE_DB_HOST**: Same as `core_db_host` in `config.json`.

### Setting Environment Variables

You can set environment variables in your shell or within a Docker environment file.

#### Example for Bash Shell

```bash
export CORE_ENV=production
export CORE_DB_HOST=localhost
```

#### Example for Docker Environment File

Create a file named `.env` in the root directory of your project:

```plaintext
CORE_ENV=production
CORE_DB_HOST=localhost
```

## Advanced Configuration

For advanced users, additional configuration options are available. Please refer to the [Developer Guide](developer-guide.md) for more details on extending and customizing the CORE ASI OS Model.

## Troubleshooting

If you encounter any issues while configuring the system, refer to the [Troubleshooting Guide](troubleshooting-guide.md) for solutions to common problems.
```

### Steps to Add `configuration-guide.md`

1. **Navigate to the `docs` Directory**:
   - In your GitHub repository, go to the `docs` directory.

2. **Create `configuration-guide.md`**:
   - In the `docs` directory, create a new file named `configuration-guide.md`.
   - Copy and paste the content above into the file.
   - Commit the changes with a relevant commit message, such as "Add configuration guide documentation".
