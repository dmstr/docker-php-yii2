build:
	docker-compose build --pull

push-all:
	git remote | xargs -L1 git push --all

lint:
	docker run -it --rm -v "$(PWD)/php-7.1/Dockerfile-fpm":/Dockerfile:ro redcoolbeans/dockerlint
	docker run -it --rm -v "$(PWD)/php-7.1/Dockerfile-fpm-alpine":/Dockerfile:ro redcoolbeans/dockerlint