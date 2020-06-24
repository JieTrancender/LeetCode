class ListNode
	attr_accessor :val, :next

	def initialize(val)
		@val = val
		@next = nil
	end
end

# 使用栈
def is_palindrome(head)
	stack = Array.new

	node = head
	size = 0
	while node
		stack.push(node.val)
		node = node.next
		size = size + 1
	end

	node = head
	(0...size / 2).each do
		return false if node.val != stack.last

		node = node.next
		stack.pop
	end

	true
end

# 后半段链表翻转
def is_palindrome(head)
	return true if !head or !head.next

	secondNode = head
	firstNode = head

	while firstNode.next and firstNode.next.next
		firstNode = firstNode.next.next
		secondNode = secondNode.next
	end

	last = secondNode.next, pre = head
	while last.next
		tmp = last.next
		last.next


end

head = ListNode.new(1)
head.next = ListNode.new(0)
head.next.next = ListNode.new(0)
head.next.next.next = ListNode.new(3)

puts is_palindrome(head)
puts is_palindrome(nil)