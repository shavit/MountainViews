import os
import psycopg2
from psycopg2.extensions import AsIs
from datetime import datetime
from urllib.parse import urlparse

class Model(object):
    def __init__(self):
        pass

    def connection(self):
        # connect
        uri = urlparse(os.environ['POSTGRESQL_URI'])
        return psycopg2.connect(
            database=uri.path[1:],
            user=uri.username,
            password=uri.password,
            host=uri.hostname,
            port=uri.port)

    def find_one(self, id):
        conn = self.connection()
        cursor = conn.cursor()
        query = """
            SELECT * FROM %(table_name)s
            WHERE id = %(id)s
            LIMIT 1
        """

        cursor.execute(query, {
            "table_name": AsIs(self._table_name),
            "id": id
        })
        res = cursor.fetchone()
        conn.close()
        return res


class Event(Model):
    _table_name = 'events'
    name = ''

    def __init__(self):
        pass

    def create(self, event):
        conn = self.connection()
        cursor = conn.cursor()
        query = """
            INSERT INTO %(table_name) (
                name,
                description,
                link,
                country,
                venue
            )
            VALUES (
                %(name)s,
                %(description)s,
                %(link)s,
                %(country)s,
                %(venue)s
            )
        """
        cursor.execute(query, {
            "table_name": AsIs(self._table_name),
            "name": event['name'],
            "description": event['name'],
            "picture": '',
            "link": event['link'],
            "country": event['country'],
            "venue": event['venue'],
            "date": event['date'],
        })
        # res = cursor.commit()
        conn.close()
        print('---> Query')
        print(query)

        # return res
