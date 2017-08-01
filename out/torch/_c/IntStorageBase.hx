/* This file is generated, do not edit! */
package torch._c;
@:pythonImport("torch._C", "IntStorageBase") extern class IntStorageBase {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
	public function __delitem__(key:Dynamic):Dynamic;
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
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
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
	public var _cdata : Dynamic;
	public function _get_shared_fd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _new_shared_fd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _new_shared_filename(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _new_using_fd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _new_using_filename(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _new_view(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _new_with_file(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _new_with_weak_ptr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _root_storage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _set_cdata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _set_from_file(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _share_fd_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _share_filename_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _shared_decref(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _shared_incref(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _weak_ref(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _write_file(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function copy_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function data_ptr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function element_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function from_buffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_pinned(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_shared(args:haxe.extern.Rest<Dynamic>):Dynamic;
	@:native("new")
	public function _new(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resize_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
}