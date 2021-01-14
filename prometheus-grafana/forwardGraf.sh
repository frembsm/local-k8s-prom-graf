#!/bin/sh
kubectl --namespace monitoring port-forward svc/prometheus-grafana 3000:80