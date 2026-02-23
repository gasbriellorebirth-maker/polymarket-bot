FROM node:20-slim
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN pip install py-clob-client requests python-dotenv 2>/dev/null || true
CMD ["npm", "start"]
