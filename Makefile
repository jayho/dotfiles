all: update install

update:
	@git pull origin rwe_babun

install: ask
	@\rsync --exclude ".git/" --exclude ".gitmodules" --exclude "_vimrc" --exclude "Makefile" --exclude "README.md" -avh --no-perms . ~

ask:
	@read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1 REPLY; \
		echo ""; if [[ ! $$REPLY =~ ^[Yy]$$ ]]; then exit 1; fi

