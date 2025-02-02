# ベースイメージとして公式のPythonイメージを使用
FROM python:3.9-slim

# 作業ディレクトリを設定
WORKDIR /app

# ローカルのrequirements.txtをコンテナにコピー
#COPY requirements.txt .

# Pythonの依存関係をインストール
#RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションコードをコンテナにコピー
COPY . .

# 必要に応じてポートを公開
EXPOSE 5000

# コンテナ起動時にアプリケーションを実行
CMD ["python", "app.py"]

