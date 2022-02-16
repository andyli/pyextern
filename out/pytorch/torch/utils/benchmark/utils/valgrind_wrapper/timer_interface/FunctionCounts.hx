/* This file is generated, do not edit! */
package torch.utils.benchmark.utils.valgrind_wrapper.timer_interface;
@:pythonImport("torch.utils.benchmark.utils.valgrind_wrapper.timer_interface", "FunctionCounts") extern class FunctionCounts {
	public function __add__(other:Dynamic):Dynamic;
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
	public function __getitem__(item:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	@:native("__init__")
	public function ___init__(_data:Dynamic, inclusive:Dynamic, ?truncate_rows:Dynamic, ?_linewidth:Dynamic):Dynamic;
	public function new(_data:Dynamic, inclusive:Dynamic, ?truncate_rows:Dynamic, ?_linewidth:Dynamic):Void;
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
	public function __mul__(other:Dynamic):Dynamic;
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
	public function __sub__(other:Dynamic):Dynamic;
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
	static public function _from_dict(counts:Dynamic, inclusive:Dynamic):Dynamic;
	static public var _linewidth : Dynamic;
	public function _merge(second:Dynamic, merge_fn:Dynamic):Dynamic;
	/**
		Remove known noisy instructions.
		
		Several instructions in the CPython interpreter are rather noisy. These
		instructions involve unicode to dictionary lookups which Python uses to
		map variable names. FunctionCounts is generally a content agnostic
		container, however this is sufficiently important for obtaining
		reliable results to warrant an exception.
	**/
	public function denoise():Dynamic;
	/**
		Keep only the elements where `filter_fn` applied to function name returns True.
	**/
	public function filter(filter_fn:Dynamic):Dynamic;
	public function sum():Dynamic;
	/**
		Apply `map_fn` to all of the function names.
		
		This can be used to regularize function names (e.g. stripping irrelevant
		parts of the file path), coalesce entries by mapping multiple functions
		to the same name (in which case the counts are added together), etc.
	**/
	public function transform(map_fn:Dynamic):Dynamic;
	static public var truncate_rows : Dynamic;
}