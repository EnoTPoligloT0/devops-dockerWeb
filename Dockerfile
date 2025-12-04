# Wykorzystujemy obraz OpenJDK 17
FROM openjdk:17-jdk-alpine

# Katalog roboczy w kontenerze
WORKDIR /app

# Kopiowanie wrapper'a Maven i konfiguracji projektu
COPY mvnw .
COPY mvnw.cmd .
COPY pom.xml .

# Kopiowanie źródeł aplikacji
COPY src src

# Nadanie uprawnień do wykonywania dla Maven wrapper
RUN chmod +x mvnw

# Kompilacja aplikacji
RUN ./mvnw clean package -DskipTests

# Uruchomienie aplikacji Spring Boot
# Note: Using wildcard *.jar to avoid version mismatch errors
CMD ["sh", "-c", "java -jar target/*.jar"]
