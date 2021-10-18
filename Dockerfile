# 基礎 image
FROM node:14.18.1-alpine
# 設置項目目錄
WORKDIR /app
# 安裝項目依賴
COPY package.json .
RUN npm install
# 運行
CMD ["npm", "run", "serve"]

# docker run -v ${PWD}:/app -v /app/node_modules -p 7788:8080 todo-list:dev