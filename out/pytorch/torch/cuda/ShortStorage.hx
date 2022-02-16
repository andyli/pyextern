/* This file is generated, do not edit! */
package torch.cuda;
@:pythonImport("torch.cuda", "ShortStorage") extern class ShortStorage {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__():Dynamic;
	public function __deepcopy__(memo:Dynamic):Dynamic;
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
	public function __getitem__(idx:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	@:native("__init__")
	public function ___init__():Dynamic;
	public function new():Void;
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
	static public function __new__(cls:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Creates a new storage in shared memory with the same data type
	**/
	static public function _new_shared(size:Dynamic):Dynamic;
	static public function _new_using_fd(size:Dynamic):Dynamic;
	static public function _new_using_filename(size:Dynamic):Dynamic;
	public function _share_fd_():Dynamic;
	public function _share_filename_():Dynamic;
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
	public function copy_(source:Dynamic):Dynamic;
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
	/**
		Casts this storage to double type
	**/
	public function double():Dynamic;
	public function element_size():Dynamic;
	/**
		Casts this storage to float type
	**/
	public function float():Dynamic;
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
	static public var is_sparse : Dynamic;
	/**
		Casts this storage to long type
	**/
	public function long():Dynamic;
	/**
		Copies the storage to pinned memory, if it's not already pinned.
	**/
	public function pin_memory():Dynamic;
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
	public function size():Dynamic;
	/**
		Returns a list containing the elements of this storage
	**/
	public function tolist():Dynamic;
	public function type(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}