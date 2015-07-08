class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3

def find_cycle(slow_node)
  if slow_node.nil?
    return false
  end

  fast_node = slow_node.next_node

  while(slow_node && fast_node && slow_node.next_node && fast_node.next_node && fast_node.next_node.next_node)
    if(slow_node == fast_node)
      return true
    else
      slow_node = slow_node.next_node
      fast_node = fast_node.next_node.next_node
    end
  end

  return false
end

p find_cycle(node3)

# print_values(node3)