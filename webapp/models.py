import sys
#from sqlalchemy import *
from django.db import models

import psycopg2
import os

#db = create_engine('postgres://hsdenrirnstatl:3A-7t-XvCyYEGR8I2s76pZbwwM@ec2-107-20-165-44.compute-1.amazonaws.com:5432/db9lrr1ft7uf29')
#db.echo = False

#Session = sessionmaker(bind=db)

#Base =  declarative_base()

class Word_Freq_Pairs(models.Model):
    word = models.CharField(max_length=30)
    frequency = models.IntegerField()

class Artist(models.Model):
    name = models.CharField(max_length=100)
    url = models.URLField()
    filepath = models.FilePathField(path="/datastore/%s.txt" % name)
    #collabs = models.ManyToManyField(Artist)

#class Artist(models.Model):
#    __tablename__ = "artists"
#
#    id = Column(Integer)
#    name = Column(String, primary_key=True)
#    url = Column(String)
#
#    def __init__(self, name, url):
#        self.name = name
#        self.url = url
#
#    def __repr__(self):
#        return "<Artist('%s','%s')>" % (self.name, self.url)
#

#Base.metadata.create_all()

#artists = []
#lines = sys.stdin.readlines()
#for line in lines:
#	toks = line.split(',')
#	artists.append(line.strip())

