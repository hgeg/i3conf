if ifconfig tun0 2>/dev/null | grep -q "00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00"; then
  echo "running"
else
  echo ""
fi
