"
style sheet alignement

Instance Variables
	horizontal:		<Object>
	indent:		<Object>
	justifyLastLine:		<Object>
	readingOrder:		<Object>
	relativeIndent:		<Object>
	shrinkToFit:		<Object>
	textRotation:		<Object>
	vertical:		<Object>
	wrapText:		<Object>


    Implementation Points
"
Class {
	#name : #TabularAlignement,
	#superclass : #TabularContainerStyle,
	#instVars : [
		'horizontal',
		'vertical',
		'textRotation',
		'wrapText',
		'shrinkToFit',
		'indent',
		'relativeIndent',
		'justifyLastLine',
		'readingOrder'
	],
	#classVars : [
		'AlignementHorizontal',
		'AlignementVertical'
	],
	#category : #'Tabular-Model'
}

{ #category : #accessing }
TabularAlignement class >> bottom [
	^ 'bottom'
]

{ #category : #accessing }
TabularAlignement class >> center [
	^ 'center'
]

{ #category : #accessing }
TabularAlignement class >> centerContinuous [
	^ 'centerContinuous'
]

{ #category : #accessing }
TabularAlignement class >> distributed [
	^ 'distributed'
]

{ #category : #accessing }
TabularAlignement class >> fill [
	^ 'fill'
]

{ #category : #accessing }
TabularAlignement class >> general [
	^ 'general'
]

{ #category : #'class initialization' }
TabularAlignement class >> initialize [
	AlignementHorizontal := #('general' 'left' 'center''right' 'fill' 'justify' 'centerContinuous''distributed').
	AlignementVertical := #('top' 'center' 'bottom' 'justify' 'distributed').
]

{ #category : #accessing }
TabularAlignement class >> justify [
	^ 'justify'
]

{ #category : #accessing }
TabularAlignement class >> left [ 
^ 'left'

]

{ #category : #accessing }
TabularAlignement class >> right [
	^ 'right'
]

{ #category : #accessing }
TabularAlignement class >> top [
	^ 'top'
]

{ #category : #initialization }
TabularAlignement >> at: anAttribut [
	"getting attribut"

	^ self instVarNamed: anAttribut
]

{ #category : #initialization }
TabularAlignement >> at: anAttribut put: aValue [
	"setting attribut"

	self attributeAt:  ( self instVarNamed: anAttribut) put: aValue
]

{ #category : #initialization }
TabularAlignement >> initialize [
	"setting attribut"

	super initialize.
	horizontal := 'general'.
	indent := 1
]
