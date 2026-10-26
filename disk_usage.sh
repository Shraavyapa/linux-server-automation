
#!/bin/bash

THRESHOLD=80

echo "===== Disk Usage Monitor ====="

df -P -k | awk 'NR > 1 && $1 !~ /tmpfs|devtmpfs/ {
    usage = int($5)
    if (usage >= 0) {
        print $6 ": " usage "% used"
        if (usage >= 80) {
            print "WARNING: Disk usage is high!"
        }
    }
}'






