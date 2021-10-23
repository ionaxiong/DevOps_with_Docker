# Install node
FROM node

ENV REACT_APP_BACKEND_URL=http://localhost:8080/

WORKDIR /usr/src/app

EXPOSE 5000

# follow example node install instructions for LTS node 14.x on git
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt install -y nodejs

# check install with node -v && npm -v
RUN node -v && npm -v

# Copy all of the content from the project to the image
COPY . .

# install all packages with npm install
RUN npm install

# run the project
# build the static files with npm run build to generate them into build folder
RUN npm run build

# Use npm package called serve to serve the project in port 5000
RUN npm install -g serve

#add an user "frontenduser"
RUN useradd -m frontenduser

#change user with the directive USER
USER frontenduser

# CMD echo $REACT_APP_BACKEND_URL
CMD ["serve", "-s", "-l", "5000", "build"]

