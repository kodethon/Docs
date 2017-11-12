docker rm -f cde-docs
docker run -d --name cde-docs \
-e "VIRTUAL_HOST=docs.kodethon.com" \
-v $(pwd)/build/html:/usr/share/nginx/html \
nginx
