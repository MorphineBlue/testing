from typing import (
	TypeVar,
)


TNode = TypeVar('TNode', bound='Node')


class Node:
	def __init__(self, _name: str = None):
		self.name: str = _name if _name is not None else 'unkown'
		self.parent: TNode = None
		self.children: list[TNode] = []
		self.attribute: dict = None
		self.content: str = ''

	def walk(self, _cur_step: int = 0):
		print('|' + '-' * _cur_step, end='')
		print(self.name)
		if self.children is []:
			return

		for child in self.children:
			child.walk(_cur_step + 1)

	# 进入子节点
	def walk_in(self) -> TNode:
		# 进入子节点

		# yield child_node
		pass

	# 返回父节点
	def walk_back(self) -> TNode:
		# 退回父节点
		return self.parent
		pass


