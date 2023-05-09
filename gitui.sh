#!/usr/bin/env bash
# Install gitui
GITUI_URL="https://github.com/extrawurst/gitui/releases/download/v0.22.1/gitui-linux-musl.tar.gz"
TEMP_DIR="$(mktemp -d)"
wget -q -O "$TEMP_DIR/gitui-linux.tar.gz" "$GITUI_URL"
tar -xzf "$TEMP_DIR/gitui-linux.tar.gz" -C "$TEMP_DIR"
sudo mv "$TEMP_DIR/gitui" /usr/local/bin/
rm -rf "$TEMP_DIR"
