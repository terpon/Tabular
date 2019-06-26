Class {
	#name : #TabularExport,
	#superclass : #Object,
	#instVars : [
		'zip',
		'workbook',
		'stream'
	],
	#category : #'Tabular-Exporters'
}

{ #category : #examples }
TabularExport class >> example1 [

    self export: (TabularWorkbook example1)
]

{ #category : #exporting }
TabularExport class >> export: aWorkbook [

      ^self new workbook: aWorkbook; generate.
]

{ #category : #exporting }
TabularExport class >> export: aWorkbook fileName: aFileNameString [

      aWorkbook filename: aFileNameString.
      self new workbook: aWorkbook; generate.
]

{ #category : #exporting }
TabularExport class >> workbook: aWorkbook fileName: aFileNameString [

      self export: aWorkbook fileName: aFileNameString
      
]

{ #category : #generating }
TabularExport >> generate [

	self subclassResponsibility 
]

{ #category : #initialization }
TabularExport >> initialize [

     super initialize
]

{ #category : #accessing }
TabularExport >> workbook [
	^ workbook
]

{ #category : #accessing }
TabularExport >> workbook: anObject [
	workbook := anObject.

]

{ #category : #'as yet unclassified' }
TabularExport >> writeZip [
	zip writeToFileNamed: workbook filename.

]
