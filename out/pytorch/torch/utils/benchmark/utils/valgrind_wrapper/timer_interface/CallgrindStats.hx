/* This file is generated, do not edit! */
package torch.utils.benchmark.utils.valgrind_wrapper.timer_interface;
@:pythonImport("torch.utils.benchmark.utils.valgrind_wrapper.timer_interface", "CallgrindStats") extern class CallgrindStats {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __dataclass_fields__ : Dynamic;
	static public var __dataclass_params__ : Dynamic;
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
	@:native("__init__")
	public function ___init__(task_spec:Dynamic, number_per_run:Dynamic, built_with_debug_symbols:Dynamic, baseline_inclusive_stats:Dynamic, baseline_exclusive_stats:Dynamic, stmt_inclusive_stats:Dynamic, stmt_exclusive_stats:Dynamic, stmt_callgrind_out:Dynamic):Dynamic;
	public function new(task_spec:Dynamic, number_per_run:Dynamic, built_with_debug_symbols:Dynamic, baseline_inclusive_stats:Dynamic, baseline_exclusive_stats:Dynamic, stmt_inclusive_stats:Dynamic, stmt_exclusive_stats:Dynamic, stmt_callgrind_out:Dynamic):Void;
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
		Strip library names and some prefixes from function strings.
		
		When comparing two different sets of instruction counts, on stumbling
		block can be path prefixes. Callgrind includes the full filepath
		when reporting a function (as it should). However, this can cause
		issues when diffing profiles. If a key component such as Python
		or PyTorch was built in separate locations in the two profiles, which
		can result in something resembling::
		
		    23234231 /tmp/first_build_dir/thing.c:foo(...)
		     9823794 /tmp/first_build_dir/thing.c:bar(...)
		      ...
		       53453 .../aten/src/Aten/...:function_that_actually_changed(...)
		      ...
		     -9823794 /tmp/second_build_dir/thing.c:bar(...)
		    -23234231 /tmp/second_build_dir/thing.c:foo(...)
		
		Stripping prefixes can ameliorate this issue by regularizing the
		strings and causing better cancellation of equivilent call sites
		when diffing.
	**/
	public function as_standardized():Dynamic;
	/**
		Returns the total number of instructions executed.
		
		See `FunctionCounts.denoise()` for an explation of the `denoise` arg.
	**/
	public function counts(?denoise:Dynamic):Dynamic;
	/**
		Diff two sets of counts.
		
		One common reason to collect instruction counts is to determine the
		the effect that a particular change will have on the number of instructions
		needed to perform some unit of work. If a change increases that number, the
		next logical question is "why". This generally involves looking at what part
		if the code increased in instruction count. This function automates that
		process so that one can easily diff counts on both an inclusive and
		exclusive basis.
	**/
	public function delta(other:Dynamic, ?inclusive:Dynamic):Dynamic;
	/**
		Returns detailed function counts.
		
		Conceptually, the FunctionCounts returned can be thought of as a tuple
		of (count, path_and_function_name) tuples.
		
		`inclusive` matches the semantics of callgrind. If True, the counts
		include instructions executed by children. `inclusive=True` is useful
		for identifying hot spots in code; `inclusive=False` is useful for
		reducing noise when diffing counts from two different runs. (See
		CallgrindStats.delta(...) for more details)
	**/
	public function stats(?inclusive:Dynamic):Dynamic;
}