#!/usr/bin/env bash

if [[ $ES_ENABLE_APM == "true" && ($ES_APM_TYPE == "sw" || $ES_APM_TYPE == "skywalking") ]];then
    SW_AGENT_PATH=/app/.skywalking
    export JAVA_OPTS="$JAVA_OPTS -javaagent:${SW_AGENT_PATH}/skywalking-agent/skywalking-agent.jar -DSW_AGENT_NAME=${ES_TRACE_APP_NAME:-${SERVICE_NAME:-$HOSTNAME}}"
fi