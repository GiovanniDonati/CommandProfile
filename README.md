# Automação com PowerShell

Guia rápido para criar funções PowerShell personalizadas, automatizar tarefas e tê-las sempre disponíveis em todas as sessões do terminal.

## 1️⃣ Visão Geral

No PowerShell, você pode definir funções para simplificar comandos rotineiros. Adicionando essas funções ao **perfil do PowerShell**, elas são carregadas automaticamente em toda nova sessão.

---

## 2️⃣ Instalando funções no perfil

Para que suas funções fiquem sempre disponíveis:

1. **Abra o PowerShell**.
2. Verifique o caminho do seu arquivo de perfil:

   ```powershell
   $PROFILE
   ```

Exemplo de saída:

```powershell
C:\Users\SeuUsuario\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
```

3. Abra o arquivo para edição(ele será criado se não existir):

   ```powershell
   notepad $PROFILE
   ou
   code $PROFILE
   ```

4. Adicione suas funções personalizadas no final do arquivo. Exemplo:

```powershell
function chatAI {
    # Navega até o diretório do projeto
    cd "C:\projects\DevTools\ChatAI"

    # Executa o script Python
    python app.py
}
```

5. Salve o arquivo e reinicie o PowerShell para aplicar as alterações.

---

## 3️⃣ Como usar

Depois de reiniciar, basta chamar a função como se fosse um comando nativo:

```powershell
chatAI
```

---

## 4️⃣ Dicas

- ✅ Personalize o nome e os comandos da função conforme sua necessidade.
- ✅ Use para qualquer rotina: build de projetos, scripts de deploy, ativação de ambientes virtuais etc.
- ✅ Mantenha funções organizadas e comentadas no perfil para facilitar manutenção.
