"
definamedName in workbook

    Instance Variables
	comment:		<Object>
	content:		<Object>
	customerMenu:		<Object>
	description:		<Object>
	function:		<Object>
	vbProcedure:		<Object>
	xlm:		<Object>


    Implementation Points
"
Class {
	#name : #TabularDefinedNames,
	#superclass : #TabularObject,
	#category : #'Tabular-Model'
}

{ #category : #accessing }
TabularDefinedNames >> attributeAt: anAttribute [ 
	^ self attributeAt: anAttribute 
	
	
]

{ #category : #accessing }
TabularDefinedNames >> attributes [ 
" return attributes of the instance " 
	^  attributes 
	
	
]

{ #category : #accessing }
TabularDefinedNames >> getter: anAttribute [ 
	^ self attributeAt: anAttribute 
	
	
]

{ #category : #accessing }
TabularDefinedNames >> isPresent: anOptionalattribut [
"return the presence of an attribut"
	(self attributeAt: anOptionalattribut ) ifNil: [ ^ false ].
	^ true
]

{ #category : #accessing }
TabularDefinedNames >> setter: anAttribute put: aValue [
	self attributeAt: anAttribute put: aValue
	
]
