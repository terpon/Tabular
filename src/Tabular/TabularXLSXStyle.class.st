Class {
	#name : #TabularXLSXStyle,
	#superclass : #TabularStyle,
	#instVars : [
		'numFmtId',
		'fontId',
		'fillId',
		'borderId',
		'xfId'
	],
	#category : #'Tabular-Model'
}

{ #category : #accessing }
TabularXLSXStyle >> borderId [
	^ borderId
]

{ #category : #accessing }
TabularXLSXStyle >> borderId: anObject [
	borderId := anObject
]

{ #category : #accessing }
TabularXLSXStyle >> fillId [
	^ fillId
]

{ #category : #accessing }
TabularXLSXStyle >> fillId: anObject [
	fillId := anObject
]

{ #category : #accessing }
TabularXLSXStyle >> fontId [
	^ fontId
]

{ #category : #accessing }
TabularXLSXStyle >> fontId: anObject [
	fontId := anObject
]

{ #category : #testing }
TabularXLSXStyle >> isDate [
	^ ((self workbook styles formats at: self numFmtId ifAbsent: [ '' ]) includes: $y)
		or: [ #(14 15 16 17 22) includes: self numFmtId ]
]

{ #category : #accessing }
TabularXLSXStyle >> numFmtId [
	^ numFmtId
]

{ #category : #accessing }
TabularXLSXStyle >> numFmtId: anObject [
	numFmtId := anObject
]

{ #category : #accessing }
TabularXLSXStyle >> xfId [
	^ xfId
]

{ #category : #accessing }
TabularXLSXStyle >> xfId: anObject [
	xfId := anObject
]
