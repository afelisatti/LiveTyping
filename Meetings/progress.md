# Sunday September 1

## Update

* Latest VMs of opensmalltalk are still broken. The update of trunk hangs.
* Discussed options to support all Collections. We couldn't find a method that works as "kindOf:" in the VM but we think we could expose an array in the special objects array containing all collection classes and check that way.
* Part of the problem of supporting all Collections is the fact that we couldn't add an instance variable to all of them as we have in our own implementation. This partly happens because of Array not being a proper Object but also because there are so many live instances of Collections that things start to break when a new instance variable is added to them (for example, with Dictionary). We've discussed indirection solutions for this: having a mediator object which, using weak references, for each collection can give us their type array. During the initialization of a Collection we would create their array in the mediator and use the mediator in the VM to find the arrays. Since in the VM we cannot execute code that means looking in all of the array for the data, and we've seen there over 100k instances of Array alone. A high performance penalty might be payed for such a solution.
* We will implement the solution and see the impact it has.

## Questions

* Is there a way to evaluate the performanc of our changes?

# Tuesday August 20

## Update

* Latest VMs of opensmalltalk are broken, we couldn't get the latest VMMaker to update our sources and create a VM whose display works properly in Mac.
* We created a LiveTyping fork, uploaded our VM sources and image package, which includes an "installer". 
* All tests are working, including the ones validating we are storing input types in our collection. This works by intercepting the "at: put:" primitive, searching the stack for the collection and storing the type information in that case. 
* Tech debt:
	* Enable primitive caching again: we disabled it to make our "at: put:" version work.
	* Remove all references of "HaltingClass": we created it for debugging purposes.
* Pending tasks:
	* Update VM sources to an updated version that doesn't break the display on Mac.
	* Identify how to do "isKindOf:" from the VM to start supporting all Collections.
	* Decouple the Collection instance from its type information with a mediator so that it's not necessary to change the classes instance variables (which is not allowed in most classes).
	* Revisit aliasing issues: we are currently storing many collection content types in a type array instead of, for example, collapsing them.

## Questions

* Is there any way to solve the VM Maker issue ourselves? We will email the list otherwise.
* How should we proceed? Should we complete the implementation for all Collections first, even without caching?
