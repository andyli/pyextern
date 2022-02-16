/* This file is generated, do not edit! */
package pyQt5.qtNetwork;
@:pythonImport("PyQt5.QtNetwork", "QHostInfo") extern class QHostInfo {
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
	public function HostInfoError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var HostNotFound : Dynamic;
	static public var NoError : Dynamic;
	static public var UnknownError : Dynamic;
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
		abortHostLookup(int)
	**/
	static public function abortHostLookup(int:Int):Void;
	/**
		addresses(self) -> List[QHostAddress]
	**/
	public function addresses():Dynamic;
	/**
		error(self) -> QHostInfo.HostInfoError
	**/
	public function error():Dynamic;
	/**
		errorString(self) -> str
	**/
	public function errorString():String;
	/**
		fromName(str) -> QHostInfo
	**/
	static public function fromName(str:String):Dynamic;
	/**
		hostName(self) -> str
	**/
	public function hostName():String;
	/**
		localDomainName() -> str
	**/
	static public function localDomainName():String;
	/**
		localHostName() -> str
	**/
	static public function localHostName():String;
	/**
		lookupHost(str, PYQT_SLOT) -> int
	**/
	static public function lookupHost(str:String, PYQT:Dynamic):Int;
	/**
		lookupId(self) -> int
	**/
	public function lookupId():Int;
	/**
		setAddresses(self, Iterable[Union[QHostAddress, QHostAddress.SpecialAddress]])
	**/
	public function setAddresses(Iterable:Dynamic):Void;
	/**
		setError(self, QHostInfo.HostInfoError)
	**/
	public function setError(QHostInfo:Dynamic):Void;
	/**
		setErrorString(self, str)
	**/
	public function setErrorString(str:String):Void;
	/**
		setHostName(self, str)
	**/
	public function setHostName(str:String):Void;
	/**
		setLookupId(self, int)
	**/
	public function setLookupId(int:Int):Void;
	/**
		swap(self, QHostInfo)
	**/
	public function swap(QHostInfo:Dynamic):Void;
}