from django.db import models

# Create your models here.

class Article(models.Model):
    title = models.CharField(max_length=200, verbose_name='新闻标题')
    overview = models.TextField(verbose_name='新闻概要')
    content = models.TextField(verbose_name='新闻正文')
    published_date = models.DateTimeField(auto_now_add=True, verbose_name='新闻发布时间')

    def __str__(self):
        return self.title