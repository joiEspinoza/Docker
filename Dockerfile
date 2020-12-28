FROM node:12
#---> version de node 12


WORKDIR /rest-api
#---> Directorio de trabajo


COPY package*.json ./
#---> Copia todos los archivos que comienzan con package
# y los agrega al WORKDIR


RUN npm install
#--> Ejecuta comando para reconstruir modulos npm


COPY . .
#--> Copia todos las carpetas/archivos en WORKDIR


CMD [ "npm", "start" ]
#--> Ejecuta la API




# [CMD] docker build -t rest-api .
#---> Creacion de snapshot del proyecto


# [CMD] docker images
#---> Revision de snapshot tomados


# [CMD] docker run -it -p 5000:4030 rest-api
#----> Ejecuta el snapshot en el puerto 5000


# [CMD] docker ps
#----> Verifica el proceso que se esta ejecutando


# [CMD] docker stop <idProceso>
#----> Termina el proceso actual || sirven los primeros 3 caracteres del ID


# [CMD] docker ps -a
#----> Muestra los procesos ejecutados