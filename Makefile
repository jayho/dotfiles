all: update install

update:
	@git pull origin master

install: ask
	@\rsync --exclude ".DS_Store" --exclude ".git/" --exclude ".gitmodules" --exclude "Makefile" --exclude "README.md" -avh --no-perms . ~

ask:
	@read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1 REPLY; \
		echo ""; if [[ ! $$REPLY =~ ^[Yy]$$ ]]; then exit 1; fi

