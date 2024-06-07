from selenium import (
	webdriver,
)

from selenium.webdriver.common.by import (
	By
)

from time import (
	sleep,
)

from os import (
	system
)

from re import (
	findall,
)

from learn_selenium.selenium_module.tag_node import (
	Node

)

from learn_selenium.selenium_module.tag_match import (
	ESelfClosing,
	is_self_closing,
	is_right_tag,
	is_math,
	get_xpath_tree,
)

# wb = webdriver.Edge()
# wb.get(r'https://www.baidu.com')
# sleep(5)
# wb.close()

with webdriver.Edge() as wb:
	# wb.get(r'file:///C:/Users/Administrator/Desktop/dcs/assets/Project/Practice_001/index.html')
	# wb.get(r'file:///C:\Users\Administrator\Desktop\dcs\assets\Project\jelly_button\html\index.html')
	wb.get(r'https://www.baidu.com/')

	sleep(1)
	tags = wb.find_elements(By.TAG_NAME, 'html')

	print(f'the tags len is {len(tags)}')
	struct = findall(r'<[^>(){};]+>', tags[0].get_attribute('outerHTML'))
	no_closing_tags = [each for each in struct if not is_self_closing(each)]

	tree: Node = get_xpath_tree(no_closing_tags)

	tree.walk()



	# for each in tags:
	# 	print(each.get_attribute('outerHTML'))
	# 	print(type(each.get_attribute('outerHTML')))
	# 	# system('pause')


	system('pause')
	sleep(1)








"""
document.querySelector("body > div.container.sub-navigation.sub-navigation-articles")

"""


