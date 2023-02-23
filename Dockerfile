# Utiliser une image de base avec Node.js pré-installé
FROM node:16-alpine

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de l'API dans le conteneur
COPY . .

# Installer les dépendances
RUN npm install

# Exposer le port utilisé par l'API
EXPOSE 3000

# Démarrer l'API
CMD ["npm", "start"]
