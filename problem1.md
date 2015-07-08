# Reversing a Linked List

## Problem Background

In the previous assignments we focused on understanding how to use the ruby Array class, which provides a lot of functionality we were able to leverage for the image blur problem. In this assignment we are going to implement data structures by hand, and we're only going to have the bare essentials to deal with. Because of the nature of the problem, it is challenging. We'll push you in the direction of how to think about solving it.


### What is a LinkedList!?

Before we implement and write algorithms with LinkedLists, let's take a moment to understand what this data structure actually is. A LinkedList is a node that has a specific value attached to it (which is sometimes called a payload), and a link to another node (or `nil` if there is no next item).

See this image from the Wikipedia page for a [LinkedList](http://en.wikipedia.org/wiki/Linked_list) for a graphical representation of the list of: `[12, 99, 37]`:

![ll](http://www.thefirehoseproject.com/assets/sll-6b57051079e3a7bf21d743c9a8758f6b.png)

In the above example, the LinkedList starts with a node that contains the value 12 and is linked to the next node. The next node contains the value 99 and is linked to the next node. The next node has a value 37 and is linked to the `nil` value, which indicates it is the end of the list.

Despite the fact that a LinkedList is a complicated data structure, implementing it is quite easy. The following ruby code implements a LinkedList:

```
class LinkedListNode
  attr_accessor :value, :next_node
 
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end
```


Using that representation of a linked list, you can build the LinkedList, `node3`, which represents data from the diagram displayed above, like this:

```
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
```

### Dealing with a LinkedList

A LinkedList is a `recursive datatype`. This is because within one instance a LinkedListNode, the `next_nod`e can point to another LinkedListNode instance.

Writing code to output the contents of the LinkedList can be done by writing the following `print_values` method. This method uses `recursion`, meaning the function calls itself (and also checks that it is able to call itself before it does).

```
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
 
print_values(node3)
```


That code should produce an output that looks something like this:

```
kens-air:firehose-lessons kenmazaika$ ruby code.rb
12 --> 99 --> 37 --> nil
```

## Linked List Problem #1

Implement the reverse_list method such that when you run the following code:


```
print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)
```


The following is the output in the terminal window:


```
kens-air:firehose-lessons kenmazaika$ ruby code.rb
12 --> 99 --> 37 --> nil
------
37 --> 99 --> 12 --> nil
```


There are two main methods to solve this problem. Here are hints you should provide:


### HINT: Use a Stack & Iterative Code

There are two ways to solve this problem, but in this assignment we want you to write iterative code to reverse the LinkedList using a Stack.


### What is a Stack!?

Another data type exists that is called a [Stack](http://en.wikipedia.org/wiki/Stack_(abstract_data_type)) that will make it easier to solve this conceptually. A Stack is a data structure that is `Last-In-First-Out (LIFO)` and is the opposite of a queue. Think about a Stack like you would think about a stack of plates if you were cooking and washing the dishes. You will likely take the top plate off the stack, use it, eat your dinner, wash it and put it back on top of the stack. You will keep pulling the top plate off the stack until more guests arrive. If two people ate dinner together you would take the top two plates off the stack, use them, wash them, and put them back on top.

Here is a graphical representation of a Stack:

![stack](http://www.thefirehoseproject.com/assets/stack-d26ee2d5e66455edaa3a14861724ec67.png)

### Implement a Stack

Implementing a stack is possible using only the LinkedList we implemented in the previous part of the assignment.

**First implement a Stack using only the data type of a LinkedList.** Do not use an Array, that's cheating and cheating is the devil. Fill in the blanks with the following code:

```
class Stack
    attr_reader :data
    
    def initialize
        @data = nil
    end

    # Push an item onto the stack
    def push(element)
        # IMPLEMENT ME!
    end

    # Pop an item off the stack.  
    # Remove the last item that was pushed onto the
    # stack and return it to the user
    def pop
        # IMPLEMENT ME
    end

end
```

### Implement the reverse_list method

As a hint to implement the reverse_list method, here's a place to start out.


```
def reverse_list(list)
    # ADD CODE HERE

    while list
        # ADD CODE HERE
        list = list.next_node
    end

    # ADD CODE HERE
end

```

**Hint:** Within the while loop above, you can access the value of the current LinkedListNode by calling list.value.
