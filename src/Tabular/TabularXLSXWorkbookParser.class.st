"
to comment 
 
Internal Representation and Key Implementation Points.

    Instance Variables
	defcounter:		<Object>
	defname:		<Object>


    Implementation Points
"
Class {
	#name : #TabularXLSXWorkbookParser,
	#superclass : #TabularSAXParser,
	#instVars : [
		'defcounter',
		'defname'
	],
	#category : #'Tabular-SAXParser'
}

{ #category : #'as yet unclassified' }
TabularXLSXWorkbookParser >> buildRootObject [
	^ StandardOrderedDictionary new.
]

{ #category : #'as yet unclassified' }
TabularXLSXWorkbookParser >> definedName_characters: astring [
	defname content: astring
]

{ #category : #'as yet unclassified' }
TabularXLSXWorkbookParser >> definedName_end [
	parsingStack top at: 'defname_' , defcounter asString put: defname.
	defcounter := defcounter + 1

]

{ #category : #'as yet unclassified' }
TabularXLSXWorkbookParser >> definedName_start: properties [
	defname := TabularDefinedNames new.
	properties at: 'name' ifPresent: [ :n | defname name: n ].
	properties at: 'hidden' ifPresent: [ :n | defname hidden: n ].
	properties
		at: 'localSheetId'
		ifPresent: [ :n | defname localSheetId: n ]

]

{ #category : #'as yet unclassified' }
TabularXLSXWorkbookParser >> definedNames_start [
" initialize counter"
	defcounter := 1
]

{ #category : #initialization }
TabularXLSXWorkbookParser >> initialize [
	super initialize.

	defcounter := 1
]

{ #category : #'as yet unclassified' }
TabularXLSXWorkbookParser >> registeredElements [
	^ #(sheet definedNames definedName)
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
