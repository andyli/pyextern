/* This file is generated, do not edit! */
package docutils.writers.odf_odt;
@:pythonImport("docutils.writers.odf_odt", "_ElementInterfaceWrapper") extern class _ElementInterfaceWrapper {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__():Dynamic;
	public function __deepcopy__(memo:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
	public function __delitem__(key:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	public function __getstate__():Dynamic;
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
	public function ___init__(tag:Dynamic, ?attrib:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(tag:Dynamic, ?attrib:Dynamic):Void;
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
		Return len(self).
	**/
	public function __len__():Dynamic;
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
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function append(subelement:Dynamic):Dynamic;
	/**
		A dictionary containing the element's attributes
	**/
	public var attrib : Dynamic;
	public function clear():Dynamic;
	public function extend(elements:Dynamic):Dynamic;
	public function find(path:Dynamic, ?namespaces:Dynamic):Dynamic;
	public function findall(path:Dynamic, ?namespaces:Dynamic):Dynamic;
	public function findtext(path:Dynamic, ?_default:Dynamic, ?namespaces:Dynamic):Dynamic;
	public function get(key:Dynamic, ?_default:Dynamic):Dynamic;
	public function getchildren():Dynamic;
	/**
		iter($self, /, tag=None)
		--
	**/
	public function getiterator(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function getparent():Dynamic;
	public function insert(index:Dynamic, subelement:Dynamic):Dynamic;
	public function items():Dynamic;
	public function iter(?tag:Dynamic):Dynamic;
	public function iterfind(path:Dynamic, ?namespaces:Dynamic):Dynamic;
	public function itertext():Dynamic;
	public function keys():Dynamic;
	public function makeelement(tag:Dynamic, attrib:Dynamic):Dynamic;
	public function remove(subelement:Dynamic):Dynamic;
	public function set(key:Dynamic, value:Dynamic):Dynamic;
	public function setparent(parent:Dynamic):Dynamic;
	/**
		A string identifying what kind of data this element represents
	**/
	public var tag : Dynamic;
	/**
		A string of text directly after the end tag, or None
	**/
	public var tail : Dynamic;
	/**
		A string of text directly after the start tag, or None
	**/
	public var text : Dynamic;
}