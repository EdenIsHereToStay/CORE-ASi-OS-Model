# API Documentation for CORE ASI OS Model

## Overview

This document provides detailed information about the APIs used for integrating subsystems and communicating with the CORE ASI OS Model.

## Authentication

All API requests must include an authentication token. You can obtain a token by registering your subsystem and setting up API integration.

### Example Header

```plaintext
Authorization: Bearer <your_token_here>
```

## API Endpoints

### Subsystem Registration

Registers a new subsystem with the CORE ASI OS Model.

- **Endpoint**: `/register`
- **Method**: `POST`
- **Parameters**:
  - `subsystem`: The name of the subsystem (e.g., "email").
  - `capabilities`: A list of capabilities provided by the subsystem.
  - `constraints`: Operational constraints, such as the maximum load the subsystem can handle.

### Example Request

```
curl -X POST -H "Content-Type: application/json" -H "Authorization: Bearer <your_token_here>" -d '{
  "subsystem": "email",
  "capabilities": ["send", "receive"],
  "constraints": {"max_load": 100}
}' http://core-asi-os.local/register
```

### API Integration

Sets up API integration for a subsystem to enable communication with the CORE ASI OS Model.

- **Endpoint**: `/api-integrate`
- **Method**: `POST`
- **Parameters**:
  - `api_url`: The base URL of the subsystem's API.
  - `token`: A secure token for authenticating API requests.

### Example Request

```
curl -X POST -H "Content-Type: application/json" -H "Authorization: Bearer <your_token_here>" -d '{
  "api_url": "http://email-service.local/api",
  "token": "securetoken"
}' http://core-asi-os.local/api-integrate
```

### Task Management

#### View Task Status

Retrieves the status of tasks assigned to subsystems.

- **Endpoint**: `/tasks/status`
- **Method**: `GET`

### Example Request

```
curl -X GET -H "Authorization: Bearer <your_token_here>" http://core-asi-os.local/tasks/status
```

#### Cancel a Task

Cancels a specific task.

- **Endpoint**: `/tasks/cancel`
- **Method**: `DELETE`
- **Parameters**:
  - `task_id`: The ID of the task to be canceled.

### Example Request

```
curl -X DELETE -H "Content-Type: application/json" -H "Authorization: Bearer <your_token_here>" -d '{
  "task_id": "12345"
}' http://core-asi-os.local/tasks/cancel
```

#### Retrieve Task Results

Retrieves the results of a completed task.

- **Endpoint**: `/tasks/results/{task_id}`
- **Method**: `GET`

### Example Request

```
curl -X GET -H "Authorization: Bearer <your_token_here>" http://core-asi-os.local/tasks/results/12345
```

## Error Handling

### Common Error Codes

- **400 Bad Request**: The request could not be understood or was missing required parameters.
- **401 Unauthorized**: Authentication failed or user does not have permissions for the requested operation.
- **404 Not Found**: The requested resource could not be found.
- **500 Internal Server Error**: An error occurred on the server.

### Example Error Response

```json
{
  "error": "Invalid request",
  "message": "Missing required parameter: subsystem"
}
```

## Troubleshooting

If you encounter any issues while using the API, refer to the [Troubleshooting Guide](troubleshooting-guide.md) for solutions to common problems.

## Further Assistance

For more detailed information and support, refer to the [Official Documentation](https://github.com/EdenIsHereToStay/CORE-ASi-OS-Model) or contact our support team.
```

### Steps to Add `api-documentation.md`

1. **Navigate to the `docs` Directory**:
   - In your GitHub repository, go to the `docs` directory.

2. **Create `api-documentation.md`**:
   - In the `docs` directory, create a new file named `api-documentation.md`.
   - Copy and paste the content above into the file.
   - Commit the changes with a relevant commit message, such as "Add API documentation".

Once you have added the `api-documentation.md` file, let me know, and we can proceed to the next document.
