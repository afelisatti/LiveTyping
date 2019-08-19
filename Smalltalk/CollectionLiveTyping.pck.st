'From Cuis 5.0 of 7 November 2016 [latest update: #3636] on 19 August 2019 at 5:21:23 pm'!
'Description Please enter a description for this package'!
!provides: 'CollectionLiveTyping' 1 1!
SystemOrganization addCategory: #'CollectionLiveTyping-Tests'!
SystemOrganization addCategory: #CollectionLiveTyping!


!classDefinition: #CollectionLiveTyping category: #CollectionLiveTyping!
OrderedCollection subclass: #CollectionLiveTyping
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping'!
!classDefinition: 'CollectionLiveTyping class' category: #CollectionLiveTyping!
CollectionLiveTyping class
	instanceVariableNames: ''!

!classDefinition: #LiveTypingCollection category: #CollectionLiveTyping!
OrderedCollection subclass: #LiveTypingCollection
	instanceVariableNames: 'collectionsContentType'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping'!
!classDefinition: 'LiveTypingCollection class' category: #CollectionLiveTyping!
LiveTypingCollection class
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

!classDefinition: #ATestClassForCollections category: #'CollectionLiveTyping-Tests'!
Object subclass: #ATestClassForCollections
	instanceVariableNames: 'instanceVariable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping-Tests'!
!classDefinition: 'ATestClassForCollections class' category: #'CollectionLiveTyping-Tests'!
ATestClassForCollections class
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
	instanceVariableNames: 'contentTypes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionLiveTyping'!
!classDefinition: 'CollectionsContentType class' category: #CollectionLiveTyping!
CollectionsContentType class
	instanceVariableNames: ''!


!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 13:17:52'!
printOn: aStream 
	"Append a sequence of characters that identify the receiver to aStream."

	self printNameOn: aStream.
	self printElementsOn: aStream! !

!CollectionLiveTyping class methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 8/19/2019 16:57:53'!
initialize

	Utilities informUser: 'Initializing live typing' during: [ self initializeCollectionLiveTyping ].! !

!CollectionLiveTyping class methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 8/19/2019 17:19:48'!
initializeCollectionLiveTyping
|newArray count|
	
	(Smalltalk specialObjectsArray size < 63) ifTrue: [
		newArray := Array new: 65. 
		count := 1.
		
		Smalltalk specialObjectsArray do: [:each | newArray at: count put: each. count := count + 1].
		
		newArray
			at: 63
			put: LiveTypingCollection.
		newArray
			at: 64
			put: CollectionsContentType.
		newArray
			at: 65
			put: HaltingClass.
			
			
		Smalltalk specialObjectsArray become: newArray.] 
	ifFalse: [
		(Smalltalk specialObjectsArray size > 64) ifTrue: [
			((Smalltalk specialObjectsArray at: 63) = LiveTypingCollection and: (Smalltalk specialObjectsArray at: 64) = CollectionsContentType and: (Smalltalk specialObjectsArray at: 65) = HaltingClass) ifFalse: [ self error: 'Image cannot support CollectionLiveTyping. Special objects array entries 63 to 65 are in use.'].
			]
		
		].! !

!LiveTypingCollection methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 12:55:37'!
add: anElement
	super add: anElement.! !

!LiveTypingCollection methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 12:55:45'!
contentTypes
	^ collectionsContentType.! !

!LiveTypingCollection methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 12:56:05'!
initializeLiveTypingCollection
	collectionsContentType := CollectionsContentType new.
	^ self! !

!LiveTypingCollection class methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 12:56:21'!
new
	^ super new initializeLiveTypingCollection! !

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

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 6/2/2019 20:40:56'!
returnCollection
	^ LiveTypingCollection new.! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 13:05:08'!
setUp
	super setUp.
	self cleanUp.
! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 13:05:18'!
tearDown
	self cleanUp.! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 13:05:26'!
test001AssigningACollectionToAVariable
	"This test checks whether when a Collection is assigned to a variable a link is created between the variable's class (in the instanceVariablesRawTypes) and the collection's instance (of type CollectionsContentType)"

|aCollection aTestClass aTestClassRawTypes|

aTestClass := ATestClassForCollections new.
aCollection := LiveTypingCollection new.

aTestClass store: aCollection.

aTestClassRawTypes := aTestClass class instanceVariablesRawTypes at:1.
self assert: aCollection contentTypes equals: (aTestClassRawTypes at: 1).
self assert: aCollection contentTypes class equals: CollectionsContentType. ! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 13:05:35'!
test002CollectionsContentTypeAliasing
 |aCollection anotherCollection aTestClass instanceVariableRawTypes |

aCollection := LiveTypingCollection new.
anotherCollection := LiveTypingCollection new.
aTestClass := ATestClassForCollections new.

aTestClass store: aCollection.
aTestClass store: anotherCollection.

instanceVariableRawTypes := ATestClassForCollections instanceVariablesRawTypes at: 1.

self assert: aCollection contentTypes equals: (instanceVariableRawTypes at: 1).  
self assert: anotherCollection contentTypes equals: (instanceVariableRawTypes at: 2). 


! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 18:01:17'!
test003InnerArrayCollectsTypes
 |aCollection contentTypes aTestClass |

aCollection := LiveTypingCollection new.
aTestClass := ATestClassForCollections new.
aTestClass store: aCollection.

aCollection add: HaltingClass new.
aCollection add: 'aString'.
contentTypes := aCollection contentTypes.
self assert: (contentTypes containsType: HaltingClass). 
self assert: (contentTypes containsType: String).


! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 6/2/2019 20:41:23'!
test004ReceivingACollectionAsParameter
 |aCollection variablesRawTypes |

aCollection := LiveTypingCollection new.

self receiveCollection: aCollection.

variablesRawTypes := (self class methodDictionary at: #receiveCollection:) variablesRawTypes.
self assert: aCollection contentTypes equals: ((variablesRawTypes at: 1) at: 1).! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 6/2/2019 20:43:42'!
test005ReturningACollectionAsOutput
|aCollection returnRawTypes|

	aCollection := self returnCollection.
	returnRawTypes := (self class methodDictionary at: #returnCollection) returnRawTypes.
	
	self assert: aCollection contentTypes equals: (returnRawTypes at: 1).! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 6/2/2019 20:43:58'!
test006OtherParameterTypesCanBeStoreAfterACollection
 |aCollection variablesRawTypes |

aCollection := LiveTypingCollection new.

self receiveCollection: aCollection.
self receiveCollection: 'hello'.

variablesRawTypes := (self class methodDictionary at: #receiveCollection:) variablesRawTypes at: 1.
self assert: aCollection contentTypes equals: (variablesRawTypes at: 1).
self assert: String equals: (variablesRawTypes at: 2).! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 6/2/2019 20:46:58'!
test007OtherReturnTypesCanBeStoreAfterACollection
|aCollection returnRawTypes|

	aCollection := self return: LiveTypingCollection new.
	self return: 'hello'.
	returnRawTypes := (self class methodDictionary at: #return:) returnRawTypes.
	
	self assert: aCollection contentTypes equals: (returnRawTypes at: 1).
	self assert: String equals: (returnRawTypes at: 2).! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 6/2/2019 20:45:52'!
test008OtherVariableTypesCanBeStoreAfterACollection
|aCollection aTestClass aTestClassRawTypes|

aTestClass := ATestClassForCollections new.
aCollection := LiveTypingCollection new.

aTestClass store: aCollection.
aTestClass store: 'hello'.

aTestClassRawTypes := aTestClass class instanceVariablesRawTypes at:1.
self assert: aCollection contentTypes equals: (aTestClassRawTypes at: 1).
self assert: String equals: (aTestClassRawTypes at: 2).! !

!LiveTypingCollectionTests methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 6/2/2019 20:53:19'!
test009ParametersCollectsTypes
 |aCollection variablesRawTypes variableRawTypes contentTypes|

aCollection := LiveTypingCollection new.

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

!ATestClassForCollections methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 13:04:33'!
store: aCollection

	instanceVariable := aCollection.! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 12:53:59'!
containsType: aType
	^ contentTypes anySatisfy: [:savedType | savedType = aType].! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 12:54:23'!
initialize
	contentTypes := Array new:10.
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

!CollectionsContentType class methodsFor: 'as yet unclassified' stamp: 'ALF & MDS 4/21/2019 12:54:58'!
new
	^super new initialize.! !
CollectionLiveTyping initialize!
