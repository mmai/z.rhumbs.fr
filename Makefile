reload:
	stack build
	stack exec site clean
build: reload
	stack exec site build
dev:
	stack exec site watch
publish:
	stack exec site deploy
