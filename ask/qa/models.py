from django.db import models
from django.contrib.auth.models import User


# Create your models here.
class Question(models.Model):
    title = models.CharField(max_length=255)
    text = models.TextField()
    added_at = models.DateTimeField()
    rating = models.IntegerField()
    author = models.OneToOneField(User)
    likes = models.ForeignKey(User)


class Answer(models.Model):
    text = models.TextField()
    added_at = models.DateTimeField()
    question = models.OneToOneField(Question)
    author = models.OneToOneField(User)
