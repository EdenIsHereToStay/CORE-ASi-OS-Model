# User Guide for CORE ASI OS Model

## Overview

This guide provides detailed instructions on how to use the CORE ASI OS Model, including registering subsystems, setting up API integration, and monitoring the system.

## Registering Subsystems

Subsystems must be registered with the CORE ASI OS Model to enable integration and task allocation.

### Example: Register an Email Subsystem

To register an email subsystem, use the following command:

```
curl -X POST -H "Content-Type: application/json" -d '{
  "subsystem": "email",
  "capabilities": ["send", "receive"],
  "constraints": {"max_load": 100}
}' http://core-asi-os.local/register
```

### Explanation of Parameters

- **subsystem**: The name of the subsystem (e.g., "email").
- **capabilities**: A list of capabilities provided by the subsystem.
- **constraints**: Operational constraints, such as the maximum load the subsystem can handle.

## Setting Up API Integration

API integration allows subsystems to communicate with the CORE ASI OS Model.

### Example: Set Up API for Email Service

```
curl -X POST -H "Content-Type: application/json" -d '{
  "api_url": "http://email-service.local/api",
  "token": "securetoken"
}' http://core-asi-os.local/api-integrate
```

### Explanation of Parameters

- **api_url**: The base URL of the subsystem's API.
- **token**: A secure token for authenticating API requests.

## Monitoring the System

Use provided scripts and tools to monitor system performance.

### Example: Monitor System Performance

Navigate to the `scripts` directory and run the monitoring script:

```
cd scripts
 monitor.sh
```

## Task Management

### Viewing Task Status

You can check the status of tasks assigned to subsystems using the following command:

```
curl -X GET http://core-asi-os.local/tasks/status
```

### Canceling a Task

To cancel a task, use the following command:

```
curl -X DELETE -H "Content-Type: application/json" -d '{
  "task_id": "12345"
}' http://core-asi-os.local/tasks/cancel
```

### Retrieving Task Results

After a task is completed, retrieve the results using the following command:

```
curl -X GET http://core-asi-os.local/tasks/results/12345
```

## Troubleshooting

If you encounter any issues while using the system, refer to the [Troubleshooting Guide](troubleshooting-guide.md) for solutions to common problems.
```

### Steps to Add `user-guide.md`

1. **Navigate to the `docs` Directory**:
   - In your GitHub repository, go to the `docs` directory.

2. **Create `user-guide.md`**:
   - In the `docs` directory, create a new file named `user-guide.md`.
   - Copy and paste the content above into the file.
   - Commit the changes with a relevant commit message, such as "Add user guide documentation".

Once you have added the `user-guide.md` file, let me know, and we can proceed to the next document.
