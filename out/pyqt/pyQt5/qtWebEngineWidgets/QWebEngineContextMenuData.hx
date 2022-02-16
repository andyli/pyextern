/* This file is generated, do not edit! */
package pyQt5.qtWebEngineWidgets;
@:pythonImport("PyQt5.QtWebEngineWidgets", "QWebEngineContextMenuData") extern class QWebEngineContextMenuData {
	static public var CanCopy : Dynamic;
	static public var CanCut : Dynamic;
	static public var CanDelete : Dynamic;
	static public var CanEditRichly : Dynamic;
	static public var CanPaste : Dynamic;
	static public var CanRedo : Dynamic;
	static public var CanSelectAll : Dynamic;
	static public var CanTranslate : Dynamic;
	static public var CanUndo : Dynamic;
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
	public function EditFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWebEngineContextMenuData.EditFlags()
		QWebEngineContextMenuData.EditFlags(Union[QWebEngineContextMenuData.EditFlags, QWebEngineContextMenuData.EditFlag])
		QWebEngineContextMenuData.EditFlags(QWebEngineContextMenuData.EditFlags)
	**/
	static public function EditFlags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var MediaCanPrint : Dynamic;
	static public var MediaCanRotate : Dynamic;
	static public var MediaCanSave : Dynamic;
	static public var MediaCanToggleControls : Dynamic;
	static public var MediaControls : Dynamic;
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
	public function MediaFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QWebEngineContextMenuData.MediaFlags()
		QWebEngineContextMenuData.MediaFlags(Union[QWebEngineContextMenuData.MediaFlags, QWebEngineContextMenuData.MediaFlag])
		QWebEngineContextMenuData.MediaFlags(QWebEngineContextMenuData.MediaFlags)
	**/
	static public function MediaFlags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var MediaHasAudio : Dynamic;
	static public var MediaInError : Dynamic;
	static public var MediaLoop : Dynamic;
	static public var MediaMuted : Dynamic;
	static public var MediaPaused : Dynamic;
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
	public function MediaType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var MediaTypeAudio : Dynamic;
	static public var MediaTypeCanvas : Dynamic;
	static public var MediaTypeFile : Dynamic;
	static public var MediaTypeImage : Dynamic;
	static public var MediaTypeNone : Dynamic;
	static public var MediaTypePlugin : Dynamic;
	static public var MediaTypeVideo : Dynamic;
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
		editFlags(self) -> QWebEngineContextMenuData.EditFlags
	**/
	public function editFlags():Dynamic;
	/**
		isContentEditable(self) -> bool
	**/
	public function isContentEditable():Bool;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		linkText(self) -> str
	**/
	public function linkText():String;
	/**
		linkUrl(self) -> QUrl
	**/
	public function linkUrl():Dynamic;
	/**
		mediaFlags(self) -> QWebEngineContextMenuData.MediaFlags
	**/
	public function mediaFlags():Dynamic;
	/**
		mediaType(self) -> QWebEngineContextMenuData.MediaType
	**/
	public function mediaType():Dynamic;
	/**
		mediaUrl(self) -> QUrl
	**/
	public function mediaUrl():Dynamic;
	/**
		misspelledWord(self) -> str
	**/
	public function misspelledWord():String;
	/**
		position(self) -> QPoint
	**/
	public function position():Dynamic;
	/**
		selectedText(self) -> str
	**/
	public function selectedText():String;
	/**
		spellCheckerSuggestions(self) -> List[str]
	**/
	public function spellCheckerSuggestions():Dynamic;
}