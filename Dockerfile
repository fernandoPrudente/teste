FROM node 

COPY ../package.json .
COPY ../teste1.js .

RUN npm install --production
CMD node teste1.js