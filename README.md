# Pagekite in docker

Awesome tool from http://pagekite.net, wrapped in Docker image, for convenience.
Setup your own localtunnel- or a ngrok- like server with one command.

## How to run server (front-end in terms of pagekite)
`docker run --network host --restart always --name pagekite kroshilin/pagekite sh -c "/pagekite  --isfrontend   --ports=80,443 --protos=http,https   --domain=http,https:*.yourdomain.com:yoursecret"`

## How to run client (back-end in terms of pagekite)

`docker run --rm --network host kroshilin/pagekite sh -c "/pagekite --frontend=yourdomain.com:80 --service_on=http:yoursubdomain.yourdomain.com:localhost:80:yoursecret"`