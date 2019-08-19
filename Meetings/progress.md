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