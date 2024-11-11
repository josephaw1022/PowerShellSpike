
# Use the echo command
echo "this is the path:  $(pwd)"

# Use helm which is already installed
helm ls --all-namespaces


# Use the ls command with the -la flag which doesn't work in Windows
ls -la