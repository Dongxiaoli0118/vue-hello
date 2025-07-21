# 使用官方 nginx 镜像作为基础镜像
FROM nginx:alpine

# 删除默认配置
RUN rm -rf /usr/share/nginx/html/*

# 复制构建好的 Vue 产物到 nginx 的 web 目录
COPY dist /usr/share/nginx/html

# 默认端口 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
