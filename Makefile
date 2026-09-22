# Makefile for deploying flutter web app to github pages

# Update These Variables

BASE_HREF = /marek-cichon-cv/
GITHUB_REPO = https://github.com/Borokoro/marek-cichon-cv.git

BUILD_VERSION := $(shell powershell -NoProfile -Command "(Select-String -Path pubspec.yaml -Pattern '^version:' | ForEach-Object { $$_.Line -replace '^version:\s*', '' }).Trim()")

deploy-web:
	@echo "Clean existing repository..."
	flutter clean

	@echo "Getting packages..."
	flutter pub get

	@echo "Building for web..."
	flutter build web --base-href $(BASE_HREF) --release

	@echo "Deploying to git repository..."
	cd build/web && git init && git add . && git commit -m "Deploy $(BUILD_VERSION)" && git branch -M main && git remote add origin $(GITHUB_REPO) && git push -u --force origin main

	@echo "Finished Deploy"

.PHONY: deploy-web