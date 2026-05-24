.PHONY: install install-linux install-termux start run

# Detect environment (Termux vs Linux)
ENV := $(shell \
	if [ -n "$$TERMUX_VERSION" ]; then \
		echo termux; \
	elif [ -d "/data/data/com.termux/files/usr" ]; then \
		echo termux; \
	else \
		echo linux; \
	fi \
)

# Main entry
install:
	@echo "\n🔍 Detected environment: $(ENV)\n"
ifeq ($(ENV),termux)
	@$(MAKE) install-termux
else
	@$(MAKE) install-linux
endif

# Linux (Ubuntu / Debian / VPS)
install-linux:
	@echo "\n🚀 Installing dependencies for Linux...\n"
	sudo apt update -y && sudo apt upgrade -y
	sudo apt install -y mpv git curl wget python3 python3-pip ffmpeg

	@echo "\n🌐 Installing Node.js LTS...\n"
	curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
	sudo apt install -y nodejs

	@echo "\n🎬 Installing yt-dlp...\n"
	sudo wget -q https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp
	sudo chmod a+rx /usr/local/bin/yt-dlp
	@yt-dlp --version

	@echo "\n☁️  Installing cloudflared...\n"
	wget -q https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
	sudo dpkg -i cloudflared-linux-amd64.deb || sudo apt -f install -y
	rm -f cloudflared-linux-amd64.deb
	@cloudflared --version

	@echo "\n📦 Installing npm dependencies...\n"
	sudo npm install


# Termux (Android / Emulator)
install-termux:
	@echo "\n🚀 Installing dependencies for Termux...\n"
	pkg update -y && pkg upgrade -y
	pkg install -y mpv git wget python nodejs ffmpeg

	@echo "\n🎬 Installing yt-dlp...\n"
	wget -q https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp
	chmod a+rx yt-dlp
	mv yt-dlp $$PREFIX/bin/
	@yt-dlp --version

	@echo "\n☁️ Installing cloudflared...\n"
	pkg install -y cloudflared
	@cloudflared --version

	@echo "\n📦 Installing npm dependencies...\n"
	npm install

# Start
start:
	@echo "\n▶️  Starting arctryx...\n"
	npm start

run: start
