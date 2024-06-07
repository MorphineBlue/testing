from re import (
	match,
	findall,
)

from enum import (
	Enum
)

from learn_selenium.selenium_module.tag_node import (
	Node
)

class ESelfClosing(Enum):
	BR = 'br'
	HR = 'hr'
	COL = 'col'
	WBR = 'wbr'
	IMG = 'img'
	LINK = 'link'
	BASE = 'base'
	AREA = 'area'
	META = 'meta'
	INPUT = 'input'
	EMBED = 'embed'
	PARAM = 'param'
	TRACK = 'track'
	SOURCE = 'source'
	COMMENT = '<!--'
	DOCTYPE = 'DOCTYPE'


class Stack:

	def __init__(self):
		self.container = []

	def pop(self):
		pass

	def push(self):
		pass


# 判断是否自闭合标签
def is_self_closing(_tag_type: str):
	if _tag_type is None:
		return False

	for each in ESelfClosing.__members__.values():
		if each.value in _tag_type:
			return True

	return False

# 判断标签是否匹配
def is_math(_left_tag: str, _right_tag: str):
	# print(f'{_left_tag[1:len(_left_tag) - 1]}-{_right_tag[2:len(_right_tag) - 1]}')

	left_tag = _left_tag[:-1] if ' ' not in _left_tag else _left_tag.split(' ')[0]
	right_tag = _right_tag[0] + _right_tag[2:-1]

	# print(f'{left_tag}-{right_tag}')O
	if left_tag != right_tag:
		return False
	return True
	pass


# 判断标签是否为右标签
def is_right_tag(_tag_type: str):
	if _tag_type[1] != '/':
		return False
	return True


def get_xpath_tree(_tag_names: str, _node_name: str = 'root') -> Node:
	result: Node = Node('root')

	cur_node: Node = result
	stack: list = []
	for tag_name in _tag_names:
		if not is_right_tag(tag_name):
			# 当前标签名入栈
			stack.append(tag_name)

			# 生成新的子节点
			temp_node = Node(tag_name)

			# 绑定父子关系
			cur_node.children.append(temp_node)
			temp_node.parent = cur_node

			# 切换子节点为当前节点
			cur_node = temp_node
		else:
			if is_math(stack[-1], tag_name):
				# 当前标签名出栈
				stack.pop(len(stack) - 1)

				# 设置 当前节点 的 父节点 为 当前节点
				cur_node = cur_node.parent

	return result
	pass


# 清除html中的script以及
def drop_script(_html: str = None):

	pass

expression = """
/html/body/div[2]
"""

# print(match('<[^>]+>/m', expression))
# print(findall('<[^>]+>', expression))
# print(findall('<[^/>]+>', expression))
# print(findall('</[^>]+>', expression))
# s = findall('<[^/>]+>', expression)

# for each in s:
# 	print(each)

# print(is_right_tag('<jaojdofo>'))
# print(is_math('<abc asdfjasdfjadfj>', '</abc>'))

