/* This file is generated, do not edit! */
package docutils.utils.math.math2html;
@:pythonImport("docutils.utils.math.math2html", "ChapteredGenerator") extern class ChapteredGenerator {
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
	static public var appendix : Dynamic;
	static public var chaptered : Dynamic;
	static public var counters : Dynamic;
	/**
		Create a counter for the given type.
	**/
	public function create(type:Dynamic):Dynamic;
	/**
		Create a dependent counter given the master.
	**/
	public function createdependent(type:Dynamic, master:Dynamic):Dynamic;
	/**
		Remove the possible asterisk in a layout type.
	**/
	public function deasterisk(type:Dynamic):Dynamic;
	/**
		Generate a number which goes with first-level numbers (chapters). 
	**/
	public function generate(type:Dynamic):Dynamic;
	static public var generator : Dynamic;
	/**
		Get the counter for the given type.
	**/
	public function getcounter(type:Dynamic):Dynamic;
	/**
		Get (or create) a counter of the given type that depends on another.
	**/
	public function getdependentcounter(type:Dynamic, master:Dynamic):Dynamic;
	/**
		Get the level that corresponds to a layout type.
	**/
	public function getlevel(type:Dynamic):Dynamic;
	/**
		Obtain the type for the part: without the asterisk, 
	**/
	public function getparttype(type:Dynamic):Dynamic;
	/**
		Find out if the layout type corresponds to an (un)ordered part.
	**/
	public function isinordered(type:Dynamic):Dynamic;
	/**
		Find out if the type for a layout corresponds to a numbered layout.
	**/
	public function isnumbered(type:Dynamic):Dynamic;
	/**
		Find out if the layout type should have roman numeration.
	**/
	public function isroman(type:Dynamic):Dynamic;
	/**
		Find out if the layout type corresponds to a unique part.
	**/
	public function isunique(type:Dynamic):Dynamic;
	/**
		Find out if the type contains an asterisk, basically.
	**/
	public function isunordered(type:Dynamic):Dynamic;
	static public var orderedlayouts : Dynamic;
	static public var romanlayouts : Dynamic;
	/**
		Start appendices here.
	**/
	public function startappendix():Dynamic;
}