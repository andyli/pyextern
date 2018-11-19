/* This file is generated, do not edit! */
package pyQt5.qtNetwork;
@:pythonImport("PyQt5.QtNetwork", "QSslCertificate") extern class QSslCertificate {
	static public var CommonName : Dynamic;
	static public var CountryName : Dynamic;
	static public var DistinguishedNameQualifier : Dynamic;
	static public var EmailAddress : Dynamic;
	static public var LocalityName : Dynamic;
	static public var Organization : Dynamic;
	static public var OrganizationalUnitName : Dynamic;
	static public var SerialNumber : Dynamic;
	static public var StateOrProvinceName : Dynamic;
	/**
		int(x=0) -> integer
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
	public function SubjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		clear(self)
	**/
	public function clear():Void;
	/**
		digest(self, algorithm: QCryptographicHash.Algorithm = QCryptographicHash.Md5) -> QByteArray
	**/
	public function digest(?algorithm:Dynamic):Dynamic;
	/**
		effectiveDate(self) -> QDateTime
	**/
	public function effectiveDate():Dynamic;
	/**
		expiryDate(self) -> QDateTime
	**/
	public function expiryDate():Dynamic;
	/**
		extensions(self) -> object
	**/
	public function extensions():Dynamic;
	/**
		fromData(Union[QByteArray, bytes, bytearray], format: QSsl.EncodingFormat = QSsl.Pem) -> List[QSslCertificate]
	**/
	static public function fromData(Union:Dynamic, ?format:Dynamic):Dynamic;
	/**
		fromDevice(QIODevice, format: QSsl.EncodingFormat = QSsl.Pem) -> List[QSslCertificate]
	**/
	static public function fromDevice(QIODevice:Dynamic, ?format:Dynamic):Dynamic;
	/**
		fromPath(str, format: QSsl.EncodingFormat = QSsl.Pem, syntax: QRegExp.PatternSyntax = QRegExp.FixedString) -> object
	**/
	static public function fromPath(str:String, ?format:Dynamic, ?syntax:Dynamic):Dynamic;
	/**
		handle(self) -> sip.voidptr
	**/
	public function handle():Dynamic;
	/**
		importPkcs12(QIODevice, QSslKey, QSslCertificate, caCertificates: Iterable[QSslCertificate] = [], passPhrase: Union[QByteArray, bytes, bytearray] = QByteArray()) -> bool
	**/
	static public function importPkcs12(QIODevice:Dynamic, QSslKey:Dynamic, QSslCertificate:Dynamic, ?caCertificates:Dynamic, ?passPhrase:Dynamic):Bool;
	/**
		isBlacklisted(self) -> bool
	**/
	public function isBlacklisted():Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		isSelfSigned(self) -> bool
	**/
	public function isSelfSigned():Bool;
	/**
		issuerInfo(self, QSslCertificate.SubjectInfo) -> List[str]
		issuerInfo(self, Union[QByteArray, bytes, bytearray]) -> List[str]
	**/
	public function issuerInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		issuerInfoAttributes(self) -> List[QByteArray]
	**/
	public function issuerInfoAttributes():Dynamic;
	/**
		publicKey(self) -> QSslKey
	**/
	public function publicKey():Dynamic;
	/**
		serialNumber(self) -> QByteArray
	**/
	public function serialNumber():Dynamic;
	/**
		subjectAlternativeNames(self) -> Dict[QSsl.AlternativeNameEntryType, List[str]]
	**/
	public function subjectAlternativeNames():Dynamic;
	/**
		subjectInfo(self, QSslCertificate.SubjectInfo) -> List[str]
		subjectInfo(self, Union[QByteArray, bytes, bytearray]) -> List[str]
	**/
	public function subjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		subjectInfoAttributes(self) -> List[QByteArray]
	**/
	public function subjectInfoAttributes():Dynamic;
	/**
		swap(self, QSslCertificate)
	**/
	public function swap(QSslCertificate:Dynamic):Void;
	/**
		toDer(self) -> QByteArray
	**/
	public function toDer():Dynamic;
	/**
		toPem(self) -> QByteArray
	**/
	public function toPem():Dynamic;
	/**
		toText(self) -> str
	**/
	public function toText():String;
	/**
		verify(Iterable[QSslCertificate], hostName: str = '') -> List[QSslError]
	**/
	static public function verify(Iterable:Dynamic, ?hostName:Dynamic):Dynamic;
	/**
		version(self) -> QByteArray
	**/
	public function version():Dynamic;
}