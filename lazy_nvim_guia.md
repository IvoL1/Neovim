
# Guia rápido Lazy.nvim - Tags com exemplos e explicações

---

## 1. Fonte do Plugin (Spec Source)

Define de onde vem o plugin.

| Exemplo | Explicação |
|---|---|
| `{ "nvim-treesitter/nvim-treesitter" }` | Usando nome curto do plugin (GitHub: user/repo). |
| `{ dir = "~/meu-plugin" }` | Plugin local, no diretório indicado. |
| `{ url = "https://github.com/user/plugin.git" }` | Plugin via URL completa do Git. |
| `{ "user/plugin", name = "meupl" }` | Define nome customizado para o plugin. |
| `{ "user/plugin", dev = true }` | Usa plugin local no modo dev (desenvolvimento). |

---

## 2. Carregamento (Spec Loading)

Controla como e quando o plugin é carregado.

| Exemplo | Explicação |
|---|---|
| `{ "plugin", dependencies = { "outro-plugin" } }` | Carrega outro-plugin junto como dependência. |
| `{ "plugin", enabled = false }` | Plugin desabilitado (não será carregado). |
| `{ "plugin", cond = function() return vim.fn.has("win32") == 1 end }` | Carrega só se for Windows. |
| `{ "plugin", priority = 1000 }` | Carrega antes dos outros (prioridade alta). |

---

## 3. Configuração (Spec Setup)

Define a configuração do plugin.

| Exemplo | Explicação |
|---|---|
| `{ "plugin", init = function() vim.g.exemplo = true end }` | Define variável global antes do plugin iniciar. |
| `{ "plugin", opts = { cor = "azul" } }` | Configuração recomendada via tabela `opts`. |
| `{ "plugin", config = true }` | Executa configuração automática ao carregar (menos recomendado). |
| `{ "plugin", main = "plugin.setup" }` | Define módulo principal para configuração. |
| `{ "plugin", build = "make" }` | Roda comando `make` após instalar/atualizar. |

---

## 4. Lazy Loading (Carregamento Preguiçoso)

Carrega o plugin só quando precisar.

| Exemplo | Explicação |
|---|---|
| `{ "plugin", lazy = true }` | Carrega só quando o plugin for usado. |
| `{ "plugin", event = "BufReadPre" }` | Carrega ao abrir um buffer (arquivo). |
| `{ "plugin", cmd = "PluginCmd" }` | Carrega quando comando `:PluginCmd` for usado. |
| `{ "plugin", ft = "lua" }` | Carrega só para arquivos `.lua`. |
| `{ "plugin", keys = "<leader>p" }` | Carrega ao pressionar `<leader>p`. |

---

## 5. Versionamento (Spec Versioning)

Escolhe versão específica do plugin.

| Exemplo | Explicação |
|---|---|
| `{ "plugin", branch = "dev" }` | Usa branch "dev" do repositório. |
| `{ "plugin", tag = "v1.0" }` | Usa a tag (versão) "v1.0". |
| `{ "plugin", commit = "abcd123" }` | Usa commit específico "abcd123". |
| `{ "plugin", version = ">=1.0" }` | Usa versão semver igual ou maior que 1.0. |
| `{ "plugin", pin = true }` | Bloqueia atualizações do plugin. |
| `{ "plugin", submodules = false }` | Não baixa submódulos git do plugin. |

---

## 6. Avançado (Spec Advanced)

Uso avançado, só se souber.

| Exemplo | Explicação |
|---|---|
| `{ "plugin", optional = true }` | Só inclui se já for usado em outro lugar. |
| `{ "plugin", specs = { { "outro" } } }` | Plugins internos dependentes do plugin. |
| `{ "plugin", module = false }` | Não carrega o módulo Lua automaticamente. |
| `{ import = "meu.diretorio.de.plugins" }` | Importa lista de plugins de outro arquivo. |

---

Quer que eu gere um exemplo real, completo, com vários plugins usando essas tags?  
Responda: **"Sim"** ou **"Não"**.
