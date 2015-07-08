
## Linked List Problem #2

### Use Mutation

We just reversed a LinkedList by building a new Stack and leveraging the properties of the stack. In this assignment, you will change the existing LinkedList and as you go through the list you will go adjust the next_node to point to the previous node.

Another way to think about the problem is to change the direction the arrows point on the items you currently have. Take this example of a LinkedList again as a starting point.

![original](http://www.thefirehoseproject.com/assets/sll-6b57051079e3a7bf21d743c9a8758f6b.png)


In the example above, adjust the node with a value of 12 have the `next_node` of `nil`, then change the element with a value of 99 to have the `next_node` to be the element with the value of 12, finally modify the element with the value of 37 to have the next_node of the item with the value of 99.

See the image below for an example of how to perform this:


![reversed](http://www.thefirehoseproject.com/assets/ll-mutated-a2c9e981fa05abb061dc1c8f5869c051.png)

**So with this method you'll want to change the value of the `next_node` as you traverse the list.**

Here's a hint to get you started:

```
def reverse_list(list, previous=nil)
    # do stuff
end
```

Fill in the blanks and make this method reverse the existing LinkedList and return the value of the new head, which would be the previous tail of the LinkedList.

You will not need to use any other data structure for this problem. You will not need to use a Stack for example.