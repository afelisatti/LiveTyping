keepTypeInformationIn: types for: anAssignedObject 
	| assignedObjectClass assignedObjectClassTag contentTypes collectionIndex typedArrayIndex hasBeenAssigned alreadyInTypes |
	<inline: true>
	types = objectMemory nilObject
		ifFalse: [
			(self isInstanceOfClassArray: types)
				ifTrue: [
					assignedObjectClassTag := objectMemory fetchClassTagOf: anAssignedObject.
					self deny: (objectMemory isForwardedClassTag: assignedObjectClassTag).
					assignedObjectClass := objectMemory classForClassTag: assignedObjectClassTag.
					self deny: assignedObjectClass isNil.
					
					collectionIndex := self collectionIndexFor: assignedObjectClass.
					
					(collectionIndex  > -1) "Then it is a live-typeable collection" 
						ifTrue: [
							typedArrayIndex := self typedArrayIndexFor: collectionIndex.
							contentTypes := self contentTypesOf: anAssignedObject with: typedArrayIndex.
							hasBeenAssigned := objectMemory followObjField: 2 ofObject: contentTypes. "Index of 'isAssigned' variable within CCT is 2."
							alreadyInTypes := self is: contentTypes in: types.
							
							hasBeenAssigned
								ifTrue: [
									alreadyInTypes ifFalse: [
										"Belongs to another variable, we just add reference"
										self storeType: contentTypes in: types.
									]
								]
								ifFalse: [
									alreadyInTypes
										ifTrue: [
											"storedType = types get: contentType type
											  merge: storedType with: contentType
											  anAssignedObject typedArray put: storedType varAt: 3"
										]
										ifFalse: [
											"TODO update isAssigned to true"
											self storeType: contentTypes in: types.
										]
								]	
						] 
						ifFalse: [
							self storeType: assignedObjectClass in: types.	
						]
					]
				].
					
					
					
					
					
					"-----------------------------"
					"TODO move this to ObjectMemory"
					"To avoid label redefinition compile error! - Ana and Mariano"
		"			isAssignedObjectOrderedCollection := (objectMemory is: anAssignedObject instanceOf: (objectMemory splObj: ClassLiveTypingCollection) compactClassIndex: 0)-0.
					isAssignedObjectOrderedCollection
						ifTrue: [
							collectionContentTypes := objectMemory followObjField: 3 ofObject: anAssignedObject.]
						ifFalse: [
							collectionContentTypes := objectMemory nilObject.
							].
					To avoid label redefinition compile error! - Hernan
					typesSize := (objectMemory lengthOf: types)-0.
					index := 0.
					typeNotStored := true.
					[typeNotStored and: [index < typesSize]]
						whileTrue: [
							typeAtIndex := objectMemory followObjField: index ofObject: types.
							typeAtIndex == assignedObjectClass
								ifTrue: [
									typeNotStored := false]
								ifFalse: [
									typeAtIndex == objectMemory nilObject
										ifTrue: [
											Check whether the assigned object is an instance of OrderedCollection, if so, copy the collectionContentType from the instance of the collection into the type's array of the
											 Class where the assignment is taking place. otherwise copy the assignedObjectClass into the type's array of the Class where the assignment is taking place. 
											isAssignedObjectOrderedCollection
												ifTrue: [
													objectMemory storePointer: index ofObject: types withValue: collectionContentTypes]
												ifFalse: [
													objectMemory storePointer: index ofObject: types withValue: assignedObjectClass].
											typeNotStored := false]
										ifFalse: [
											If an OrderedCollection was already assigned, check if it is this one.					
											typeAtIndex == collectionContentTypes
												ifTrue: [
													typeNotStored := false].
												index := index + 1.
								].
							]
						]
					]
				]."