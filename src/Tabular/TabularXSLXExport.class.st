"
his class exist as a placeholder for the original class which was slightly wrongly named (XSLX instead of XLSX). The actual exporter has been renamed.
 
Internal Representation and Key Implementation Points.


    Implementation Points
"
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
