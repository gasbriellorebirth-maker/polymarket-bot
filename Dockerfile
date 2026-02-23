FROM node:20-slim
WORKDIR /app
RUN apt-get update && apt-get install -y git python3 python3-pip curl
RUN npm install -g openclaw
RUN find /usr/local/lib/node_modules/openclaw -name "*.js" | head -20
CMD ["node", "/usr/local/lib/node_modules/openclaw/dist/cli.js", "gateway", "--port", "18789"]
