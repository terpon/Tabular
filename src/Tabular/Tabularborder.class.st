"
a sequence and 3 attributs 

    Instance Variables
	bottom:		<Object>
	diagonal:		<Object>
	diagonalDown:		<Object>
	diagonalUp:		<Object>
	left:		<Object>
	outline:		<Object>
	right:		<Object>
	top:		<Object>


    Implementation Points
"
Class {
	#name : #Tabularborder,
	#superclass : #TabularContainerStyle,
	#instVars : [
		'left',
		'right',
		'top',
		'bottom',
		'diagonal',
		'diagonalUp',
		'diagonalDown',
		'outline'
	],
	#category : #'Tabular-Model'
}
