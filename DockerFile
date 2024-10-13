# Usa la imagen oficial de Node.js 20
FROM node:20

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia el archivo package.json y package-lock.json al directorio de trabajo
COPY package*.json ./

# Instala las dependencias
RUN npm install --production

# Copia el resto de la aplicación al contenedor
COPY . .

# Expone el puerto en el que corre la aplicación (puedes cambiarlo si es necesario)
EXPOSE 8080/tcp

# Comando para iniciar la aplicación
CMD ["npm", "start"]
