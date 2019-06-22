"
create instance of definedNamed stored in a Dictionary
this a specific class for workbook

    Instance Variables
	comment:		<Object>
	customerMenu:		<Object>
	description:		<Object>
	function:		<Object>
	hidden:		<Object>
	localSheetId:		<Object>
	name:		<Object>
	vbProcedure:		<Object>
	xlm:		<Object>


    Implementation Points
"
Class {
	#name : #TabularDefinedNames,
	#superclass : #TabularObject,
	#instVars : [
		'comment',
		'customerMenu',
		'description',
		'function',
		'vbProcedure',
		'xlm',
		'content'
	],
	#category : #'Tabular-Model'
}

{ #category : #accessing }
TabularDefinedNames >> comment [
	^ self attributeAt: #comment
]

{ #category : #accessing }
TabularDefinedNames >> comment: aString [
	self attributeAt: #comment put: aString
]

{ #category : #accessing }
TabularDefinedNames >> content [
	^  content
]

{ #category : #accessing }
TabularDefinedNames >> content: aString [
	content  := aString
]

{ #category : #accessing }
TabularDefinedNames >> customerMenu [
	^ self attributeAt: #customerMenu
]

{ #category : #accessing }
TabularDefinedNames >> customerMenu: aString [
	self attributeAt: #customerMenu put: aString
]

{ #category : #accessing }
TabularDefinedNames >> description [
	^ self attributeAt: #description
]

{ #category : #accessing }
TabularDefinedNames >> description: aString [
	self attributeAt: #description put: aString
]

{ #category : #accessing }
TabularDefinedNames >> function [
	^self attributeAt: #function 
]

{ #category : #accessing }
TabularDefinedNames >> function: aBoolean [
	self attributeAt: #function put: aBoolean
]

{ #category : #accessing }
TabularDefinedNames >> hidden [
	^  self attributeAt: #hidden
]

{ #category : #accessing }
TabularDefinedNames >> hidden: aBoolean [
	self attributeAt: #hidden put: aBoolean
]

{ #category : #accessing }
TabularDefinedNames >> isPresent: anOptionalattribut [
"return the presence of an attribut"
	(self attributeAt: anOptionalattribut ) ifNil: [ ^ false ].
	^ true
]

{ #category : #accessing }
TabularDefinedNames >> localSheetId [
	^ self attributeAt: #localSheetId
]

{ #category : #accessing }
TabularDefinedNames >> localSheetId: aNumber [
	 self attributeAt: #localSheetId  put: aNumber
]

{ #category : #accessing }
TabularDefinedNames >> name [
	^self attributeAt: #name
]

{ #category : #accessing }
TabularDefinedNames >> name: aString [
	self attributeAt: #name put: aString
]

{ #category : #accessing }
TabularDefinedNames >> vbProcedure [
^	self attributeAt: #vbProcedure 
]

{ #category : #accessing }
TabularDefinedNames >> vbProcedure: aBoolean [
	self attributeAt: #vbProcedure put: aBoolean
]

{ #category : #accessing }
TabularDefinedNames >> xlm [
	^self attributeAt: #xlm
]

{ #category : #accessing }
TabularDefinedNames >> xlm: aBoolean [
	self attributeAt: #xlm put: aBoolean
]
