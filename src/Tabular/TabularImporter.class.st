Class {
	#name : #TabularImporter,
	#superclass : #Object,
	#instVars : [
		'workbook',
		'parameters'
	],
	#category : #'Tabular-Importers'
}

{ #category : #'instance creation' }
TabularImporter class >> fromFileNamed: aString [
	^self fromStream: aString asFileReference binaryReadStream
]

{ #category : #'instance creation' }
TabularImporter class >> fromStream: aStream [
	^self new import: aStream.
]

{ #category : #importing }
TabularImporter >> import: aStream [
	workbook := TabularWorkbook new.
	^workbook.
]

{ #category : #'as yet unclassified' }
TabularImporter >> initialize [
	parameters := Dictionary new.
]
