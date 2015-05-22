#!/usr/bin/env python

from selenium import webdriver

browser = webdriver.Firefox()
browser.get("http://folk.uio.no/patrime/")
print(browser.page_source).encode('utf-8')
browser.page_source
