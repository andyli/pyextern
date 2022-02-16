/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QUrlQuery") extern class QUrlQuery {
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
		addQueryItem(self, str, str)
	**/
	public function addQueryItem(str:String, str:String):Void;
	/**
		allQueryItemValues(self, str, options: Union[QUrl.ComponentFormattingOptions, QUrl.ComponentFormattingOption] = QUrl.PrettyDecoded) -> List[str]
	**/
	public function allQueryItemValues(str:String, ?options:Dynamic):Dynamic;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		defaultQueryPairDelimiter() -> str
	**/
	static public function defaultQueryPairDelimiter():String;
	/**
		defaultQueryValueDelimiter() -> str
	**/
	static public function defaultQueryValueDelimiter():String;
	/**
		hasQueryItem(self, str) -> bool
	**/
	public function hasQueryItem(str:String):Bool;
	/**
		isDetached(self) -> bool
	**/
	public function isDetached():Bool;
	/**
		isEmpty(self) -> bool
	**/
	public function isEmpty():Bool;
	/**
		query(self, options: Union[QUrl.ComponentFormattingOptions, QUrl.ComponentFormattingOption] = QUrl.PrettyDecoded) -> str
	**/
	public function query(?options:Dynamic):String;
	/**
		queryItemValue(self, str, options: Union[QUrl.ComponentFormattingOptions, QUrl.ComponentFormattingOption] = QUrl.PrettyDecoded) -> str
	**/
	public function queryItemValue(str:String, ?options:Dynamic):String;
	/**
		queryItems(self, options: Union[QUrl.ComponentFormattingOptions, QUrl.ComponentFormattingOption] = QUrl.PrettyDecoded) -> List[Tuple[str, str]]
	**/
	public function queryItems(?options:Dynamic):Dynamic;
	/**
		queryPairDelimiter(self) -> str
	**/
	public function queryPairDelimiter():String;
	/**
		queryValueDelimiter(self) -> str
	**/
	public function queryValueDelimiter():String;
	/**
		removeAllQueryItems(self, str)
	**/
	public function removeAllQueryItems(str:String):Void;
	/**
		removeQueryItem(self, str)
	**/
	public function removeQueryItem(str:String):Void;
	/**
		setQuery(self, str)
	**/
	public function setQuery(str:String):Void;
	/**
		setQueryDelimiters(self, str, str)
	**/
	public function setQueryDelimiters(str:String, str:String):Void;
	/**
		setQueryItems(self, Iterable[Tuple[str, str]])
	**/
	public function setQueryItems(Iterable:Dynamic):Void;
	/**
		swap(self, QUrlQuery)
	**/
	public function swap(QUrlQuery:Dynamic):Void;
	/**
		toString(self, options: Union[QUrl.ComponentFormattingOptions, QUrl.ComponentFormattingOption] = QUrl.PrettyDecoded) -> str
	**/
	public function toString(?options:Dynamic):String;
}