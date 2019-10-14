# Monday October 14

## Update

* Fixed all tests for collection usage and added missing ones for other addition methods.
* Introduced the collection type to `CollectionContentType` as required for the aliasing algorithm.
* Identified conflicting scenarios for aliasing (when the collection type matches):
    * Merge: the `CollectionContentType` instances of the collections involved both contain data.
    * Replace: at least one of the `CollectionContentType` instances is empty.
* Identified aliasing scenarios:
    * External: a variable/return type/method parameter is assigned a collection that had been assigned to another variable/return type/method parameter.
    * Internal: a variable/return type/method parameter which had already been assigned a collection is now assigned another one.
    
## Questions

* To store the type of collection involved with a `CollectionContentType` we are traversing the call contexts. What should we do if there is no `Collection` in the context? Right now the type of collection remains `nil`.
    

# Sunday September 29

## Update

* Review usage of Array in OrderedCollection, used Array messages are:
    * At:put:
    * CopyFrom: to: (asNewArray)
    * At: (at:)
    * Size
    * Array new: aSize (initializeofSize: aSize)
    * replaceFrom: to: with: startingAt: (insert: before:)
    * From: to: put: (makeRoomAtFirst)
    * <- anArray (setCollection:)
    * <- anArray (setContents:)
    * mergeSortFrom: to: by: 
    * Swap: with: (SortedColletion>>defaultSort:to:
    * Copy (SortedCollection>>postCopy)
    * quickSortFrom: to: (SortedCollection>>reSort).
* Create TypedArray and start reviewing each method
    * MessageNotUnderstood implemented for both class and instance to proxy every message.
    * Reimplement messages that exist in object, such as: at:put:, at:, size.
    * Adding testing coverage as we follow through is of the methods being used.
* Revisit in the image all the changes required for the new aliasing implementation using TypedArray (several changes must be rollbacked for the later).

# Sunday September 15

## Update

* Managed to cherry-pick Mac display fix and now VM is generated with proper display handling. We couldn't update our VMMaker so it still requires a large display (Airplay) to work.
* Incorporated missing Hernan changes (2246) to VM code.
* Updated image based on Hernan latest (Cuis-3851) by loading our package and initializing it. Note: `specialObjectsArray` has been modified but `recreateSpecialObjectsArray` has not been recompiled.

## Research

* We have revisited our aliasing solution of storing multiple CollectionContentType instances on the type arrays.
    * We think it's ok because it allows Collection instances to be independent from one another and still allows us to render more accurate information on types when analysing a variable (we can collapse all stored CollectionContentType data). We are only missing the data of the Collection type itself. 
    * The other remaining problem is the storage to instances ratio: there are 10 slots for CollectionContentTypes and many instances over time. To solve this, we can put a weak reference to the Collection instance on each CollectionContentType. That way once that reference is gone and the storage is full we can collapse matching CollectionContentTypes and release slots.
* We have evaluated the TypedArray idea:
    * We can make `Array new` (and all constructors) start returning a TypedArray, a polymorphic class with a CollectionContentType instance variable (since heritance would constrain us to the non instance variable world of Arrays).
    * For future extensibility we could override the `messageDoesNotUnderstand` to create the missing methods in TypedArray.
    * TypedArray would intercept the `at:put:` method to store the types being used, meaning we would need no context looping magic on the VM primitive to get types.
    * Our current VM changes in `keepTypeInformationFor:on:` would still apply, only we would use an Array of known Collection classes and where their internal TypedArray are positioned, to reach the required CollectionContentType.
    * In this case the Collection type itself for the aliasing issue could be obtained analysing the sender of a TypedArray initialization.
    * Note: we may need some classes to instantiate actual Arrays, for example, CollectionContentType or even the Arrays used for raw types.

## Questions

* How can we update the LiveTyping package? We tried but the installer assumes the package has never been installed and does not seem to have a uninstall feature.
* The custom collection solution is working with some work left to do (alising optimizations and cache workaround). The way we see it we have 3 options and they depend on how much work on the tooling we have ahead of us:
    * we can discard the custom collection approach and work on the TypedArray
    * work on both and compare them as part of our thesis
    * finish the custom collection approach and mention the TypedArray as future work

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
