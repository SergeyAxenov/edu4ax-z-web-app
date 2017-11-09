#!/usr/bin/env bash
APP_HOME="$( cd "$(dirname "$0")" ; pwd -P )"
export ZEPPELIN_CONF_DIR=${ZEPPELIN_CONF_DIR:-${APP_HOME}/conf}
export ZEPPELIN_LOG_DIR=${ZEPPELIN_LOG_DIR:-${APP_HOME}/logs}

if [ ! -d "$ZEPPELIN_LOG_DIR" ]; then
    mkdir -p "$ZEPPELIN_LOG_DIR"
fi

/usr/local/zeppelin/bin/zeppelin-daemon.sh --config $ZEPPELIN_CONF_DIR start

