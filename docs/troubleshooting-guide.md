# Troubleshooting Guide for CORE ASI OS Model

## Overview

This guide provides solutions to common issues that may arise during the installation, configuration, and operation of the CORE ASI OS Model. 

## Common Issues and Solutions

### Installation Issues

#### Issue: Docker Not Installed

**Solution**: Ensure Docker is installed by following the [Docker Installation Guide](https://docs.docker.com/get-docker/).

#### Issue: Git Not Installed

**Solution**: Install Git by following the [Git Installation Guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).

### Configuration Issues

#### Issue: Incorrect Database Host

**Symptom**: Connection errors to the database.

**Solution**: Verify the database host in `config.json` and ensure it matches the actual database server's address.

```
{
  "core_db_host": "localhost"
}
```

### Initialization Issues

#### Issue: Initialization Script Fails

**Symptom**: Errors occur when running `initialize.sh`.

**Solution**: Check the script for any syntax errors. Ensure that all required environment variables are set correctly.

```
cd scripts
 initialize.sh
```

### API Integration Issues

#### Issue: API Requests Failing

**Symptom**: 401 Unauthorized or 500 Internal Server Error responses from the API.

**Solution**: Ensure the authentication token is correct and included in the API request headers.

```
curl -X POST -H "Content-Type: application/json" -H "Authorization: Bearer <your_token_here>" -d '{
  "api_url": "http://email-service.local/api",
  "token": "securetoken"
}' http://core-asi-os.local/api-integrate
```

### Monitoring Issues

#### Issue: Metrics Not Displayed in Grafana

**Symptom**: Grafana dashboards do not show any metrics.

**Solution**: Ensure Prometheus is correctly configured and scraping metrics from the CORE ASI OS Model. Verify the Prometheus configuration file (`prometheus.yml`).

```yaml
global:
  scrape_interval: 15s
scrape_configs:
  - job_name: 'core-asi-os'
    static_configs:
      - targets: ['localhost:9090']
```

### Performance Issues

#### Issue: High CPU/Memory Usage

**Solution**: Optimize resource allocation by adjusting Docker resource limits and tuning PostgreSQL configuration.

```plaintext
# Example Docker resource limits
docker run -d --name core-service --memory=1g --cpus=0.5 my-core-service

# Example PostgreSQL tuning parameters
shared_buffers = 256MB
work_mem = 64MB
maintenance_work_mem = 128MB
```

## Advanced Troubleshooting

### Log Analysis

1. **Docker Logs**:
   - Use the following command to view logs for a specific Docker container:

   ```
   docker logs <container_id>
   ```

2. **Application Logs**:
   - Check the application-specific logs located in the `/var/log/core-asi-os/` directory.

### Network Issues

#### Issue: Subsystem Cannot Connect to CORE API

**Solution**: Verify network connectivity and ensure that firewalls or security groups allow traffic between the subsystem and CORE API.

### Data Integrity Issues

#### Issue: Data Corruption

**Solution**: Restore from the most recent backup and investigate the cause of corruption.

```
# Restore PostgreSQL database
psql -U coreuser -h localhost coredb < coredb_backup.sql
```

## Getting Support

If you cannot resolve an issue using this guide, refer to the [Official Documentation](https://github.com/EdenIsHereToStay/CORE-ASi-OS-Model) or contact our support team for further assistance.

## Conclusion

By following this troubleshooting guide, you can resolve common issues and ensure the smooth operation of the CORE ASI OS Model. Regular monitoring and maintenance are essential to prevent problems and optimize performance.
