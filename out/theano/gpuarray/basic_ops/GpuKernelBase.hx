/* This file is generated, do not edit! */
package theano.gpuarray.basic_ops;
@:pythonImport("theano.gpuarray.basic_ops", "GpuKernelBase") extern class GpuKernelBase {
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _generate_kernel_cleanup(k:Dynamic):Dynamic;
	public function _generate_kernel_code(k:Dynamic):Dynamic;
	public function _generate_kernel_init(k:Dynamic, fail:Dynamic, ctx:Dynamic):Dynamic;
	public function _generate_kernel_vars(k:Dynamic):Dynamic;
	public function _generate_kernel_wrap(k:Dynamic):Dynamic;
	public function _generate_zeros(k:Dynamic):Dynamic;
	public function c_cleanup_code_struct(node:Dynamic, name:Dynamic):Dynamic;
	public function c_code_cache_version_apply(node:Dynamic):Dynamic;
	public function c_header_dirs():Dynamic;
	public function c_headers():Dynamic;
	public function c_init_code_struct(node:Dynamic, name:Dynamic, sub:Dynamic):Dynamic;
	public function c_support_code_apply(node:Dynamic, name:Dynamic):Dynamic;
	public function c_support_code_struct(node:Dynamic, name:Dynamic):Dynamic;
	public function get_gpu_context(node:Dynamic):Dynamic;
	public function get_gpu_context_c_name(params_c_name:Dynamic):Dynamic;
	public function get_params(node:Dynamic):Dynamic;
	/**
		This is the method to override. This should return an iterable
		of Kernel objects that describe the kernels this op will need.
	**/
	public function gpu_kernels(node:Dynamic, name:Dynamic):Dynamic;
	/**
		If you override :meth:`c_code_cache_version_apply`, call this
		method to have the version of the kernel support code.
		
		Parameters
		----------
		node : apply node
		    The node that we need the cache version for.
	**/
	public function kernel_version(node:Dynamic):Dynamic;
	static public function params_type(?name:Dynamic):Dynamic;
}