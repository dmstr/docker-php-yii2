build:
	docker-compose build --pull

push-all:
	git remote | xargs -L1 git push --all
