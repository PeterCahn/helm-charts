## Helm - Zeppelin Chart

Questo è un chart per lanciare Zeppelin su un cluster Kubernetes.

Tra le variabili per personalizzare l'esecuzione del chart ci sono le seguenti:

- _env.ipaserver_
  - il nome del server FreeIPA
- _env.freeipaAdminPassword_
  - la password di accesso al server FreeIPA
- _env.project_
  - il nome caratteristico dell'hostname di Zeppelin (zeppelin.<env.project>.dominio)
- _env.proxy_
  - il server proxy
- _ingress.enabled_
  - a _true_ se l'ingress è abilitato
- _ingress.host_
  - il nome da assegnare all'host per Zeppelin
- _persistence.pv.enabled_
  - a _true_ se si vuole persistere i dati
- _ingress.tls.enabled_
  - a _true_ se si vuole accedere allo Zeppelin tramite HTTPS
