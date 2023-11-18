# 使用するベースイメージ
FROM golang:1.21.3-alpine

# 必要なツールやライブラリをインストール
RUN apk update && apk add --no-cache git
RUN apk add bash
RUN apk add openssh-client

# ワーキングディレクトリの設定
WORKDIR /myapp
RUN go install -v golang.org/x/tools/gopls@latest

# コンテナ内でSSHエージェントを使えるように
CMD ["sh", "-c", "eval $(ssh-agent -s) && /bin/sh"]