import argparse
from pprint import pprint
from sqlite3 import connect, Error


def get_sql():
    parser = argparse.ArgumentParser(description="SQL query processor")
    parser.add_argument(
        "file_sql",
        type=str,
        help="File query_N.sql.",
    )
    args = vars(parser.parse_args())
    file_sql = args.get("file_sql")

    with open(file_sql, "r") as f:
        sql = f.read()
        return sql


def execute_query(sql: str) -> list:
    with connect("hw_06.db") as con:
        cur = con.cursor()
        try:
            cur.execute(sql)
            return cur.fetchall()
        except Error as e:
            pprint(e)


if __name__ == "__main__":
    pprint(execute_query(get_sql()))
