#!/usr/bin/env puma

environment "production"
# daemonize
pidfile "/home/deploy/mirrorer/tmp/puma/pid"
state_path "/home/deploy/mirrorer/tmp/puma/state"
bind "unix:///home/deploy/mirrorer/tmp/puma/socket.sock"
# activate_control_app

stdout_redirect '/home/deploy/mirrorer/log/stdout', '/home/deploy/mirrorer/log/stderr', true
threads 1, 4
