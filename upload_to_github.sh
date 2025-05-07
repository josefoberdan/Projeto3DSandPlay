#!/bin/bash 

# CONFIGURAÇÃO
REPO_NAME="Projeto3DSandPlay"
GITHUB_USER="josefoberdan"
GITHUB_REPO_URL="https://github.com/$GITHUB_USER/$REPO_NAME.git"

echo "🚀 Iniciando upload do projeto '$REPO_NAME' para o GitHub..."

# Verifica se nome e email do Git estão configurados
if ! git config user.name >/dev/null; then
  echo "⚠️ Git user.name não configurado. Definindo como 'Josef Oberdan'."
  git config --global user.name "Josef Oberdan"
fi

if ! git config user.email >/dev/null; then
  echo "⚠️ Git user.email não configurado. Definindo como 'joseffaugusto@gmail.com'."
  git config --global user.email "joseffaugusto@gmail.com"
fi

# Inicializa o repositório Git (se ainda não for um)
if [ ! -d ".git" ]; then
  git init
fi

# Garante que o script atual não será enviado para o GitHub
SCRIPT_NAME="upload_to_github.sh"
if [ -f "$SCRIPT_NAME" ]; then
  echo "🛡️ Adicionando $SCRIPT_NAME ao .gitignore para evitar upload futuro..."
  echo "$SCRIPT_NAME" >> .gitignore
  git rm --cached "$SCRIPT_NAME" 2>/dev/null
fi

# Adiciona todos os arquivos restantes
git add .

# Verifica se já há commits
if git rev-parse --verify HEAD >/dev/null 2>&1; then
  echo "📦 Já existe um commit. Adicionando novo commit."
  git commit -m "Atualização do projeto"
else
  echo "📦 Fazendo primeiro commit."
  git commit -m "Primeiro commit - adicionando código-fonte"
fi

# Conecta ao repositório remoto (se ainda não estiver configurado)
if ! git remote get-url origin >/dev/null 2>&1; then
  git remote add origin "$GITHUB_REPO_URL"
fi

# Define a branch como main
git branch -M main

# Tenta push inicial
echo "🚀 Enviando para o GitHub..."
git push -u origin main

# Se o push falhar, tenta pull com mesclagem e depois push de novo
if [ $? -ne 0 ]; then
  echo "⚠️ O push falhou. Tentando pull e novo push..."
  git pull origin main --allow-unrelated-histories --no-edit

  if [ $? -eq 0 ]; then
    git push -u origin main
    if [ $? -eq 0 ]; then
      echo "✅ Projeto enviado com sucesso após pull/merge."
    else
      echo "❌ Push ainda falhou após pull. Verifique conflitos ou permissões."
      exit 1
    fi
  else
    echo "❌ Pull falhou. Pode haver conflitos. Resolva manualmente e tente novamente."
    exit 1
  fi
else
  echo "✅ Projeto enviado com sucesso para $GITHUB_REPO_URL"
fi