# Устанавливаем базовый образ, содержащий JDK
FROM openjdk:latest
# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /usr/src/app
# Копируем исходный код приложения внутрь контейнера
COPY ./src .
# Компилируем Java исходный код
RUN javac -sourcepath . -d out ./Program.java
# Теперь рабочая директория - директория с файлами .class
WORKDIR /usr/src/app/out
CMD java -classpath . Program
#ENTRYPOINT ["java","ru.geekbrains.core.lesson1.task1.Program"]