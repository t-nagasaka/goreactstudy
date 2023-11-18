# 使用するベースイメージ
FROM golang:1.21.3-alpine

# 必要なツールやライブラリをインストール
RUN apk update && apk add --no-cache git
RUN apk add bash

# ワーキングディレクトリの設定
WORKDIR /myapp
RUN go install -v golang.org/x/tools/gopls@latest
