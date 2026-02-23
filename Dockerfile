FROM node:20-slim
WORKDIR /app
RUN apt-get update && apt-get install -y git python3 python3-pip curl
RUN npm install -g openclaw
COPY . .
RUN python3 -m pip install py-clob-client requests python-dotenv --break-system-packages
CMD ["openclaw", "gateway"]
