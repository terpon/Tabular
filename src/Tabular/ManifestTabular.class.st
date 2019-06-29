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
ManifestTabular class >> ruleRBBadMessageRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#Tabular)) #'2019-06-29T18:03:35.984801+02:00') #(#(#RGClassDefinition #(#TabularExportImportTest)) #'2019-06-29T18:03:49.364706+02:00') )
]

{ #category : #'code-critics' }
ManifestTabular class >> ruleRBCollectionMessagesToExternalObjectRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#Tabular)) #'2019-06-29T18:03:06.887062+02:00') )
]

{ #category : #'code-critics' }
ManifestTabular class >> ruleRBLiteralArrayContainsSuspiciousTrueFalseOrNilRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#Tabular)) #'2019-06-29T17:40:47.769212+02:00') )
]

{ #category : #'code-critics' }
ManifestTabular class >> ruleRBLongMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#TabularXLSXExport #workbook_xml #false)) #'2019-06-12T15:51:33.779745+02:00') #(#(#RGPackageDefinition #(#Tabular)) #'2019-06-29T18:06:46.80007+02:00') )
]

{ #category : #'code-critics' }
ManifestTabular class >> ruleRBStringConcatenationRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#XLSXImporter #extractWorksheetsList #false)) #'2019-06-06T23:35:02.568902+02:00') #(#(#RGMethodDefinition #(#TabularXLSXExport #workbook_xml #false)) #'2019-06-12T15:44:16.304083+02:00') )
]
