#Base image taken from: https://github.com/cypress-io/cypress-docker-images
FROM cypress/included:9.4.1

#Create the folder where our project will be stored
RUN mkdir /ramzes-cypress-ts

#We make it our workdirectory
WORKDIR /ramzes-cypress-ts

#Let's copy the essential files that we MUST use to run our scripts.
COPY ./package.json .
COPY ./cypress.config.ts .
COPY ./tsconfig.json .
# COPY ./cypress ./cypress

#Install the cypress dependencies in the work directory
RUN npm install

#Executable commands the container will use[Exec Form]
ENTRYPOINT ["npm", "run"]