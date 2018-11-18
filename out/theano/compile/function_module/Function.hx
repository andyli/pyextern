/* This file is generated, do not edit! */
package theano.compile.function_module;
@:pythonImport("theano.compile.function_module", "Function") extern class Function {
	/**
		Evaluates value of a function on given arguments.
		
		Parameters
		----------
		args : list
		    List of inputs to the function. All inputs are required, even when
		    some of them are not necessary to calculate requested subset of
		    outputs.
		
		kwargs : dict
		    The function inputs can be passed as keyword argument. For this, use
		    the name of the input or the input instance as the key.
		
		    Keyword argument ``output_subset`` is a list of either indices of the
		    function's outputs or the keys belonging to the `output_keys` dict
		    and represent outputs that are requested to be calculated. Regardless
		    of the presence of ``output_subset``, the updates are always calculated
		    and processed. To disable the updates, you should use the ``copy``
		    method with ``delete_updates=True``.
		
		Returns
		-------
		list
		    List of outputs on indices/keys from ``output_subset`` or all of them,
		    if ``output_subset`` is not passed.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __contains__(item:Dynamic):Dynamic;
	/**
		Copy a function. Copied function have separate intermediate
		storages and output storages with original function
	**/
	public function __copy__():Dynamic;
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
	public function __getitem__(item:Dynamic):Dynamic;
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
	public function ___init__(fn:Dynamic, input_storage:Dynamic, output_storage:Dynamic, indices:Dynamic, outputs:Dynamic, defaults:Dynamic, unpack_single:Dynamic, return_none:Dynamic, output_keys:Dynamic, maker:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(fn:Dynamic, input_storage:Dynamic, output_storage:Dynamic, indices:Dynamic, outputs:Dynamic, defaults:Dynamic, unpack_single:Dynamic, return_none:Dynamic, output_keys:Dynamic, maker:Dynamic, ?name:Dynamic):Void;
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
	public function __setitem__(item:Dynamic, value:Dynamic):Dynamic;
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
	/**
		dictionary-like access to the containers associated with Variables
	**/
	public var container : Dynamic;
	/**
		Copy this function. Copied function will have separated maker and
		fgraph with original function. User can choose whether to separate
		storage by changing the share_memory arguments.
		
		Parameters
		----------
		share_memory : boolean
		    When True, two function share intermediate storages(storages except input and
		    output storages). Otherwise two functions will only share partial
		    storages and same maker. If two functions share memory and
		    allow_gc=False, this will increase executing speed and save memory.
		
		swap : dict
		    Dictionary that map old SharedVariables to new
		    SharedVariables. Default is None.
		    NOTE: The shared variable swap in only done in the new returned
		    function, not in the user graph.
		
		delete_updates : boolean
		    If True, Copied function will not have updates.
		name : string
		    If provided, will be the name of the new
		    Function. Otherwise, it will be old + " copy"
		
		profile :
		    as theano.function profile parameter
		
		Returns
		-------
		theano.Function
		    Copied theano.Function
	**/
	public function copy(?share_memory:Dynamic, ?swap:Dynamic, ?delete_updates:Dynamic, ?name:Dynamic, ?profile:Dynamic):Dynamic;
	static public var defaults : Dynamic;
	static public var finder : Dynamic;
	static public var fn : Dynamic;
	/**
		When allow_gc = False, clear the Variables in storage_map
	**/
	public function free():Dynamic;
	/**
		Return the shared variable read or updated by by this function.
	**/
	public function get_shared():Dynamic;
	static public var indices : Dynamic;
	static public var input_storage : Dynamic;
	static public var inv_finder : Dynamic;
	static public var maker : Dynamic;
	static public var output_storage : Dynamic;
	static public var pickle_aliased_memory_strategy : Dynamic;
	static public var return_none : Dynamic;
	public function sync_shared():Dynamic;
	static public var unpack_single : Dynamic;
	/**
		dictionary-like access to the values associated with Variables
	**/
	public var value : Dynamic;
}