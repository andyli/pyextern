/* This file is generated, do not edit! */
package torch.utils.collect_env;
@:pythonImport("torch.utils.collect_env", "SystemEnv") extern class SystemEnv {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Return self as a plain tuple.  Used by copy and pickle.
	**/
	public function __getnewargs__():Dynamic;
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
	/**
		Implement iter(self).
	**/
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
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create new instance of SystemEnv(torch_version, is_debug_build, cuda_compiled_version, gcc_version, clang_version, cmake_version, os, libc_version, python_version, python_platform, is_cuda_available, cuda_runtime_version, nvidia_driver_version, nvidia_gpu_models, cudnn_version, pip_version, pip_packages, conda_packages, hip_compiled_version, hip_runtime_version, miopen_runtime_version, caching_allocator_config)
	**/
	static public function __new__(_cls:Dynamic, torch_version:Dynamic, is_debug_build:Dynamic, cuda_compiled_version:Dynamic, gcc_version:Dynamic, clang_version:Dynamic, cmake_version:Dynamic, os:Dynamic, libc_version:Dynamic, python_version:Dynamic, python_platform:Dynamic, is_cuda_available:Dynamic, cuda_runtime_version:Dynamic, nvidia_driver_version:Dynamic, nvidia_gpu_models:Dynamic, cudnn_version:Dynamic, pip_version:Dynamic, pip_packages:Dynamic, conda_packages:Dynamic, hip_compiled_version:Dynamic, hip_runtime_version:Dynamic, miopen_runtime_version:Dynamic, caching_allocator_config:Dynamic):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return a nicely formatted representation string
	**/
	public function __repr__():Dynamic;
	/**
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
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
		Return a new dict which maps field names to their values.
	**/
	public function _asdict():Dynamic;
	static public var _field_defaults : Dynamic;
	static public var _fields : Dynamic;
	static public var _fields_defaults : Dynamic;
	/**
		Make a new SystemEnv object from a sequence or iterable
	**/
	static public function _make(iterable:Dynamic):Dynamic;
	/**
		Return a new SystemEnv object replacing specified fields with new values
	**/
	public function _replace(?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Alias for field number 21
	**/
	public var caching_allocator_config : Dynamic;
	/**
		Alias for field number 4
	**/
	public var clang_version : Dynamic;
	/**
		Alias for field number 5
	**/
	public var cmake_version : Dynamic;
	/**
		Alias for field number 17
	**/
	public var conda_packages : Dynamic;
	/**
		Return number of occurrences of value.
	**/
	public function count(value:Dynamic):Dynamic;
	/**
		Alias for field number 2
	**/
	public var cuda_compiled_version : Dynamic;
	/**
		Alias for field number 11
	**/
	public var cuda_runtime_version : Dynamic;
	/**
		Alias for field number 14
	**/
	public var cudnn_version : Dynamic;
	/**
		Alias for field number 3
	**/
	public var gcc_version : Dynamic;
	/**
		Alias for field number 18
	**/
	public var hip_compiled_version : Dynamic;
	/**
		Alias for field number 19
	**/
	public var hip_runtime_version : Dynamic;
	/**
		Return first index of value.
		
		Raises ValueError if the value is not present.
	**/
	public function index(value:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		Alias for field number 10
	**/
	public var is_cuda_available : Dynamic;
	/**
		Alias for field number 1
	**/
	public var is_debug_build : Dynamic;
	/**
		Alias for field number 7
	**/
	public var libc_version : Dynamic;
	/**
		Alias for field number 20
	**/
	public var miopen_runtime_version : Dynamic;
	/**
		Alias for field number 12
	**/
	public var nvidia_driver_version : Dynamic;
	/**
		Alias for field number 13
	**/
	public var nvidia_gpu_models : Dynamic;
	/**
		Alias for field number 6
	**/
	public var os : Dynamic;
	/**
		Alias for field number 16
	**/
	public var pip_packages : Dynamic;
	/**
		Alias for field number 15
	**/
	public var pip_version : Dynamic;
	/**
		Alias for field number 9
	**/
	public var python_platform : Dynamic;
	/**
		Alias for field number 8
	**/
	public var python_version : Dynamic;
	/**
		Alias for field number 0
	**/
	public var torch_version : Dynamic;
}