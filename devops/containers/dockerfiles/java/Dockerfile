# Etapa 1: Construção do JAR
FROM maven:3.9.6-eclipse-temurin-21 AS builder
WORKDIR /app

# Copia o arquivo de definição do Maven e baixa as dependências
COPY pom.xml ./
RUN mvn dependency:go-offline

# Copia o restante do código e compila
COPY . ./
RUN mvn clean package -DskipTests

# Etapa 2: Imagem final mínima
FROM openjdk:21-jdk-slim
WORKDIR /app

# Copia apenas o JAR compilado da etapa anterior
COPY --from=builder /app/target/*.jar app.jar

# Expõe a porta do Spring Boot
EXPOSE 8080

# Executa a aplicação
CMD ["java", "-jar", "app.jar"]
