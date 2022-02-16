/* This file is generated, do not edit! */
package pyQt5.qtMultimedia;
@:pythonImport("PyQt5.QtMultimedia", "QMediaResource") extern class QMediaResource {
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
		audioBitRate(self) -> int
	**/
	public function audioBitRate():Int;
	/**
		audioCodec(self) -> str
	**/
	public function audioCodec():String;
	/**
		channelCount(self) -> int
	**/
	public function channelCount():Int;
	/**
		dataSize(self) -> int
	**/
	public function dataSize():Int;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		language(self) -> str
	**/
	public function language():String;
	/**
		mimeType(self) -> str
	**/
	public function mimeType():String;
	/**
		request(self) -> QNetworkRequest
	**/
	public function request():Dynamic;
	/**
		resolution(self) -> QSize
	**/
	public function resolution():Dynamic;
	/**
		sampleRate(self) -> int
	**/
	public function sampleRate():Int;
	/**
		setAudioBitRate(self, int)
	**/
	public function setAudioBitRate(int:Int):Void;
	/**
		setAudioCodec(self, str)
	**/
	public function setAudioCodec(str:String):Void;
	/**
		setChannelCount(self, int)
	**/
	public function setChannelCount(int:Int):Void;
	/**
		setDataSize(self, int)
	**/
	public function setDataSize(int:Int):Void;
	/**
		setLanguage(self, str)
	**/
	public function setLanguage(str:String):Void;
	/**
		setResolution(self, QSize)
		setResolution(self, int, int)
	**/
	public function setResolution(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setSampleRate(self, int)
	**/
	public function setSampleRate(int:Int):Void;
	/**
		setVideoBitRate(self, int)
	**/
	public function setVideoBitRate(int:Int):Void;
	/**
		setVideoCodec(self, str)
	**/
	public function setVideoCodec(str:String):Void;
	/**
		url(self) -> QUrl
	**/
	public function url():Dynamic;
	/**
		videoBitRate(self) -> int
	**/
	public function videoBitRate():Int;
	/**
		videoCodec(self) -> str
	**/
	public function videoCodec():String;
}