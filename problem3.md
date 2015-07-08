
## Bonus Challenge (optional)

If you have time and are adventurous keep going with the LinkedList problem. This is a more advanced problem, but it's a common interview problem, so having practice could help you in the future.

The bonus assignment is to write a method that returns `true` if the LinkedList is an infinite LinkedList (it never ends), or `false` if it ends.

```
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

print_values(node3)
```

Notice how that builds an infinite LinkedList, and after displaying the results for a while it raises an error about the `SystemStack`.

Read up on [Floyd's Cycle Detection Algorithm](http://en.wikipedia.org/wiki/Cycle_detection#Tortoise_and_hare) on Wikipedia and implement it!