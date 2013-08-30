import sys
from sqlalchemy import *
import psycopg2
import os

db = create_engine('postgres://hsdenrirnstatl:3A-7t-XvCyYEGR8I2s76pZbwwM@ec2-107-20-165-44.compute-1.amazonaws.com:5432/db9lrr1ft7uf29')
db.echo = False

Session = sessionmaker(bind=db)


Base =  declarative_base()

class Artist(Base):
    __tablename__ = "artists"

    id = Column(Integer)
    name = Column(String, primary_key=True)
    url = Column(String)

    def __init__(self, name, url):
        self.name = name
        self.url = url

    def __repr__(self):
        return "<Artist('%s','%s')>" % (self.name, self.url)


Base.metadata.create_all()

artists = []
lines = sys.stdin.readlines()
for line in lines:
	toks = line.split(',')
	artists.append(line.strip())

