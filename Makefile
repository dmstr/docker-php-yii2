build:
	docker-compose build --pull

push-all:
	git remote | xargs -L1 git push --all

lint:
	docker run -it --rm -v "$(PWD)/php/Dockerfile-fpm":/Dockerfile:ro redcoolbeans/dockerlint
	docker run -it --rm -v "$(PWD)/php/Dockerfile-fpm-alpine":/Dockerfile:ro redcoolbeans/dockerlint