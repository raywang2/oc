# ExoOC

## Getting Started

1. Add `alias` in your shell config (e.g: `.bashrc` or `.zshrc`).

    ```bash
    alias oc='docker run -it -v ~/.kube:/root/.kube --rm raywang2/oc:latest'
    ```

2. Reload shell.

3. Using `oc`!

    ```bash
    $ oc version
    > oc v1.2.2
    > kubernetes v1.2.0-36-g4a3f9c5
    ```
