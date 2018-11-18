/* This file is generated, do not edit! */
package theano.gof.cc;
@:pythonImport("theano.gof.cc", "DualLinker") extern class DualLinker {
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
		Initialize a DualLinker.
		
		The checker argument must be a function that takes two lists
		of length 1. The first one passed will contain the output
		computed by PerformLinker and the second one the output
		computed by OpWiseCLinker. The checker should compare the data
		fields of the two variables to see if they match. By default,
		DualLinker uses ==. A custom checker can be provided to
		compare up to a certain error tolerance.
		
		If a mismatch occurs, the checker should raise an exception to
		halt the computation. If it does not, the computation will
		carry on and errors will snowball. The checker can sidestep
		the problem by fiddling with the data, but it should be
		careful not to share data between the two outputs (or inplace
		operations that use them will interfere).
		
		no_recycling can contain a list of Variables that belong to the fgraph.
		If a Variable is in no_recycling, CLinker will clear the output storage
		associated to it during the computation (to avoid reusing it).
	**/
	@:native("__init__")
	public function ___init__(?checker:Dynamic, ?schedule:Dynamic):Dynamic;
	/**
		Initialize a DualLinker.
		
		The checker argument must be a function that takes two lists
		of length 1. The first one passed will contain the output
		computed by PerformLinker and the second one the output
		computed by OpWiseCLinker. The checker should compare the data
		fields of the two variables to see if they match. By default,
		DualLinker uses ==. A custom checker can be provided to
		compare up to a certain error tolerance.
		
		If a mismatch occurs, the checker should raise an exception to
		halt the computation. If it does not, the computation will
		carry on and errors will snowball. The checker can sidestep
		the problem by fiddling with the data, but it should be
		careful not to share data between the two outputs (or inplace
		operations that use them will interfere).
		
		no_recycling can contain a list of Variables that belong to the fgraph.
		If a Variable is in no_recycling, CLinker will clear the output storage
		associated to it during the computation (to avoid reusing it).
	**/
	public function new(?checker:Dynamic, ?schedule:Dynamic):Void;
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
	/**
		Update/tie self with fgraph
	**/
	public function accept(fgraph:Dynamic, ?no_recycling:Dynamic, ?profile:Dynamic):Dynamic;
	public function clone(?allow_gc:Dynamic):Dynamic;
	/**
		Returns a function that takes values corresponding to the inputs of the
		fgraph used by this L{Linker} and returns values corresponding the the
		outputs of that fgraph. If inplace is True, the calculations will
		operate in the same storage the fgraph uses, else independent storage
		will be allocated for the function.
		
		Example
		-------
		e = x + y
		fgraph = FunctionGraph([x, y], [e])
		fn = MyLinker(fgraph).make_function(inplace)
		print fn(1.0, 2.0) # 3.0
		print e.data # 3.0 iff inplace == True (else unknown)
		
		If unpack_single is True (default) and that the function has only one
		output, then that output will be returned. Else, a list or tuple of
		length 1 will be returned.
	**/
	public function make_function(?unpack_single:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compiles this linker's fgraph and returns a function to perform the
		computations
	**/
	public function make_thunk(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function schedule(fgraph:Dynamic):Dynamic;
}