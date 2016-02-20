" Vim syntax file
" Language:	C++
" Maintainer:	Ken Shan <ccshan@post.harvard.edu>
" Last Change:	2002 Jul 15

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the C syntax to start with
if version < 600
  so <sfile>:p:h/c.vim
else
  runtime! syntax/c.vim
  unlet b:current_syntax
endif

" C++ extentions
syn keyword cppStatement	new delete this friend using
syn keyword cppAccess		public protected private
syn keyword cppType		inline virtual explicit export bool wchar_t
syn keyword cppExceptions	throw try catch
syn keyword cppOperator		operator typeid
syn keyword cppOperator		and bitor or xor compl bitand and_eq or_eq xor_eq not not_eq
syn match cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*<"me=e-1
syn match cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*$"
syn keyword cppStorageClass	mutable
syn keyword cppStructure	class typename template namespace
syn keyword cppNumber		NPOS
syn keyword cppBoolean		true false

" for android
syn keyword arduinoConstant  BIN CHANGE DEC DEFAULT EXTERNAL FALLING HALF_PI HEX
syn keyword arduinoConstant  HIGH INPUT INPUT_PULLUP INTERNAL INTERNAL1V1
syn keyword arduinoConstant  INTERNAL2V56 LOW LSBFIRST MSBFIRST OCT OUTPUT PI
syn keyword arduinoConstant  RISING TWO_PI

syn keyword arduinoFunc      analogRead analogReference analogWrite
syn keyword arduinoFunc      attachInterrupt bit bitClear bitRead bitSet
syn keyword arduinoFunc      bitWrite delay delayMicroseconds detachInterrupt
syn keyword arduinoFunc      digitalRead digitalWrite highByte interrupts
syn keyword arduinoFunc      lowByte micros millis noInterrupts noTone pinMode
syn keyword arduinoFunc      pulseIn shiftIn shiftOut tone yield

syn keyword arduinoMethod    available availableForWrite begin charAt compareTo
syn keyword arduinoMethod    concat end endsWith equals equalsIgnoreCase find
syn keyword arduinoMethod    findUntil flush getBytes indexOf lastIndexOf length
syn keyword arduinoMethod    loop parseFloat parseInt peek print println read
syn keyword arduinoMethod    readBytes readBytesUntil readString readStringUntil
syn keyword arduinoMethod    replace setCharAt setTimeout setup startsWith
syn keyword arduinoMethod    substring toCharArray toInt toLowerCase toUpperCase
syn keyword arduinoMethod    trim word

syn keyword arduinoModule    Keyboard Mouse Serial Serial1 Serial2 Serial3
syn keyword arduinoModule    SerialUSB

syn keyword arduinoStdFunc   abs accept acos asin atan atan2 ceil click constrain
syn keyword arduinoStdFunc   cos degrees exp floor isPressed log map max min
syn keyword arduinoStdFunc   move pow press radians random randomSeed release
syn keyword arduinoStdFunc   releaseAll round sin sq sqrt tan

syn keyword arduinoType      boolean byte null String word

hi def link arduinoType Type
hi def link arduinoConstant Constant
hi def link arduinoStdFunc Function
hi def link arduinoFunc Function
hi def link arduinoMethod Function
hi def link arduinoModule Identifier
" for android

" The minimum and maximum operators in GNU C++
syn match cppMinMax "[<>]?"

" Default highlighting
if version >= 508 || !exists("did_cpp_syntax_inits")
  if version < 508
    let did_cpp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink cppAccess		cppStatement
  HiLink cppCast		cppStatement
  HiLink cppExceptions		Exception
  HiLink cppOperator		Operator
  HiLink cppStatement		Statement
  HiLink cppType		Type
  HiLink cppStorageClass	StorageClass
  HiLink cppStructure		Structure
  HiLink cppNumber		Number
  HiLink cppBoolean		Boolean
  delcommand HiLink
endif

let b:current_syntax = "cpp"

" vim: ts=8
