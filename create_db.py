import sqlite3
from pprint import pprint


def create_db():
    # читаємо файл зі скриптом для створення БД
    with open("create_hw_06_db.sql", "r") as f:
        sql = f.read()

    # створюємо з'єднання з БД (якщо файлу з БД немає, він буде створений)
    with sqlite3.connect("hw_06.db") as con:
        cur = con.cursor()
        # виконуємо скрипт із файлу, який створить таблиці в БД
        cur.executescript(sql)


if __name__ == "__main__":
    try:
        create_db()
    except sqlite3.OperationalError as error:
        pprint(error)
