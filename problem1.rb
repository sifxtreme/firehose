# https://gist.github.com/kenmazaika/24cc2a0f961609fc042c

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

# dont use arrays
class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  # Push an item onto the stack
  def push(element)
  	@data = LinkedListNode.new(element.value, @data)
  end

  # Pop an item off the stack.  
  # Remove the last item that was pushed onto the
  # stack and return it to the user
  def pop
  	tmp = @data.next_node
    @data = tmp
    return tmp
  end
end

def reverse_list(list)
    # ADD CODE HERE
    stack = Stack.new

    while list
        stack.push(list)
        list = list.next_node
    end

    # ADD CODE HERE
    return stack.data
end

# ---------------------------------------------------- #

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)