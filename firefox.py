#!/usr/bin/env python

'''
This file loads a webpage on Firefox, 
and when the laoding has finished
it prints the html code source to the terminal
'''

from selenium import webdriver

browser = webdriver.Firefox()
browser.get("http://folk.uio.no/patrime/")
print(browser.page_source).encode('utf-8')
browser.page_source
