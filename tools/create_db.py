import sqlite3
from pprint import pprint

database = "./hw_06.db"
file_sql = "./create_hw_06_db.sql"


def create_db(db_file, sql_file):
    with open(sql_file, "r") as f:
        sql = f.read()

    with sqlite3.connect(db_file) as con:
        cur = con.cursor()
        cur.executescript(sql)


if __name__ == "__main__":
    try:
        create_db(database, file_sql)
    except sqlite3.OperationalError as error:
        pprint(error)
