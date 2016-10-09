#!/bin/bash

docker build -t="storm" storm
docker build -t="storm-nimbus" storm-nimbus
docker build -t="storm-supervisor" storm-supervisor
docker build -t="storm-ui" storm-ui
