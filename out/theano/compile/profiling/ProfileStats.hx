/* This file is generated, do not edit! */
package theano.compile.profiling;
@:pythonImport("theano.compile.profiling", "ProfileStats") extern class ProfileStats {
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
	public function ___init__(?atexit_print:Dynamic, ?flag_time_thunks:Dynamic, ?gpu_checks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?atexit_print:Dynamic, ?flag_time_thunks:Dynamic, ?gpu_checks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var apply_callcount : Dynamic;
	static public var apply_cimpl : Dynamic;
	static public var apply_time : Dynamic;
	/**
		dict op -> total number of thunk calls
	**/
	public function class_callcount():Dynamic;
	/**
		dict op -> total number of nodes
	**/
	public function class_impl():Dynamic;
	/**
		dict op -> total number of nodes
	**/
	public function class_nodes():Dynamic;
	/**
		dict op -> total time on thunks
	**/
	public function class_time():Dynamic;
	static public var compile_time : Dynamic;
	/**
		dict op -> total time icluding the time for parents
	**/
	public function compute_total_times():Dynamic;
	static public var fct_call_time : Dynamic;
	static public var fct_callcount : Dynamic;
	/**
		node -> fill total time icluding its parents (returns nothing)
	**/
	public function fill_node_total_time(node:Dynamic, total_times:Dynamic):Dynamic;
	static public var import_time : Dynamic;
	static public var line_width : Dynamic;
	static public var linker_make_thunk_time : Dynamic;
	static public var linker_node_make_thunks : Dynamic;
	static public var linker_time : Dynamic;
	static public var message : Dynamic;
	static public var nb_nodes : Dynamic;
	/**
		dict op -> total number of thunk calls
	**/
	public function op_callcount():Dynamic;
	/**
		dict op -> 'C' or 'Py' depending how the op is implemented
	**/
	public function op_impl():Dynamic;
	/**
		dict op -> total number of nodes
	**/
	public function op_nodes():Dynamic;
	/**
		dict op -> total time on thunks
	**/
	public function op_time():Dynamic;
	static public var optimizer_profile : Dynamic;
	static public var optimizer_time : Dynamic;
	public function print_tips(file:Dynamic):Dynamic;
	/**
		Ignore previous function call
	**/
	public function reset():Dynamic;
	public function summary(?file:Dynamic, ?n_ops_to_print:Dynamic, ?n_apply_to_print:Dynamic):Dynamic;
	public function summary_class(?file:Dynamic, ?N:Dynamic):Dynamic;
	public function summary_function(file:Dynamic):Dynamic;
	public function summary_globals(file:Dynamic):Dynamic;
	public function summary_memory(file:Dynamic, ?N:Dynamic):Dynamic;
	public function summary_nodes(?file:Dynamic, ?N:Dynamic):Dynamic;
	public function summary_ops(?file:Dynamic, ?N:Dynamic):Dynamic;
	static public var validate_time : Dynamic;
	static public var variable_shape : Dynamic;
	static public var variable_strides : Dynamic;
	static public var vm_call_time : Dynamic;
}