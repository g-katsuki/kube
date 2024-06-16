# # FROM openjdk:8-jdk-alpine
# FROM openjdk:11-jre-slim
# VOLUME /tmp
# COPY build/libs/*.jar app.jar
# ENTRYPOINT ["java","-jar","/app.jar"]

# ベースイメージを指定
FROM openjdk:11-jre-slim

# コンテナ内の作業ディレクトリを指定
WORKDIR /app

# ローカルのJARファイルをコンテナにコピー
COPY build/libs/*.jar app.jar

# アプリケーションのポートを公開
EXPOSE 8080

# コンテナ内で実行するコマンドを指定
CMD ["java", "-jar", "app.jar"]