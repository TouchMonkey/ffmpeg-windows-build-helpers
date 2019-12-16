#!/usr/bin/env bash

SRC_DIR="./sandbox/win64/ffmpeg_git_with_fdk_aac"
DEST_DIR="/mnt/c/VideoTest/Tools/ffmpeg"

rm -rf "$DEST_DIR/bin/"
rm -rf "$DEST_DIR/doc/"
rm -rf "$DEST_DIR/presets/"

mkdir -p "$DEST_DIR/bin"

cp    "$SRC_DIR/ffmpeg.exe"  "$DEST_DIR/bin/"
cp    "$SRC_DIR/ffplay.exe"  "$DEST_DIR/bin/"
cp    "$SRC_DIR/ffprobe.exe" "$DEST_DIR/bin/"
cp -R "$SRC_DIR/doc/"        "$DEST_DIR/"
cp -R "$SRC_DIR/presets/"    "$DEST_DIR/"

SRC_DIR="./sandbox/win64/ffmpeg_git_with_fdk_aac_x26x_high_bitdepth"
DEST_DIR="/mnt/c/VideoTest/Tools/ffmpeg-10bit"

rm -rf "$DEST_DIR/bin/"
rm -rf "$DEST_DIR/doc/"
rm -rf "$DEST_DIR/presets/"

mkdir -p "$DEST_DIR/bin"

cp    "$SRC_DIR/ffmpeg.exe"  "$DEST_DIR/bin/"
cp    "$SRC_DIR/ffplay.exe"  "$DEST_DIR/bin/"
cp    "$SRC_DIR/ffprobe.exe" "$DEST_DIR/bin/"
cp -R "$SRC_DIR/doc/"        "$DEST_DIR/"
cp -R "$SRC_DIR/presets/"    "$DEST_DIR/"

