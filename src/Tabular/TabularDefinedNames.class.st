"
create instance of definedNamed stored in a Dictionary

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
TabularDefinedNames >> content [
	^  content
]

{ #category : #accessing }
TabularDefinedNames >> content: aString [
	content  := aString
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
