/* This file is generated, do not edit! */
package theano.configparser;
@:pythonImport("theano.configparser", "TheanoConfigParser") extern class TheanoConfigParser {
	static public var DebugMode : Dynamic;
	static public var NanGuardMode : Dynamic;
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
	public function __str__(?print_doc:Dynamic):Dynamic;
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
	static public var _i_am_a_config_class : Dynamic;
	public var allow_gc : Dynamic;
	public var assert_no_cpu_op : Dynamic;
	public var base_compiledir : Dynamic;
	static public var blas : Dynamic;
	public var cache_optimizations : Dynamic;
	public var cast_policy : Dynamic;
	public var check_input : Dynamic;
	public var check_stack_trace : Dynamic;
	static public var cmodule : Dynamic;
	static public var compile : Dynamic;
	public var compiledir : Dynamic;
	public var compiledir_format : Dynamic;
	public var compute_test_value : Dynamic;
	public var compute_test_value_opt : Dynamic;
	public var contexts : Dynamic;
	static public var conv : Dynamic;
	static public var ctc : Dynamic;
	static public var cuda : Dynamic;
	public var cxx : Dynamic;
	public var cycle_detection : Dynamic;
	public var deterministic : Dynamic;
	public var device : Dynamic;
	static public var dnn : Dynamic;
	public var exception_verbosity : Dynamic;
	static public var experimental : Dynamic;
	public var floatX : Dynamic;
	public var force_device : Dynamic;
	static public var gcc : Dynamic;
	static public var gpu : Dynamic;
	static public var gpuarray : Dynamic;
	static public var gpuelemwise : Dynamic;
	public var init_gpu_device : Dynamic;
	public var int_division : Dynamic;
	static public var lib : Dynamic;
	public var linker : Dynamic;
	static public var magma : Dynamic;
	static public var metaopt : Dynamic;
	public var mode : Dynamic;
	public var nocleanup : Dynamic;
	static public var numpy : Dynamic;
	public var on_opt_error : Dynamic;
	public var on_shape_error : Dynamic;
	public var on_unused_input : Dynamic;
	public var openmp : Dynamic;
	public var openmp_elemwise_minsize : Dynamic;
	static public var optdb : Dynamic;
	public var optimizer : Dynamic;
	public var optimizer_excluding : Dynamic;
	public var optimizer_including : Dynamic;
	public var optimizer_requiring : Dynamic;
	public var optimizer_verbose : Dynamic;
	public var pickle_test_value : Dynamic;
	public var print_active_device : Dynamic;
	public var print_global_stats : Dynamic;
	public var print_test_value : Dynamic;
	public var profile : Dynamic;
	public var profile_memory : Dynamic;
	public var profile_optimizer : Dynamic;
	static public var profiling : Dynamic;
	public var reoptimize_unpickled_function : Dynamic;
	static public var scan : Dynamic;
	static public var tensor : Dynamic;
	static public var traceback : Dynamic;
	static public var unittests : Dynamic;
	public var unpickle_function : Dynamic;
	static public var vm : Dynamic;
	static public var warn : Dynamic;
	public var warn_float64 : Dynamic;
}