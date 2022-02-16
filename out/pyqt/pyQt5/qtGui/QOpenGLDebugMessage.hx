/* This file is generated, do not edit! */
package pyQt5.qtGui;
@:pythonImport("PyQt5.QtGui", "QOpenGLDebugMessage") extern class QOpenGLDebugMessage {
	static public var APISource : Dynamic;
	static public var AnySeverity : Dynamic;
	static public var AnySource : Dynamic;
	static public var AnyType : Dynamic;
	static public var ApplicationSource : Dynamic;
	static public var DeprecatedBehaviorType : Dynamic;
	static public var ErrorType : Dynamic;
	static public var GroupPopType : Dynamic;
	static public var GroupPushType : Dynamic;
	static public var HighSeverity : Dynamic;
	static public var InvalidSeverity : Dynamic;
	static public var InvalidSource : Dynamic;
	static public var InvalidType : Dynamic;
	static public var LowSeverity : Dynamic;
	static public var MarkerType : Dynamic;
	static public var MediumSeverity : Dynamic;
	static public var NotificationSeverity : Dynamic;
	static public var OtherSource : Dynamic;
	static public var OtherType : Dynamic;
	static public var PerformanceType : Dynamic;
	static public var PortabilityType : Dynamic;
	/**
		QOpenGLDebugMessage.Severities()
		QOpenGLDebugMessage.Severities(Union[QOpenGLDebugMessage.Severities, QOpenGLDebugMessage.Severity])
		QOpenGLDebugMessage.Severities(QOpenGLDebugMessage.Severities)
	**/
	static public function Severities(args:haxe.extern.Rest<Dynamic>):Void;
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
	public function Severity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ShaderCompilerSource : Dynamic;
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
	public function Source(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QOpenGLDebugMessage.Sources()
		QOpenGLDebugMessage.Sources(Union[QOpenGLDebugMessage.Sources, QOpenGLDebugMessage.Source])
		QOpenGLDebugMessage.Sources(QOpenGLDebugMessage.Sources)
	**/
	static public function Sources(args:haxe.extern.Rest<Dynamic>):Void;
	static public var ThirdPartySource : Dynamic;
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
	public function Type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QOpenGLDebugMessage.Types()
		QOpenGLDebugMessage.Types(Union[QOpenGLDebugMessage.Types, QOpenGLDebugMessage.Type])
		QOpenGLDebugMessage.Types(QOpenGLDebugMessage.Types)
	**/
	static public function Types(args:haxe.extern.Rest<Dynamic>):Void;
	static public var UndefinedBehaviorType : Dynamic;
	static public var WindowSystemSource : Dynamic;
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
	static public var __hash__ : Dynamic;
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
		createApplicationMessage(str, id: int = 0, severity: QOpenGLDebugMessage.Severity = QOpenGLDebugMessage.NotificationSeverity, type: QOpenGLDebugMessage.Type = QOpenGLDebugMessage.OtherType) -> QOpenGLDebugMessage
	**/
	static public function createApplicationMessage(str:String, ?id:Dynamic, ?severity:Dynamic, ?type:Dynamic):Dynamic;
	/**
		createThirdPartyMessage(str, id: int = 0, severity: QOpenGLDebugMessage.Severity = QOpenGLDebugMessage.NotificationSeverity, type: QOpenGLDebugMessage.Type = QOpenGLDebugMessage.OtherType) -> QOpenGLDebugMessage
	**/
	static public function createThirdPartyMessage(str:String, ?id:Dynamic, ?severity:Dynamic, ?type:Dynamic):Dynamic;
	/**
		id(self) -> int
	**/
	public function id():Int;
	/**
		message(self) -> str
	**/
	public function message():String;
	/**
		severity(self) -> QOpenGLDebugMessage.Severity
	**/
	public function severity():Dynamic;
	/**
		source(self) -> QOpenGLDebugMessage.Source
	**/
	public function source():Dynamic;
	/**
		swap(self, QOpenGLDebugMessage)
	**/
	public function swap(QOpenGLDebugMessage:Dynamic):Void;
	/**
		type(self) -> QOpenGLDebugMessage.Type
	**/
	public function type():Dynamic;
}