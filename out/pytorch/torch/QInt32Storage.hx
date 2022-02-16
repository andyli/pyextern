/* This file is generated, do not edit! */
package torch;
@:pythonImport("torch", "QInt32Storage") extern class QInt32Storage {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
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
	public var _cdata : Dynamic;
	static public function _expired(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _free_weak_ref(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _get_shared_fd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Creates a new storage in shared memory with the same data type
	**/
	static public function _new_shared(size:Dynamic):Dynamic;
	static public function _new_shared_fd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _new_shared_filename(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _new_using_fd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _new_using_filename(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _new_with_file(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _new_with_weak_ptr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _set_cdata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _set_from_file(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _share_fd_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _share_filename_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _shared_decref(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _shared_incref(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _weak_ref(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _write_file(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this storage to bfloat16 type
	**/
	public function bfloat16():Dynamic;
	/**
		Casts this storage to bool type
	**/
	public function bool():Dynamic;
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
	/**
		Casts this storage to complex double type
	**/
	public function complex_double():Dynamic;
	/**
		Casts this storage to complex float type
	**/
	public function complex_float():Dynamic;
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
		    non_blocking (bool): If ``True`` and the source is in pinned memory,
		        the copy will be asynchronous with respect to the host. Otherwise,
		        the argument has no effect.
		    **kwargs: For compatibility, may contain the key ``async`` in place of
		        the ``non_blocking`` argument.
	**/
	public function cuda(?device:Dynamic, ?non_blocking:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function data_ptr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var device : Dynamic;
	/**
		Casts this storage to double type
	**/
	public function double():Dynamic;
	public var dtype : Dynamic;
	public function element_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this storage to float type
	**/
	public function float():Dynamic;
	static public function from_buffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function from_file(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_device():Dynamic;
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
	/**
		Returns the type if `dtype` is not provided, else casts this object to
		the specified type.
		
		If this is already of the correct type, no copy is performed and the
		original object is returned.
		
		Args:
		    dtype (type or string): The desired type
		    non_blocking (bool): If ``True``, and the source is in pinned memory
		        and destination is on the GPU or vice versa, the copy is performed
		        asynchronously with respect to the host. Otherwise, the argument
		        has no effect.
		    **kwargs: For compatibility, may contain the key ``async`` in place of
		        the ``non_blocking`` argument. The ``async`` arg is deprecated.
	**/
	public function type(?dtype:Dynamic, ?non_blocking:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}