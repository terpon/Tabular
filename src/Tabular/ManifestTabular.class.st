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
ManifestTabular class >> ruleGRIvarNeitherReadNorWrittenRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#TabularDefinedNames)) #'2020-02-02T23:42:15.830776+01:00') )
]

{ #category : #'code-critics' }
ManifestTabular class >> ruleGRTemporaryNeitherReadNorWrittenRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#'TabularXLSXExport class' #example2 #true)) #'2020-01-26T12:46:03.767128+01:00') )
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
ManifestTabular class >> ruleRBImplementedNotSentRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#Tabular)) #'2020-02-02T23:10:32.825034+01:00') )
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
ManifestTabular class >> ruleRBModifiesCollectionRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#Tabular)) #'2020-02-02T23:10:06.936614+01:00') )
]

{ #category : #'code-critics' }
ManifestTabular class >> ruleRBStringConcatenationRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#XLSXImporter #extractWorksheetsList #false)) #'2019-06-06T23:35:02.568902+02:00') #(#(#RGMethodDefinition #(#TabularXLSXExport #workbook_xml #false)) #'2019-06-12T15:44:16.304083+02:00') )
]

{ #category : #'code-critics' }
ManifestTabular class >> ruleRBUnclassifiedMethodsRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#Tabular)) #'2020-02-02T23:10:48.994554+01:00') )
]
