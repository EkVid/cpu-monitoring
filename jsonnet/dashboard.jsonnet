// jsonnet/dashboard.jsonnet
local panel(title, expr) = {
  type: 'graph',
  title: title,
  gridPos: { x: 0, y: 0, w: 24, h: 8 },
  targets: [
    {
      expr: expr,
      legendFormat: '{{instance}}',
      refId: 'A',
    },
  ],
};

{
  apiVersion: 'grafana.integreatly.org/v1beta1',
  kind: 'GrafanaDashboard',
  metadata: {
    name: 'local-system-metrics',
    namespace: 'default',
  },
  spec: {
    json: {
      title: 'Local System Metrics',
      uid: 'local-system-metrics',
      panels: [
        panel(
          'CPU Usage',
          '100 - (avg by(instance) (irate(node_cpu_seconds_total{mode="idle"}[5m])) * 100)'
        ),
        panel(
          'Memory Usage',
          'node_memory_MemAvailable_bytes / node_memory_MemTotal_bytes * 100'
        ),
      ],
      schemaVersion: 30,
      version: 1,
    },
  },
}
