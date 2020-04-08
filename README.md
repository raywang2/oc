# ExoOC

## Getting Started

1. Add `alias` in your shell config (e.g: `.bashrc` or `.zshrc`).

    ```bash
    alias oc='docker run -it -v ~/.kube:/root/.kube --rm raywang2/oc:latest'
    ```

2. Reload shell.

3. Using `oc`!

    ```bash
    $ oc v1.5.1+7b451fc
    > kubernetes v1.5.2+43a9be4
    > features: Basic-Auth GSSAPI Kerberos SPNEGO
    ```
