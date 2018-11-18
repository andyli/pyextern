/* This file is generated, do not edit! */
package theano.tensor.opt;
@:pythonImport("theano.tensor.opt", "Canonizer") extern class Canonizer {
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
	public function ___init__(main:Dynamic, inverse:Dynamic, reciprocal:Dynamic, calculate:Dynamic, ?use_reciprocal:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(main:Dynamic, inverse:Dynamic, reciprocal:Dynamic, calculate:Dynamic, ?use_reciprocal:Dynamic):Void;
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
		If this local optimization wants to add some requirements to the
		fgraph, this is the place to do it.
	**/
	public function add_requirements(fgraph:Dynamic):Dynamic;
	public function add_simplifier(simplifier:Dynamic, reason:Dynamic):Dynamic;
	/**
		Returns
		-------
		object
		    A numeric constant if v is a Constant or, well, a
		    numeric constant. If v is a plain Variable, returns None.
	**/
	static public function get_constant(v:Dynamic):Dynamic;
	/**
		This extract two lists, num and denum, such that the input is:
		self.inverse(self.main(\*num), self.main(\*denum)). It returns
		the two lists in a (num, denum) pair.
		
		For example, for main, inverse and reciprocal = \*, / and inv(),
		
		| input -> returned value (num, denum)
		
		| x*y -> ([x, y], [])
		| inv(x) -> ([], [x])
		| inv(x) * inv(y) -> ([], [x, y])
		| x*y/z -> ([x, y], [z])
		| log(x) / y * (z + x) / y -> ([log(x), z + x], [y, y])
		| (((a / b) * c) / d) -> ([a, c], [b, d])
		| a / (b / c) -> ([a, c], [b])
		| log(x) -> ([log(x)], [])
		| x**y -> ([x**y], [])
		| x * y * z -> ([x, y, z], [])
	**/
	public function get_num_denum(input:Dynamic):Dynamic;
	/**
		Utility function which takes two lists, num and denum, and
		returns something which is equivalent to inverse(main(\*num),
		main(\*denum)), but depends on the length of num and the length
		of denum (in order to minimize the number of operations).
		
		Let n = len(num) and d = len(denum):
		
		| n=0, d=0: neutral element (given by self.calculate([], []))
		|           (for example, this would be 0 if main is addition
		|           and 1 if main is multiplication)
		| n=1, d=0: num[0]
		| n=0, d=1: reciprocal(denum[0])
		| n=1, d=1: inverse(num[0], denum[0])
		| n=0, d>1: reciprocal(main(\*denum))
		| n>1, d=0: main(\*num)
		| n=1, d>1: inverse(num[0], main(\*denum))
		| n>1, d=1: inverse(main(\*num), denum[0])
		| n>1, d>1: inverse(main(\*num), main(\*denum))
		
		Given the values of n and d to which they are associated, all
		of the above are equivalent to:
		inverse(main(\*num), main(\*denum))
	**/
	public function merge_num_denum(num:Dynamic, denum:Dynamic):Dynamic;
	public function print_summary(?stream:Dynamic, ?level:Dynamic, ?depth:Dynamic):Dynamic;
	/**
		Shorthand for:
		
		.. code-block:: python
		
		    self.simplify_constants(*self.simplify_factors(num, denum))
	**/
	public function simplify(num:Dynamic, denum:Dynamic, out_type:Dynamic):Dynamic;
	/**
		Find all constants and put them together into a single constant.
		
		Finds all constants in orig_num and orig_denum (using
		get_constant) and puts them together into a single
		constant. The constant is inserted as the first element of the
		numerator. If the constant is the neutral element, it is
		removed from the numerator.
		
		Examples
		--------
		Let main be multiplication:
		
		| [2, 3, x], [] -> [6, x], []
		| [x, y, 2], [4, z] -> [0.5, x, y], [z]
		| [x, 2, y], [z, 2] -> [x, y], [z]
	**/
	public function simplify_constants(orig_num:Dynamic, orig_denum:Dynamic, ?out_type:Dynamic):Dynamic;
	/**
		For any Variable r which is both in num and denum, removes it
		from both lists. Modifies the lists inplace. Returns the
		modified lists. For example:
		
		| [x], [x] -> [], []
		| [x, y], [x] -> [y], []
		| [a, b], [c, d] -> [a, b], [c, d]
	**/
	public function simplify_factors(num:Dynamic, denum:Dynamic):Dynamic;
	/**
		Return the list of op classes that this opt applies to.
		
		Return None to apply to all nodes.
	**/
	public function tracks():Dynamic;
	/**
		Transform a subgraph whose output is `node`.
		
		Subclasses should implement this function so that it returns one of two
		kinds of things:
		
		- False to indicate that no optimization can be applied to this `node`;
		  or
		- <list of variables> to use in place of `node`'s outputs in the
		  greater graph.
		- dict(old variables -> new variables). A dictionary that map
		  from old variables to new variables to replace.
		
		Parameters
		----------
		node : an Apply instance
	**/
	public function transform(node:Dynamic):Dynamic;
}