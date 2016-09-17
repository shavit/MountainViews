import scrapy
import os

class CalendarSpider(scrapy.Spider):
    name = 'calendar'
    start_urls = [
        '{}{}'.format(os.environ.get('TARGET_BASE_URL'), '/index.php?option=com_content&task=view&id=850&Itemid=75')
    ]

    def parse(self, res):
        title = res.xpath('//title')

        events_table = res.xpath('//table[@class="calendar"]/tbody/tr')
        for tr in events_table:
            date = tr.xpath('td[1]//text()').extract()
            name = tr.xpath('td[2]//text()').extract()
            venue = tr.xpath('td[3]//text()').extract()
            country = tr.xpath('td[4]//text()').extract()
            link = tr.xpath('td[5]//a/@href').extract()

            log('links', link)

    def log(self, name, text):
        with open('log/{}.log'.format(name), 'a') as f:
            f.write('\n'.format(text))
