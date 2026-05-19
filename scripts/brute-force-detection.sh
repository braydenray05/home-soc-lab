#!/bin/bash
echo "Top failed SSH login attempts:"
grep "Failed password" /var/log/auth.log | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr
