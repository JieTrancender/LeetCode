require './list_header'

def delete_duplicates(head)
	return head if head == nil
	
	tmp = head
	while tmp.next
		if tmp.next.val == tmp.val
			tmp.next = tmp.next.next
		else
			tmp = tmp.next
		end
	end

	head
end

l1 = ListNode.new(1)
l1.next = ListNode.new(1)
l1.next.next = ListNode.new(2)
l2 = ListNode.new(1)
l2.next = ListNode.new(1)
l2.next.next = ListNode.new(2)
l2.next.next.next = ListNode.new(3)
l2.next.next.next.next = ListNode.new(3)


tmp = delete_duplicates(l1)
while tmp
	print tmp.val, ' -> '
	tmp = tmp.next
end
puts ""

tmp = delete_duplicates(l2)
while tmp
	print tmp.val, ' -> '
	tmp = tmp.next
end
puts ""

