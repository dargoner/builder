#!/usr/bin/env bash

if [[ $ES_ENABLE_APM == "true" && ($ES_APM_TYPE == "sw" || $ES_APM_TYPE == "skywalking") ]];then
    SW_AGETN_VERSION=${SW_AGETN_VERSION:-8.5.0}
    SW_AGENT_PATH=/app/.skywalking
    export JAVA_OPTS="$JAVA_OPTS -javaagent:${SW_AGENT_PATH}/skywalking-agent-${SW_AGETN_VERSION}/skywalking-agent.jar -DSW_AGENT_NAME=${ES_TRACE_APP_NAME:-${SERVICE_NAME:-$HOSTNAME}}"
fi