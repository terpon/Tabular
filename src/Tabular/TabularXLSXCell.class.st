"
Instance Variables
	formula:		<Object>
	style:		<Object>
	type:		<Object>


    Implementation Points
"
Class {
	#name : #TabularXLSXCell,
	#superclass : #TabularCell,
	#instVars : [
		'style',
		'type',
		'formula'
	],
	#category : #'Tabular-Model'
}

{ #category : #'accessing - attributes' }
TabularXLSXCell >> colspan [
	^ self attributeAt: #colspan
]

{ #category : #'accessing - attributes' }
TabularXLSXCell >> colspan: anObject [
	^ self attributeAt: #colspan put: anObject
]

{ #category : #'accessing - attributes' }
TabularXLSXCell >> formula [
	"not in attributes for performance issues"

	^ formula
]

{ #category : #'accessing - attributes' }
TabularXLSXCell >> formula: anObject [
	"not in attributes for performance issues"

	formula := anObject
]

{ #category : #testing }
TabularXLSXCell >> hasSharableString [
	"strings can be shared when they have not been computed by a formula"
	^data isString and: [ formula isNil ]
]

{ #category : #'accessing - attributes' }
TabularXLSXCell >> rowspan [
	^ self attributeAt: #rowspan
]

{ #category : #'accessing - attributes' }
TabularXLSXCell >> rowspan: anObject [
	^ self attributeAt: #rowspan put: anObject
]

{ #category : #accessing }
TabularXLSXCell >> stringAt: aXMLString [
	^ self stringTable at: aXMLString asString asInteger
]

{ #category : #'accessing - attributes' }
TabularXLSXCell >> style [
	^ style 
]

{ #category : #'accessing - attributes' }
TabularXLSXCell >> style: anObject [
	style := anObject
]

{ #category : #'accessing - attributes' }
TabularXLSXCell >> type [
	^ type
]

{ #category : #'accessing - attributes' }
TabularXLSXCell >> type: anObject [
	"not in attributes for performance issues"

	type := anObject
]
