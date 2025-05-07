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
echo "🚀 Enviando para o GitHub..."
git push -u origin main

# Se o push falhar, tenta resolver com pull e push novamente
if [ $? -ne 0 ]; then
  echo "⚠️ Push falhou. Tentando resolver com pull e novo push..."
  git pull origin main --allow-unrelated-histories
  git push -u origin main

  if [ $? -ne 0 ]; then
    echo "❌ Ainda não foi possível enviar o projeto. Verifique conflitos e tente manualmente."
    exit 1
  fi
fi

echo "✅ Projeto enviado com sucesso para $GITHUB_REPO_URL"
