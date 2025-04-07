FROM node

WORKDIR /app

# copy the package file to workdir and run npm install to install the packages/ dependencies
COPY package*.json ./
RUN npm install

# This will Copy the current files to /app dir
COPY . .

# Expose port 3000 to be used when the app is running
EXPOSE 3000

# Specifies how to run the app ( which command)
CMD ["node", "nodeapp.js"]