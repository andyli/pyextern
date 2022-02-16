/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QXmlStreamReader") extern class QXmlStreamReader {
	static public var Characters : Dynamic;
	static public var Comment : Dynamic;
	static public var CustomError : Dynamic;
	static public var DTD : Dynamic;
	static public var EndDocument : Dynamic;
	static public var EndElement : Dynamic;
	static public var EntityReference : Dynamic;
	/**
		int([x]) -> integer
		int(x, base=10) -> integer
		
		Convert a number or string to an integer, or return 0 if no arguments
		are given.  If x is a number, return x.__int__().  For floating point
		numbers, this truncates towards zero.
		
		If x is not a number or if base is given, then x must be a string,
		bytes, or bytearray instance representing an integer literal in the
		given base.  The literal can be preceded by '+' or '-' and be surrounded
		by whitespace.  The base defaults to 10.  Valid bases are 0 and 2-36.
		Base 0 means to interpret the base from the string as an integer literal.
		>>> int('0b100', base=0)
		4
	**/
	public function Error(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ErrorOnUnexpectedElement : Dynamic;
	static public var IncludeChildElements : Dynamic;
	static public var Invalid : Dynamic;
	static public var NoError : Dynamic;
	static public var NoToken : Dynamic;
	static public var NotWellFormedError : Dynamic;
	static public var PrematureEndOfDocumentError : Dynamic;
	static public var ProcessingInstruction : Dynamic;
	/**
		int([x]) -> integer
		int(x, base=10) -> integer
		
		Convert a number or string to an integer, or return 0 if no arguments
		are given.  If x is a number, return x.__int__().  For floating point
		numbers, this truncates towards zero.
		
		If x is not a number or if base is given, then x must be a string,
		bytes, or bytearray instance representing an integer literal in the
		given base.  The literal can be preceded by '+' or '-' and be surrounded
		by whitespace.  The base defaults to 10.  Valid bases are 0 and 2-36.
		Base 0 means to interpret the base from the string as an integer literal.
		>>> int('0b100', base=0)
		4
	**/
	public function ReadElementTextBehaviour(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SkipChildElements : Dynamic;
	static public var StartDocument : Dynamic;
	static public var StartElement : Dynamic;
	/**
		int([x]) -> integer
		int(x, base=10) -> integer
		
		Convert a number or string to an integer, or return 0 if no arguments
		are given.  If x is a number, return x.__int__().  For floating point
		numbers, this truncates towards zero.
		
		If x is not a number or if base is given, then x must be a string,
		bytes, or bytearray instance representing an integer literal in the
		given base.  The literal can be preceded by '+' or '-' and be surrounded
		by whitespace.  The base defaults to 10.  Valid bases are 0 and 2-36.
		Base 0 means to interpret the base from the string as an integer literal.
		>>> int('0b100', base=0)
		4
	**/
	public function TokenType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var UnexpectedElementError : Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		addData(self, Union[QByteArray, bytes, bytearray])
		addData(self, str)
	**/
	public function addData(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		addExtraNamespaceDeclaration(self, QXmlStreamNamespaceDeclaration)
	**/
	public function addExtraNamespaceDeclaration(QXmlStreamNamespaceDeclaration:Dynamic):Void;
	/**
		addExtraNamespaceDeclarations(self, Iterable[QXmlStreamNamespaceDeclaration])
	**/
	public function addExtraNamespaceDeclarations(Iterable:Dynamic):Void;
	/**
		atEnd(self) -> bool
	**/
	public function atEnd():Bool;
	/**
		attributes(self) -> QXmlStreamAttributes
	**/
	public function attributes():Dynamic;
	/**
		characterOffset(self) -> int
	**/
	public function characterOffset():Int;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		columnNumber(self) -> int
	**/
	public function columnNumber():Int;
	/**
		device(self) -> QIODevice
	**/
	public function device():Dynamic;
	/**
		documentEncoding(self) -> str
	**/
	public function documentEncoding():String;
	/**
		documentVersion(self) -> str
	**/
	public function documentVersion():String;
	/**
		dtdName(self) -> str
	**/
	public function dtdName():String;
	/**
		dtdPublicId(self) -> str
	**/
	public function dtdPublicId():String;
	/**
		dtdSystemId(self) -> str
	**/
	public function dtdSystemId():String;
	/**
		entityDeclarations(self) -> List[QXmlStreamEntityDeclaration]
	**/
	public function entityDeclarations():Dynamic;
	/**
		entityResolver(self) -> QXmlStreamEntityResolver
	**/
	public function entityResolver():Dynamic;
	/**
		error(self) -> QXmlStreamReader.Error
	**/
	public function error():Dynamic;
	/**
		errorString(self) -> str
	**/
	public function errorString():String;
	/**
		hasError(self) -> bool
	**/
	public function hasError():Bool;
	/**
		isCDATA(self) -> bool
	**/
	public function isCDATA():Bool;
	/**
		isCharacters(self) -> bool
	**/
	public function isCharacters():Bool;
	/**
		isComment(self) -> bool
	**/
	public function isComment():Bool;
	/**
		isDTD(self) -> bool
	**/
	public function isDTD():Bool;
	/**
		isEndDocument(self) -> bool
	**/
	public function isEndDocument():Bool;
	/**
		isEndElement(self) -> bool
	**/
	public function isEndElement():Bool;
	/**
		isEntityReference(self) -> bool
	**/
	public function isEntityReference():Bool;
	/**
		isProcessingInstruction(self) -> bool
	**/
	public function isProcessingInstruction():Bool;
	/**
		isStandaloneDocument(self) -> bool
	**/
	public function isStandaloneDocument():Bool;
	/**
		isStartDocument(self) -> bool
	**/
	public function isStartDocument():Bool;
	/**
		isStartElement(self) -> bool
	**/
	public function isStartElement():Bool;
	/**
		isWhitespace(self) -> bool
	**/
	public function isWhitespace():Bool;
	/**
		lineNumber(self) -> int
	**/
	public function lineNumber():Int;
	/**
		name(self) -> str
	**/
	public function name():String;
	/**
		namespaceDeclarations(self) -> List[QXmlStreamNamespaceDeclaration]
	**/
	public function namespaceDeclarations():Dynamic;
	/**
		namespaceProcessing(self) -> bool
	**/
	public function namespaceProcessing():Bool;
	/**
		namespaceUri(self) -> str
	**/
	public function namespaceUri():String;
	/**
		notationDeclarations(self) -> List[QXmlStreamNotationDeclaration]
	**/
	public function notationDeclarations():Dynamic;
	/**
		prefix(self) -> str
	**/
	public function prefix():String;
	/**
		processingInstructionData(self) -> str
	**/
	public function processingInstructionData():String;
	/**
		processingInstructionTarget(self) -> str
	**/
	public function processingInstructionTarget():String;
	/**
		qualifiedName(self) -> str
	**/
	public function qualifiedName():String;
	/**
		raiseError(self, message: str = '')
	**/
	public function raiseError(?message:Dynamic):Void;
	/**
		readElementText(self, behaviour: QXmlStreamReader.ReadElementTextBehaviour = QXmlStreamReader.ErrorOnUnexpectedElement) -> str
	**/
	public function readElementText(?behaviour:Dynamic):String;
	/**
		readNext(self) -> QXmlStreamReader.TokenType
	**/
	public function readNext():Dynamic;
	/**
		readNextStartElement(self) -> bool
	**/
	public function readNextStartElement():Bool;
	/**
		setDevice(self, QIODevice)
	**/
	public function setDevice(QIODevice:Dynamic):Void;
	/**
		setEntityResolver(self, QXmlStreamEntityResolver)
	**/
	public function setEntityResolver(QXmlStreamEntityResolver:Dynamic):Void;
	/**
		setNamespaceProcessing(self, bool)
	**/
	public function setNamespaceProcessing(bool:Bool):Void;
	/**
		skipCurrentElement(self)
	**/
	public function skipCurrentElement():Void;
	/**
		text(self) -> str
	**/
	public function text():String;
	/**
		tokenString(self) -> str
	**/
	public function tokenString():String;
	/**
		tokenType(self) -> QXmlStreamReader.TokenType
	**/
	public function tokenType():Dynamic;
}