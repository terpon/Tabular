Class {
	#name : #TabularXLSXWorkbookParser,
	#superclass : #TabularSAXParser,
	#category : #'Tabular-SAXParser'
}

{ #category : #'as yet unclassified' }
TabularXLSXWorkbookParser >> buildRootObject [
	^ StandardOrderedDictionary new.
]

{ #category : #'as yet unclassified' }
TabularXLSXWorkbookParser >> definedName_start: properties [
	parsingStack top
]

{ #category : #'as yet unclassified' }
TabularXLSXWorkbookParser >> registeredElements [
	^ #(sheet definedName)
]

{ #category : #'as yet unclassified' }
TabularXLSXWorkbookParser >> sheet_start: properties [
	parsingStack top
		at: (properties at: #r:id)
		put: (properties at: #name).
	properties
		at: #state
		ifPresent: [ parsingStack top
				at: (properties at: #name) , '_state'
				put: (properties at: #state) ]
		ifAbsent: [ parsingStack top at: (properties at: #name) , '_state' put: 'visible' ]
]
