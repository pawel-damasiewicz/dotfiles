so() { source "$@" }
tailf() { tail -f "$@" }
edit() { $EDITOR "$@" }
dexec() { docker-compose exec "$@" }
dockdev() { docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d }
