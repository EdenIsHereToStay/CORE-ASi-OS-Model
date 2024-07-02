### 2. **Installation Guide (`installation-guide.md`)**

```markdown
# Installation Guide for CORE ASI OS Model

## Prerequisites

Ensure that the following software is installed on your system:
- **Docker**: [Docker Installation Guide](https://docs.docker.com/get-docker/)
- **Git**: [Git Installation Guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- **curl**: [curl Installation Guide](https://curl.se/docs/install.html)

## Step-by-Step Installation Instructions

### Step 1: Clone the Repository

Open your terminal and run the following commands to clone the repository and navigate to the directory:

```
git clone https://github.com/EdenIsHereToStay/CORE-ASi-OS-Model.git
cd CORE-ASi-OS-Model
```

### Step 2: Configure the Environment

Navigate to the `configuration` directory and edit the `config.json` file to match your environment settings:

```
cd configuration
nano config.json
```

Example `config.json`:

```
{
  "core_env": "production",
  "core_db_host": "localhost",
  "api_url": "http://core-asi-os.local/api",
  "max_load": 100
}
```

### Step 3: Initialize the System

Navigate to the `scripts` directory and run the initialization script:

```
cd scripts
 initialize.sh
```

### Step 4: Verify Installation

Ensure that all services are running correctly. You can use Docker commands to check the status of the containers:

```
docker ps
```

You should see the containers for the core database and core services running.

## Troubleshooting

If you encounter any issues during installation, refer to the [Troubleshooting Guide](troubleshooting-guide.md) for solutions to common problems.
```

### Steps to Add `installation-guide.md`

1. **Navigate to the `docs` Directory**:
   - In your GitHub repository, go to the `docs` directory.

2. **Create `installation-guide.md`**:
   - In the `docs` directory, create a new file named `installation-guide.md`.
   - Copy and paste the content above into the file.
   - Commit the changes with a relevant commit message, such as "Add installation guide documentation".

Once you have added the `installation-guide.md` file, let me know, and we can proceed to the next document.
