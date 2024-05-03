# Docker-команда FROM вказує базовий образ контейнера
# Наш базовий образ - це Linux з попередньо встановленим python-3.10
FROM python:3.10-slim


# Встановимо робочу директорію всередині контейнера
WORKDIR .

COPY poetry.lock $APP_HOME/poetry.lock
COPY pyproject.toml $APP_HOME/pyproject.toml

# Встановимо залежності всередині контейнера
RUN pip install poetry
RUN poetry config virtualenvs.create false && poetry install

# Скопіюємо інші файли в робочу директорію контейнера
COPY . .

# Позначимо порт, де працює програма всередині контейнера
EXPOSE 8000

# Запустимо нашу програму всередині контейнера
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]