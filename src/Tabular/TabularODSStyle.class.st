Class {
	#name : #TabularODSStyle,
	#superclass : #TabularStyle,
	#instVars : [
		'details'
	],
	#category : #'Tabular-Model'
}

{ #category : #accessing }
TabularODSStyle >> details [

	^ details
]

{ #category : #initialization }
TabularODSStyle >> initialize [
	super initialize.
	details := OrderedCollection new.
]
