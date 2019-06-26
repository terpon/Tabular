Class {
	#name : #TabularSAXParser,
	#superclass : #SAXHandler,
	#instVars : [
		'parsingStack',
		'saxStack'
	],
	#category : #'Tabular-SAXParser'
}

{ #category : #'as yet unclassified' }
TabularSAXParser class >> generateMethods: aBuilder [
	<nautilusGlobalClassMenu>
	| selectedClass |
	selectedClass := aBuilder model selectedClass.
	
	(aBuilder item: #'Generate XML elements handlers')
		action: [ selectedClass new generateMethodsForRegisteredElements ].

]

{ #category : #private }
TabularSAXParser >> addAttributes: attributes to: tabularObject [
	attributes associationsDo: [ :assoc |
		tabularObject attributeAt: assoc key put: assoc value ].
]

{ #category : #initialization }
TabularSAXParser >> buildRootObject [
	^nil
]

{ #category : #'handling - content' }
TabularSAXParser >> characters: aString [
| aQualifiedName |
	aQualifiedName := saxStack top.
	(self registeredElements includes: aQualifiedName)
		ifTrue: [ self performIfExists: (self charactersMethodFor: aQualifiedName) with: aString ].
]

{ #category : #private }
TabularSAXParser >> charactersMethodFor: aQualifiedName [

	| mangled |
	mangled := self methodName: aQualifiedName.
	^(mangled, '_characters:') asSymbol
]

{ #category : #'handling - content' }
TabularSAXParser >> endElement: aQualifiedName [
	(self registeredElements includes: aQualifiedName)
		ifTrue: [ self performIfExists: (self endMethodFor: aQualifiedName)].
	saxStack pop.
]

{ #category : #private }
TabularSAXParser >> endMethodFor: aQualifiedName [
	| mangled |
	mangled := self methodName: aQualifiedName.
	^ (mangled , '_end') asSymbol
]

{ #category : #private }
TabularSAXParser >> generateMethod: aSymbol [
	(self respondsTo: aSymbol) ifTrue: [^self]. "Do not override existing methods!" 
	
	aSymbol endsWithAColon
		ifTrue: [self class compile: aSymbol, ' properties', Character cr asString, Character tab asString]
		ifFalse: [self class compile: aSymbol, Character cr asString, Character tab asString]

]

{ #category : #private }
TabularSAXParser >> generateMethodsForRegisteredElements [
	self registeredElements do:[:elementName|
		self generateMethod: (self startMethodFor: elementName).
		self generateMethod: (self endMethodFor: elementName).
		self generateMethod: (self charactersMethodFor: elementName).
	]
]

{ #category : #initialization }
TabularSAXParser >> initialize [
	super initialize.
	parsingStack := Stack new.
	self buildRootObject ifNotNil: [ :obj | parsingStack push: obj ].
	saxStack := Stack new
]

{ #category : #private }
TabularSAXParser >> methodName: aQualifiedName [
	"Replace characters that are valid in an element name, but not a method name."

	^ aQualifiedName copyWithRegex: '\-|\:' matchesReplacedWith: '_'
]

{ #category : #parsing }
TabularSAXParser >> parsingResult [
	^ parsingStack top.
]

{ #category : #private }
TabularSAXParser >> performIfExists: aSymbol [
	^ (self respondsTo: aSymbol)
		ifTrue: [ self perform: aSymbol].
]

{ #category : #private }
TabularSAXParser >> performIfExists: aSymbol with: anObject [
	^ (self respondsTo: aSymbol)
		ifTrue: [ self perform: aSymbol with: anObject].
]

{ #category : #elements }
TabularSAXParser >> registeredElements [
"This should return collection of names of the elements, which will be handled by this parser. For example:
	^#(html head body table)
"
	^self shouldBeImplemented 
]

{ #category : #'handling - content' }
TabularSAXParser >> startElement: aQualifiedName attributes: aDictionary [
	saxStack push: aQualifiedName.
	(self registeredElements includes: aQualifiedName)
		ifTrue: [ self performIfExists: (self startMethodFor: aQualifiedName) with: aDictionary]
]

{ #category : #private }
TabularSAXParser >> startMethodFor: aQualifiedName [
	"Convert the supplied element name to the associated start method name."

	| mangled |
	mangled := self methodName: aQualifiedName.
	^ (mangled , '_start:') asSymbol
]
