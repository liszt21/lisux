source $GUIX_PROFILE/etc/profile

# Run guix daemon
/root/.config/guix/current/bin/guix-daemon --build-users-group=guixbuild $GUIX_DAEMON_ARGS &
GUIX_DAEMON=$!

# Execute commands
exec "$@"
GUIX_RESULT=$?

# Kill guix daemon
kill -9 $GUIX_DAEMON

# Exit with guix status
exit $GUIX_RESULT