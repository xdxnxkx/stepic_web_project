from django.db import models
from django.contrib.auth.models import User


# Create your models here.

class Question(models.Model):

    title = models.CharField(max_length=255)
    text = models.TextField()
    added_at = models.DateTimeField()
    rating = models.IntegerField()
    author =
    likes =

class Answer(models.Model):

    text = models.TextField()
    added_at = models.DateTimeField()
    question =
    author =
