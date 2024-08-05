# dotfiles-example

## 📦 Sobre o Projeto

Este repositório é um exemplo de configuração de **dotfiles** para ambientes de desenvolvimento, especialmente útil com **Dev Containers** no VS Code.

## ⚙️ Configurando o Zsh no DevContainer

Para utilizar o **Zsh** como shell padrão dentro do DevContainer, adicione a seguinte configuração ao seu arquivo `devcontainer.json`:

```json
{
  "customizations": {
    "vscode": {
      "extensions": [],
      "settings": {
        "terminal.integrated.defaultProfile.linux": "zsh",
        "terminal.integrated.profiles.linux": {
          "bash": {
            "path": "bash",
            "icon": "terminal-bash"
          },
          "zsh": {
            "path": "zsh"
          },
          "fish": {
            "path": "fish"
          },
          "tmux": {
            "path": "tmux",
            "icon": "terminal-tmux"
          },
          "pwsh": {
            "path": "pwsh",
            "icon": "terminal-powershell"
          }
        }
      }
    }
  }
}
```

## Referências

- https://medium.com/@jamiekt/vscode-devcontainer-with-zsh-oh-my-zsh-and-agnoster-theme-8adf884ad9f6
- https://github.com/jamiekt/dotfiles/blob/main/install.sh
- https://github.com/solnic/dotfiles-example/tree/main
- https://www.youtube.com/watch?v=hp4GRij3RuA
