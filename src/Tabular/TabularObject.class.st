"
Internal Representation and Key Implementation Points.

    Instance Variables
	attributes:		<Object>
	workbook:		<Object>


    Implementation Points
"
Class {
	#name : #TabularObject,
	#superclass : #Object,
	#instVars : [
		'attributes',
		'workbook'
	],
	#category : #'Tabular-Model'
}

{ #category : #'as yet unclassified' }
TabularObject class >> newFrom: aTabularWorkbook [
	^ self new
		workbook: aTabularWorkbook;
		yourself
]

{ #category : #'accessing - attributes' }
TabularObject >> attributeAt: aKeySymbol [
	^ attributes at: aKeySymbol ifAbsent: nil	"Better default values management needed"
]

{ #category : #'accessing - attributes' }
TabularObject >> attributeAt: aKeySymbol put: value [
	attributes at: aKeySymbol put: value
]

{ #category : #'xlsx specific' }
TabularObject >> extractFromXml: aXmlElement [
	self subclassResponsibility 
]

{ #category : #initialization }
TabularObject >> initialize [
	super initialize.
	attributes := Dictionary new.
]

{ #category : #testing }
TabularObject >> isTabularCell [
	^false.
]

{ #category : #testing }
TabularObject >> isTabularWorkbook [
	^ false
]

{ #category : #testing }
TabularObject >> isTabularWorksheet [
	^false.
]

{ #category : #'xlsx specific' }
TabularObject >> rID: aString [
	self attributeAt: #rID put: aString
]

{ #category : #'xlsx specific' }
TabularObject >> stringTable [
	^ workbook stringTable 
]

{ #category : #accessing }
TabularObject >> workbook [
	^ workbook 
]

{ #category : #accessing }
TabularObject >> workbook: aTabularWorkbook [
	workbook := aTabularWorkbook 
]
