#!/bin/bash

# Set Grafana server
grafanactl config set contexts.default.grafana.server http://localhost:3000

# Set organization ID
grafanactl config set contexts.default.grafana.org-id 1

# Set service account token
grafanactl config set contexts.default.grafana.token "$TOKEN"

