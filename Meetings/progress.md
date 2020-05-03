# Sunday May 3

The world is a dark place. Entire cities have frozen still to combat a tiny invisible enemy. Major economies around the world are on the verge of collapse. Depression and despair abound. But one thing remains sacred. Our unwavering determination to NOT work and instead fill our minds with short lived sprouts of dopamine. In the midst of this absurd circumstances, we have found the will to concentrate for a few minutes. I shall now recite our findings for future generations of nerds...

## Update

* Discussed a shower thought to detect parameterized methods in generic classes. We could mark a method as potentially parametric when calculating it's return type, if its type array is full and results in Object. This heuristic is based on the fact that single typed methods will never fill their type array and the ones that return Object for real will probably be limited to a few classes. To make the heuristic more valuable, we could promt users to determine whether the method is parametric or not.
* We analysed the DynamicType hierarchy and uses. It seems that we could add there a ParameterizedType which we would use in the selected methods of generic classes by overriding the `createMethodReturnTypeInfoOf:` method. For TypedArrayCollection, for example, we would check if the method is `#anyOne` and then return a ParameterizedType. Then, in the `typesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons castingWith: aTypeCastApplier` method from `MessageNode` we will receive the ParameterizedType and use the context information from the node to get the generic data. This solution would work well with the general approach we discussed as we would mark all methods in class declared as generic and store a list of parameterized methods for each one.

## Next Steps

* Create a test that allows validating the behaviour described. We will need to research the autocompletion tests available and how to work from there.

# Tuesday April 14

## Answers

* We indeed need to annotate somehow, ideally automatically, that generics are returned in a method. We could either make use of the DynamicType infrastructure or modify the returnTypes of the method.

# Sunday April 12

## Update

* We continued reviewing auto completion scenarios. For unary messages we could code in the heuristic but it wouldn't be right, particularly because since methods in the Collection hierarchy are often defined "high up" there's a lot of chance of false positives. 
* We created a test class to validate the autocompletion behavior which is not affected by all our test clean up code. We confirmed the CCT is available for unary messages at the MessageNode.
* The lack of contextualization for methods is troubling. It may be an even bigger problem than just for this collections.


## Questions

* What's the purpose of TypeCastApplier? We need an explanation of the entire auto completion model.

# Sunday March 29

## Update

* Analyzed auto completion based on expression "aCollection first " which considering our project should take into account the item types in "aCollection" and suggest selectors based on those types. Today's code looks into the return type of "first" as a method of types in "aCollection", but this return type is not contextualized: for a regular collection used extensively it will probably be Object, as "first" will have return a wide variety of values (not to mention only the first 10 returns will be considered). The problem here is that while we do have the contents type available it's hard to decide when to use them: they do apply to "first" but they wouldn't apply to "size". We thought about using them when the return type is Object but it would be merely an heuristic (Object might be the correct type or we could be getting a more concrete type just because the first 10 executions of the method where on the same or few instances). 
* If we consider our idea for a general solution to the generics issue, where users would indicate a class to feature generics and the method where we should collect types, then an option would be to also indicate methods where the return type is generic. Then we would know when to use the regular return type data or the content type data. This is equivalent to users featuring a generic type declared for a class as a parameter or return type of a method in statically typed languages. The difference is that, once instrumented, with live typing you wouldn't then have to bind the generic type when making use of such objects, it would be done for you via the type collection.
* We are evaluating whether or not such instrumentation is the only way to make this work or we are missing something.

# Sunday March 15

## Update

* Added logic for nested collections. This required not only doing the same VM work on the TypedArray, but generating nested generics by making the raw to live types adapter recursive when dealing with generics.
* Refactored tests to simplify clean up and organize them according to what they actually test. We found many aliasing issues because of faulty cleaning so we had to fix some bugs there and include clean ups in more places.
* Fixed some shameful 1 AM code.
* Removed unused classes and named some classes accordingly.

## TODO

* Honor the "upTo" parameter when printing.
* Create a proper method for ordering the types when printing.
* Consider whether we require some aliasing logic on the image as well.
* Consider creating a hierarchy for type nodes so we can visit them instead of hard coding checks in the printer.
* Consider making the supertype of two unrelated classes a union type, so we can code the "any" logic for union types instead of checking for an Object supertype.
* Evaluate turning the solution general by first modifyng the index array in the special objects array into an index path array (this would allow to define an entire path to a "ContentTypes" object instead of having to rely on knowing the TypedArray). Extensive rename needs to be done as well.


# Sunday February 16

## TODO

--> Raw Types
[TAC<Int, Float, String>, TAC<?>, Int]

--> Live Types
[TAC<Int, Float, String>, TAC<?>, Int]
--> Supertype
[Object]

* Map from RAW_TYPES to LiveType hierarchy MUST consider that several CCT may exist for the same Collection as they come from other variables, they are already assigned (i.e.: 
    * [TAC<int>, int, TAC<String>] --> must convert to --> [TAC<int, String>, int] but,
    * [TAC<int>, int, LL<String>] --> remains the same.
* Some of the aliasing logic must be included in the image for nested scenarios: when a generic class is added as a generic of another class (i.e.: collection add: anotherCollection). As the RAW_TYPES addition is on the image (for collection), the aliasing must be replicated.

# Tuesday February 12

## Update

* Finished implemeting SystemType hierarchy to solve tooling issue with printing.

## Questions

* Should the supertype of a fixed type and an empty one be ProtoObject or Object? We are considering the nil/Object hierarchy here.
    --> Evaluate UNION TYPE


# Tuesday February 4

## Update

* Brainstormed ideas to print our 4 scenarios: no types, all class types, only collection type and a mix of class and collection types. Mariano suggested transforming the raw types into a proper type hierarchy (class vs generic types) before printing and creating a supertype logic for them which would allow a single printer for all scenarios: print supertype if more than one, print single types. While discussing that, we realized it would be a general approach to generics considering a type to be a principal type and a listing of generic types (a class type would be one with no generics and a Dictionary would have 2 generic types, for example).
* Discussed how to generalize the generics issue on the raw types as well. Proposal: users could select they want to handle generics on a class which would add a "GenericTypesCollector" as an instance variable, then they would select "collection methods" indicating whether a certain parameter or return type should be used. For us this would mean recompiling the method to store the selected data on the collector and adding the class as a generic one (to our special object list) and the instance variable index as a generic direction (to our special object index list). Note that this last listing should actually be a path to follow to the collector since for our type arrays it is nested.
* Our solution should be adapted to handle multiple generics since "CollectionContentTypes" is only storing one.

# Sunday February 2

## Update

* Splitted entities such as SupertypeDetective and TypePrinter for printing type info.
* Added new test cases for tooltip coverage.

## TODO

* Left some legacy code within the TypeInfo hierarchy we need to review (it is used everywhere and we don't know how many tests it has).
* Some test are failing just because of the order in which classes are printed, we need to try and apply some order there. 


# Sunday January 12

## Update

* It's been a long time since we last annotated our progress.
* VM changes are done. We are working on the image side.
* Working on the tooltip and how it is showned.
* [QQ] Why does Array implements the message >>types? 

# Sunday December 8

## Update

* [BUG] Return types are not being collected when bytecode is `Quick return field 0 (0-based)`
* We removed the return type for every class method in TypedArrayCollection and Collection (for the with: method)
* Migrated all tests to TypedArrayCollection.
* [BUG] test035 is broken, seems that though we create the aliasing, we are not merging properly.
* [WARN] We are forcing cleanup AdditionalMethodState on testSetup

## TODO

* We need to test this on an actual scenario, to see whether aliasing is actually a problem.
* `IsAssigned` is set on the first keepTypeInfo, but that could be used for method param, not assignment?? TODO check if this is true


# Sunday December 1

## Update

* Debugged and fixed several more bugs: missing null checks, integer conversions and some wrong logic.
* Validated changes: algorithm is working and content types are bien stored for all live typing instances (instance variables, method variables and return types). However, the aliasing mechanism is being applied to newly created collections instances, which means all of them sharing the same content types. E.g. the first time a type aware collection is created through a initialization method, its content type is stored as return type of that method causing the second instantiation to override its content type with the stored one. 
* We need to think this through carefully as perhaps aliasing should only be applied to instance variables or live typing avoided for “generic classes” where types will never be fixed.

# Sunday October 20

## Update

* Defined merging should be image based when collections are from different variables.
* Identified CollectionContentTypes possible states.
* Created tests for all aliasing scenarios before doing any changes to the VM.
* Added 'isAssigned' inst var to CollectionsContentType for tri-valued logic in aliasing (empty, assigned, in use).
* Updated CollectionLiveTyping>>initialize message to update specialObjectsArray. The TypedArrayCollection lives within an Array so that VM algorithm can automatically support other collections in the future.

## TODO

* Implement TypedArrayCollection support in VM as well as making every test pass green (tests 32 to 40 are now failing, all related to aliasing algorithm).

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
