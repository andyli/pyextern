/* This file is generated, do not edit! */
package docutils.utils.math.math2html;
@:pythonImport("docutils.utils.math.math2html", "DependentCounter") extern class DependentCounter {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Give a name to the counter.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic):Dynamic;
	/**
		Give a name to the counter.
	**/
	public function new(name:Dynamic):Void;
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
		Return a printable representation.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Get the next value as a letter.
	**/
	public function getletter():Dynamic;
	/**
		Increase or, if the master counter has changed, restart.
	**/
	public function getnext():Dynamic;
	/**
		Get the next value as a roman number.
	**/
	public function getroman():Dynamic;
	/**
		Get the next value from elyxer.a sequence.
	**/
	public function getsequence(sequence:Dynamic):Dynamic;
	/**
		Get the next value as a symbol.
	**/
	public function getsymbol():Dynamic;
	/**
		Get the next value as a text string.
	**/
	public function gettext():Dynamic;
	/**
		Get the value of the combined counter: master.dependent.
	**/
	public function getvalue():Dynamic;
	/**
		Set an initial value.
	**/
	public function init(value:Dynamic):Dynamic;
	static public var letters : Dynamic;
	static public var master : Dynamic;
	static public var mode : Dynamic;
	static public var name : Dynamic;
	/**
		Reset the counter.
	**/
	public function reset():Dynamic;
	static public var romannumerals : Dynamic;
	/**
		Set the master counter.
	**/
	public function setmaster(master:Dynamic):Dynamic;
	/**
		Set the counter mode. Can be changed at runtime.
	**/
	public function setmode(mode:Dynamic):Dynamic;
	static public var symbols : Dynamic;
	static public var value : Dynamic;
}