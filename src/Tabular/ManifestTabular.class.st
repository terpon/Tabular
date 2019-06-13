"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestTabular,
	#superclass : #PackageManifest,
	#category : #Tabular
}

{ #category : #'meta-data - dependency analyser' }
ManifestTabular class >> manuallyResolvedDependencies [
	^ #(#'Regex-Core')
]

{ #category : #'code-critics' }
ManifestTabular class >> ruleRBLongMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#TabularXLSXExport #workbook_xml #false)) #'2019-06-12T15:51:33.779745+02:00') )
]

{ #category : #'code-critics' }
ManifestTabular class >> ruleRBStringConcatenationRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#XLSXImporter #extractWorksheetsList #false)) #'2019-06-06T23:35:02.568902+02:00') #(#(#RGMethodDefinition #(#TabularXLSXExport #workbook_xml #false)) #'2019-06-12T15:44:16.304083+02:00') )
]
