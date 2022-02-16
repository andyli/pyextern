/* This file is generated, do not edit! */
package torch.utils.benchmark.utils.valgrind_wrapper.timer_interface;
@:pythonImport("torch.utils.benchmark.utils.valgrind_wrapper.timer_interface", "_ValgrindWrapper") extern class _ValgrindWrapper {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
	static public function _construct_script(task_spec:Dynamic, globals:Dynamic, number:Dynamic, repeats:Dynamic, collect_baseline:Dynamic, error_log:Dynamic, stat_log:Dynamic, bindings:Dynamic):Dynamic;
	/**
		Core invocation method for Callgrind collection.
		
		Valgrind operates by effectively replacing the CPU with an emulated
		version which allows it to instrument any code at the cost of severe
		performance degradation. This has the practical effect that in order
		to collect Callgrind statistics, a new process has to be created
		running under `valgrind`. The steps for this process are:
		
		1) Create a scratch directory.
		2) Codegen a run script. (_ValgrindWrapper._construct_script)
		    Inside the run script:
		        * Validate that Python and torch match the parent process
		        * Validate that it is indeed running under valgrind
		        * Execute `setup` and warm up `stmt`
		        * Begin collecting stats
		        * Run the `stmt` loop
		        * Stop collecting stats
		3) Parse the run results.
		4) Cleanup the scratch directory.
	**/
	public function _invoke(task_spec:Dynamic, globals:Dynamic, number:Dynamic, repeats:Dynamic, collect_baseline:Dynamic, is_python:Dynamic, retain_out_file:Dynamic):Dynamic;
	public function _validate():Dynamic;
	/**
		Collect stats, and attach a reference run which can be used to filter interpreter overhead.
	**/
	public function collect_callgrind(task_spec:Dynamic, globals:Dynamic, number:Dynamic, repeats:Dynamic, collect_baseline:Dynamic, is_python:Dynamic, retain_out_file:Dynamic):Dynamic;
}