/* This file is generated, do not edit! */
package docutils.utils.math.math2html;
@:pythonImport("docutils.utils.math.math2html", "Options") extern class Options {
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var alignfoot : Dynamic;
	static public var branches : Dynamic;
	static public var converter : Dynamic;
	static public var copyimages : Dynamic;
	static public var copyright : Dynamic;
	static public var css : Dynamic;
	static public var debug : Dynamic;
	static public var destdirectory : Dynamic;
	static public var directory : Dynamic;
	static public var embedcss : Dynamic;
	static public var endfoot : Dynamic;
	static public var footnotes : Dynamic;
	static public var forceformat : Dynamic;
	static public var googlecharts : Dynamic;
	static public var hardversion : Dynamic;
	static public var help : Dynamic;
	static public var hoverfoot : Dynamic;
	static public var html : Dynamic;
	static public var imageformat : Dynamic;
	static public var instance : Dynamic;
	static public var iso885915 : Dynamic;
	static public var jsmath : Dynamic;
	static public var letterfoot : Dynamic;
	static public var location : Dynamic;
	static public var lowmem : Dynamic;
	static public var lyxformat : Dynamic;
	static public var marginfoot : Dynamic;
	static public var mathjax : Dynamic;
	static public var memory : Dynamic;
	static public var nobib : Dynamic;
	static public var noconvert : Dynamic;
	static public var nocopy : Dynamic;
	static public var nofooter : Dynamic;
	static public var notoclabels : Dynamic;
	static public var numberfoot : Dynamic;
	/**
		Parse footnotes options.
	**/
	public function parsefootnotes():Dynamic;
	/**
		Parse command line options
	**/
	public function parseoptions(args:Dynamic):Dynamic;
	/**
		Process all options parsed.
	**/
	public function processoptions():Dynamic;
	static public var quiet : Dynamic;
	static public var raw : Dynamic;
	/**
		Return just the version string
	**/
	public function showhardversion():Dynamic;
	static public var showlines : Dynamic;
	/**
		Return just the lyxformat parameter
	**/
	public function showlyxformat():Dynamic;
	/**
		Show all possible options
	**/
	public function showoptions():Dynamic;
	/**
		Return the current eLyXer version string
	**/
	public function showversion():Dynamic;
	/**
		Return just the version dte
	**/
	public function showversiondate():Dynamic;
	static public var simplemath : Dynamic;
	static public var splitpart : Dynamic;
	static public var str : Dynamic;
	static public var supfoot : Dynamic;
	static public var symbolfoot : Dynamic;
	static public var target : Dynamic;
	static public var template : Dynamic;
	static public var title : Dynamic;
	static public var toc : Dynamic;
	static public var tocfor : Dynamic;
	static public var toctarget : Dynamic;
	/**
		Show correct usage
	**/
	public function usage():Dynamic;
	static public var version : Dynamic;
	static public var versiondate : Dynamic;
}