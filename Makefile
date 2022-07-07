build:
	docker-compose build --pull php-nginx

push-all:
	git remote | xargs -L1 git push --all

lint:
	docker run -it --rm -v "$(PWD)/php/Dockerfile-fpm":/Dockerfile:ro redcoolbeans/dockerlint
