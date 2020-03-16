'From Cuis 5.0 [latest update: #3851] on 15 March 2020 at 10:56:38 pm'!
'Description Please enter a description for this package'!
!provides: 'CollectionLiveTyping' 1 4!
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

!classDefinition: #CollectionLiveTypingTest category: #'CollectionLiveTyping-Tests'!
TestCase subclass: #CollectionLiveTypingTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping-Tests'!
!classDefinition: 'CollectionLiveTypingTest class' category: #'CollectionLiveTyping-Tests'!
CollectionLiveTypingTest class
	instanceVariableNames: ''!

!classDefinition: #LiveTypeTests category: #'CollectionLiveTyping-Tests'!
CollectionLiveTypingTest subclass: #LiveTypeTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping-Tests'!
!classDefinition: 'LiveTypeTests class' category: #'CollectionLiveTyping-Tests'!
LiveTypeTests class
	instanceVariableNames: ''!

!classDefinition: #LiveTypingCollectionTests category: #'CollectionLiveTyping-Tests'!
CollectionLiveTypingTest subclass: #LiveTypingCollectionTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping-Tests'!
!classDefinition: 'LiveTypingCollectionTests class' category: #'CollectionLiveTyping-Tests'!
LiveTypingCollectionTests class
	instanceVariableNames: ''!

!classDefinition: #RawToLiveTypesAdapterTests category: #'CollectionLiveTyping-Tests'!
CollectionLiveTypingTest subclass: #RawToLiveTypesAdapterTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping-Tests'!
!classDefinition: 'RawToLiveTypesAdapterTests class' category: #'CollectionLiveTyping-Tests'!
RawToLiveTypesAdapterTests class
	instanceVariableNames: ''!

!classDefinition: #TooltipTests category: #'CollectionLiveTyping-Tests'!
CollectionLiveTypingTest subclass: #TooltipTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping-Tests'!
!classDefinition: 'TooltipTests class' category: #'CollectionLiveTyping-Tests'!
TooltipTests class
	instanceVariableNames: ''!

!classDefinition: #TypeNodeTests category: #'CollectionLiveTyping-Tests'!
CollectionLiveTypingTest subclass: #TypeNodeTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping-Tests'!
!classDefinition: 'TypeNodeTests class' category: #'CollectionLiveTyping-Tests'!
TypeNodeTests class
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

!classDefinition: #LiveType category: #CollectionLiveTyping!
Object subclass: #LiveType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping'!
!classDefinition: 'LiveType class' category: #CollectionLiveTyping!
LiveType class
	instanceVariableNames: ''!

!classDefinition: #ClassLiveType category: #CollectionLiveTyping!
LiveType subclass: #ClassLiveType
	instanceVariableNames: 'class'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping'!
!classDefinition: 'ClassLiveType class' category: #CollectionLiveTyping!
ClassLiveType class
	instanceVariableNames: ''!

!classDefinition: #FixedType category: #CollectionLiveTyping!
ClassLiveType subclass: #FixedType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping'!
!classDefinition: 'FixedType class' category: #CollectionLiveTyping!
FixedType class
	instanceVariableNames: ''!

!classDefinition: #GenericType category: #CollectionLiveTyping!
ClassLiveType subclass: #GenericType
	instanceVariableNames: 'innerTypes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping'!
!classDefinition: 'GenericType class' category: #CollectionLiveTyping!
GenericType class
	instanceVariableNames: ''!

!classDefinition: #EmptyType category: #CollectionLiveTyping!
LiveType subclass: #EmptyType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping'!
!classDefinition: 'EmptyType class' category: #CollectionLiveTyping!
EmptyType class
	instanceVariableNames: ''!

!classDefinition: #UnionType category: #CollectionLiveTyping!
LiveType subclass: #UnionType
	instanceVariableNames: 'types'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping'!
!classDefinition: 'UnionType class' category: #CollectionLiveTyping!
UnionType class
	instanceVariableNames: ''!

!classDefinition: #LiveTypesPrinter category: #CollectionLiveTyping!
Object subclass: #LiveTypesPrinter
	instanceVariableNames: 'stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping'!
!classDefinition: 'LiveTypesPrinter class' category: #CollectionLiveTyping!
LiveTypesPrinter class
	instanceVariableNames: ''!

!classDefinition: #RawToLiveTypesAdapter category: #CollectionLiveTyping!
Object subclass: #RawToLiveTypesAdapter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping'!
!classDefinition: 'RawToLiveTypesAdapter class' category: #CollectionLiveTyping!
RawToLiveTypesAdapter class
	instanceVariableNames: ''!

!classDefinition: #SupertypeDetective category: #CollectionLiveTyping!
Object subclass: #SupertypeDetective
	instanceVariableNames: 'searchingTypes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping'!
!classDefinition: 'SupertypeDetective class' category: #CollectionLiveTyping!
SupertypeDetective class
	instanceVariableNames: ''!

!classDefinition: #TypeNode category: #CollectionLiveTyping!
Object subclass: #TypeNode
	instanceVariableNames: 'bound generics type'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping'!
!classDefinition: 'TypeNode class' category: #CollectionLiveTyping!
TypeNode class
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

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/17/2019 09:49:01'!
withAllSuperclasses
	^Array with: collectionType.! !

!FixedType methodsFor: 'private' stamp: 'alf and mtqp 2/16/2020 13:51:33'!
printOn: aStream
	aStream nextPutAll: 'LiveType: ' , class asString! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 14:14:38'!
printOn: aStream
	aStream nextPutAll: 'GenericType: ', class asString , '<', innerTypes asString, '>'! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 14:14:25'!
printOn: aStream
	aStream nextPutAll: 'UnionType: <', types asString, '>'! !

!TypeNode methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/17/2020 20:08:57'!
printOn: aStream
	aStream nextPutAll: 'TypeNode ', type asString , '<', bound asString, '> # ' , generics asString ! !

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

!CollectionLiveTypingTest methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 22:33:05'!
cleanUp: aClass method: aMethodSymbol

	| returnRawTypes variablesRawTypes  |
	variablesRawTypes := (aClass methodDictionary at: aMethodSymbol) variablesRawTypes.
	variablesRawTypes == nil ifFalse:[
		variablesRawTypes do:[ :variableRawTypes |
		(1 to: 10) do: [ :index | variableRawTypes at: index put: nil]]].
	returnRawTypes := (aClass methodDictionary at: aMethodSymbol) returnRawTypes.
	returnRawTypes == nil ifFalse: [
		(1 to: 10) do: [ :index | returnRawTypes at: index put: nil].
	]! !

!CollectionLiveTypingTest methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 22:23:04'!
setUp

	| aTestClassInstanceVariableRawTypes |
	
	super setUp.
	
	self cleanUp: Collection class method: #with:.
	self cleanUp: Collection class method: #with:with:.
	
	ATestClassForCollections initializeTypeInformationWithAllInstances.	
	aTestClassInstanceVariableRawTypes := ATestClassForCollections instanceVariablesRawTypes at: 1.
	(1 to: 10) do: [ :index | aTestClassInstanceVariableRawTypes at: index put: nil].
	self cleanUp: ATestClassForCollections method: #store:.
! !

!CollectionLiveTypingTest methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:39:25'!
tearDown

	self setUp.! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/5/2020 19:59:29'!
test001SameType

	self assert: (FixedType for: String) equals: (FixedType for: String)! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/5/2020 19:59:41'!
test002DifferentType

	self deny: (FixedType for: SmallInteger) = (FixedType for: String)! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/5/2020 20:06:37'!
test003SameHierarchy

	| int float |

	int := (FixedType for: SmallInteger).
	float := (FixedType for: Float).

	self deny: int = float.
	self assert: (int supertypeWith: (Array with: float)) equals: (FixedType for: Number).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/11/2020 19:42:49'!
test004CommonSupertypeIsObject

	| string float |

	string := FixedType for: String.
	float := FixedType for: Float.

	self deny: string = float.
	self assert: (string supertypeWith: (Array with: float)) equals: (FixedType for: Object).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 19:42:34'!
test005SameGeneric

	| aGeneric anotherGeneric |
	
	aGeneric := GenericType for: TypedArrayCollection withTypes: (Array with: Float with: Integer).
	anotherGeneric := GenericType for: TypedArrayCollection withTypes: (Array with: Float with: Integer).

	self assert: aGeneric equals: anotherGeneric.! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/11/2020 20:20:27'!
test006SameGenericDifferentOrder

	| aGeneric anotherGeneric |
	
	aGeneric := GenericType for: TypedArrayCollection withTypes: (Array with: Float with: Integer).
	anotherGeneric := GenericType for: TypedArrayCollection withTypes: (Array with: Integer with: Float with: Integer).

	self assert: aGeneric equals: anotherGeneric.! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/11/2020 20:20:13'!
test007GenericsHandleSystemTypes

	| aGeneric anotherGeneric |
	
	aGeneric := GenericType for: TypedArrayCollection withTypes: (Array with: Float).
	anotherGeneric := GenericType for: TypedArrayCollection withTypes: (Array with: (FixedType for: Float)).

	self assert: aGeneric equals: anotherGeneric.
	self assert: aGeneric generics equals: (Set with: (FixedType for: Float)).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/11/2020 20:43:22'!
test008NestedGenerics

	| aGeneric anotherGeneric aGenericCollection aGenericCollection2 anotherGenericCollection|
	
	aGenericCollection := GenericType for: LinkedList withTypes: (Array with: Integer).
	aGenericCollection2 := GenericType for: LinkedList withTypes: (Array with: Integer).
	anotherGenericCollection := GenericType for: Array withTypes: Array new.
	
	aGeneric := GenericType for: TypedArrayCollection withTypes: (Array with: aGenericCollection with: anotherGenericCollection with: Integer).
	anotherGeneric := GenericType for: TypedArrayCollection withTypes: (Array with: aGenericCollection2 with: anotherGenericCollection with: Integer).

	self assert: aGeneric equals: anotherGeneric.
	self assert: aGeneric generics equals: (Set with: aGenericCollection with: anotherGenericCollection with: (FixedType for: Integer)).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 19:48:17'!
test009GenericSupertypeWithSameGenerics

	| aGenericCollection aGenericCollection2|
	
	aGenericCollection := GenericType for: LinkedList withTypes: Integer.
	aGenericCollection2 := GenericType for: OrderedCollection withTypes: Integer.

	self assert: (aGenericCollection supertypeWith: (Array with: aGenericCollection2)) equals: (GenericType for: SequenceableCollection withTypes: Integer).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 19:34:14'!
test010GenericSupertypeWithCommonGenerics

	| aGenericCollection aGenericCollection2 commonSupertype|
	
	aGenericCollection := GenericType for: LinkedList withTypes: Integer.
	aGenericCollection2 := GenericType for: OrderedCollection withTypes: Float.

	commonSupertype := aGenericCollection supertypeWith: (Array with: aGenericCollection2).

	self assert: commonSupertype equals: (GenericType for: SequenceableCollection withTypes: (Array with: Number)).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/12/2020 18:41:20'!
test011FixedAgainstGenericType
	|fixedType genericType|

	fixedType := FixedType for: String.
	genericType := GenericType for: LinkedList withTypes: (Array with: String).

	self assert: (fixedType supertypeWith: genericType) equals: (FixedType for: Object).
	self assert: (genericType supertypeWith: fixedType) equals: (FixedType for: Object).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/12/2020 19:08:04'!
test012FixedAgainstGenericTypeInList
	|fixedType genericType|

	fixedType := FixedType for: String.
	genericType := GenericType for: LinkedList withTypes: (Array with: String).

	self assert: (fixedType supertypeWith: (Array with:(FixedType for: Integer) with: genericType)) equals: (FixedType for: Object).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/12/2020 19:07:17'!
test013GenericAgainstFixedTypeInList
	|fixedType genericType|

	fixedType := FixedType for: String.
	genericType := GenericType for: LinkedList withTypes: (Array with: String).

	self assert: (genericType supertypeWith: (Array with: genericType with: fixedType)) equals: (FixedType for: Object).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/12/2020 19:24:21'!
test014NestedGenerics
	|genericType otherGenericType genericType2 otherGenericType2|

	otherGenericType := GenericType for: Array withTypes: Integer.
	otherGenericType2 := GenericType for: OrderedCollection withTypes: Float.

	genericType := GenericType for: LinkedList withTypes: otherGenericType.
	genericType2 := GenericType for: Set withTypes: otherGenericType2.

	self assert: (genericType supertypeWith: genericType2) equals: (GenericType for: Collection withTypes: (GenericType for: SequenceableCollection withTypes: Number)).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/12/2020 19:34:04'!
test015NestedGenericsWithDifferentDepth
	|genericType fixedType genericType2 otherGenericType|

	fixedType := FixedType for: Integer.
	otherGenericType := GenericType for: OrderedCollection withTypes: Float.

	genericType := GenericType for: LinkedList withTypes: otherGenericType.
	genericType2 := GenericType for: Set withTypes: fixedType.

	self assert: (genericType supertypeWith: genericType2) equals: (GenericType for: Collection withTypes: (FixedType for: Object)).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/12/2020 19:43:35'!
test016EmptyTypeAgainstSelf
	|empty otherEmpty|

	empty := EmptyType new.
	otherEmpty := EmptyType new.

	self assert: (empty supertypeWith: otherEmpty) equals: (EmptyType new).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 13:33:54'!
test017EmptyTypeAgainstFixedType
	|empty fixedType|

	empty := EmptyType new.
	fixedType := FixedType for: Integer.

	self assert: (empty supertypeWith: fixedType) equals: (UnionType of: (FixedType for: Integer) and: EmptyType new).
	self assert: (fixedType supertypeWith: empty) equals: (UnionType of: EmptyType new and: (FixedType for: Integer)).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 13:34:51'!
test018EmptyTypeAgainstGenericType
	|empty genericType |

	empty := EmptyType new.
	genericType := GenericType for: Collection withTypes: String.

	self assert: (empty supertypeWith: genericType) equals: (UnionType of: empty and: genericType).
	self assert: (genericType supertypeWith: empty) equals: (UnionType of: empty and: genericType).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 14:16:51'!
test019UnionTypeCollectsTypes
	|empty genericType fixedType unionType expectedUnionType |

	empty := EmptyType new.
	genericType := GenericType for: Collection withTypes: String.
	unionType := UnionType of: empty and: genericType.

	fixedType := FixedType for: Integer.
	expectedUnionType :=  (UnionType of: empty and: (Array with: genericType with: fixedType)).

	self assert: expectedUnionType equals: (unionType supertypeWith: fixedType).
	self assert: expectedUnionType equals: (fixedType supertypeWith: unionType).
! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 14:12:00'!
test020UnionTypeAgainstSelf
	|empty genericType unionType |

	empty := EmptyType new.
	genericType := GenericType for: Collection withTypes: String.
	unionType := UnionType of: empty and: genericType.

	self assert: (unionType supertypeWith: (UnionType of: empty and: genericType)) equals: unionType.
! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 14:12:38'!
test021UnionTypeAgainstInnerElement
	|empty genericType unionType |

	empty := EmptyType new.
	genericType := GenericType for: Collection withTypes: String.
	unionType := UnionType of: empty and: genericType.

	self assert: (genericType supertypeWith: unionType) equals: unionType.
	self assert: (unionType supertypeWith: genericType) equals: unionType! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 6/2/2019 20:40:28'!
receiveCollection: aCollection
	^ self.! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 6/2/2019 20:40:43'!
return: anObject
	^ anObject.! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'alf & mtqp 12/8/2019 17:33:46'!
returnCollection
	^ TypedArrayCollection new.! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 22:22:55'!
setUp

	||
	
	super setUp.
		
	"This is required for cleaning up the temp variables of each testing method"
	LiveTypingCollectionTests initializeTypeInformationWithAllInstances.
	AnotherTestClassForCollections initializeTypeInformationWithAllInstances.

	 "TODO: This has to be here for now because of the with: method. We are yet to understand why the with: in Collection is creating aliasing. "
"	Collection class initializeTypeInformationWithAllInstances."

"	TypedArrayCollection class initializeTypeInformationWithAllInstances."

	self cleanUp: self class method: #receiveCollection:.
	self cleanUp: self class method: #return:.
	self cleanUp: self class method: #returnCollection.
	! !

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

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:14:16'!
setUp
	super setUp.

	"This is required for cleaning up the temp variables of each testing method"
	RawToLiveTypesAdapterTests initializeTypeInformationWithAllInstances.

	 "TODO: This has to be here for now because of the with: method. We are yet to understand why the with: in Collection is creating aliasing. "
"	Collection class initializeTypeInformationWithAllInstances."

"	TypedArrayCollection class initializeTypeInformationWithAllInstances."

	
! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 17:28:59'!
test001EmptyRawTypes
	| liveTypes rawTypes |
	liveTypes := Set with: EmptyType new.
	rawTypes := #().
	self assert: liveTypes equals: (RawToLiveTypesAdapter new adapt: rawTypes)! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 17:27:31'!
test002AllClasses
	| liveTypes rawTypes |
	liveTypes := Set with: (FixedType for: Integer) with: (FixedType for: String).
	rawTypes := Array with: Integer with: String.
	self assert: liveTypes equals: (RawToLiveTypesAdapter new adapt: rawTypes)! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 17:39:12'!
test003AnEmptyCollectionsContentType
	| liveTypes rawTypes |
	liveTypes := Set with: (GenericType for: TypedArrayCollection withTypes: EmptyType new).
	rawTypes := Array with: TypedArrayCollection new contentTypes.
	self assert: liveTypes equals: (RawToLiveTypesAdapter new adapt: rawTypes)! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 17:38:48'!
test004ClassesAndCollectionsContentType
	| liveTypes rawTypes |
	liveTypes := Set with: (GenericType for: TypedArrayCollection withTypes: EmptyType new) with: (FixedType for: String).
	rawTypes := Array with: (TypedArrayCollection new contentTypes) with: String.
	self assert: liveTypes equals: (RawToLiveTypesAdapter new adapt: rawTypes)! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 17:42:11'!
test005ACollectionsContentTypeWithTypes
	| liveTypes rawTypes tac |
	liveTypes := Set with: (GenericType for: TypedArrayCollection withTypes: (Array with: SmallInteger with: SmallFloat64)).
	tac := TypedArrayCollection new.
	tac add: 56.
	tac add: 33.3.
	rawTypes := Array with: tac contentTypes.
	self assert: liveTypes equals: (RawToLiveTypesAdapter new adapt: rawTypes)! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 17:45:03'!
test006SeveralCollectionsContentTypesWithTypes
	| liveTypes rawTypes tac1 tac2 |
	liveTypes := Set with: (GenericType for: TypedArrayCollection withTypes: (Array with: SmallInteger with: SmallFloat64)).
	tac1 := TypedArrayCollection new.
	tac2 := TypedArrayCollection new.
	tac1 add: 56.
	tac2 add: 33.3.
	rawTypes := Array with: tac1 contentTypes with: tac2 contentTypes.
	self assert: liveTypes equals: (RawToLiveTypesAdapter new adapt: rawTypes)! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 20:59:00'!
test007CreateFixedType

	self assert: (FixedType for: Integer) equals: (RawToLiveTypesAdapter new create: Integer).! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 20:59:21'!
test008CreateEmptyType

	self assert: EmptyType new equals: (RawToLiveTypesAdapter new create: nil).! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 20:59:26'!
test009CreateGenericType

	| cct expectedType |
	
	cct := TypedArrayCollection new contentTypes.
	expectedType := GenericType for: TypedArrayCollection withTypes: EmptyType new.

	self assert: expectedType equals: (RawToLiveTypesAdapter new create: cct).! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 20:59:31'!
test010CreateGenericNestedType

	| cct expectedType collection |
	
	collection := TypedArrayCollection2 new.
	cct := (TypedArrayCollection with: 12 with: collection) contentTypes.
	expectedType := GenericType for: TypedArrayCollection withTypes: (Set with: (FixedType for: SmallInteger) with: (GenericType for: TypedArrayCollection2 withTypes: EmptyType new)).

	self assert: expectedType equals: (RawToLiveTypesAdapter new create: cct).! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 20:59:37'!
test011CreateGenericNonEmptyType

	| cct expectedType |
	
	cct := (TypedArrayCollection with: 'hello') contentTypes.
	expectedType := GenericType for: TypedArrayCollection withTypes: (FixedType for: String).

	self assert: expectedType equals: (RawToLiveTypesAdapter new create: cct).! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:04:43'!
test012CreateGenericMultipleNestedType

	| cct expectedType |
	
	cct := (TypedArrayCollection2 with: (TypedArrayCollection with: 42) with: (TypedArrayCollection with: 24.0)) contentTypes.
	expectedType := GenericType for: TypedArrayCollection2 withTypes: (GenericType for: TypedArrayCollection withTypes: (Set with: SmallInteger with: SmallFloat64)).

	self assert: expectedType equals: (RawToLiveTypesAdapter new create: cct).! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:52:56'!
assertTooltipIs: aMessage 
	| tooltipMessage |
	tooltipMessage := (ATestClassForCollections typeInfoOfInstanceVariableNamed: 'instanceVariable') printTypesUpTo: 5.
	self assert: aMessage equals: tooltipMessage.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 22:17:16'!
setUp

	super setUp.
	TooltipTests initializeTypeInformationWithAllInstances.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:43:25'!
test001TooltipForEmptyCollection

	ATestClassForCollections new store: TypedArrayCollection new.
	self assertTooltipIs: '<TypedArrayCollection<?>>'.
! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:43:50'!
test002TooltipForSingleItemCollection

	ATestClassForCollections new store: (TypedArrayCollection with: 1).
	self assertTooltipIs:'<TypedArrayCollection<SmallInteger>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:44:42'!
test003TooltipForTwoItemsWhenSupertypeIsObject

	ATestClassForCollections new store: (TypedArrayCollection with: 1 with: 'aString').
	self assertTooltipIs: '<TypedArrayCollection<any # SmallInteger | String>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:45:16'!
test004TooltipForTwoItemsWithCommonSupertype

	ATestClassForCollections new store: (TypedArrayCollection with: 42 with: 66.6).
	self assertTooltipIs: '<TypedArrayCollection<Number # SmallFloat64 | SmallInteger>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:45:35'!
test005TooltipForVariableWithCollectionAndSomeOtherType

	ATestClassForCollections new store: '42'.
	ATestClassForCollections new store: (TypedArrayCollection with: 42).
	"superclass should be collection"
	self assertTooltipIs: '<Collection<any # Character | SmallInteger> # String | TypedArrayCollection<SmallInteger>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:45:50'!
test006TooltipForMergedCollections

	ATestClassForCollections new store: (TypedArrayCollection with: '42').
	ATestClassForCollections new store: (TypedArrayCollection with: 42).
	self assertTooltipIs: '<TypedArrayCollection<any # SmallInteger | String>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:46:02'!
test007TooltipForSameCollectionsWithSameTypes
	| localCollection |
	
	localCollection := TypedArrayCollection with: 666.
	ATestClassForCollections new store: (TypedArrayCollection with: 42).
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<SmallInteger>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:46:16'!
test008TooltipForSameCollectionsWithCommonSuperTypes
	| localCollection |
	
	localCollection := TypedArrayCollection with: 66.6.
	ATestClassForCollections new store: (TypedArrayCollection with: 42).
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<Number # SmallFloat64 | SmallInteger>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:46:31'!
test009TooltipForSameCollectionsWithNoSuperTypes
	| localCollection |
	
	localCollection := TypedArrayCollection with: 66.6.
	ATestClassForCollections new store: (TypedArrayCollection with: '42').
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<any # SmallFloat64 | String>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:46:46'!
test010TooltipForCommonSuperCollectionsWithCommonSuperTypes
	| localCollection |
	
	localCollection := TypedArrayCollection with: 'Hello'.
	ATestClassForCollections new store: (TypedArrayCollection2 with: 'world').
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<String> # TypedArrayCollection<String> | TypedArrayCollection2<String>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:47:00'!
test011TooltipForNestedCollections
	ATestClassForCollections new store: (TypedArrayCollection with: (TypedArrayCollection with: '42')).
	self assertTooltipIs: '<TypedArrayCollection<TypedArrayCollection<String>>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:47:16'!
test012TooltipForCommonSuperCollectionsWithNoSuperTypes
	| localCollection |
	
	localCollection := TypedArrayCollection with: 'Hello'.
	ATestClassForCollections new store: (TypedArrayCollection2 with: 42).
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<any # SmallInteger | String> # TypedArrayCollection<String> | TypedArrayCollection2<SmallInteger>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:47:30'!
test013TooltipForCommonSuperCollectionsRepeatedWithNoSuperTypes
	| localCollection |
	
	localCollection := TypedArrayCollection with: 'Hello'.
	ATestClassForCollections new store: (TypedArrayCollection2 with: 42).
	ATestClassForCollections new store: localCollection.
	ATestClassForCollections new store: (TypedArrayCollection with: 42).
	
	self assertTooltipIs: '<TypedArrayCollection<any # SmallInteger | String> # TypedArrayCollection<any # SmallInteger | String> | TypedArrayCollection2<SmallInteger>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:47:42'!
test014TooltipForCommonSuperCollectionsWithEmptyCollections
	| localCollection |
	
	localCollection := TypedArrayCollection new.
	ATestClassForCollections new store: (TypedArrayCollection2 new).
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<?> # TypedArrayCollection<?> | TypedArrayCollection2<?>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:47:55'!
test015TooltipForCommonSuperCollectionsWithAnEmptyCollection
	| localCollection |
	
	localCollection := TypedArrayCollection with: 'Hello'.
	ATestClassForCollections new store: (TypedArrayCollection2 new).
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<any # ? | String> # TypedArrayCollection<String> | TypedArrayCollection2<?>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:48:10'!
test016TooltipForCommonSuperCollectionsAndNoCollection
	| localCollection |
	
	localCollection := TypedArrayCollection with: 'Hello'.
	ATestClassForCollections new store: (TypedArrayCollection2 new).
	ATestClassForCollections new store: localCollection.
	ATestClassForCollections new store: 'world'.
	
	self assertTooltipIs: '<any # String | TypedArrayCollection<String> | TypedArrayCollection2<?>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:48:25'!
test017TooltipForCommonSuperTypeAndNoCommonType
	ATestClassForCollections new store: 42.
	ATestClassForCollections new store: 66.6.
	ATestClassForCollections new store: 'world'.
	self assertTooltipIs: '<any # SmallFloat64 | SmallInteger | String>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:48:40'!
test018TooltipForCommonSuperCollectionsAndNoCollection
	| localCollection |
	
	localCollection := TypedArrayCollection with: 'Hello'.
	ATestClassForCollections new store: (TypedArrayCollection2 new).
	ATestClassForCollections new store: localCollection.
	ATestClassForCollections new store: 45.
	
	self assertTooltipIs: '<any # SmallInteger | TypedArrayCollection<String> | TypedArrayCollection2<?>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:49:01'!
test019TooltipForNestedCollectionsOneOfThemEmpty
	| localCollection |
	
	localCollection := TypedArrayCollection with: (TypedArrayCollection new) with: (TypedArrayCollection with: 3).
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<TypedArrayCollection<any # ? | SmallInteger>>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:49:21'!
test020TooltipForNestedCollectionsBothSameTypes
	| localCollection |
	
	localCollection := TypedArrayCollection with: (TypedArrayCollection with: 5) with: (TypedArrayCollection with: 3).
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<TypedArrayCollection<SmallInteger>>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:49:39'!
test021TooltipForNestedCollectionsEachNoCommonInnerType
	| localCollection |
	
	localCollection := TypedArrayCollection with: (TypedArrayCollection with: 5) with: (TypedArrayCollection with: '3').
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<TypedArrayCollection<any # SmallInteger | String>>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:49:52'!
test022TooltipForNestedCommonSuperCollectionsNoCommonInnerType
	| localCollection |
	
	localCollection := TypedArrayCollection with: (TypedArrayCollection with: 5) with: (TypedArrayCollection2 with: '3').
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<TypedArrayCollection<any # SmallInteger | String> # TypedArrayCollection<SmallInteger> | TypedArrayCollection2<String>>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:50:05'!
test023TooltipForNestedNoCommonSupertype
	| localCollection |
	
	localCollection := TypedArrayCollection with: (TypedArrayCollection with: 5) with: 3.
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<any # SmallInteger | TypedArrayCollection<SmallInteger>>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:50:19'!
test024TooltipForNestedRepeatedTypeDifferentInners
	| localCollection |
	
	localCollection := TypedArrayCollection with: (TypedArrayCollection with: 5) with: 3 with: (TypedArrayCollection with: '42').
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<any # SmallInteger | TypedArrayCollection<any # SmallInteger | String>>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:50:33'!
test025TooltipForNestedCommonTypesAndIntruder
	| localCollection |
	
	localCollection := TypedArrayCollection with: (TypedArrayCollection with: 5) with: 3 with: (TypedArrayCollection2 with: '42').
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<any # SmallInteger | TypedArrayCollection<SmallInteger> | TypedArrayCollection2<String>>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:50:46'!
test026TooltipForNestedCommontTypesWithTwoLevelIntruder
	| localCollection |
	
	localCollection := TypedArrayCollection with: (TypedArrayCollection with: 5) with: 3 with: (TypedArrayCollection2 with: '42').
	ATestClassForCollections new store: localCollection.
	ATestClassForCollections new store: 45.
	self assertTooltipIs: '<any # SmallInteger | TypedArrayCollection<any # SmallInteger | TypedArrayCollection<SmallInteger> | TypedArrayCollection2<String>>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:51:02'!
test027TooltipForAwfullyComplexInnerCollections
	| localCollection |
	
	localCollection := TypedArrayCollection with: (TypedArrayCollection with: 5) with: 3 with: (TypedArrayCollection2 with: '42').
	ATestClassForCollections new store: (TypedArrayCollection2 new).
	ATestClassForCollections new store: localCollection.
	self assertTooltipIs: '<TypedArrayCollection<any # ? | SmallInteger | TypedArrayCollection<SmallInteger> | TypedArrayCollection2<String>> # TypedArrayCollection<any # SmallInteger | TypedArrayCollection<SmallInteger> | TypedArrayCollection2<String>> | TypedArrayCollection2<?>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:51:25'!
test028TooltipOnlyOneType
	
	ATestClassForCollections new store: 42.
	self assertTooltipIs: '<SmallInteger>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:51:45'!
test029TooltipCommonSuperTypeSingleClasses
	ATestClassForCollections new store: 42.
	ATestClassForCollections new store: 66.6.
	self assertTooltipIs: '<Number # SmallFloat64 | SmallInteger>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:52:02'!
test030TooltipNoTypes
	self assertTooltipIs: '<?>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:52:28'!
test031TooltipNoCommonSuperTypeSingleClasses
	ATestClassForCollections new store: 42.
	ATestClassForCollections new store: '66.6'.
	self assertTooltipIs: '<any # SmallInteger | String>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 22:01:32'!
test0xxValidateWhatHappensOnSuperClass
	self fail.! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/17/2020 19:33:09'!
test001Empty
	| typeTree |

	typeTree := TypeNode for: EmptyType new.

	self assert: EmptyType new equals: typeTree type.
	self assert: nil equals: typeTree bound.
	self assert: Set new equals: typeTree generics! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/17/2020 19:33:22'!
test002Fixed
	| typeTree |

	typeTree := TypeNode for: (FixedType for: Integer).

	self assert: (FixedType for: Integer) equals: typeTree type.
	self assert: nil equals: typeTree bound.
	self assert: Set new equals: typeTree generics! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/17/2020 19:33:36'!
test003GenericSingleValue
	| typeTree |

	typeTree := TypeNode for: (GenericType for: LinkedList withTypes: Integer).

	self assert: (FixedType for: LinkedList) equals: typeTree type.
	self assert: (TypeNode for: (FixedType for: Integer)) equals: typeTree bound.
	self assert: Set new equals: typeTree generics! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/17/2020 19:50:14'!
test004MultipleFixed
	| typeTree intType floatType intNode floatNode |

	intType := FixedType for: Integer.
	floatType := FixedType for: Float.
	typeTree := TypeNode for: (Set with: intType with: floatType).
	intNode := TypeNode for: intType.
	floatNode := TypeNode for: floatType.

	self assert: (FixedType for: Number) equals: typeTree type.
	self assert: nil equals: typeTree bound.
	self assert: (Set with: intNode with: floatNode) equals: typeTree generics! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/18/2020 20:52:28'!
test005GenericMultipleValues
	| typeTree intType floatType intNode floatNode |

	typeTree := TypeNode for: (GenericType for: LinkedList withTypes: (Array with: Integer with: Float)).
	intType := FixedType for: Integer.
	floatType := FixedType for: Float.
	intNode := TypeNode for: intType.
	floatNode := TypeNode for: floatType.
	

	self assert: (FixedType for: LinkedList) equals: typeTree type.
	self assert: (TypeNode for: (Set with: intType with: floatType)) equals: typeTree bound.
	self assert: (Set with: intNode with: floatNode) equals: typeTree bound generics.
	self assert: Set new equals: typeTree generics.! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/18/2020 20:50:44'!
test006MultipleFixedWithNoCommonSupertype
	| typeTree intType stringType intNode stringNode |

	intType := FixedType for: Integer.
	stringType := FixedType for: String.
	typeTree := TypeNode for: (Set with: intType with: stringType).
	intNode := TypeNode for: intType.
	stringNode := TypeNode for: stringType.

	self assert: (FixedType for: Object) equals: typeTree type.
	self assert: nil equals: typeTree bound.
	self assert: (Set with: intNode with: stringNode) equals: typeTree generics! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/18/2020 21:59:36'!
test007MultipleGenerics
	| typeTree genericType otherGenericType genericNode otherGenericNode floatType intType floatNode intNode |

	genericType := GenericType for: LinkedList withTypes: Integer.
	otherGenericType := GenericType for: Array withTypes: Float.
	intType := FixedType for: Integer.
	floatType := FixedType for: Float.
	typeTree := TypeNode for: (Set with: genericType with: otherGenericType).
	genericNode := TypeNode for: genericType.
	otherGenericNode := TypeNode for: otherGenericType.
	intNode := TypeNode for: intType.
	floatNode := TypeNode for: floatType.

	self assert: (FixedType for: SequenceableCollection) equals: typeTree type.
	self assert: (TypeNode for: (Set with: intType with: floatType)) equals: typeTree bound.
	self assert: (Set with: intNode with: floatNode) equals: typeTree bound generics.
	self assert: (Set with: genericNode with: otherGenericNode) equals: typeTree generics! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/18/2020 21:09:38'!
test008GenericEmptyValue
	| typeTree emptyType |

	typeTree := TypeNode for: (GenericType for: LinkedList withTypes: EmptyType new).
	emptyType := EmptyType new.
	

	self assert: (FixedType for: LinkedList) equals: typeTree type.
	self assert: (TypeNode for: (Set with: emptyType)) equals: typeTree bound.
	self assert: Set new equals: typeTree generics.! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/18/2020 22:02:24'!
test009MultipleGenericsEmptyValue
	| typeTree genericType otherGenericType genericNode otherGenericNode floatType emptyType emptyNode floatNode |

	genericType := GenericType for: LinkedList withTypes: EmptyType new.
	otherGenericType := GenericType for: Array withTypes: Float.
	emptyType := EmptyType new.
	floatType := FixedType for: Float.
	typeTree := TypeNode for: (Set with: genericType with: otherGenericType).
	genericNode := TypeNode for: genericType.
	otherGenericNode := TypeNode for: otherGenericType.
	emptyNode := TypeNode for: emptyType.
	floatNode := TypeNode for: floatType.

	self assert: (FixedType for: SequenceableCollection) equals: typeTree type.
	self assert: (TypeNode for: (Set with: emptyType with: floatType)) equals: typeTree bound.
	self assert: (Set with: emptyNode with: floatNode) equals: typeTree bound generics.
	self assert: (Set with: genericNode with: otherGenericNode) equals: typeTree generics! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/18/2020 21:52:19'!
test010EmptyAndFixed
	| typeTree intType emptyType intNode emptyNode |

	intType := FixedType for: Integer.
	emptyType := EmptyType new.
	typeTree := TypeNode for: (Set with: intType with: emptyType).
	intNode := TypeNode for: intType.
	emptyNode := TypeNode for: emptyType.

	self assert: (FixedType for: Object) equals: typeTree type.
	self assert: nil equals: typeTree bound.
	self assert: (Set with: intNode with: emptyNode) equals: typeTree generics! !

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

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/2/2020 21:20:02'!
asString
	^ self class asString, #- , self type asString.! !

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

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'alf & mds 10/6/2019 19:21:17'!
size
	|size|
	size := 0.
	contentTypes do: [:type| type ifNotNil: [size := size + 1]].
	^ size.
	! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/2/2020 21:24:09'!
sort: types

	^ types asArray sort: [:class1 :class2 | class1 asString <= class2 asString].! !

!CollectionsContentType methodsFor: 'accessing' stamp: 'alf & mds 2/2/2020 21:24:23'!
contentTypes

	|nonNullTypes|
	nonNullTypes := Set new.
	(self sort: contentTypes) do: [:type | type ifNotNil: [nonNullTypes add: type]].
	^ nonNullTypes.! !

!CollectionsContentType methodsFor: 'accessing' stamp: 'ALF - MDS 10/20/2019 19:21:12'!
isAssigned

	^ isAssigned.! !

!CollectionsContentType methodsFor: 'accessing' stamp: 'alf & mds 2/2/2020 21:02:35'!
type
	^ collectionType.! !

!CollectionsContentType methodsFor: 'accessing' stamp: 'alf & mds 2/2/2020 21:01:22'!
types
	| aSet |
	
	aSet := Set new.
	aSet add: collectionType.
	^ aSet! !

!CollectionsContentType class methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 12:54:58'!
new
	^super new initialize.! !

!LiveType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 16:54:23'!
accept: visitor 
	self subclassResponsibility.! !

!LiveType methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/12/2020 18:55:27'!
sanitize: types	
	(types isKindOf: Collection) ifFalse: [
		^ Array with: types.
	].
	^ types.! !

!LiveType methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/5/2020 20:06:21'!
supertypeWith: types 
	self subclassResponsibility.! !

!LiveType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 19:05:11'!
unifiesWith: anotherType
	^ false.! !

!LiveType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 19:09:00'!
unify: anotherType
	self subclassResponsibility.! !

!ClassLiveType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:40:51'!
<= anotherType
	(anotherType isKindOf: ClassLiveType) 
		ifTrue: [
			^ class typeName <= anotherType liveClass typeName
		]
		ifFalse: [
			^ (anotherType isKindOf: UnionType)
		]! !

!ClassLiveType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 13:48:21'!
liveClass
	^ class! !

!FixedType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 13:48:21'!
= otherObject

	otherObject ifNotNil: [ 
		(otherObject isKindOf: FixedType) ifTrue: [
				^ class = otherObject liveClass
			]
		 ].
	
	^ false.! !

!FixedType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 17:07:20'!
accept: visitor
	^ visitor visitFixedType: self.! !

!FixedType methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/11/2020 20:36:55'!
hash
	^ class hash! !

!FixedType methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/5/2020 19:40:38'!
initializeWith: aClass

	class := aClass.! !

!FixedType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 14:15:53'!
supertypeWith: types 
	
	|copiedTypes typesToProcess|
	
	typesToProcess := self sanitize: types.

	copiedTypes := Set new.
	typesToProcess do: [:t | 
		(t isKindOf: GenericType) ifTrue: [^ FixedType for: Object].
		((t isKindOf: EmptyType) or: [t isKindOf: UnionType]) ifTrue: [^ UnionType of: self and: typesToProcess].
		copiedTypes add: t liveClass. 
	].
	
	copiedTypes add: class.

	^ FixedType for: (SupertypeDetective new: copiedTypes) search! !

!FixedType class methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/5/2020 19:40:16'!
for: aClass 
	^ self new initializeWith: aClass.! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 13:48:21'!
= otherObject

	otherObject ifNotNil: [ 
		(otherObject isKindOf: GenericType) ifTrue: [
				^ class = otherObject liveClass and: [innerTypes = otherObject generics].
			]
		 ].
	
	^ false.! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 17:07:29'!
accept: visitor
	^ visitor visitGenericType: self.! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/11/2020 19:59:36'!
generics
	^ innerTypes.! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/11/2020 20:43:56'!
hash
	^ class hash + innerTypes hash! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 13:37:08'!
initializeWith: aClass withTypes: aTypesCollection 
	|typesToProcess|

	typesToProcess := self sanitize: aTypesCollection.
	class := aClass.
	innerTypes := Set new.
	
	typesToProcess do: [:type | 
		(type isKindOf: LiveType) ifTrue: [
				innerTypes add: type.
			] ifFalse: [
				innerTypes add: (FixedType for: type)
			]
		].
	^ self.! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 14:19:45'!
supertypeWith: types 
	| supertype superGenerics copiedTypes generics typesToProcess|

	copiedTypes := Set new.
	generics := Set new.
	typesToProcess := self sanitize: types.
	
	typesToProcess do: [:t | 
		(t isKindOf: FixedType) ifTrue: [^ FixedType for: Object].
		((t isKindOf: EmptyType) or: [t isKindOf: UnionType]) ifTrue: [^ UnionType of: self and: typesToProcess].
		copiedTypes add: t liveClass.
		generics addAll: t generics.
	].
	
	copiedTypes add: class.
	generics addAll: innerTypes.

	supertype := (SupertypeDetective new: copiedTypes) search.
	superGenerics := generics anyOne supertypeWith: generics.

	^ GenericType for: supertype withTypes: (Array with: superGenerics)! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 19:06:11'!
unifiesWith: anotherType
	^ (anotherType isKindOf: GenericType) and: [class = anotherType liveClass]! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 22:14:10'!
unify: anotherType
	| unifiedTypes |
	unifiedTypes := innerTypes copy.
	unifiedTypes addAll: anotherType generics.
	^ GenericType for: class withTypes: unifiedTypes.! !

!GenericType class methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/11/2020 19:54:59'!
for: aClass withTypes: aTypesCollection 
 	^ self new initializeWith: aClass withTypes: aTypesCollection! !

!EmptyType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/18/2020 22:49:30'!
<= anotherType
	^ true.! !

!EmptyType methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/12/2020 19:45:16'!
= otherObject

	otherObject ifNotNil: [ 
		^ otherObject isKindOf: EmptyType.
	].
	
	^ false.! !

!EmptyType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 17:06:46'!
accept: visitor
	^ visitor visitEmptyType: self.! !

!EmptyType methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/12/2020 19:46:00'!
hash
	^ #EmptyType hash! !

!EmptyType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 13:58:03'!
supertypeWith: types 
	
	|typesToProcess|
	
	typesToProcess := self sanitize: types.

	typesToProcess do: [:t | 
		(t isKindOf: EmptyType) ifFalse: [^ UnionType of: self and: typesToProcess].
	].

	^ self.! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/18/2020 22:50:06'!
<= anotherType
	^ false.! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 13:44:51'!
= otherObject

	otherObject ifNotNil: [ 
		(otherObject isKindOf: UnionType) ifTrue: [
				^ types = otherObject types
			]
		 ].
	
	^ false.! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 17:07:52'!
accept: visitor
	^ visitor visitUnionType: self.! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 13:45:51'!
hash
	^ types hash! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 14:18:47'!
initializeWith: aType and: anotherType

	|anotherTypes|
	
	anotherTypes := self sanitize: anotherType.
	
	types := Set new.
	types add: aType.
	anotherTypes do: [ :type | 
		(type isKindOf: UnionType) 
			ifTrue: [ types addAll: type types]
			ifFalse: [ types add: type ].
		].
	^ self.! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 14:13:49'!
supertypeWith: liveTypes 
	
	|typesToProcess|
	
	typesToProcess := self sanitize: liveTypes.
	types addAll: typesToProcess.

	^ self.! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 13:45:30'!
types

	^ types copy.! !

!UnionType class methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 13:36:06'!
of: aType and: anotherType 
	^ self new initializeWith: aType and: anotherType.! !

!LiveTypesPrinter methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 16:59:16'!
initializeWith: aStream
	stream := aStream.
	^ self.! !

!LiveTypesPrinter methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/18/2020 22:21:01'!
print: typesTree
	self print: typesTree withDelimiter: true.! !

!LiveTypesPrinter methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/9/2020 19:35:31'!
print: liveTypes upTo: aNumberOfTypes

	| typesTree |
	
	typesTree := TypeNode for: liveTypes.
	
	self print: typesTree.
	
! !

!LiveTypesPrinter methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/10/2020 09:58:10'!
print: typesTree withDelimiter: printDelimiter
	| treeBound treeGenerics |
	
	printDelimiter ifTrue: [
		stream nextPut: $<.
	].
	typesTree type accept: self.
	treeBound := typesTree bound.
	"TODO: Avoid nil checks"
	treeBound
		 ifNotNil: [
			self print: treeBound.
		].
	"TODO: Create an actual clear message for sorting"
	treeGenerics := typesTree generics asArray sort: [:typeTree1 :typeTree2 | typeTree1 type <= typeTree2 type].
	treeGenerics ifNotEmpty: [
			stream nextPutAll: ' # '.
		].
	treeGenerics do: [:generic | self print: generic withDelimiter: false] separatedBy: [stream nextPutAll: ' | '].
		printDelimiter ifTrue: [
		stream nextPut: $>.
	].! !

!LiveTypesPrinter methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 17:10:02'!
visitEmptyType: anEmptyType
	stream nextPut: $?! !

!LiveTypesPrinter methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/18/2020 22:56:43'!
visitFixedType: aFixedType
	|class|
	"TODO: Consider instead actually printing UnionTypes as any instead of forcing UnionType supertypes into Object at the node level. Maybe even consider wheter the supertype of all mixed types should be a Union".
	class := aFixedType liveClass.
	(class = Object) 
		ifTrue: [
			stream nextPutAll: 'any'
		] 
		ifFalse: [
			stream nextPutAll: class typeName
		].! !

!LiveTypesPrinter methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 17:13:04'!
visitGenericType: aGenericType
	stream nextPutAll: aGenericType liveClass typeName.
	"TODO: make upTo an instance variable"
	(LiveTypesPrinter on: stream) print: aGenericType generics upTo: 5.! !

!LiveTypesPrinter methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 21:06:52'!
visitUnionType: aUnionType
	"TODO upTo should be an instance variable"
	self print: aUnionType types upTo: 5! !

!LiveTypesPrinter class methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 16:58:37'!
on: aStream
	^ self new initializeWith: aStream.! !

!RawToLiveTypesAdapter methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 22:32:19'!
adapt: aRawTypes
	| liveTypes |
	aRawTypes ifEmpty: [^ Set with: (self create: nil) ].
	liveTypes := Set new.
	
	aRawTypes do: [:rt | 
			rt ifNotNil: [ 
				| newLiveType |
				newLiveType := self create: rt. 
				self unifyOrAdd: newLiveType into: liveTypes.
			]
		].
	^ liveTypes.! !

!RawToLiveTypesAdapter methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 22:03:42'!
create: aRawType 
	aRawType ifNil: [^ EmptyType new].
	(aRawType isKindOf: CollectionsContentType) ifTrue: [
			| innerTypes |
			innerTypes := aRawType contentTypes copy.
			"innerTypes ifEmpty: [
				innerTypes add: EmptyType new.
			]. "
			^ GenericType for: aRawType type withTypes: (self adapt: innerTypes).
		].
	^ FixedType for: aRawType! !

!RawToLiveTypesAdapter methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 19:15:24'!
unifyOrAdd: newLiveType into: liveTypes
	liveTypes 
		detect: [:type | type unifiesWith: newLiveType] 
		ifFound: [:type | 
			liveTypes remove: type.
			liveTypes add: (type unify: newLiveType) ] 
		ifNone: [liveTypes add: newLiveType.].
! !

!SupertypeDetective methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/2/2020 18:57:10'!
allSupertypesOf: types
	
	"TODO remove this!! ALF & MDS"
	^ types 
		inject: types anyOne withAllSuperclasses 
		into: [ :temporaryCommonSupertypes :type | temporaryCommonSupertypes intersection: type withAllSuperclasses ].
! !

!SupertypeDetective methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/2/2020 18:57:26'!
commonLowestTypeIn: commonSupertypes
	
	"TODO remove this!! ALF & MDS"
	| commonSupertype commonSupertypeSuperclassesSize |
	
	commonSupertypeSuperclassesSize := 0.
	
	commonSupertypes do: [ :currentType | | currentTypeSuperclassesSize |
		currentTypeSuperclassesSize := currentType withAllSuperclasses size.
		currentTypeSuperclassesSize > commonSupertypeSuperclassesSize ifTrue: [
			commonSupertypeSuperclassesSize := currentTypeSuperclassesSize.
			commonSupertype := currentType ]].
	
	^ commonSupertype! !

!SupertypeDetective methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/2/2020 19:04:07'!
commonSupertypeIfNoTypes: aBlock

	"TODO remove this!! ALF & MDS"
	| types commonSupertypes commonSupertype |
	
	types := searchingTypes.
	types := types reject: [ :aType | aType = UndefinedObject ].
	types isEmpty ifTrue: [ ^aBlock value ].
	types size = 1 ifTrue: [ ^types anyOne ].
	
	"I have to convert types to Array becuase inst var types can be a Set - Hernan"
	commonSupertypes := self allSupertypesOf: types.
	commonSupertype := self commonLowestTypeIn: commonSupertypes.
	
	^commonSupertype ! !

!SupertypeDetective methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/2/2020 19:01:17'!
initializeWith: types

	searchingTypes := types.! !

!SupertypeDetective methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/2/2020 18:59:51'!
search

	^self commonSupertypeIfNoTypes: [ ProtoObject ]! !

!SupertypeDetective class methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/2/2020 19:02:27'!
new: types

	^ self new initializeWith: types.! !

!TypeNode methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/17/2020 19:24:45'!
= otherObject

	otherObject ifNotNil: [ 
		(otherObject isKindOf: TypeNode) ifTrue: [
				^ (bound = otherObject bound) 
					and: [generics = otherObject generics ]
					and: [type = otherObject type]
			]
		 ].
	
	^ false.! !

!TypeNode methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/17/2020 19:18:55'!
bound
	^ bound! !

!TypeNode methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/17/2020 19:19:05'!
generics
	^ generics! !

!TypeNode methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/17/2020 19:26:40'!
hash
	^ type hash * generics hash * bound hash! !

!TypeNode methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/18/2020 22:01:51'!
initializeWith: aTypeSet 
	| typesToProcess supertype |
	
	typesToProcess := self sanitize: aTypeSet.
	supertype := typesToProcess anyOne supertypeWith: typesToProcess.
	
	(supertype isKindOf: GenericType) 
		ifTrue: [ 
			| processTypesGenerics |
			processTypesGenerics := Set new.
			typesToProcess do: [:aType | processTypesGenerics addAll: aType generics].
			bound := TypeNode for: processTypesGenerics. 
			type := FixedType for: supertype liveClass 
		] 
		ifFalse: [
			(supertype isKindOf: UnionType)
				ifTrue: [
					type := FixedType for: Object.
				]
				ifFalse: [
					type := supertype.
				]
		].
	
	(typesToProcess size > 1) 
		ifTrue: [
			generics := typesToProcess collect: [:aType | TypeNode for: aType].
		]
		ifFalse: [
			generics := Set new.
		]! !

!TypeNode methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/17/2020 19:32:47'!
sanitize: types
	| sanitizedTypes |
	
	sanitizedTypes := types.
	(types isKindOf: Collection) ifFalse: [
			sanitizedTypes := Set with: types.
		].
	
	^ sanitizedTypes! !

!TypeNode methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/17/2020 19:19:23'!
type
	^ type.! !

!TypeNode class methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/17/2020 19:14:30'!
for: aTypeSet
	^ self new initializeWith: aTypeSet.! !

!TypedArray methodsFor: 'as yet unclassified' stamp: 'alf & mds 9/29/2019 18:11:51'!
at: anIndex

	^ innerArray at: anIndex.! !

!TypedArray methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 17:57:28'!
at: anIndex put: aValue

	|innerReturn valueClass specialObjectsArray liveCollections classIndex isLiveCollection |
	innerReturn := innerArray at: anIndex put: aValue.
	"TODO: if the value is an instance of SupportedTypes we should... WTF"
	valueClass := aValue class.
	specialObjectsArray := Smalltalk specialObjectsArray.
	liveCollections := specialObjectsArray at: 66.
	classIndex := 0.
	isLiveCollection := liveCollections anySatisfy: [ :class |
		classIndex := classIndex + 1.
		class = valueClass
	].
	isLiveCollection
		ifTrue: [
			| typedArray |
			typedArray := aValue instVarAt: ((specialObjectsArray at: 67) at: classIndex) + 1.
			types add: typedArray contentTypes.
		] 
		ifFalse: [
			types add: valueClass.
		]. 
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
