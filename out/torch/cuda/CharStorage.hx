/* This file is generated, do not edit! */
package torch.cuda;
@:pythonImport("torch.cuda", "CharStorage") extern class CharStorage {
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
	public function __iter__():Dynamic;
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
	public function __reduce__():Dynamic;
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
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public var _cdata : Dynamic;
	public function _get_shared_fd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Creates a new storage in shared memory with the same data type
	**/
	static public function _new_shared(size:Dynamic):Dynamic;
	static public function _new_shared_cuda(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _new_view(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _new_with_file(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _new_with_weak_ptr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _root_storage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _set_cdata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _set_from_file(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _share_cuda_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _shared_decref(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _shared_incref(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _weak_ref(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _write_file(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this storage to byte type
	**/
	public function byte():Dynamic;
	/**
		Casts this storage to char type
	**/
	public function char():Dynamic;
	/**
		Returns a copy of this storage
	**/
	public function clone():Dynamic;
	public function copy_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a CPU copy of this storage if it's not already on the CPU
	**/
	public function cpu():Dynamic;
	/**
		Returns a copy of this object in CUDA memory.
		
		If this object is already in CUDA memory and on the correct device, then
		no copy is performed and the original object is returned.
		
		Args:
		    device (int): The destination GPU id. Defaults to the current device.
		    async (bool): If True and the source is in pinned memory, the copy will
		                  be asynchronous with respect to the host. Otherwise, the
		                  argument has no effect.
	**/
	public function cuda(?device:Dynamic, ?async:Dynamic):Dynamic;
	public function data_ptr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this storage to double type
	**/
	public function double():Dynamic;
	public function element_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this storage to float type
	**/
	public function float():Dynamic;
	public function get_device(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this storage to half type
	**/
	public function half():Dynamic;
	/**
		Casts this storage to int type
	**/
	public function int():Dynamic;
	static public var is_cuda : Dynamic;
	public function is_pinned(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_shared(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var is_sparse : Dynamic;
	/**
		Casts this storage to long type
	**/
	public function long():Dynamic;
	@:native("new")
	public function _new(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Copies the storage to pinned memory, if it's not already pinned.
	**/
	public function pin_memory():Dynamic;
	public function resize_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Moves the storage to shared memory.
		
		This is a no-op for storages already in shared memory and for CUDA
		storages, which do not need to be moved for sharing across processes.
		Storages in shared memory cannot be resized.
		
		Returns: self
	**/
	public function share_memory_():Dynamic;
	/**
		Casts this storage to short type
	**/
	public function short():Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a list containing the elements of this storage
	**/
	public function tolist():Dynamic;
	public function type(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}