# Usar uma imagem base do OpenJDK
FROM openjdk:23-jdk

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o arquivo JAR gerado para o container
COPY target/MeuProjetoJava-1.0-SNAPSHOT.jar app.jar

# Comando para executar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
