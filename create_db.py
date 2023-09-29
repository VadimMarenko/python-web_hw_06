import sqlite3
from pprint import pprint

database = "./hw_06.db"
file_sql = "./create_hw_06_db.sql"


def create_db(db_file, sql_file):
    # читаємо файл зі скриптом для створення БД
    with open(sql_file, "r") as f:
        sql = f.read()

    # створюємо з'єднання з БД (якщо файлу з БД немає, він буде створений)
    with sqlite3.connect(db_file) as con:
        cur = con.cursor()
        # виконуємо скрипт із файлу, який створить таблиці в БД
        cur.executescript(sql)


if __name__ == "__main__":
    try:
        create_db(database, file_sql)
    except sqlite3.OperationalError as error:
        pprint(error)
