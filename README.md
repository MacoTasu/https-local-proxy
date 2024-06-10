# https-local-proxy
A simple local proxy server that forwards requests to a remote server over HTTPS.

```text
+-------------------------------------------------+
| Docker Host Machine                             |
|                                                 |
|   +--------------------+                        |
|   | Browser            |                        |
|   | http://localhost   |                        |
|   +--------------------+                        |
|             |                                    |
|             v                                    |
|   +----------------------------------------+    |
|   | Docker Network                        |    |
|   |                                        |    |
|   |  +----------------------+               |    |
|   |  | Nginx                |               |    |
|   |  | Container            |               |    |
|   |  |                      |               |    |
|   |  | 1. Receives          |               |    |
|   |  |    request           |               |    |
|   |  | 2. Redirects to      |               |    |
|   |  |    https://localhost |               |    |
|   |  | 3. Proxies to        |               |    |
|   |  |    host.docker.internal             |    |
|   |  |    at APP_PORT       |               |    |
|   |  +----------------------+               |    |
|   |               |                         |    |
|   +---------------|-------------------------+    |
|                   |                              |
|                   v                              |
|   +-----------------------------+                |
|   | Host Server                 |                |
|   | host.docker.internal        |                |
|   | Port: APP_PORT              |                |
|   +-----------------------------+                |
|                                                 |
+-------------------------------------------------+

```

## Usage
It is easy to use. Just execute the following make command to start using it.

```shell
make setup
APP_PORT={YOUR APP PORT} make up
```
