/* This file is generated, do not edit! */
package docutils.utils.math.math2html;
@:pythonImport("docutils.utils.math.math2html", "ContainerSize") extern class ContainerSize {
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
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Add the proper style attribute to the output tag.
	**/
	public function addstyle(container:Dynamic):Dynamic;
	/**
		Check image dimensions, set them if possible.
	**/
	public function checkimage(width:Dynamic, height:Dynamic):Dynamic;
	/**
		Check if the height parameter is valid; otherwise erase it.
	**/
	public function checkvalidheight(container:Dynamic):Dynamic;
	/**
		Extract the first number in the given text.
	**/
	public function extractnumber(text:Dynamic):Dynamic;
	static public var height : Dynamic;
	static public var maxheight : Dynamic;
	static public var maxwidth : Dynamic;
	/**
		Do the full processing on a parameter.
	**/
	public function processparameter(value:Dynamic):Dynamic;
	/**
		Read some size parameters off a container.
	**/
	public function readparameters(container:Dynamic):Dynamic;
	/**
		Remove percent width if present, to set it at the figure level.
	**/
	public function removepercentwidth():Dynamic;
	static public var scale : Dynamic;
	/**
		Scale the value according to the image scale and return it as unicode.
	**/
	public function scalevalue(value:Dynamic):Dynamic;
	/**
		Set the proper size with width and height.
	**/
	public function set(?width:Dynamic, ?height:Dynamic):Dynamic;
	/**
		Set max width and/or height.
	**/
	public function setmax(?maxwidth:Dynamic, ?maxheight:Dynamic):Dynamic;
	/**
		Read a size parameter off a container, and set it if present.
	**/
	public function setparameter(container:Dynamic, name:Dynamic):Dynamic;
	/**
		Set the value of a parameter name, only if it's valid.
	**/
	public function setvalue(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Get the style for a single parameter.
	**/
	public function styleparameter(name:Dynamic):Dynamic;
	static public var width : Dynamic;
}