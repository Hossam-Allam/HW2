#!/bin/bash
# Simulates data backup
echo "Starting backup..."
for i in {1..5}; do
  echo "Backing up file $i..."
  sleep 3
done
echo "Backup complete!"
