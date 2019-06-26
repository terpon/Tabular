Class {
	#name : #TabularWorksheetWriterWordML,
	#superclass : #TabularXMLWriter,
	#category : #'Tabular-Exporters'
}

{ #category : #'useful documentation' }
TabularWorksheetWriterWordML class >> document_xml_example1 [
"works when inserted into a DOCX archive"

^'<?xml version="1.0" encoding="utf-8"?>
<w:document xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">
  <w:body>
    <w:p>
      <w:r>
        <w:t>Hello, Word!</w:t>
      </w:r>
    </w:p>
  </w:body>
</w:document>'
]

{ #category : #'useful documentation' }
TabularWorksheetWriterWordML class >> document_xml_example_table [
"does NOTwork when inserted into a DOCX archive."

'<w:tbl>
  <w:tblPr>
    <w:tblStyle w:val="TableGrid" />
    <w:tblW w:w="5000"
            w:type="pct" />
  </w:tblPr>
  <w:tblGrid>
    <w:gridCol />
    <w:gridCol />
    <w:gridCol />
  </w:tblGrid>
  <w:tr>
    <w:tc>
      <w:p>
        <w:r>
          <w:t>1</w:t>
        </w:r>
      </w:p>
    </w:tc>
    <w:tc>
      <w:p>
        <w:r>
          <w:t>2</w:t>
        </w:r>
      </w:p>
    </w:tc>
    <w:tc>
      <w:p>
        <w:r>
          <w:t>3</w:t>
        </w:r>
      </w:p>
    </w:tc>
  </w:tr>
</w:tbl>'
]

{ #category : #'as yet unclassified' }
TabularWorksheetWriterWordML class >> for: aWorkSheet writer: aWriter [

	| twriter |

	twriter := self new worksheet: aWorkSheet.
	twriter writer: aWriter.
	twriter renderWorksheet.
]

{ #category : #'useful documentation' }
TabularWorksheetWriterWordML class >> wordProcessingMLdocumentation [

"https://msdn.microsoft.com/en-us/library/office/gg278308.aspx#MinDocScen"

"The main document story of the simplest WordprocessingML document consists of the following XML elements:

document — The root element for a WordprocessingML's main document part, which defines the main document story.

body — The container for the collection of block-level structures that comprise the main story.

p — A paragraph.

r — A run.

t — A range of text.
"

self document_xml_example1
]

{ #category : #'as yet unclassified' }
TabularWorksheetWriterWordML >> renderCell: coord [
	| cell |
	cell := worksheet cellAt: coord.
	^ (cell data isKindOf: Date)
		ifTrue: [ self renderCellWithDate: coord ]
		ifFalse: [ self renderCellWithString: coord ] 
]

{ #category : #'as yet unclassified' }
TabularWorksheetWriterWordML >> renderCellProperties [

writer raw: '<w:tcPr><w:tcW w:w="3212" w:type="dxa"/><w:tcBorders><w:top w:val="single" w:sz="2" w:space="0" w:color="000000"/><w:left w:val="single" w:sz="2" w:space="0" w:color="000000"/><w:bottom w:val="single" w:sz="2" w:space="0" w:color="000000"/><w:insideH w:val="single" w:sz="2" w:space="0" w:color="000000"/></w:tcBorders><w:shd w:fill="auto" w:val="clear"/><w:tcMar><w:left w:w="54" w:type="dxa"/></w:tcMar>
</w:tcPr>
'
]

{ #category : #'as yet unclassified' }
TabularWorksheetWriterWordML >> renderCellWithString: coord [
	"do NOT use the construction of a file sharedStrings.xml at the moment; all strings are inlineStr"

	writer tag
		name: 'w:tc';
		with: [ self renderCellProperties. 
			writer tag: 'w:p' 
			with: [ writer tag: 'w:r' 
					with: [writer tag: 'w:t' with: (worksheet cellAt: coord) data asString ] ]]
]

{ #category : #'as yet unclassified' }
TabularWorksheetWriterWordML >> renderHeading1Properties [
	writer raw: '<w:pPr><w:pStyle w:val="Heading1"/><w:numPr><w:ilvl w:val="0"/><w:numId w:val="1"/></w:numPr><w:spacing w:before="240" w:after="120"/><w:rPr><w:sz w:val="36"/><w:b/><w:sz w:val="36"/><w:b/><w:szCs w:val="36"/><w:bCs/><w:rFonts w:ascii="Liberation Sans" w:hAnsi="Liberation Sans" w:eastAsia="Droid Sans Fallback" w:cs="FreeSans"/>
</w:rPr>
</w:pPr>
'.

]

{ #category : #'as yet unclassified' }
TabularWorksheetWriterWordML >> renderHeadingWithName [
	writer tag: 'w:p' with: [ 
	self renderHeading1Properties.
	self renderName ]
	

]

{ #category : #'as yet unclassified' }
TabularWorksheetWriterWordML >> renderName [

	writer tag: 'w:r' with: [writer tag: 'w:t' with: worksheet name].
			
'<w:p>
<w:pPr>
<w:pStyle w:val="H End of statement list encountered ->eading1"/>
<w:spacing w:before="240" w:after="120"/>
</w:pPr>

<w:r><w:t>The first tabular table</w:t></w:r>

</w:p>
'
]

{ #category : #'as yet unclassified' }
TabularWorksheetWriterWordML >> renderRows [
	worksheet rows do:[:rowN|
		writer tag
			name: 'w:tr';
			with:[ self renderRow: rowN]
	] 
]

{ #category : #'as yet unclassified' }
TabularWorksheetWriterWordML >> renderSheetData [

    writer tag: 'w:tbl' with: [ 
	self renderTableProperties.
	self renderTableGrid.
	self renderRows ]
]

{ #category : #'as yet unclassified' }
TabularWorksheetWriterWordML >> renderTableGrid [
"later on take width into account"
	writer tag: 'w:tblGrid' with: [ 
		worksheet maxNumberOfColumns timesRepeat:  [ 
			writer raw: '<w:gridCol w:w="3212"/>' ] ]
]

{ #category : #'as yet unclassified' }
TabularWorksheetWriterWordML >> renderTableProperties [

writer raw: '
<w:tblPr>
<w:tblW w:w="9638" w:type="dxa"/><w:jc w:val="left"/><w:tblInd w:w="55" w:type="dxa"/><w:tblBorders><w:top w:val="single" w:sz="2" w:space="0" w:color="000000"/><w:left w:val="single" w:sz="2" w:space="0" w:color="000000"/><w:bottom w:val="single" w:sz="2" w:space="0" w:color="000000"/><w:insideH w:val="single" w:sz="2" w:space="0" w:color="000000"/></w:tblBorders><w:tblCellMar><w:top w:w="55" w:type="dxa"/><w:left w:w="54" w:type="dxa"/><w:bottom w:w="55" w:type="dxa"/><w:right w:w="55" w:type="dxa"/></w:tblCellMar>
</w:tblPr>
'
]

{ #category : #'as yet unclassified' }
TabularWorksheetWriterWordML >> renderWorksheet [
	self renderHeadingWithName.
	worksheet rows size > 0
		ifTrue: [ self renderSheetData ]	
			"self renderMergeCells"
]
