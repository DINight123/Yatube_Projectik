#!/bin/bash

# Переходим в папку yatube
cd yatube

# Создаём виртуальное окружение (если нет)
if [ ! -d ".venv" ]; then
    python -m venv .venv
fi

# Активируем виртуальное окружение
source .venv/Scripts/activate

# Поднимаемся на уровень выше (где лежит requirements.txt)
cd ..

# Устанавливаем зависимости
pip install -r requirements.txt

# Возвращаемся в yatube
cd yatube

# Выполняем миграции
python manage.py makemigrations
python manage.py migrate

# Запускаем сервер
python manage.py runserver