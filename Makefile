build:
	docker run --rm -v="$(PWD)/docs:/srv/jekyll:Z" -it jekyll/minimal:3.8 jekyll build

staging:
	docker run --rm -v="$(PWD)/docs:/srv/jekyll:Z" -it -p=4000:4000 jekyll/minimal:3.8 jekyll serve
