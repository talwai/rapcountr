import sys
import sqlalchemy
import psycopg2
import os

artists = []
lines = sys.stdin.readlines()
for line in lines:
	artists.append(line.strip())

db = sqlalchemy.create_engine('postgres://hsdenrirnstatl:3A-7t-XvCyYEGR8I2s76pZbwwM@ec2-107-20-165-44.compute-1.amazonaws.com:5432/db9lrr1ft7uf29')
print db


