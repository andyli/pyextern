/* This file is generated, do not edit! */
package matplotlib.figure;
@:pythonImport("matplotlib.figure", "SubplotParams") extern class SubplotParams {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Defaults are given by :rc:`figure.subplot.[name]`.
		
		Parameters
		----------
		left : float
		    The position of the left edge of the subplots,
		    as a fraction of the figure width.
		right : float
		    The position of the right edge of the subplots,
		    as a fraction of the figure width.
		bottom : float
		    The position of the bottom edge of the subplots,
		    as a fraction of the figure height.
		top : float
		    The position of the top edge of the subplots,
		    as a fraction of the figure height.
		wspace : float
		    The width of the padding between subplots,
		    as a fraction of the average Axes width.
		hspace : float
		    The height of the padding between subplots,
		    as a fraction of the average Axes height.
	**/
	@:native("__init__")
	public function ___init__(?left:Dynamic, ?bottom:Dynamic, ?right:Dynamic, ?top:Dynamic, ?wspace:Dynamic, ?hspace:Dynamic):Dynamic;
	/**
		Defaults are given by :rc:`figure.subplot.[name]`.
		
		Parameters
		----------
		left : float
		    The position of the left edge of the subplots,
		    as a fraction of the figure width.
		right : float
		    The position of the right edge of the subplots,
		    as a fraction of the figure width.
		bottom : float
		    The position of the bottom edge of the subplots,
		    as a fraction of the figure height.
		top : float
		    The position of the top edge of the subplots,
		    as a fraction of the figure height.
		wspace : float
		    The width of the padding between subplots,
		    as a fraction of the average Axes width.
		hspace : float
		    The height of the padding between subplots,
		    as a fraction of the average Axes height.
	**/
	public function new(?left:Dynamic, ?bottom:Dynamic, ?right:Dynamic, ?top:Dynamic, ?wspace:Dynamic, ?hspace:Dynamic):Void;
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
		Update the dimensions of the passed parameters. *None* means unchanged.
	**/
	public function update(?left:Dynamic, ?bottom:Dynamic, ?right:Dynamic, ?top:Dynamic, ?wspace:Dynamic, ?hspace:Dynamic):Dynamic;
	public var validate : Dynamic;
}