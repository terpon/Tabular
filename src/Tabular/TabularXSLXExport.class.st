Class {
	#name : #TabularXSLXExport,
	#superclass : #Object,
	#category : #'Tabular-Exporters'
}

{ #category : #'instance creation' }
TabularXSLXExport class >> new [
	self deprecated: 'Use the correct class name'.
	^TabularXLSXExport new
]
