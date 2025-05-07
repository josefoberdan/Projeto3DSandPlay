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

# Adiciona todos os arquivos
git add .

# Verifica se já há commits para evitar erro no push
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

# Define branch principal como main
git branch -M main

# Envia para o GitHub
git push -u origin main

echo "✅ Projeto enviado com sucesso para $GITHUB_REPO_URL"
