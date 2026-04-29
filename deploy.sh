#!/bin/bash
# Uso: bash deploy.sh

# Copiamos código actualizado de GitHub
git pull origin main

# Detenemos contenedores
docker-compose down

# Iniciamos contenedores y reconstruimos
docker-compose -f docker-compose.prod.yml up -d --build
