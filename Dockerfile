FROM node:20-slim
WORKDIR /app
RUN apt-get update && apt-get install -y git python3 python3-pip curl
RUN npm install -g openclaw
RUN python3 -m pip install py-clob-client requests python-dotenv --break-system-packages
CMD ["bash", "-c", "C:\Users\Bubo\AppData\Roaming\npm\node_modules/../bin/openclaw gateway --port 18789"]
