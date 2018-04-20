class ListNode
	attr_accessor :val, :next

	def initialize(val)
		@val = val
		@next = nil
	end
end

def merge_two_lists(l1, l2)
	# head = l1.val > l2.val ? l1 : l2
	head = ListNode.new(0)
	firstNode = l1
	secondNode = l2
	node = head

	while firstNode != nil or secondNode != nil
		if firstNode == nil
			node.next = secondNode
			break
		end

		if secondNode == nil
			node.next = firstNode
			break
		end

		if firstNode.val > secondNode.val
			node.next = secondNode
			secondNode = secondNode.next
		elsif firstNode.val <= secondNode.val
			node.next = firstNode
			firstNode = firstNode.next
		end

		node = node.next
	end


	head.next
end

l1 = ListNode.new(1)
l1.next = ListNode.new(2)
l1.next.next = ListNode.new(4)

l2 = ListNode.new(1)
l2.next = ListNode.new(3)
l2.next.next = ListNode.new(4)

l3 = merge_two_lists(l1, l2)

node = l1

print node.val
while node.next
	node = node.next
	print ' -> ', node.val
end
puts


l1 = nil
l2 = nil

puts merge_two_lists(l1, l2)