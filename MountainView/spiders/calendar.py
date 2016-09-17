import scrapy
import os

class CalendarSpider(scrapy.Spider):
    name = 'calendar'
    start_urls = [
        '{}{}'.format(os.environ.get('TARGET_BASE_URL'), '/index.php?option=com_content&task=view&id=850&Itemid=75')
    ]

    def parse(self, res):
        title = res.xpath('//title')
        print(res.url)
