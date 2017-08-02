/* This file is generated, do not edit! */
package theano.gof.type;
@:pythonImport("theano.gof.type", "PureType") extern class PureType {
	/**
		A :term:`Constant` is a `Variable` with a `value` field that cannot be
		changed at runtime.
		
		Constant nodes make eligible numerous optimizations: constant inlining in
		C code, constant folding, etc.
		
		Notes
		-----
		The data field is filtered by what is provided in the constructor for the
		Constant's type field.
		
		WRITEME
	**/
	static public function Constant(type:Dynamic, data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A :term:`Variable` is a node in an expression graph that represents a
		variable.
		
		The inputs and outputs of every `Apply` (theano.gof.Apply) are `Variable`
		instances. The input and output arguments to create a `function` are also
		`Variable` instances. A `Variable` is like a strongly-typed variable in
		some other languages; each `Variable` contains a reference to a `Type`
		instance that defines the kind of value the `Variable` can take in a
		computation.
		
		A `Variable` is a container for four important attributes:
		
		- :literal:`type` a `Type` instance defining the kind of value this
		  `Variable` can have,
		
		- :literal:`owner` either None (for graph roots) or the `Apply` instance
		  of which `self` is an output,
		
		- :literal:`index` the integer such that :literal:`owner.outputs[index] is
		  this_variable` (ignored if `owner` is None),
		
		- :literal:`name` a string to use in pretty-printing and debugging.
		
		There are a few kinds of Variables to be aware of: A Variable which is the
		output of a symbolic computation has a reference to the Apply instance to
		which it belongs (property: owner) and the position of itself in the owner's
		output list (property: index).
		
		- `Variable` (this base type) is typically the output of a symbolic
		  computation.
		
		- `Constant` (a subclass) which adds a default and un-replaceable
		  :literal:`value`, and requires that owner is None.
		
		- `TensorVariable` subclass of Variable that represents a numpy.ndarray
		   object.
		
		- `TensorSharedVariable` Shared version of TensorVariable.
		
		- `SparseVariable` subclass of Variable that represents
		  a scipy.sparse.{csc,csr}_matrix object.
		
		- `CudaNdarrayVariable` subclass of Variable that represents our object on
		  the GPU that is a subset of numpy.ndarray.
		
		- `RandomVariable`.
		
		A Variable which is the output of a symbolic computation will have an owner
		not equal to None.
		
		Using the Variables' owner field and the Apply nodes' inputs fields, one can
		navigate a graph from an output all the way to the inputs. The opposite
		direction is not possible until a FunctionGraph has annotated the Variables
		with the clients field, ie, before the compilation process has begun a
		Variable does not know which Apply nodes take it as input.
		
		Parameters
		----------
		type : a Type instance
		    The type governs the kind of data that can be associated with this
		    variable.
		owner : None or Apply instance
		    The Apply instance which computes the value for this variable.
		index : None or int
		    The position of this Variable in owner.outputs.
		name : None or str
		    A string for pretty-printing and debugging.
		
		Examples
		--------
		
		.. code-block:: python
		
		    import theano
		    from theano import tensor
		
		    a = tensor.constant(1.5)        # declare a symbolic constant
		    b = tensor.fscalar()            # declare a symbolic floating-point scalar
		
		    c = a + b                       # create a simple expression
		
		    f = theano.function([b], [c])   # this works because a has a value associated with it already
		
		    assert 4.0 == f(2.5)            # bind 2.5 to an internal copy of b and evaluate an internal c
		
		    theano.function([a], [c])       # compilation error because b (required by c) is undefined
		
		    theano.function([a,b], [c])     # compilation error because a is constant, it can't be an input
		
		    d = tensor.value(1.5)           # create a value similar to the constant 'a'
		    e = d + b
		    theano.function([d,b], [e])     # this works.  d's default value of 1.5 is ignored.
		
		The python variables :literal:`a,b,c` all refer to instances of type
		`Variable`. The `Variable` refered to by `a` is also an instance of
		`Constant`.
		
		`compile.function` uses each `Apply` instance's `inputs` attribute together
		with each Variable's `owner` field to determine which inputs are necessary
		to compute the function's outputs.
	**/
	static public function Variable(type:Dynamic, ?owner:Dynamic, ?index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a new `Variable` instance of Type `self`.
		
		Parameters
		----------
		name : None or str
		    A pretty string for printing and debugging.
	**/
	public function __call__(?name:Dynamic):Dynamic;
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
	/**
		Patch variable so that its type will match self, if possible.
		
		If the variable can't be converted, this should return None.
		
		The conversion can only happen if the following implication is
		true for all possible `val`.
		
		  self.is_valid_value(val) => var.type.is_valid_value(val)
		
		For the majority of types this means that you can only have
		non-broadcastable dimensions become broadcastable and not the
		inverse.
		
		The default is to not convert anything which is always safe.
	**/
	public function convert_variable(_var:Dynamic):Dynamic;
	/**
		Required: Return data or an appropriately wrapped/converted data.
		
		Subclass implementation should raise a TypeError exception if
		the data is not of an acceptable type.
		
		If strict is True, the data returned must be the same as the
		data passed as an argument. If it is False, and allow_downcast
		is True, filter may cast it to an appropriate type. If
		allow_downcast is False, filter may only upcast it, not lose
		precision. If allow_downcast is None (default), the behaviour can be
		Type-dependent, but for now it means only Python floats can be
		downcasted, and only to floatX scalars.
		
		Raises
		------
		MethodNotDefined
		    Subclass doesn't implement this function.
	**/
	public function filter(data:Dynamic, ?strict:Dynamic, ?allow_downcast:Dynamic):Dynamic;
	/**
		Convert a symbolic variable into this Type, if compatible.
		
		For the moment, the only Types compatible with one another are
		TensorType and CudaNdarrayType, provided they have the same
		number of dimensions, same broadcasting pattern, and same dtype.
		
		If Types are not compatible, a TypeError should be raised.
	**/
	public function filter_variable(other:Dynamic, ?allow_convert:Dynamic):Dynamic;
	/**
		Required: Return True for any python object `a` that would be a
		legal value for a Variable of this Type.
	**/
	public function is_valid_value(a:Dynamic):Dynamic;
	public function make_constant(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a new `Variable` instance of Type `self`.
		
		Parameters
		----------
		name : None or str
		    A pretty string for printing and debugging.
	**/
	public function make_variable(?name:Dynamic):Dynamic;
	/**
		Optional: Return a message explaining the output of
		is_valid_value.
	**/
	public function value_validity_msg(a:Dynamic):Dynamic;
	/**
		Return True if a and b can be considered exactly equal.
		
		a and b are assumed to be valid values of this Type.
	**/
	public function values_eq(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Return True if a and b can be considered approximately equal.
		
		This function is used by theano debugging tools to decide
		whether two values are equivalent, admitting a certain amount
		of numerical instability. For example, for floating-point
		numbers this function should be an approximate comparison.
		
		By default, this does an exact comparison.
		
		Parameters
		----------
		a
		    A potential value for a Variable of this Type.
		
		b
		    A potential value for a Variable of this Type.
		
		Returns
		-------
		bool
	**/
	public function values_eq_approx(a:Dynamic, b:Dynamic):Dynamic;
}