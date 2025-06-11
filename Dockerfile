# Dockerfile

# 1. ベースにするOSイメージを指定（Python 3.11が使える軽量なLinux）
FROM python:3.11-slim

# 2. 環境変数を設定（Pythonのログがすぐに見れるようにするおまじない）
ENV PYTHONUNBUFFERED 1

# 3. コンテナの中の作業ディレクトリを指定
WORKDIR /app

# 4. 必要なライブラリリストを先にコピーしてインストール
# (こうすると、コードだけ変更した時にインストールをスキップできて速くなる)
COPY requirements.txt .
RUN pip install -r requirements.txt

# 5. プロジェクトの全ファイルをコンテナにコピー
COPY . .