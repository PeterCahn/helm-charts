## Helm - Superset Chart

Questo è un chart per lanciare Superset su un cluster Kubernetes.

Tra le variabili per personalizzare l'esecuzione del chart ci sono le seguenti:

- _ingress.host_
  - il nome da assegnare all'host per Superset
- _persistence.pv.enabled_
  - a _true_ se si vuole persistere i dati
- _ingress.tls_
  - a _true_ se si vuole accedere allo Zeppelin tramite HTTPS
