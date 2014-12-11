Class {
	#name : #TabularRessources,
	#superclass : #Object,
	#category : #'Tabular-Tests'
}

{ #category : #'as yet unclassified' }
TabularRessources class >> createTestNamed: aName fromFileNamed: aFile [
	TabularRessources class
		compile:
			aName,	'
 ^ ' , aFile asFileReference binaryReadStream contents printString
]

{ #category : #'as yet unclassified' }
TabularRessources class >> openTestFile: aTestName [
	|  fileName writeStream |
	fileName := FileLocator home / (aTestName asString , '.xlsx').
	[ 
	writeStream := StandardFileStream forceNewFileNamed: fileName.
	writeStream << (self perform: aTestName) asString ]
		ensure: [  writeStream close].
	[ NBWin32Shell shellOpen: fileName fullName ] fork
]

{ #category : #'as yet unclassified' }
TabularRessources class >> testExcelSheet [
 ^ #[80 75 3 4 20 0 6 0 8 0 0 0 33 0 199 122 151 144 120 1 0 0 32 6 0 0 19 0 8 2 91 67 111 110 116 101 110 116 95 84 121 112 101 115 93 46 120 109 108 32 162 4 2 40 160 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 204 148 223 74 195 48 20 198 239 5 223 161 228 86 218 108 19 68 100 221 46 166 94 234 192 249 0 49 57 93 203 210 36 228 100 115 123 123 79 179 63 200 168 27 195 130 222 52 180 57 231 251 126 73 154 111 56 94 215 58 89 129 199 202 154 156 245 179 30 75 192 72 171 42 51 207 217 251 236 57 189 103 9 6 97 148 208 214 64 206 54 128 108 60 186 190 26 206 54 14 48 161 110 131 57 43 67 112 15 156 163 44 161 22 152 89 7 134 102 10 235 107 17 232 213 207 185 19 114 33 230 192 7 189 222 29 151 214 4 48 33 13 141 6 27 13 31 161 16 75 29 146 167 53 125 222 146 120 208 200 146 201 182 176 241 202 153 112 78 87 82 4 34 229 43 163 142 92 210 157 67 70 157 177 6 203 202 225 13 97 48 222 234 208 204 252 108 176 235 123 165 173 241 149 130 100 42 124 120 17 53 97 240 181 230 159 214 47 62 172 93 100 167 69 90 40 109 81 84 18 148 149 203 154 118 32 67 231 65 40 44 1 66 173 179 56 102 181 168 204 158 251 132 127 44 70 30 135 126 199 32 205 250 162 240 133 28 131 127 194 113 251 71 28 129 254 127 224 241 249 251 35 137 50 103 14 0 195 70 3 118 188 218 173 232 57 231 82 120 80 111 193 83 82 116 14 240 93 251 12 135 20 90 78 74 186 50 29 111 194 65 247 148 63 221 227 169 183 14 41 209 60 92 14 176 143 172 166 59 117 36 4 62 84 112 8 173 182 203 127 112 164 52 188 220 240 40 125 160 201 91 5 170 197 155 199 124 31 125 1 0 0 255 255 3 0 80 75 3 4 20 0 6 0 8 0 0 0 33 0 181 85 48 35 245 0 0 0 76 2 0 0 11 0 8 2 95 114 101 108 115 47 46 114 101 108 115 32 162 4 2 40 160 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 140 146 207 78 195 48 12 198 239 72 188 67 228 251 234 110 72 8 161 165 187 76 72 187 33 84 30 192 36 238 31 181 141 163 36 64 247 246 132 3 130 74 99 219 209 246 231 207 63 91 222 238 230 105 84 31 28 98 47 78 195 186 40 65 177 51 98 123 215 106 120 173 159 86 15 160 98 34 103 105 20 199 26 142 28 97 87 221 222 108 95 120 164 148 155 98 215 251 168 178 139 139 26 186 148 252 35 98 52 29 79 20 11 241 236 114 165 145 48 81 202 97 104 209 147 25 168 101 220 148 229 61 134 191 30 80 45 60 213 193 106 8 7 123 7 170 62 250 60 249 178 183 52 77 111 120 47 230 125 98 151 78 140 64 158 19 59 203 118 229 67 102 11 169 207 219 168 154 66 203 73 131 21 243 156 211 17 201 251 34 99 3 158 38 218 92 79 244 255 182 56 113 34 75 137 208 72 224 243 60 223 138 115 64 235 235 129 46 159 104 169 248 189 206 60 226 167 132 225 77 100 248 97 193 197 15 84 95 0 0 0 255 255 3 0 80 75 3 4 20 0 6 0 8 0 0 0 33 0 244 245 7 59 27 1 0 0 89 4 0 0 26 0 8 1 120 108 47 95 114 101 108 115 47 119 111 114 107 98 111 111 107 46 120 109 108 46 114 101 108 115 32 162 4 1 40 160 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 188 148 207 74 196 48 16 198 239 130 239 16 230 110 211 118 117 21 217 116 15 138 176 87 93 31 32 164 211 166 108 155 148 76 252 211 183 55 20 73 45 44 245 82 246 18 152 25 242 125 191 76 50 217 237 191 187 150 125 162 163 198 26 1 89 146 2 67 163 108 217 152 90 192 251 241 229 230 1 24 121 105 74 217 90 131 2 6 36 216 23 215 87 187 87 108 165 15 155 72 55 61 177 160 98 72 128 246 190 127 228 156 148 198 78 82 98 123 52 161 82 89 215 73 31 66 87 243 94 170 147 172 145 231 105 186 229 238 175 6 20 51 77 118 40 5 184 67 185 1 118 28 250 224 252 191 182 173 170 70 225 179 85 31 29 26 127 198 130 127 89 119 34 141 232 131 168 116 53 122 1 49 69 124 172 108 146 64 12 252 60 204 253 154 48 74 182 234 73 203 198 76 48 49 181 4 145 175 9 17 143 63 65 196 212 111 71 242 37 152 236 194 48 217 18 204 118 77 24 210 210 97 249 230 93 24 5 154 186 51 75 47 193 220 173 10 227 135 54 76 94 124 181 52 198 75 246 183 107 218 251 48 207 56 185 143 33 31 215 120 31 124 246 33 20 63 0 0 0 255 255 3 0 80 75 3 4 20 0 6 0 8 0 0 0 33 0 95 77 123 205 95 1 0 0 113 2 0 0 15 0 0 0 120 108 47 119 111 114 107 98 111 111 107 46 120 109 108 140 82 203 78 195 48 16 188 35 241 15 150 239 212 121 180 161 84 77 42 33 168 232 5 113 40 237 217 196 155 198 170 99 71 182 67 218 191 103 147 42 161 8 14 156 188 235 29 207 206 76 178 92 157 42 69 62 193 58 105 116 74 195 73 64 9 232 220 8 169 15 41 125 223 174 239 230 148 56 207 181 224 202 104 72 233 25 28 93 101 183 55 203 214 216 227 135 49 71 130 4 218 165 180 244 190 94 48 230 242 18 42 238 38 166 6 141 147 194 216 138 123 108 237 129 185 218 2 23 174 4 240 149 98 81 16 36 172 226 82 211 11 195 194 254 135 195 20 133 204 225 201 228 77 5 218 95 72 44 40 238 81 190 43 101 237 104 182 44 164 130 221 197 17 225 117 253 202 43 212 125 82 148 40 238 252 179 144 30 68 74 103 216 154 22 126 92 216 166 126 108 164 194 233 67 28 196 148 101 163 201 55 75 4 20 188 81 126 139 246 6 118 204 43 154 70 81 210 33 187 40 118 18 90 247 253 168 107 201 105 47 181 48 109 7 197 104 207 67 119 143 251 219 126 178 151 194 151 41 141 230 179 112 188 123 1 121 40 61 190 137 231 73 208 177 179 43 250 62 64 92 211 159 68 247 238 214 128 186 67 252 82 93 184 27 52 128 181 93 72 44 236 70 132 29 195 47 116 116 133 198 122 68 71 127 162 227 43 52 214 35 186 79 137 13 146 114 174 114 140 170 59 122 17 211 89 18 245 219 217 240 183 100 95 0 0 0 255 255 3 0 80 75 3 4 20 0 6 0 8 0 0 0 33 0 1 14 86 208 152 6 0 0 168 27 0 0 19 0 0 0 120 108 47 116 104 101 109 101 47 116 104 101 109 101 49 46 120 109 108 236 89 79 111 27 69 20 191 35 241 29 70 123 111 109 39 182 27 71 117 170 216 177 27 104 211 70 177 91 212 227 120 61 222 157 122 118 103 53 51 78 234 27 106 143 72 72 136 130 184 32 113 3 9 1 149 90 137 75 57 241 81 2 69 80 164 126 5 222 204 236 174 119 226 53 73 74 4 2 234 67 178 59 243 155 247 255 189 121 51 123 245 218 131 136 161 67 34 36 229 113 219 171 93 174 122 136 196 62 31 211 56 104 123 119 134 253 75 27 30 146 10 199 99 204 120 76 218 222 156 72 239 218 214 219 111 93 197 155 42 36 17 65 176 62 150 155 184 237 133 74 37 155 149 138 244 97 24 203 203 60 33 49 204 77 184 136 176 130 87 17 84 198 2 31 1 221 136 85 214 170 213 102 37 194 52 246 80 140 35 32 59 12 127 252 10 136 221 158 76 168 79 188 173 140 122 143 1 139 88 73 61 224 51 49 208 180 73 186 164 128 29 79 107 26 33 231 178 203 4 58 196 172 237 1 163 49 63 26 146 7 202 67 12 75 5 19 109 175 106 126 94 101 235 106 5 111 166 139 152 90 177 182 176 174 111 126 233 186 116 193 120 186 102 120 138 96 148 51 173 245 235 173 43 59 57 125 3 96 106 25 215 235 245 186 189 90 78 207 0 176 239 131 166 86 150 34 205 122 127 163 214 201 104 22 64 246 113 153 118 183 218 168 214 93 124 129 254 250 146 204 173 78 167 211 104 165 178 88 162 6 100 31 235 75 248 141 106 179 190 189 230 224 13 200 226 27 75 248 122 103 187 219 109 58 120 3 178 248 230 18 190 127 165 213 172 187 120 3 10 25 141 167 75 104 237 208 126 63 165 158 67 38 156 237 150 194 55 0 190 81 77 225 11 20 68 67 30 93 154 197 132 199 106 85 172 69 248 62 23 125 0 104 32 195 138 198 72 205 19 50 193 62 132 113 23 71 35 65 177 102 128 55 9 46 204 216 33 95 46 13 105 94 72 250 130 38 170 237 189 155 96 72 137 5 189 87 207 191 121 245 252 41 122 245 252 201 241 195 103 199 15 191 63 126 244 232 248 225 119 150 150 179 112 23 199 65 113 225 203 47 63 250 253 243 247 209 111 79 191 120 249 248 147 114 188 44 226 127 254 246 131 159 126 248 184 28 8 25 180 144 232 197 167 79 126 121 246 228 197 103 31 254 250 245 227 18 248 182 192 163 34 124 72 35 34 209 45 114 132 14 120 4 186 25 195 184 146 147 145 56 223 138 97 136 169 179 2 135 64 187 132 116 79 133 14 240 214 28 179 50 92 135 184 198 187 43 160 120 148 1 175 207 238 59 178 14 66 49 83 180 132 243 141 48 114 128 123 156 179 14 23 165 6 184 161 121 21 44 60 156 197 65 57 115 49 43 226 14 48 62 44 227 221 197 177 227 218 222 44 129 170 153 5 165 99 251 110 72 28 49 247 25 142 21 14 72 76 20 210 115 124 74 72 137 118 247 40 117 236 186 71 125 193 37 159 40 116 143 162 14 166 165 38 25 210 145 19 72 139 69 187 52 2 191 204 203 116 6 87 59 182 217 187 139 58 156 149 105 189 67 14 93 36 36 4 102 37 194 15 9 115 204 120 29 207 20 142 202 72 14 113 196 138 6 191 137 85 88 38 228 96 46 252 34 174 39 21 120 58 32 140 163 222 152 72 89 182 230 182 0 125 11 78 191 129 161 94 149 186 125 143 205 35 23 41 20 157 150 209 188 137 57 47 34 119 248 180 27 226 40 41 195 14 104 28 22 177 239 200 41 132 40 70 251 92 149 193 247 184 155 33 250 29 252 128 227 149 238 190 75 137 227 238 211 11 193 29 26 56 34 45 2 68 207 204 68 137 47 175 19 238 196 239 96 206 38 152 152 42 3 37 221 169 212 17 141 255 172 108 51 10 117 219 114 120 83 182 219 222 54 108 98 101 201 179 123 162 88 175 194 253 11 75 244 14 158 197 251 4 178 98 121 139 122 83 161 223 84 104 239 63 95 161 87 229 242 197 215 229 69 41 134 42 173 27 18 219 107 155 206 59 90 217 120 79 40 99 3 53 103 228 166 52 189 183 132 13 104 220 135 65 189 206 156 58 73 126 16 75 66 120 212 153 12 12 28 92 32 176 89 131 4 87 239 81 21 14 66 156 64 223 94 243 52 145 64 166 164 3 137 18 46 225 188 104 134 75 105 107 60 244 254 202 158 54 27 250 28 98 43 135 196 106 143 143 237 240 186 30 206 142 27 57 25 35 85 96 206 180 25 163 117 77 224 172 204 214 175 164 68 65 183 215 97 86 211 66 157 153 91 205 136 102 138 162 195 45 87 89 155 216 156 203 193 228 185 106 48 152 91 19 58 27 4 253 16 88 185 9 231 126 205 26 206 59 152 145 177 182 187 245 81 230 22 227 133 139 116 145 12 241 152 164 62 210 122 47 251 168 102 156 148 197 202 146 34 90 15 27 12 250 236 120 138 213 10 220 90 154 236 95 224 118 22 39 21 217 213 87 176 203 188 247 87 188 148 69 240 194 75 64 237 100 58 178 184 152 156 44 70 71 109 175 213 88 107 120 200 199 73 219 155 192 81 25 30 163 4 188 46 117 51 137 89 0 23 78 190 18 54 236 79 77 102 147 229 11 111 182 50 197 220 36 168 193 237 135 181 251 146 194 78 29 72 132 84 59 88 134 54 52 204 84 26 2 44 214 156 172 252 107 13 48 235 69 41 80 82 141 206 38 197 250 6 4 195 63 38 5 216 209 117 45 153 76 136 175 138 206 46 140 104 219 217 215 180 148 242 153 34 98 16 142 143 208 136 205 196 1 6 247 235 80 5 125 198 84 194 141 135 169 8 250 5 174 231 180 181 205 148 91 156 211 164 43 94 138 25 156 29 199 44 9 113 90 110 117 138 102 153 108 225 166 32 229 50 152 183 130 120 160 91 169 236 70 185 243 171 98 82 254 130 84 41 134 241 255 76 21 189 159 192 21 196 250 88 123 192 135 235 97 129 145 206 148 182 199 133 10 57 84 161 36 164 126 95 64 227 96 106 7 68 11 92 241 194 52 4 21 92 82 155 255 130 28 234 255 54 231 44 13 147 214 112 146 84 7 52 64 130 194 126 164 66 65 200 62 148 37 19 125 167 16 171 165 123 151 37 201 82 66 38 162 10 226 202 196 138 61 34 135 132 13 117 13 108 234 189 221 67 33 132 186 169 38 105 25 48 184 147 241 231 190 167 25 52 10 116 147 83 204 55 167 146 229 123 175 205 129 191 187 243 177 201 12 74 185 117 216 52 52 153 253 115 17 243 246 96 177 171 218 245 102 121 182 247 22 21 209 19 139 54 171 158 101 5 48 43 108 5 173 52 237 95 83 132 115 110 181 182 98 45 105 188 214 200 132 3 47 46 107 12 131 121 67 148 192 69 18 210 127 96 255 163 194 103 246 131 135 222 80 135 252 0 106 43 130 239 23 154 24 132 13 68 245 37 219 120 32 93 32 237 224 8 26 39 59 104 131 73 147 178 166 77 91 39 109 181 108 179 190 224 78 55 231 123 194 216 90 178 179 248 251 156 198 206 155 51 151 157 147 139 23 105 236 212 194 142 173 237 216 74 83 131 103 79 166 40 12 77 178 131 140 113 140 249 84 86 252 152 197 71 247 193 209 59 240 217 96 198 148 52 193 4 159 170 4 134 30 122 96 242 0 146 223 114 52 75 183 254 0 0 0 255 255 3 0 80 75 3 4 20 0 6 0 8 0 0 0 33 0 159 202 189 227 109 1 0 0 134 2 0 0 24 0 0 0 120 108 47 119 111 114 107 115 104 101 101 116 115 47 115 104 101 101 116 50 46 120 109 108 140 146 77 107 195 48 12 134 239 131 253 7 227 251 226 180 251 108 105 90 198 202 88 15 131 49 246 113 118 28 37 49 181 173 96 171 107 251 239 167 164 116 12 122 233 77 178 228 199 122 95 121 182 216 121 39 126 32 38 139 161 144 163 44 151 2 130 193 202 134 166 144 159 31 207 87 15 82 36 210 161 210 14 3 20 114 15 73 46 230 151 23 179 45 198 117 106 1 72 48 33 164 66 182 68 221 84 169 100 90 240 58 101 216 65 224 74 141 209 107 226 52 54 42 117 17 116 53 92 242 78 141 243 252 78 121 109 131 60 16 166 241 28 6 214 181 53 176 68 179 241 16 232 0 137 224 52 241 252 169 181 93 58 210 188 57 7 231 117 92 111 186 43 131 190 99 68 105 157 165 253 0 149 194 155 233 170 9 24 117 233 88 247 110 116 163 205 145 61 36 39 120 111 77 196 132 53 101 140 83 135 65 79 53 79 212 68 49 105 62 171 44 43 232 109 23 17 234 66 62 142 164 154 207 6 115 190 44 108 211 191 88 244 94 151 136 235 190 176 170 10 153 247 173 234 164 247 121 240 250 45 138 82 39 120 66 247 109 43 106 121 169 188 211 10 106 189 113 244 142 219 23 176 77 75 124 122 203 106 122 81 211 106 191 132 100 216 77 6 103 227 219 191 49 150 154 52 191 211 233 6 94 117 108 108 72 194 65 61 116 221 75 17 15 152 60 227 152 176 235 239 222 51 178 68 34 244 199 172 229 125 3 239 53 207 174 165 168 17 233 152 244 243 255 253 160 249 47 0 0 0 255 255 3 0 80 75 3 4 20 0 6 0 8 0 0 0 33 0 159 202 189 227 109 1 0 0 134 2 0 0 24 0 0 0 120 108 47 119 111 114 107 115 104 101 101 116 115 47 115 104 101 101 116 51 46 120 109 108 140 146 77 107 195 48 12 134 239 131 253 7 227 251 226 180 251 108 105 90 198 202 88 15 131 49 246 113 118 28 37 49 181 173 96 171 107 251 239 167 164 116 12 122 233 77 178 228 199 122 95 121 182 216 121 39 126 32 38 139 161 144 163 44 151 2 130 193 202 134 166 144 159 31 207 87 15 82 36 210 161 210 14 3 20 114 15 73 46 230 151 23 179 45 198 117 106 1 72 48 33 164 66 182 68 221 84 169 100 90 240 58 101 216 65 224 74 141 209 107 226 52 54 42 117 17 116 53 92 242 78 141 243 252 78 121 109 131 60 16 166 241 28 6 214 181 53 176 68 179 241 16 232 0 137 224 52 241 252 169 181 93 58 210 188 57 7 231 117 92 111 186 43 131 190 99 68 105 157 165 253 0 149 194 155 233 170 9 24 117 233 88 247 110 116 163 205 145 61 36 39 120 111 77 196 132 53 101 140 83 135 65 79 53 79 212 68 49 105 62 171 44 43 232 109 23 17 234 66 62 142 164 154 207 6 115 190 44 108 211 191 88 244 94 151 136 235 190 176 170 10 153 247 173 234 164 247 121 240 250 45 138 82 39 120 66 247 109 43 106 121 169 188 211 10 106 189 113 244 142 219 23 176 77 75 124 122 203 106 122 81 211 106 191 132 100 216 77 6 103 227 219 191 49 150 154 52 191 211 233 6 94 117 108 108 72 194 65 61 116 221 75 17 15 152 60 227 152 176 235 239 222 51 178 68 34 244 199 172 229 125 3 239 53 207 174 165 168 17 233 152 244 243 255 253 160 249 47 0 0 0 255 255 3 0 80 75 3 4 20 0 6 0 8 0 0 0 33 0 195 7 21 126 38 7 0 0 152 43 0 0 24 0 0 0 120 108 47 119 111 114 107 115 104 101 101 116 115 47 115 104 101 101 116 49 46 120 109 108 148 154 93 115 155 86 16 134 239 59 211 255 160 97 114 209 206 52 150 192 95 177 70 86 70 156 15 154 139 166 157 54 109 175 49 66 22 19 73 168 128 237 228 223 247 5 14 7 157 77 140 150 11 207 88 66 207 46 135 135 5 189 54 139 247 95 246 187 201 115 90 148 89 126 184 247 252 139 153 55 73 15 73 190 206 14 143 247 222 223 159 244 219 119 222 164 172 226 195 58 222 229 135 244 222 251 154 150 222 251 229 143 63 44 94 242 226 115 185 77 211 106 130 10 135 242 222 219 86 213 113 62 157 150 201 54 221 199 229 69 126 76 15 216 178 201 139 125 92 225 101 241 56 45 143 69 26 175 27 104 191 155 6 179 217 205 116 31 103 7 175 173 48 47 56 53 242 205 38 75 82 153 39 79 251 244 80 181 69 138 116 23 87 216 255 114 155 29 203 174 218 62 225 148 219 199 197 231 167 227 219 36 223 31 81 226 33 219 101 213 215 166 168 55 217 39 243 15 143 135 188 136 31 118 88 247 23 255 42 78 186 218 205 139 111 202 239 179 164 200 203 124 83 93 160 220 180 221 209 111 215 124 55 189 155 162 210 114 177 206 176 130 250 176 79 138 116 115 239 173 252 121 20 220 122 211 229 162 57 64 255 100 233 75 121 242 251 164 138 31 254 74 119 105 82 165 107 120 242 38 245 241 127 200 243 207 245 7 63 224 173 25 74 150 205 7 234 146 113 82 101 207 169 72 119 59 84 14 160 240 191 182 73 80 55 152 218 14 167 191 119 221 116 99 236 143 98 242 16 151 169 200 119 255 102 235 106 139 150 56 51 214 233 38 126 218 85 127 230 47 191 166 217 227 182 194 187 215 56 38 245 161 153 175 191 202 180 76 224 4 187 114 17 92 219 133 200 184 138 151 139 34 127 153 192 47 246 187 60 198 245 217 226 207 111 95 35 151 139 164 254 236 10 31 70 177 18 235 122 94 222 44 166 207 216 217 4 63 40 101 235 213 43 227 214 11 241 97 91 111 102 235 53 189 196 233 54 223 221 38 79 183 5 238 54 117 186 237 210 221 166 79 183 93 185 219 162 211 109 215 118 155 179 182 203 17 107 91 93 54 71 137 236 121 136 18 245 138 171 2 91 55 75 241 251 71 177 250 164 62 226 231 167 240 77 240 203 155 213 229 207 139 233 166 62 188 43 66 10 135 108 138 108 227 34 93 123 237 185 42 46 231 145 95 95 24 178 230 188 59 45 44 220 194 33 41 44 95 45 220 214 194 217 249 188 20 4 82 28 72 18 72 115 32 69 160 136 3 233 30 114 132 93 141 17 118 213 8 35 167 83 136 18 189 176 111 14 123 120 213 92 34 154 195 238 123 223 241 121 101 125 146 194 226 213 194 39 135 61 36 144 228 64 130 64 138 3 73 2 105 14 164 8 20 113 32 221 67 142 43 92 182 216 23 142 213 117 227 138 140 119 136 18 223 119 85 31 82 191 190 254 97 174 8 36 6 161 89 11 133 4 146 28 72 16 72 113 32 73 32 205 129 20 129 34 14 164 123 200 241 112 51 198 195 77 227 129 92 74 67 148 56 239 129 64 98 16 234 60 16 72 114 32 65 32 197 129 36 129 52 7 82 4 138 56 144 238 33 199 3 110 198 252 121 184 109 60 244 183 173 230 22 26 162 196 121 15 4 18 131 80 231 129 64 146 3 9 2 41 14 36 9 164 57 144 34 80 196 129 116 15 57 30 234 155 42 247 11 205 234 93 227 161 255 106 212 122 64 137 243 30 8 36 6 161 206 3 129 36 7 18 4 82 28 72 18 72 115 32 69 160 136 3 233 30 114 60 220 141 241 112 215 120 184 181 95 227 90 15 40 113 222 3 129 196 32 212 121 32 144 228 64 130 64 138 3 73 2 105 14 164 8 20 113 32 221 67 142 135 58 117 240 7 2 159 174 239 186 239 136 137 186 200 121 21 132 18 195 84 231 130 80 146 69 9 66 41 22 37 9 165 89 148 34 84 196 162 116 79 185 62 198 37 56 124 75 133 143 59 234 195 36 187 54 151 52 106 76 186 56 253 234 68 40 225 15 82 157 15 66 73 22 37 8 165 88 148 36 148 102 81 138 80 17 139 210 61 229 250 64 144 28 49 31 65 227 195 39 233 55 244 77 28 29 22 66 49 49 140 117 70 40 38 89 24 198 207 61 107 20 11 195 252 185 152 102 97 24 64 23 139 88 24 38 208 98 174 22 228 200 17 90 76 122 239 115 101 123 7 241 7 211 104 23 49 124 130 137 97 204 106 33 152 100 97 152 66 187 226 102 39 21 11 195 24 186 152 102 97 152 67 23 139 88 24 6 209 98 174 22 68 198 17 90 218 140 238 247 17 210 104 25 12 158 86 11 193 132 63 136 89 45 4 147 44 12 163 104 87 108 180 112 186 97 20 93 76 179 186 97 20 93 44 98 97 24 69 139 185 90 144 32 71 104 105 227 184 223 39 74 163 101 48 135 90 45 4 19 245 95 48 95 255 114 96 181 16 76 178 48 140 162 93 177 209 194 233 134 81 116 49 205 234 134 81 116 177 136 133 97 20 45 230 106 65 160 28 161 165 77 231 126 31 48 141 150 193 88 106 181 16 76 248 131 152 213 66 48 201 194 48 138 118 197 70 11 167 27 70 209 197 52 171 155 162 88 196 194 48 138 182 155 171 5 249 114 132 150 54 172 251 125 222 52 90 6 83 170 213 66 48 225 15 98 86 11 193 36 11 195 40 218 21 27 45 156 110 24 69 23 211 172 110 138 98 17 11 195 40 218 110 174 22 196 205 17 90 218 236 238 247 241 211 104 25 12 173 86 11 193 68 253 199 120 198 69 140 96 146 133 97 20 237 138 141 22 78 55 140 162 139 105 86 55 69 177 230 31 13 103 215 134 81 180 221 92 45 72 159 35 180 180 81 222 239 211 168 209 50 152 97 173 22 130 9 159 131 133 180 155 100 97 24 69 187 98 163 133 211 13 163 232 98 154 213 77 81 44 98 97 24 69 219 205 209 18 140 202 245 248 116 157 35 253 62 148 182 90 234 42 175 159 26 86 11 193 4 11 11 105 55 201 194 48 138 118 197 173 22 22 134 81 116 49 205 194 20 197 34 22 134 81 180 221 92 45 163 226 125 208 198 123 191 207 166 70 203 96 82 183 90 8 38 80 238 188 205 144 118 147 44 12 163 104 87 108 180 112 186 97 20 93 76 179 186 41 138 69 44 12 163 104 187 185 90 70 165 252 160 77 249 65 159 77 141 22 86 202 167 152 64 57 134 22 138 73 22 134 81 180 43 54 90 56 221 48 138 46 166 89 221 20 197 34 22 134 81 180 221 92 45 163 82 126 208 166 252 160 207 166 70 11 43 229 83 76 160 28 71 11 233 38 89 24 70 209 174 216 104 225 116 195 40 186 152 102 117 83 20 139 88 24 70 209 118 115 181 140 74 249 129 249 79 124 159 77 141 150 193 0 221 93 196 2 130 9 148 227 104 33 152 100 97 24 69 187 98 163 133 211 13 163 232 98 154 213 77 81 44 98 97 24 69 219 205 213 50 42 229 227 9 162 250 150 31 244 217 212 104 25 12 208 86 11 193 4 202 113 180 16 76 178 48 140 162 93 177 209 194 233 134 81 116 49 205 234 166 40 22 177 48 140 162 237 230 106 25 149 242 131 54 229 7 125 54 53 90 6 3 180 213 66 48 129 114 28 45 4 147 44 12 163 104 87 108 180 112 186 97 20 93 76 179 186 41 138 69 44 12 163 104 187 185 90 70 165 124 60 56 216 76 75 159 77 141 150 193 0 109 181 16 76 160 28 71 11 193 36 11 195 40 218 21 27 45 156 110 24 69 23 211 172 110 138 98 245 51 150 231 215 134 81 180 221 90 45 237 51 147 237 195 140 199 248 49 253 45 46 30 179 67 57 217 165 27 36 144 217 5 170 22 237 35 145 205 239 85 126 108 222 197 133 224 33 175 170 124 223 189 218 226 9 216 20 79 55 206 46 112 71 221 228 121 213 189 168 159 203 180 207 212 46 255 7 0 0 255 255 3 0 80 75 3 4 20 0 6 0 8 0 0 0 33 0 157 65 219 210 188 0 0 0 41 1 0 0 20 0 0 0 120 108 47 115 104 97 114 101 100 83 116 114 105 110 103 115 46 120 109 108 92 208 193 78 195 48 12 6 224 59 210 222 33 242 125 75 225 48 16 74 50 141 193 158 0 30 192 164 94 27 169 113 74 237 34 246 246 4 33 132 148 227 255 249 247 193 118 135 175 60 153 79 90 36 21 246 112 187 235 192 16 199 210 39 30 60 188 189 158 183 15 96 68 145 123 156 10 147 135 43 9 28 194 230 198 137 168 169 187 44 30 70 213 249 209 90 137 35 101 148 93 153 137 235 228 82 150 140 90 227 50 88 153 23 194 94 70 34 205 147 189 235 186 189 205 152 24 76 44 43 171 135 123 48 43 167 143 149 78 127 57 56 73 193 105 56 58 171 193 217 159 240 11 79 45 156 90 120 110 225 165 133 115 11 177 112 68 37 70 173 111 48 138 239 19 253 87 108 61 53 124 3 0 0 255 255 3 0 80 75 3 4 20 0 6 0 8 0 0 0 33 0 208 204 72 148 72 2 0 0 236 4 0 0 13 0 0 0 120 108 47 115 116 121 108 101 115 46 120 109 108 164 148 77 139 219 48 16 134 239 133 254 7 161 187 35 199 77 182 73 176 189 144 100 13 11 219 82 72 10 189 42 182 236 136 213 135 145 228 212 105 233 127 239 200 118 156 132 61 180 176 23 107 52 26 61 122 103 52 114 252 216 74 129 78 204 88 174 85 130 167 147 16 35 166 114 93 112 85 37 248 251 62 11 22 24 89 71 85 65 133 86 44 193 103 102 241 99 250 241 67 108 221 89 176 221 145 49 135 0 161 108 130 143 206 213 43 66 108 126 100 146 218 137 174 153 130 149 82 27 73 29 76 77 69 108 109 24 45 172 223 36 5 137 194 240 129 72 202 21 238 9 43 153 255 15 68 82 243 218 212 65 174 101 77 29 63 112 193 221 185 99 97 36 243 213 115 165 180 161 7 1 82 219 233 140 230 23 118 55 121 131 151 60 55 218 234 210 77 0 71 116 89 242 156 189 85 185 36 75 2 164 52 46 181 114 22 229 186 81 14 106 5 104 127 194 234 85 233 159 42 243 75 222 217 71 165 177 253 133 78 84 128 103 138 73 26 231 90 104 131 28 84 6 132 117 30 69 37 235 35 54 84 240 131 225 62 172 164 146 139 115 239 142 188 163 43 230 16 39 57 164 230 157 196 235 24 6 11 155 184 16 163 170 200 11 0 71 26 67 117 28 51 42 131 9 26 236 253 185 134 227 21 92 100 143 233 226 254 17 93 25 122 158 70 243 155 13 164 59 48 141 15 218 20 208 56 215 122 92 92 105 44 88 233 64 168 225 213 209 143 78 215 240 61 104 231 160 202 105 92 112 90 105 69 5 152 164 135 140 6 164 147 51 33 118 190 185 126 148 119 236 182 68 170 145 153 116 207 69 130 161 77 125 17 46 38 36 50 152 61 175 159 120 254 45 173 103 191 27 139 218 242 158 15 196 27 217 119 162 199 227 145 191 239 4 127 245 175 65 64 231 12 8 116 104 184 112 92 221 3 187 244 129 89 180 215 18 132 254 6 156 239 236 126 245 82 118 168 68 193 74 218 8 183 31 23 19 124 181 191 176 130 55 50 26 163 190 241 147 118 29 34 193 87 251 197 223 212 244 193 159 193 90 247 98 161 189 96 68 141 225 9 254 253 180 254 188 220 62 101 81 176 8 215 139 96 246 137 205 131 229 124 189 13 230 179 205 122 187 205 150 97 20 110 254 220 60 180 119 60 179 238 119 144 198 240 176 86 86 192 99 52 67 178 67 138 187 171 47 193 55 147 94 126 215 163 32 27 174 253 146 4 177 227 111 42 253 11 0 0 255 255 3 0 80 75 3 4 20 0 6 0 8 0 0 0 33 0 28 144 44 217 69 1 0 0 113 2 0 0 17 0 8 1 100 111 99 80 114 111 112 115 47 99 111 114 101 46 120 109 108 32 162 4 1 40 160 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 140 146 95 107 195 32 20 197 223 7 251 14 193 247 196 152 142 178 74 146 66 55 250 180 194 96 221 31 246 38 122 219 202 162 17 181 75 251 237 103 146 54 203 104 31 246 168 231 220 159 231 92 204 231 7 85 69 223 96 157 172 117 129 72 146 162 8 52 175 133 212 219 2 189 174 151 241 61 138 156 103 90 176 170 214 80 160 35 56 52 47 111 111 114 110 40 175 45 60 219 218 128 245 18 92 20 72 218 81 110 10 180 243 222 80 140 29 223 129 98 46 9 14 29 196 77 109 21 243 225 104 183 216 48 254 197 182 128 179 52 157 98 5 158 9 230 25 110 129 177 25 136 232 132 20 124 64 154 189 173 58 128 224 24 42 80 160 189 195 36 33 248 215 235 193 42 119 117 160 83 70 78 37 253 209 132 78 167 184 99 182 224 189 56 184 15 78 14 198 166 105 146 102 210 197 8 249 9 254 88 61 189 116 85 99 169 219 93 113 64 101 46 56 229 22 152 175 109 185 8 171 19 192 246 209 155 12 154 246 57 30 137 237 34 43 230 252 42 236 124 35 65 44 142 87 252 151 158 192 239 234 244 143 128 136 66 64 218 215 57 43 239 147 135 199 245 18 149 89 74 238 98 146 197 132 172 73 74 211 41 205 102 159 109 132 63 243 109 224 254 66 157 130 252 159 56 163 36 27 17 207 128 50 199 23 159 164 252 1 0 0 255 255 3 0 80 75 3 4 20 0 6 0 8 0 0 0 33 0 149 20 73 78 173 1 0 0 117 3 0 0 16 0 8 1 100 111 99 80 114 111 112 115 47 97 112 112 46 120 109 108 32 162 4 1 40 160 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 156 147 77 111 27 33 16 134 239 149 250 31 86 220 99 214 118 84 85 22 75 20 57 141 114 104 85 75 222 36 103 202 206 218 40 44 32 24 175 236 254 250 206 238 202 49 238 199 165 183 153 121 135 151 135 1 196 221 177 179 69 15 49 25 239 42 54 159 149 172 0 167 125 99 220 174 98 207 245 227 205 103 86 36 84 174 81 214 59 168 216 9 18 187 147 31 63 136 77 244 1 34 26 72 5 89 184 84 177 61 98 88 113 158 244 30 58 149 102 36 59 82 90 31 59 133 148 198 29 247 109 107 52 60 120 125 232 192 33 95 148 229 39 14 71 4 215 64 115 19 222 13 217 228 184 234 241 127 77 27 175 7 190 244 82 159 2 1 75 81 123 84 182 54 29 200 82 240 75 34 238 67 176 70 43 164 211 203 111 70 71 159 124 139 197 151 163 6 43 120 46 10 162 222 130 62 68 131 167 193 35 79 197 86 43 11 107 218 80 182 202 38 16 252 82 16 79 160 134 97 110 148 137 73 138 30 87 61 104 244 177 72 230 39 141 115 193 138 31 42 193 128 89 177 94 69 163 28 18 238 208 54 37 99 108 67 194 40 31 225 96 172 165 121 55 80 208 134 250 64 136 212 56 137 99 152 175 201 99 115 43 151 99 3 5 215 141 131 193 4 68 194 53 106 109 144 54 251 222 110 84 196 191 144 47 115 242 145 97 226 206 88 231 57 223 59 233 120 140 197 191 165 137 52 63 213 56 48 226 251 141 104 237 187 160 220 73 222 163 79 197 171 143 182 177 198 209 240 207 117 241 213 184 183 244 28 106 255 160 16 206 87 115 93 20 219 189 138 208 208 109 158 245 75 65 60 209 173 68 242 124 75 235 189 114 59 104 206 61 127 10 195 67 122 153 126 145 156 223 206 202 101 73 111 36 171 9 126 249 47 242 23 0 0 0 255 255 3 0 80 75 3 4 20 0 6 0 8 0 0 0 33 0 126 148 213 45 209 1 0 0 250 10 0 0 16 0 0 0 120 108 47 99 97 108 99 67 104 97 105 110 46 120 109 108 100 214 219 106 219 80 16 133 225 251 66 223 65 232 190 81 164 158 75 156 192 236 61 51 47 208 62 128 112 212 216 96 203 193 50 165 125 251 170 37 9 237 250 111 4 250 180 217 163 195 204 66 55 119 63 143 135 230 199 116 94 246 167 121 211 246 87 215 109 51 205 219 211 253 126 126 216 180 223 190 198 155 79 109 179 92 198 249 126 60 156 230 105 211 254 154 150 246 238 246 245 171 155 237 120 216 150 221 184 159 155 117 135 121 217 180 187 203 229 241 75 215 45 219 221 116 28 151 171 211 227 52 175 87 190 159 206 199 241 178 158 158 31 186 229 241 60 141 247 203 110 154 46 199 67 55 92 95 127 232 142 235 6 237 237 205 182 57 111 90 123 215 54 251 245 30 218 230 240 231 216 61 113 121 230 103 168 10 174 16 10 169 96 239 159 106 61 111 90 20 170 130 43 132 66 42 216 7 173 162 80 21 92 33 20 82 193 62 106 21 133 170 224 10 161 144 10 182 54 194 223 175 243 242 198 20 170 130 43 132 66 42 216 103 173 162 80 21 92 33 20 82 193 250 181 205 255 127 24 72 133 56 36 32 9 177 126 109 104 169 165 82 177 198 33 1 73 136 245 3 106 169 84 172 113 72 64 18 98 253 91 212 82 169 88 227 144 128 36 196 122 157 223 2 169 16 135 4 36 33 214 235 20 23 72 133 56 36 32 9 177 94 103 185 64 42 196 33 1 73 136 245 58 209 5 82 33 14 9 72 66 172 215 185 46 144 10 113 72 64 18 98 189 78 119 129 84 136 67 2 146 16 27 144 27 144 10 113 72 64 18 98 131 166 68 129 84 136 67 2 146 16 27 52 37 10 164 66 28 18 144 132 216 160 41 81 32 21 226 144 128 36 196 6 228 6 164 66 28 18 144 132 216 128 220 128 84 136 67 2 146 16 27 144 27 144 10 113 72 64 18 98 3 114 3 82 33 14 9 72 66 138 182 70 85 112 133 80 72 5 251 7 186 151 191 214 219 223 0 0 0 255 255 3 0 80 75 1 2 45 0 20 0 6 0 8 0 0 0 33 0 199 122 151 144 120 1 0 0 32 6 0 0 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 91 67 111 110 116 101 110 116 95 84 121 112 101 115 93 46 120 109 108 80 75 1 2 45 0 20 0 6 0 8 0 0 0 33 0 181 85 48 35 245 0 0 0 76 2 0 0 11 0 0 0 0 0 0 0 0 0 0 0 0 0 177 3 0 0 95 114 101 108 115 47 46 114 101 108 115 80 75 1 2 45 0 20 0 6 0 8 0 0 0 33 0 244 245 7 59 27 1 0 0 89 4 0 0 26 0 0 0 0 0 0 0 0 0 0 0 0 0 215 6 0 0 120 108 47 95 114 101 108 115 47 119 111 114 107 98 111 111 107 46 120 109 108 46 114 101 108 115 80 75 1 2 45 0 20 0 6 0 8 0 0 0 33 0 95 77 123 205 95 1 0 0 113 2 0 0 15 0 0 0 0 0 0 0 0 0 0 0 0 0 50 9 0 0 120 108 47 119 111 114 107 98 111 111 107 46 120 109 108 80 75 1 2 45 0 20 0 6 0 8 0 0 0 33 0 1 14 86 208 152 6 0 0 168 27 0 0 19 0 0 0 0 0 0 0 0 0 0 0 0 0 190 10 0 0 120 108 47 116 104 101 109 101 47 116 104 101 109 101 49 46 120 109 108 80 75 1 2 45 0 20 0 6 0 8 0 0 0 33 0 159 202 189 227 109 1 0 0 134 2 0 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 135 17 0 0 120 108 47 119 111 114 107 115 104 101 101 116 115 47 115 104 101 101 116 50 46 120 109 108 80 75 1 2 45 0 20 0 6 0 8 0 0 0 33 0 159 202 189 227 109 1 0 0 134 2 0 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 42 19 0 0 120 108 47 119 111 114 107 115 104 101 101 116 115 47 115 104 101 101 116 51 46 120 109 108 80 75 1 2 45 0 20 0 6 0 8 0 0 0 33 0 195 7 21 126 38 7 0 0 152 43 0 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 205 20 0 0 120 108 47 119 111 114 107 115 104 101 101 116 115 47 115 104 101 101 116 49 46 120 109 108 80 75 1 2 45 0 20 0 6 0 8 0 0 0 33 0 157 65 219 210 188 0 0 0 41 1 0 0 20 0 0 0 0 0 0 0 0 0 0 0 0 0 41 28 0 0 120 108 47 115 104 97 114 101 100 83 116 114 105 110 103 115 46 120 109 108 80 75 1 2 45 0 20 0 6 0 8 0 0 0 33 0 208 204 72 148 72 2 0 0 236 4 0 0 13 0 0 0 0 0 0 0 0 0 0 0 0 0 23 29 0 0 120 108 47 115 116 121 108 101 115 46 120 109 108 80 75 1 2 45 0 20 0 6 0 8 0 0 0 33 0 28 144 44 217 69 1 0 0 113 2 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 138 31 0 0 100 111 99 80 114 111 112 115 47 99 111 114 101 46 120 109 108 80 75 1 2 45 0 20 0 6 0 8 0 0 0 33 0 149 20 73 78 173 1 0 0 117 3 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 6 34 0 0 100 111 99 80 114 111 112 115 47 97 112 112 46 120 109 108 80 75 1 2 45 0 20 0 6 0 8 0 0 0 33 0 126 148 213 45 209 1 0 0 250 10 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 233 36 0 0 120 108 47 99 97 108 99 67 104 97 105 110 46 120 109 108 80 75 5 6 0 0 0 0 13 0 13 0 74 3 0 0 232 38 0 0 0 0]
]