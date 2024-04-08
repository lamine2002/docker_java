# Utiliser une image de base contenant Java 17
FROM openjdk:17

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le code source de votre application Java dans le conteneur
COPY . /app

# Compiler votre application Java
RUN javac src/main/java/org/example/App.java

# Commande pour démarrer l'application Java
CMD ["java", "-cp", "src/main/java", "org.example.App"]