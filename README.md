## Gogs and Postgres running with Docker Compose
### How to start
---

1. Run `docker-compose up -d` to start gogs and postgresql.
2. To check that your gogs application is running enter url `http://localhost:10800`.
3. Find postgresql IP address in docker container with `docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 0f6b9d1b27aa`.
4. Set up and Initial your gogs application at `http://localhost:10800`, on DataBase section choose PostgreSQL, Host: `172.22.0.2:5432`, User:`gogs`, Password:`changeme`, Database Name:`gogs`. you can define these on `docker-compose.yaml`.

### How to close 
---

1. Run `docker-compose stop` to stop gogs and postgresql containers.
2. Run `docker-compose rm -f` to remove gogs and postgresql containers.
3. Run `./clean.sh` if you want remove gogs and postgresql all datas.
>>>>>>> [chaohui] N/A add all files
