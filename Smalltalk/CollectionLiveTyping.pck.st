'From Cuis 5.0 [latest update: #3851] on 22 December 2019 at 10:21:56 pm'!
'Description Please enter a description for this package'!
!provides: 'CollectionLiveTyping' 1 3!
SystemOrganization addCategory: #'CollectionLiveTyping-Tests'!
SystemOrganization addCategory: #CollectionLiveTyping!


!classDefinition: #TypedArrayCollection category: #'CollectionLiveTyping-Tests'!
OrderedCollection subclass: #TypedArrayCollection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping-Tests'!
!classDefinition: 'TypedArrayCollection class' category: #'CollectionLiveTyping-Tests'!
TypedArrayCollection class
	instanceVariableNames: ''!

!classDefinition: #TypedArrayCollection2 category: #'CollectionLiveTyping-Tests'!
TypedArrayCollection subclass: #TypedArrayCollection2
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping-Tests'!
!classDefinition: 'TypedArrayCollection2 class' category: #'CollectionLiveTyping-Tests'!
TypedArrayCollection2 class
	instanceVariableNames: ''!

!classDefinition: #CollectionLiveTyping category: #CollectionLiveTyping!
OrderedCollection subclass: #CollectionLiveTyping
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping'!
!classDefinition: 'CollectionLiveTyping class' category: #CollectionLiveTyping!
CollectionLiveTyping class
	instanceVariableNames: ''!

!classDefinition: #LiveTypingCollectionTests category: #'CollectionLiveTyping-Tests'!
TestCase subclass: #LiveTypingCollectionTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping-Tests'!
!classDefinition: 'LiveTypingCollectionTests class' category: #'CollectionLiveTyping-Tests'!
LiveTypingCollectionTests class
	instanceVariableNames: ''!

!classDefinition: #XXXTypeInfo category: #CollectionLiveTyping!
VariableTypeInfo subclass: #XXXTypeInfo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping'!
!classDefinition: 'XXXTypeInfo class' category: #CollectionLiveTyping!
XXXTypeInfo class
	instanceVariableNames: ''!

!classDefinition: #ATestClassForCollections category: #'CollectionLiveTyping-Tests'!
Object subclass: #ATestClassForCollections
	instanceVariableNames: 'instanceVariable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping-Tests'!
!classDefinition: 'ATestClassForCollections class' category: #'CollectionLiveTyping-Tests'!
ATestClassForCollections class
	instanceVariableNames: ''!

!classDefinition: #AnotherTestClassForCollections category: #'CollectionLiveTyping-Tests'!
Object subclass: #AnotherTestClassForCollections
	instanceVariableNames: 'instanceVariable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping-Tests'!
!classDefinition: 'AnotherTestClassForCollections class' category: #'CollectionLiveTyping-Tests'!
AnotherTestClassForCollections class
	instanceVariableNames: ''!

!classDefinition: #HaltingClass category: #'CollectionLiveTyping-Tests'!
Object subclass: #HaltingClass
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping-Tests'!
!classDefinition: 'HaltingClass class' category: #'CollectionLiveTyping-Tests'!
HaltingClass class
	instanceVariableNames: ''!

!classDefinition: #CollectionsContentType category: #CollectionLiveTyping!
Object subclass: #CollectionsContentType
	instanceVariableNames: 'contentTypes collectionType isAssigned'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping'!
!classDefinition: 'CollectionsContentType class' category: #CollectionLiveTyping!
CollectionsContentType class
	instanceVariableNames: ''!

!classDefinition: #TypedArray category: #CollectionLiveTyping!
Object subclass: #TypedArray
	instanceVariableNames: 'innerArray types'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping'!
!classDefinition: 'TypedArray class' category: #CollectionLiveTyping!
TypedArray class
	instanceVariableNames: ''!


!TypedArrayCollection class methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/8/2019 18:46:56'!
createMethodReturnRawTypesOf: aMethod

	"self halt."
	"(#(initialize) includes: aMethod selector) ifTrue: [ ^nil ]."

	^super createMethodReturnRawTypesOf: aMethod ! !

!TypedArrayCollection class methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/8/2019 17:13:15'!
createMethodReturnTypeInfoOf: aMethod

	"(#(initialize) includes: aMethod selector) ifTrue: [ ^ ReturnTypeInfo of: aMethod are:`{TypedArrayCollection.}` ]."

	^super createMethodReturnTypeInfoOf: aMethod ! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 13:17:52'!
printOn: aStream 
	"Append a sequence of characters that identify the receiver to aStream."

	self printNameOn: aStream.
	self printElementsOn: aStream! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/22/2019 21:04:25'!
typeName
	^collectionType printString, ((XXXTypeInfo new: contentTypes) printTypesUpTo: 5)! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/17/2019 09:49:01'!
withAllSuperclasses
	^Array with: collectionType.! !

!TypedArrayCollection methodsFor: 'as yet unclassified' stamp: 'alf & mds 10/6/2019 20:12:02'!
contentTypes
	^ array contentTypes! !

!TypedArrayCollection methodsFor: 'as yet unclassified' stamp: 'alf & mds 10/14/2019 18:49:23'!
createArray: size
	^ TypedArray new: size withContentTypes: self contentTypes.! !

!TypedArrayCollection methodsFor: 'as yet unclassified' stamp: 'alf & mds 10/14/2019 18:52:00'!
initialize
	array := TypedArray new.
	^ self.! !

!TypedArrayCollection class methodsFor: 'as yet unclassified' stamp: 'ALF - MDS 12/1/2019 19:23:07'!
new
	^ super new initialize.! !

!CollectionLiveTyping class methodsFor: 'initialization' stamp: 'ALF & MDS 8/19/2019 16:57:53'!
initialize

	Utilities informUser: 'Initializing live typing' during: [ self initializeCollectionLiveTyping ].! !

!CollectionLiveTyping class methodsFor: 'initialization' stamp: 'alf & mtqp 12/8/2019 17:36:04'!
initializeCollectionLiveTyping
|newArray count collectionsArray typedArrayIndexes|
	
	(Smalltalk specialObjectsArray size < 63) ifTrue: [
		newArray := Array new: 67. 
		
		collectionsArray := Array new: 1.
		collectionsArray at: 1 put: TypedArrayCollection.
		
		typedArrayIndexes := Array new: 1.
		typedArrayIndexes at: 1 put: 1.
		
		count := 1.
		
		Smalltalk specialObjectsArray do: [:each | newArray at: count put: each. count := count + 1].
		newArray
			at: 64
			put: CollectionsContentType.
		newArray
			at: 66
			put: collectionsArray.
		newArray
			at: 67
			put: typedArrayIndexes.
			
			
		Smalltalk specialObjectsArray become: newArray.] 
	ifFalse: [
		(Smalltalk specialObjectsArray size > 64) ifTrue: [
			(
			 (Smalltalk specialObjectsArray at: 64) = CollectionsContentType and: 
			 (Smalltalk specialObjectsArray at: 66) = Array and:
			 (Smalltalk specialObjectsArray at: 67) = Array 
			) ifFalse: [ self error: 'Image cannot support LiveTyping for collections. Special objects array entries 63 to 67 are in use.'].
			]
		].! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 6/2/2019 20:42:41'!
cleanUp

	|aTestClassInstanceVariableRawTypes|
	aTestClassInstanceVariableRawTypes := ATestClassForCollections instanceVariablesRawTypes at: 1.
	(1 to: 10) do: [ :index | aTestClassInstanceVariableRawTypes at: index put: nil].
	self cleanUp: ATestClassForCollections method: #store:.
	self cleanUp: self class method: #receiveCollection:.
	self cleanUp: self class method: #return:.
	self cleanUp: self class method: #returnCollection.
	! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 6/2/2019 20:40:08'!
cleanUp: aClass method: aMethodSymbol

	| returnRawTypes variablesRawTypes variableRawTypes |
	variablesRawTypes := (aClass methodDictionary at: aMethodSymbol) variablesRawTypes.
	variablesRawTypes == nil ifFalse:[
		variableRawTypes := variablesRawTypes at: 1.
		(1 to: 10) do: [ :index | variableRawTypes at: index put: nil]].
	returnRawTypes := (aClass methodDictionary at: aMethodSymbol) returnRawTypes.
	(1 to: 10) do: [ :index | returnRawTypes at: index put: nil].! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 6/2/2019 20:40:28'!
receiveCollection: aCollection
	^ self.! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 6/2/2019 20:40:43'!
return: anObject
	^ anObject.! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/8/2019 17:33:46'!
returnCollection
	^ TypedArrayCollection new.! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/8/2019 21:33:10'!
setUp
	super setUp.
	self cleanUp.
	
	"This is required for cleaning up the temp variables of each testing method"
	LiveTypingCollectionTests initializeTypeInformationWithAllInstances.
	ATestClassForCollections initializeTypeInformationWithAllInstances.
	AnotherTestClassForCollections initializeTypeInformationWithAllInstances.

	 "TODO: This has to be here for now because of the with: method. We are yet to understand why the with: in Collection is creating aliasing. "
"	Collection class initializeTypeInformationWithAllInstances."

"	TypedArrayCollection class initializeTypeInformationWithAllInstances."

	
! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 13:05:18'!
tearDown
	self cleanUp.! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/8/2019 17:29:39'!
test001AssigningACollectionToAVariable
	"This test checks whether when a Collection is assigned to a variable a link is created between the variable's class (in the instanceVariablesRawTypes) and the collection's instance (of type CollectionsContentType)"

|aCollection aTestClass aTestClassRawTypes|

aTestClass := ATestClassForCollections new.
aCollection := TypedArrayCollection new.

aTestClass store: aCollection.

aTestClassRawTypes := aTestClass class instanceVariablesRawTypes at:1.
self assert: aCollection contentTypes equals: (aTestClassRawTypes at: 1).
self assert: aCollection contentTypes class equals: CollectionsContentType. ! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/8/2019 19:32:12'!
test002CollectionsContentTypeAliasing
 |aCollection anotherCollection aTestClass instanceVariableRawTypes |

aCollection := TypedArrayCollection new.
anotherCollection := TypedArrayCollection new.
aTestClass := ATestClassForCollections new.

aTestClass store: aCollection.
aTestClass store: anotherCollection.

instanceVariableRawTypes := ATestClassForCollections instanceVariablesRawTypes at: 1.

self assert: aCollection contentTypes equals: (instanceVariableRawTypes at: 1).  
self assert: anotherCollection contentTypes equals: (instanceVariableRawTypes at: 2). 


! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/8/2019 17:33:00'!
test003InnerArrayCollectsTypes
 |aCollection contentTypes aTestClass |

aCollection := TypedArrayCollection new.
aTestClass := ATestClassForCollections new.
aTestClass store: aCollection.

aCollection add: HaltingClass new.
aCollection add: 'aString'.
contentTypes := aCollection contentTypes.
self assert: (contentTypes containsType: HaltingClass). 
self assert: (contentTypes containsType: String).


! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/8/2019 17:33:22'!
test004ReceivingACollectionAsParameter
 |aCollection variablesRawTypes |

aCollection := TypedArrayCollection new.

self receiveCollection: aCollection.

variablesRawTypes := (self class methodDictionary at: #receiveCollection:) variablesRawTypes.
self assert: aCollection contentTypes equals: ((variablesRawTypes at: 1) at: 1).! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 6/2/2019 20:43:42'!
test005ReturningACollectionAsOutput
|aCollection returnRawTypes|

	aCollection := self returnCollection.
	returnRawTypes := (self class methodDictionary at: #returnCollection) returnRawTypes.
	
	self assert: aCollection contentTypes equals: (returnRawTypes at: 1).! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/8/2019 17:34:51'!
test006OtherParameterTypesCanBeStoreAfterACollection
 |aCollection variablesRawTypes |

aCollection := TypedArrayCollection new.

self receiveCollection: aCollection.
self receiveCollection: 'hello'.

variablesRawTypes := (self class methodDictionary at: #receiveCollection:) variablesRawTypes at: 1.
self assert: aCollection contentTypes equals: (variablesRawTypes at: 1).
self assert: String equals: (variablesRawTypes at: 2).! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/8/2019 17:34:57'!
test007OtherReturnTypesCanBeStoreAfterACollection
|aCollection returnRawTypes|

	aCollection := self return: TypedArrayCollection new.
	self return: 'hello'.
	returnRawTypes := (self class methodDictionary at: #return:) returnRawTypes.
	
	self assert: aCollection contentTypes equals: (returnRawTypes at: 1).
	self assert: String equals: (returnRawTypes at: 2).! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/8/2019 17:34:27'!
test008OtherVariableTypesCanBeStoreAfterACollection
|aCollection aTestClass aTestClassRawTypes|

aTestClass := ATestClassForCollections new.
aCollection := TypedArrayCollection new.

aTestClass store: aCollection.
aTestClass store: 'hello'.

aTestClassRawTypes := aTestClass class instanceVariablesRawTypes at:1.
self assert: aCollection contentTypes equals: (aTestClassRawTypes at: 1).
self assert: String equals: (aTestClassRawTypes at: 2).! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/8/2019 17:34:37'!
test009ParametersCollectsTypes
 |aCollection variablesRawTypes variableRawTypes contentTypes|

aCollection := TypedArrayCollection new.

self receiveCollection: aCollection.
aCollection add: 'hello'.
aCollection add: 1.

variablesRawTypes := (self class methodDictionary at: #receiveCollection:) variablesRawTypes.
variableRawTypes := variablesRawTypes at: 1.
contentTypes := variableRawTypes at: 1.
self assert: (contentTypes containsType: String).
self assert: (contentTypes containsType: SmallInteger).! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 6/2/2019 20:57:07'!
test010ReturnCollectsTypes
 |aCollection returnRawTypes contentTypes|

aCollection := self returnCollection.
aCollection add: 'hello'.
aCollection add: 1.

returnRawTypes := (self class methodDictionary at: #returnCollection) returnRawTypes.
contentTypes := returnRawTypes at: 1.
self assert: (contentTypes containsType: String).
self assert: (contentTypes containsType: SmallInteger).! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 9/29/2019 21:01:15'!
stringsTypedArray
	|array|
	array := TypedArray new. 
	array at: 1 put: 'aString'.
	array at: 2 put: 'anotherString'.
	array at: 3 put: 'aThirdString'.
	array at: 4 put: 'aFourthString'.
	^ array.! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/9/2019 19:19:30'!
test011CreateTypedArrayWithOneElement
	"Creates a basic TypedArray with just one element, validating that methods defined in Object are overwriten in TypedArray"

	|array|

	array := TypedArray new. 
	array at: 1 put: 'aString'.
	
	self assert: 'aString' equals: (array at:1).
	self assert: 10 equals: (array size).! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/9/2019 19:19:45'!
test012CopyFromTo
	"Validates Array>>copyFrom: to: is implemented in TypedArray "

	|array aCopiedArray|

	array := self stringsTypedArray.
	aCopiedArray := array copyFrom: 1 to: 4.	
	
	self assert: 'aString' equals: (aCopiedArray at:1).
	self assert: 'anotherString' equals: (aCopiedArray at:2).
	self assert: 'aThirdString' equals: (aCopiedArray at:3).
	self assert: 'aFourthString' equals: (aCopiedArray at:4).
	self deny: array = aCopiedArray.
	! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/9/2019 19:19:55'!
test013ReplaceToFromWithStartingAt
	"Validates Array>>replaceTo: from: with: startingAt: is implemented in TypedArray "

	|array anotherArray|

	array := self stringsTypedArray.
	anotherArray := Array with: 1 with: 2 with: 3.

	array
		replaceFrom: 2
		to: 3
		with: anotherArray
		startingAt: 1.
	
	self assert: 'aString' equals: (array at:1).
	self assert: 1 equals: (array at:2).
	self assert: 2 equals: (array at:3).
	self assert: 'aFourthString' equals: (array at:4).
	! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/9/2019 19:20:04'!
test014ReplaceToFromWithStartingAtWhenOtherIsTypedArray
	"Validates Array>>replaceTo: from: with: startingAt: is implemented in TypedArray "

	|array anotherArray|

	array := self stringsTypedArray.
	anotherArray := TypedArray with: 1 with: 2 with: 3.

	array
		replaceFrom: 2
		to: 3
		with: anotherArray
		startingAt: 1.
	
	self assert: 'aString' equals: (array at:1).
	self assert: 1 equals: (array at:2).
	self assert: 2 equals: (array at:3).
	self assert: 'aFourthString' equals: (array at:4).
	! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/9/2019 19:20:12'!
test015FromToPut
	"Validates Array>>from:to:put: is implemented in TypedArray "

	|array|

	array := self stringsTypedArray.

	array
		from: 2
		to: 3
		put: nil.
	
	self assert: 'aString' equals: (array at:1).
	self assert: nil equals: (array at:2).
	self assert: nil equals: (array at:3).
	self assert: 'aFourthString' equals: (array at:4).
	! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/9/2019 19:20:19'!
test016AtPutCollectsTypes
	"Validates Array>>at:put: collects type information into CollectionsContentType"

	|array|

	array := self stringsTypedArray.

	self assert: 1 equals:  array contentTypes size.
	self assert: true equals: (array contentTypes containsType: String) 
	! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/9/2019 19:20:26'!
test017FillContentTypes
	|types|
	types := CollectionsContentType new. 
	
	types add: String.
	types add: Object.
	types add: HaltingClass.
	types add: Integer.
	types add: CollectionsContentType.
	"there are 5 collected types"
	types add: LiveTypingCollectionTests.
	types add: Collection.
	types add: SequenceableCollection.
	types add: ArrayedCollection.
	types add: OrderedCollection.
	"there are 10 collected types, it should now be filled and every other type ignored."
	
	types add: Array.
		
	self assert: 10 equals:  types size.
	self assert: false equals: (types containsType: Array).! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'ALF - MDS 12/1/2019 20:52:38'!
test018TypedArrayCollectionAdd
	"The first step to test the TypedArray object is to use it in a subclass of OrderedCollection that we can control"

	|collection|
	
	collection := TypedArrayCollection new.
	collection add: 'hello'.
	collection add: 'world'.
	collection add: 1.
	
	self assert: collection contentTypes size equals: 2.
	self assert: (collection contentTypes containsType: String) equals: true.
	self assert: (collection contentTypes containsType: SmallInteger) equals: true.! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/9/2019 19:22:59'!
test019TypedArrayCollectionAddAfterIndex
	"Execute add:afterIndex: message from OrderedCollection"

	|collection|
	
	collection := TypedArrayCollection new.

	collection add: 'hello'.
	collection add: 1 afterIndex: 1.
	
	self assert: collection contentTypes size equals: 2.
	self assert: (collection contentTypes containsType: String) equals: true.
	self assert: (collection contentTypes containsType: SmallInteger) equals: true.						! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/9/2019 19:34:41'!
test020TypedArrayCollectionAddBefore
	"Executes add:before message from OrderedCollection"

	|collection|
	
	collection := TypedArrayCollection new.

	collection add: 'hello'.
	collection add: 1 afterIndex: 1.
	collection add: Array before: 'hello'.
	
	self assert: collection contentTypes size equals: 3.
	self assert: (collection contentTypes containsType: Array class) equals: true.
						! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/9/2019 19:34:54'!
test021TypedArrayCollectionAddBeforeIndex
	"Executes add:beforeIndex: from OrderedCollection"

	|collection|
	
	collection := TypedArrayCollection new.

	collection add: 'hello'.
	collection add: 1 afterIndex: 1.
	collection add: Array before: 'hello'.
	collection add: CollectionsContentType beforeIndex: 2.
	
	self assert: collection contentTypes size equals: 4.
	self assert: (collection contentTypes containsType: CollectionsContentType class) equals: true.
						! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/9/2019 19:35:11'!
test022TypedArrayCollectionAddFirst
	"Execute all different add messages from OrderedCollection"

	|collection|
	
	collection := TypedArrayCollection new.

	collection add: 'hello'.
	collection add: 1 afterIndex: 1.
	collection addFirst: LinkedList.
	
	self assert: collection contentTypes size equals: 3.
	self assert: (collection contentTypes containsType: LinkedList class) equals: true.
						! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/9/2019 19:35:18'!
test023TypedArrayCollectionAddLast
	"Executes addLast: from OrderedCollection"

	|collection|
	
	collection := TypedArrayCollection new.

	collection add: 'hello'.
	collection add: 1 afterIndex: 1.
	collection addLast: OrderedCollection.
	
	self assert: collection contentTypes size equals: 3.
	self assert: (collection contentTypes containsType: OrderedCollection class) equals: true.
						! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/14/2019 19:14:30'!
test024TypedArrayCollectionMakeRoomAtFirst
	"Executes makeRoomAtFirst from OrderedCollection"

	|collection|

	collection := TypedArrayCollection new.
	collection add: 'aString'.
	
	collection makeRoomAtFirst.! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/14/2019 19:14:40'!
test025TypedArrayCollectionAtPut
	"Executes addLast: from OrderedCollection"

	|collection|
	collection := TypedArrayCollection new.

	collection add: 'hello'.
	collection at: 1 put: 42.
	
	self assert: collection size equals: 1.
	self assert: (collection at: 1) equals: 42.
	self assert: collection contentTypes size equals: 2.
	self assert: (collection contentTypes containsType: String) equals: true.
	self assert: (collection contentTypes containsType: SmallInteger) equals: true.
						! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/14/2019 19:14:53'!
test026TypedArrayCollectionAddAllFirstOrderedCollection
	"Executes addAllFirst from OrderedCollection"

	self typedArrayCollectionAddAllFirst: OrderedCollection.
						! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/14/2019 19:15:01'!
test027TypedArrayCollectionAddAllFirstTypedCollection
	"Executes addAllFirst from TypedCollection"

	self typedArrayCollectionAddAllFirst: TypedArrayCollection.
						! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/14/2019 19:15:09'!
test028TypedArrayCollectionAddAllLastOrderedCollection
	"Executes addAllLast from OrderedCollection"

	self typedArrayCollectionAddAllLast: OrderedCollection.
						! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/14/2019 19:15:19'!
test029TypedArrayCollectionAddAllLastTypedCollection
	"Executes addAllLast from TypedCollection"

	self typedArrayCollectionAddAllLast: TypedArrayCollection.
						! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/14/2019 20:10:09'!
test030TypeOfCollectionContentType
	"Validates the type of collection assigned to CollectionContentType upon its creation"

	|collection|
	
	collection := TypedArrayCollection new.
	
	self assert: collection contentTypes type equals: TypedArrayCollection.
						! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/14/2019 20:32:34'!
test031TypeOfCollectionContentTypeCannotBeFound
	"From a non collection context the type should be nil"

	|array|
	
	array := TypedArray new.
	
	self assert: array contentTypes type equals: nil.
						! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/14/2019 19:08:09'!
typedArrayCollectionAddAllFirst: aCollectionClass
	"Executes addAllFirst from OrderedCollection"

	|collection targetCollection|
	collection := TypedArrayCollection new.
	targetCollection := aCollectionClass with: 42 with: Array.

	collection add: 'hello'.
	collection addAllFirst: targetCollection.
	
	self assert: (collection at: 1) equals: 42.
	self assert: (collection at: 2) equals: Array.
	self assert: (collection at: 3) equals: 'hello'.
	self assert: collection contentTypes size equals: 3.
	self assert: (collection contentTypes containsType: Array class) equals: true.
	self assert: (collection contentTypes containsType: SmallInteger) equals: true.
	self assert: (collection contentTypes containsType: String) equals: true.
						! !

!LiveTypingCollectionTests methodsFor: 'typed-array' stamp: 'alf & mds 10/14/2019 19:10:21'!
typedArrayCollectionAddAllLast: aCollectionClass
	"Executes addAllLast from a collection"

	|collection targetCollection|
	collection := TypedArrayCollection new.
	targetCollection := aCollectionClass with: 42 with: Array.

	collection add: 'hello'.
	collection addAllLast: targetCollection.
	
	self assert: (collection at: 1) equals: 'hello'.
	self assert: (collection at: 2) equals: 42.
	self assert: (collection at: 3) equals: Array.
	self assert: collection contentTypes size equals: 3.
	self assert: (collection contentTypes containsType: Array class) equals: true.
	self assert: (collection contentTypes containsType: SmallInteger) equals: true.
	self assert: (collection contentTypes containsType: String) equals: true.
						! !

!LiveTypingCollectionTests methodsFor: 'aliasing' stamp: 'ALF - MDS 10/20/2019 17:44:30'!
test032VariableWithNoDataHasEmptyContentType
	"When a variable has never been assigned, its raw types should be empty"

	| test testTypes |
	
	test := ATestClassForCollections new.
	
	testTypes := test rawTypes.
	testTypes do: [:item | self assert: item isNil].! !

!LiveTypingCollectionTests methodsFor: 'aliasing' stamp: 'ALF - MDS 10/20/2019 18:12:59'!
test033VariableWithNoDataIsAssignedFirstContentType
	"When a variable is first assigned, its raw types become the assignee's"

	|test testTypes collectionTypes|
	
	test := ATestClassForCollections new.
	test store: TypedArrayCollection new.
	
	testTypes := test rawTypes.
	collectionTypes := test retrieve contentTypes.
	
	self assert: collectionTypes equals: (testTypes at:1).! !

!LiveTypingCollectionTests methodsFor: 'aliasing' stamp: 'ALF - MDS 10/20/2019 18:16:07'!
test034VariableWithDataAssignmentReplacesEmptyContentType
	"When a variable is assigned, the assignees content types becomes the variable's content types"

	|collection test testTypes collectionTypes anotherCollectionTypes|
	
	test := ATestClassForCollections new.
	test store: TypedArrayCollection new.
	collection := test retrieve.
	test store: TypedArrayCollection new.
	
	testTypes := test rawTypes.
	collectionTypes := collection contentTypes.
	anotherCollectionTypes := test retrieve contentTypes.
	
	self assert: collectionTypes equals: (testTypes at:1).
	self assert: anotherCollectionTypes equals: collectionTypes.! !

!LiveTypingCollectionTests methodsFor: 'aliasing' stamp: 'ALF - MDS 10/20/2019 18:23:40'!
test035VariableWithDataAssignmentReplacesContentTypeMergingItsData
	"When a variable is assigned, the assignees content types becomes the variable's content types merging their content."

	|collection test testTypes collectionTypes anotherCollectionTypes|
	
	test := ATestClassForCollections new.
	
	test store: (TypedArrayCollection with: 1).
	collection := test retrieve.
	test store: (TypedArrayCollection with: 'Hello').
	
	testTypes := test rawTypes.
	collectionTypes := collection contentTypes.
	anotherCollectionTypes := test retrieve contentTypes.
	
	self assert: collectionTypes equals: (testTypes at:1).
	self assert: anotherCollectionTypes equals: collectionTypes.
	
	self assert: ((testTypes at: 1) containsType: SmallInteger).
	self assert: ((testTypes at: 1) containsType: String).! !

!LiveTypingCollectionTests methodsFor: 'aliasing' stamp: 'ALF - MDS 10/20/2019 18:34:40'!
test036VariableWithDataAssignmentOfAssignedEmptyCollectionCopiesIt
	"When a variable is assigned and the empty assignee has been assigned before, a new entry is created for it"

	|collection test anotherTest testTypes anotherTestTypes collectionTypes anotherCollectionTypes|
	
	test := ATestClassForCollections new.
	anotherTest := AnotherTestClassForCollections new.
	
	test store: (TypedArrayCollection new).
	collection := test retrieve.
	anotherTest store: (TypedArrayCollection new).
	test store: anotherTest retrieve.
	
	testTypes := test rawTypes.
	anotherTestTypes := anotherTest rawTypes.
	collectionTypes := collection contentTypes.
	anotherCollectionTypes := test retrieve contentTypes.
	
	self deny: (testTypes at: 1) = (anotherTestTypes at: 1).
	self assert: (testTypes at: 2) equals: (anotherTestTypes at: 1).
	self assert: collectionTypes equals: (testTypes at:1).
	self assert: anotherCollectionTypes equals: (anotherTestTypes at: 1).! !

!LiveTypingCollectionTests methodsFor: 'aliasing' stamp: 'alf & mtqp 12/8/2019 19:39:34'!
test037VariableWithDataAssignmentOfAssignedCollectionCopiesIt
	"When a variable is assigned and the assignee has been assigned before, a new entry is created for it without merging"

	|collection test anotherTest testTypes anotherTestTypes collectionTypes anotherCollectionTypes|
	
	test := ATestClassForCollections new.
	anotherTest := AnotherTestClassForCollections new.
	
	test store: (TypedArrayCollection with: 1).
	collection := test retrieve.
	anotherTest store: (TypedArrayCollection with: 'Hello').
	
	"This is the line to test."
	test store: anotherTest retrieve.
	
	testTypes := test rawTypes.
	anotherTestTypes := anotherTest rawTypes.
	collectionTypes := collection contentTypes.
	anotherCollectionTypes := test retrieve contentTypes.
	
	self deny: (testTypes at: 1) = (anotherTestTypes at: 1).
	self assert: (testTypes at: 2) equals: (anotherTestTypes at: 1).
	self assert: collectionTypes equals: (testTypes at:1).
	self assert: anotherCollectionTypes equals: (anotherTestTypes at: 1).
	
	self deny: (collectionTypes containsType: String).
	self assert: (anotherCollectionTypes containsType: String).
	self deny: (anotherCollectionTypes containsType: SmallInteger).
	self assert: (collectionTypes containsType: SmallInteger).! !

!LiveTypingCollectionTests methodsFor: 'aliasing' stamp: 'ALF - MDS 10/20/2019 18:44:42'!
test038VariableWithDataReAssignmentCollectionHasNoEffect
	"When a variable is assigned and the assignee had already been assigned, nothing happens."

	|collection test anotherTest testTypes anotherTestTypes collectionTypes anotherCollectionTypes|
	
	test := ATestClassForCollections new.
	anotherTest := AnotherTestClassForCollections new.
	
	test store: (TypedArrayCollection with: 1).
	collection := test retrieve.
	anotherTest store: (TypedArrayCollection with: 'Hello').
	test store: anotherTest retrieve.
	test store: anotherTest retrieve.
	
	testTypes := test rawTypes.
	anotherTestTypes := anotherTest rawTypes.
	collectionTypes := collection contentTypes.
	anotherCollectionTypes := test retrieve contentTypes.
	
	self deny: (testTypes at: 1) = (anotherTestTypes at: 1).
	self assert: (testTypes at: 3) isNil.
	self assert: (testTypes at: 2) equals: (anotherTestTypes at: 1).
	self assert: collectionTypes equals: (testTypes at:1).
	self assert: anotherCollectionTypes equals: (anotherTestTypes at: 1).
	
	self deny: (collectionTypes containsType: String).
	self assert: (anotherCollectionTypes containsType: String).
	self deny: (anotherCollectionTypes containsType: SmallInteger).
	self assert: (collectionTypes containsType: SmallInteger).! !

!LiveTypingCollectionTests methodsFor: 'aliasing' stamp: 'ALF - MDS 10/20/2019 19:20:35'!
test039CollectionsContentTypeStartsUnassigned

	self assert: CollectionsContentType new isAssigned equals: false.! !

!LiveTypingCollectionTests methodsFor: 'aliasing' stamp: 'ALF - MDS 10/20/2019 19:24:08'!
test040CollectionsContentTypeIsAssignedCollectionAssignedToVariable

	|test|

	test := ATestClassForCollections new.	
	test store: (TypedArrayCollection with: 1).
	
	self assert: test retrieve contentTypes isAssigned equals: true.! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 20:31:38'!
assertTooltipIs: aMessage 
	| tooltipMessage |
	tooltipMessage := (ATestClassForCollections typeInfoOfInstanceVariableNamed: 'instanceVariable') printTypesUpTo: 5.
	self assert: tooltipMessage = aMessage.! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 20:31:09'!
test041TooltipForEmptyCollection

	ATestClassForCollections new store: TypedArrayCollection new.
	self assertTooltipIs: '<TypedArrayCollection<?>>'.
! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 20:31:58'!
test042TooltipForSingleItemCollection

	ATestClassForCollections new store: (TypedArrayCollection with: 1).
	self assertTooltipIs:'<TypedArrayCollection<SmallInteger>>'.! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 21:02:43'!
test043TooltipForTwoItemsWhenSupertypeIsObject

	ATestClassForCollections new store: (TypedArrayCollection with: 1 with: 'aString').
	self assertTooltipIs: '<TypedArrayCollection<any # SmallInteger | String>>'.! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 21:02:33'!
test044TooltipForTwoItemsWithCommonSupertype

	ATestClassForCollections new store: (TypedArrayCollection with: 42 with: 66.6).
	self assertTooltipIs: '<TypedArrayCollection<Number # SmallInteger | SmallFloat64>>'.! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 21:06:04'!
test045TooltipForVariableWithCollectionAndSomeOtherType

	ATestClassForCollections new store: '42'.
	ATestClassForCollections new store: (TypedArrayCollection with: 42).
	self assertTooltipIs: '<any # String | TypedArrayCollection<SmallInteger>>'.! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 21:27:04'!
test046TooltipForMergedCollections

	ATestClassForCollections new store: (TypedArrayCollection with: '42').
	ATestClassForCollections new store: (TypedArrayCollection with: 42).
	self assertTooltipIs: '<TypedArrayCollection<any # String | SmallInteger>>'.! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 21:35:35'!
test047TooltipForSameCollectionsWithSameTypes
	| localCollection |
	
	localCollection := TypedArrayCollection with: 666.
	ATestClassForCollections new store: (TypedArrayCollection with: 42).
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<SmallInteger>>'.! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 21:38:50'!
test048TooltipForSameCollectionsWithCommonSuperTypes
	| localCollection |
	
	localCollection := TypedArrayCollection with: 66.6.
	ATestClassForCollections new store: (TypedArrayCollection with: 42).
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<Number # SmallFloat64 | SmallInteger>>'.! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 21:38:34'!
test049TooltipForSameCollectionsWithNoSuperTypes
	| localCollection |
	
	localCollection := TypedArrayCollection with: 66.6.
	ATestClassForCollections new store: (TypedArrayCollection with: '42').
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<any # SmallFloat64 | String>>'.! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 21:43:22'!
test050TooltipForCommonSuperCollectionsWithCommonSuperTypes
	| localCollection |
	
	localCollection := TypedArrayCollection with: 'Hello'.
	ATestClassForCollections new store: (TypedArrayCollection2 with: 'world').
	ATestClassForCollections new store: localCollection.
	self fail.
	"self assertTooltipIs: '<TypedArrayCollection # TypedArrayCollection | TypedArrayCollection2 <String>>'."
	"self assertTooltipIs: '<TypedArrayCollection # TypedArrayCollection<String> | TypedArrayCollection2 <String>>'."! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 21:55:00'!
test051TooltipForNestedCollections
	ATestClassForCollections new store: (TypedArrayCollection with: (TypedArrayCollection with: '42')).
	self assertTooltipIs: '<TypedArrayCollection<TypedArrayCollection<String>>>'.! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 21:57:56'!
test052TooltipForCommonSuperCollectionsWithNoSuperTypes
	| localCollection |
	
	localCollection := TypedArrayCollection with: 'Hello'.
	ATestClassForCollections new store: (TypedArrayCollection2 with: 42).
	ATestClassForCollections new store: localCollection.
	self fail.
	"self assertTooltipIs: '<TypedArrayCollection # TypedArrayCollection | TypedArrayCollection2 <any # String | SmallInteger>>'."
	"self assertTooltipIs: '<TypedArrayCollection # TypedArrayCollection<String> | TypedArrayCollection2 <SmallInteger>>'."! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 21:59:54'!
test053TooltipForCommonSuperCollectionsRepeatedWithNoSuperTypes
	| localCollection |
	
	localCollection := TypedArrayCollection with: 'Hello'.
	ATestClassForCollections new store: (TypedArrayCollection2 with: 42).
	ATestClassForCollections new store: localCollection.
	ATestClassForCollections new store: (TypedArrayCollection with: 42).
	self fail.
	"self assertTooltipIs: '<TypedArrayCollection # TypedArrayCollection | TypedArrayCollection2 <any # String | SmallInteger>>'."
	"self assertTooltipIs: '<TypedArrayCollection # TypedArrayCollection<any # String | SmallInteger> | TypedArrayCollection2 <SmallInteger>>'."! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 22:02:22'!
test054TooltipForCommonSuperCollectionsWithEmptyCollections
	| localCollection |
	
	localCollection := TypedArrayCollection new.
	ATestClassForCollections new store: (TypedArrayCollection2 new).
	ATestClassForCollections new store: localCollection.
	self fail.
	"self assertTooltipIs: '<TypedArrayCollection # TypedArrayCollection | TypedArrayCollection2 <?>>'."
	"self assertTooltipIs: '<TypedArrayCollection # TypedArrayCollection<?> | TypedArrayCollection2 <?>>'."! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 22:02:01'!
test055TooltipForCommonSuperCollectionsWithAnEmptyCollection
	| localCollection |
	
	localCollection := TypedArrayCollection with: 'Hello'.
	ATestClassForCollections new store: (TypedArrayCollection2 new).
	ATestClassForCollections new store: localCollection.
	self fail.
	"self assertTooltipIs: '<TypedArrayCollection # TypedArrayCollection | TypedArrayCollection2 <String>>'."
	"self assertTooltipIs: '<TypedArrayCollection # TypedArrayCollection<String> | TypedArrayCollection2 <?>>'."! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 22:09:11'!
test056TooltipForCommonSuperCollectionsAndNoCollection
	| localCollection |
	
	localCollection := TypedArrayCollection with: 'Hello'.
	ATestClassForCollections new store: (TypedArrayCollection2 new).
	ATestClassForCollections new store: localCollection.
	ATestClassForCollections new store: 'world'.
	self fail.
	"self assertTooltipIs: '<any # TypedArrayCollection<String> | TypedArrayCollection2<?> | String>'."! !

!LiveTypingCollectionTests methodsFor: 'tooling' stamp: 'alf & mtqp 12/22/2019 22:10:26'!
test057TooltipForCommonSuperTypeAndNoCommonType
	ATestClassForCollections new store: 42.
	ATestClassForCollections new store: 66.6.
	ATestClassForCollections new store: 'world'.
	self assertTooltipIs: '<any # SmallInteger | SmallFloat64 | String>'.! !

!XXXTypeInfo class methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/22/2019 20:57:15'!
new: rawTypes
	^ self new initializeRawTypes: rawTypes.! !

!ATestClassForCollections methodsFor: 'as yet unclassified' stamp: 'ALF - MDS 10/20/2019 17:33:22'!
rawTypes

	^ self class instanceVariablesRawTypes at:1.! !

!ATestClassForCollections methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/8/2019 18:18:07'!
retrieve
"
	|i|
	i := 0.
	i=0 ifTrue: ["
	^ instanceVariable.
"	]."! !

!ATestClassForCollections methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 13:04:33'!
store: aCollection

	instanceVariable := aCollection.! !

!AnotherTestClassForCollections methodsFor: 'as yet unclassified' stamp: 'ALF - MDS 10/20/2019 18:27:40'!
rawTypes

	^ self class instanceVariablesRawTypes at:1.! !

!AnotherTestClassForCollections methodsFor: 'as yet unclassified' stamp: 'ALF - MDS 10/20/2019 18:27:51'!
retrieve

	^ instanceVariable.! !

!AnotherTestClassForCollections methodsFor: 'as yet unclassified' stamp: 'ALF - MDS 10/20/2019 18:28:02'!
store: aCollection

	instanceVariable := aCollection.! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/22/2019 22:15:11'!
add: aClass 
	|freeIndex|
	"TODO: Recorrer una sola vez en vez de includes y findFirst"
	(contentTypes includes: aClass) ifFalse:[
		freeIndex := contentTypes findFirst: [:type | type isNil].
		freeIndex > 0 ifTrue: [
			contentTypes at: freeIndex put: aClass
		]
	]! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 12:53:59'!
containsType: aType
	^ contentTypes anySatisfy: [:savedType | savedType = aType].! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'ALF - MDS 10/20/2019 19:21:36'!
initialize
|currentContext iteration continue|
	currentContext := thisContext sender.
	iteration := 0.
	continue := true.
	[iteration < 10 and: currentContext notNil and: continue] whileTrue: [
		(currentContext receiver isKindOf: Collection) ifTrue: [
			collectionType := currentContext receiver class.
			continue := false. 
			].
		currentContext := currentContext sender.
		iteration := iteration + 1.
		].
	contentTypes := Array new:10.
	isAssigned := false.
	^ self.! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 13:19:28'!
printElementsOn: aStream
	aStream nextPut: $(.
	contentTypes do: [:element | aStream print: element; space].
	contentTypes isEmpty ifFalse: [aStream skip: -1].
	aStream nextPut: $)! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 13:18:03'!
printNameOn: aStream
	super printOn: aStream! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'alf & mds 10/6/2019 19:21:17'!
size
	|size|
	size := 0.
	contentTypes do: [:type| type ifNotNil: [size := size + 1]].
	^ size.
	! !

!CollectionsContentType methodsFor: 'accessing' stamp: 'ALF - MDS 10/20/2019 19:21:12'!
isAssigned

	^ isAssigned.! !

!CollectionsContentType methodsFor: 'accessing' stamp: 'alf & mds 10/14/2019 20:11:17'!
type
	^ collectionType! !

!CollectionsContentType class methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 12:54:58'!
new
	^super new initialize.! !

!TypedArray methodsFor: 'as yet unclassified' stamp: 'alf & mds 9/29/2019 18:11:51'!
at: anIndex

	^ innerArray at: anIndex.! !

!TypedArray methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/22/2019 21:53:37'!
at: anIndex put: aValue

	|innerReturn|
	innerReturn := innerArray at: anIndex put: aValue.
	"TODO: if the value is an instance of SupportedTypes we should... WTF"
	types add: aValue class.
	^innerReturn.
	! !

!TypedArray methodsFor: 'as yet unclassified' stamp: 'alf & mds 10/6/2019 19:24:14'!
contentTypes
	^ types.! !

!TypedArray methodsFor: 'as yet unclassified' stamp: 'alf & mds 9/29/2019 20:27:08'!
doesNotUnderstand: aMessage
	"This message allows proxying every Array message we have yet to reimplement."

	|selectorInArray|
	
	selectorInArray := innerArray class lookupSelector: aMessage selector.
	
	selectorInArray ifNotNil: [
		^ aMessage sendTo: innerArray.
		].
	
	^ super doesNotUnderstand: aMessage.! !

!TypedArray methodsFor: 'as yet unclassified' stamp: 'alf & mds 10/6/2019 21:01:24'!
initializeWith: anArray withContentTypes: contentTypes
	innerArray := anArray.
	types := contentTypes.! !

!TypedArray methodsFor: 'as yet unclassified' stamp: 'alf & mds 9/29/2019 18:18:32'!
size
	^ innerArray size.! !

!TypedArray methodsFor: 'private' stamp: 'alf & mds 10/6/2019 21:24:07'!
inner
	^ innerArray.! !

!TypedArray class methodsFor: 'as yet unclassified' stamp: 'alf & mds 10/6/2019 21:02:20'!
doesNotUnderstand: aMessage

	|constructedArray|
	
	constructedArray := aMessage sendTo: Array.
	^ self new initializeWith: constructedArray withContentTypes: CollectionsContentType new.! !

!TypedArray class methodsFor: 'as yet unclassified' stamp: 'alf & mds 10/14/2019 18:46:53'!
new

	^ self new: 10 withContentTypes: CollectionsContentType new.! !

!TypedArray class methodsFor: 'as yet unclassified' stamp: 'alf & mds 10/14/2019 18:48:14'!
new: anArraySize withContentTypes: contentTypes
	|array|
	array := Array new: anArraySize.
	
	^ super new initializeWith: array withContentTypes: contentTypes.! !

!OrderedCollection methodsFor: '*CollectionLiveTyping' stamp: 'alf & mds 10/6/2019 20:50:13'!
createArray: size
	^ Array new: size.! !
CollectionLiveTyping initialize!
