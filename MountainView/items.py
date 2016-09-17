# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class MountainviewItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    pass

class CalendarItem(scrapy.Item):
    name = scrapy.Field()
    description = scrapy.Field()
    website = scrapy.Field()
    registration_date = scrapy.Field()
    starting = scrapy.Field()
    ending = scrapy.Field()
