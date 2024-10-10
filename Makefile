build:
	docker run --rm\
		-v="$(PWD)/docs/vendor/bundle:/usr/local/bundle:Z" \
		-v="$(PWD)/docs:/srv/jekyll:Z" \
		-it jekyll/builder jekyll build

staging:
	docker run --rm\
		-v="$(PWD)/docs/vendor/bundle:/usr/local/bundle:Z" \
		-v="$(PWD)/docs:/srv/jekyll:Z" \
		-it -p=4000:4000 jekyll/builder jekyll serve
