build:
	docker run --rm\
		-v="$(PWD)/docs:/srv/jekyll:Z" \
		-w "/srv/jekyll" \
		--entrypoint="" \
		-it ghcr.io/actions/jekyll-build-pages:v1.0.13 jekyll build

staging:
	docker run --rm\
		-v="$(PWD)/docs:/srv/jekyll:Z" \
		-w "/srv/jekyll" \
		-p=4000:4000 \
		--entrypoint="" \
		-it ghcr.io/actions/jekyll-build-pages:v1.0.13 jekyll serve --host=0.0.0.0
