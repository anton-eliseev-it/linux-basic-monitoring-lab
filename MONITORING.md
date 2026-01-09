# Monitoring & Alerting Documentation

## Objective
Monitor disk usage and log alerts when usage exceeds a defined threshold.

## Implementation
- Bash script checks root filesystem usage
- Alerts are written to a log file
- Script is scheduled via cron for periodic execution

## Verification
- Script executed manually and via cron
- Log entries confirmed for both normal and warning states

## Operational Value
Basic monitoring allows early detection of resource exhaustion and
prevents service disruption.
