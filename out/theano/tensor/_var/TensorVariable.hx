/* This file is generated, do not edit! */
package theano.tensor._var;
@:pythonImport("theano.tensor.var", "TensorVariable") extern class TensorVariable {
	public var T : Dynamic;
	public function __abs__():Dynamic;
	public function __add__(other:Dynamic):Dynamic;
	public function __and__(other:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	public function __bool__():Dynamic;
	static public function __class__(name:Dynamic, bases:Dynamic, dct:Dynamic):Dynamic;
	static public var __count__ : Dynamic;
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
	public function __div__(other:Dynamic):Dynamic;
	public function __divmod__(other:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	static public function __dot__(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __floordiv__(other:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(other:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(args:Dynamic):Dynamic;
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(other:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(type:Dynamic, ?owner:Dynamic, ?index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(type:Dynamic, ?owner:Dynamic, ?index:Dynamic, ?name:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __invert__():Dynamic;
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(other:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(other:Dynamic):Dynamic;
	public function __mod__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __nonzero__():Dynamic;
	public function __or__(other:Dynamic):Dynamic;
	public function __pow__(other:Dynamic):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __rand__(other:Dynamic):Dynamic;
	public function __rdiv__(other:Dynamic):Dynamic;
	public function __rdivmod__(other:Dynamic):Dynamic;
	static public function __rdot__(right:Dynamic, left:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a repr of the Variable.
		
		Return a printable name or description of the Variable. If
		config.print_test_value is True it will also print the test_value if
		any.
	**/
	public function __repr__(?firstPass:Dynamic):Dynamic;
	/**
		Return a repr of the test value.
		
		Return a printable representation of the test value. It can be
		overridden by classes with non printable test_value to provide a
		suitable representation of the test_value.
	**/
	public function __repr_test_value__():Dynamic;
	public function __rfloordiv__(other:Dynamic):Dynamic;
	public function __rmod__(other:Dynamic):Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __ror__(other:Dynamic):Dynamic;
	public function __rpow__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	public function __rxor__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __slots__ : Dynamic;
	/**
		Return a str representation of the Variable.
		
		        
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
	public function __truediv__(other:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function __xor__(other:Dynamic):Dynamic;
	static public var _is_nonzero : Dynamic;
	public function all(?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	public function any(?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function append_construction_observer(observer:Dynamic):Dynamic;
	public function arccos():Dynamic;
	public function arccosh():Dynamic;
	public function arcsin():Dynamic;
	public function arcsinh():Dynamic;
	public function arctan():Dynamic;
	public function arctanh():Dynamic;
	/**
		See `theano.tensor.argmax`.
	**/
	public function argmax(?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		See `theano.tensor.argmin`.
	**/
	public function argmin(?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		See `theano.tensor.argsort`.
	**/
	public function argsort(?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
	public function astype(dtype:Dynamic):Dynamic;
	public var broadcastable : Dynamic;
	public function ceil():Dynamic;
	/**
		Construct an array from an index array and a set of arrays to choose
		from.
	**/
	public function choose(choices:Dynamic, ?out:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Clip (limit) the values in an array.
	**/
	public function clip(a_min:Dynamic, a_max:Dynamic):Dynamic;
	/**
		Return a new Variable like self.
		
		Returns
		-------
		Variable instance
		    A new Variable instance (or subclass instance) with no owner or
		    index.
		
		Notes
		-----
		Tags are copied to the returned instance.
		
		Name is copied to the returned instance.
	**/
	public function clone():Dynamic;
	/**
		Return selected slices only.
	**/
	public function compress(a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		See `theano.tensor.conj`.
	**/
	public function conj():Dynamic;
	/**
		See `theano.tensor.conj`.
	**/
	public function conjugate():Dynamic;
	static public var construction_observers : Dynamic;
	/**
		Return a symbolic copy and optionally assign a name.
		
		Does not copy the tags.
	**/
	public function copy(?name:Dynamic):Dynamic;
	public function cos():Dynamic;
	public function cosh():Dynamic;
	public function cumprod(?axis:Dynamic):Dynamic;
	public function cumsum(?axis:Dynamic):Dynamic;
	public function deg2rad():Dynamic;
	public function diagonal(?offset:Dynamic, ?axis1:Dynamic, ?axis2:Dynamic):Dynamic;
	/**
		Reorder the dimensions of this variable, optionally inserting
		broadcasted dimensions.
		
		Parameters
		----------
		pattern
		    List/tuple of int mixed with 'x' for broadcastable dimensions.
		
		Examples
		--------
		For example, to create a 3D view of a [2D] matrix, call
		``dimshuffle([0,'x',1])``.  This will create a 3D view such that the
		middle dimension is an implicit broadcasted dimension.  To do the same
		thing on the transpose of that matrix, call ``dimshuffle([1, 'x', 0])``.
		
		Notes
		-----
		This function supports the pattern passed as a tuple, or as a
		variable-length argument (e.g. ``a.dimshuffle(pattern)`` is equivalent
		to ``a.dimshuffle(*pattern)`` where ``pattern`` is a list/tuple of ints
		mixed with 'x' characters).
		
		See Also
		--------
		DimShuffle
	**/
	public function dimshuffle(?pattern:python.VarArgs<Dynamic>):Dynamic;
	static public function dot(left:Dynamic, right:Dynamic):Dynamic;
	public var dtype : Dynamic;
	/**
		Evaluates this variable.
		
		Parameters
		----------
		inputs_to_values
		    A dictionary mapping theano Variables to values.
		
		Examples
		--------
		
		>>> import numpy as np
		>>> import theano.tensor as T
		>>> x = T.dscalar('x')
		>>> y = T.dscalar('y')
		>>> z = x + y
		>>> np.allclose(z.eval({x : 16.3, y : 12.1}), 28.4)
		True
		
		We passed :func:`eval` a dictionary mapping symbolic theano
		variables to the values to substitute for them, and it returned
		the numerical value of the expression.
		
		Notes
		-----
		
		`eval` will be slow the first time you call it on a variable --
		it needs to call :func:`function` to compile the expression behind
		the scenes. Subsequent calls to :func:`eval` on that same variable
		will be fast, because the variable caches the compiled function.
		
		This way of computing has more overhead than a normal Theano
		function, so don't use it too much in real scripts.
	**/
	public function eval(?inputs_to_values:Dynamic):Dynamic;
	public function exp():Dynamic;
	public function exp2():Dynamic;
	public function expm1():Dynamic;
	/**
		Fill inputted tensor with the assigned value.
	**/
	public function fill(value:Dynamic):Dynamic;
	public function flatten(?ndim:Dynamic):Dynamic;
	public function floor():Dynamic;
	/**
		Return a list of the parents of this node.
		Should return a copy--i.e., modifying the return
		value should not modify the graph structure.
	**/
	public function get_parents():Dynamic;
	public function get_scalar_constant_value():Dynamic;
	/**
		Return imaginary component of complex-valued tensor `z`
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	public var imag : Dynamic;
	public function log():Dynamic;
	public function log10():Dynamic;
	public function log1p():Dynamic;
	public function log2():Dynamic;
	/**
		See `theano.tensor.max`.
	**/
	public function max(?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		See `theano.tensor.mean`.
	**/
	public function mean(?axis:Dynamic, ?dtype:Dynamic, ?keepdims:Dynamic, ?acc_dtype:Dynamic):Dynamic;
	/**
		See `theano.tensor.min`.
	**/
	public function min(?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	public var ndim : Dynamic;
	/**
		See `theano.tensor.nonzero`.
	**/
	public function nonzero(?return_matrix:Dynamic):Dynamic;
	/**
		See `theano.tensor.nonzero_values`.
	**/
	public function nonzero_values():Dynamic;
	public function norm(L:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function notify_construction_observers(instance:Dynamic):Dynamic;
	static public function ones_like(model:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		See `theano.tensor.prod`.
	**/
	public function prod(?axis:Dynamic, ?dtype:Dynamic, ?keepdims:Dynamic, ?acc_dtype:Dynamic):Dynamic;
	/**
		See 'theano.tensor.ptp'.
	**/
	public function ptp(?axis:Dynamic):Dynamic;
	public function rad2deg():Dynamic;
	public function ravel():Dynamic;
	/**
		Return real component of complex-valued tensor `z`
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	public var real : Dynamic;
	static public function remove_construction_observer(observer:Dynamic):Dynamic;
	/**
		See `theano.tensor.repeat`.
	**/
	public function repeat(repeats:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return a reshaped view/copy of this variable.
		
		Parameters
		----------
		shape
		    Something that can be converted to a symbolic vector of integers.
		ndim
		    The length of the shape. Passing None here means for
		    Theano to try and guess the length of `shape`.
		
		
		.. warning:: This has a different signature than numpy's
		             ndarray.reshape!
		             In numpy you do not need to wrap the shape arguments
		             in a tuple, in theano you do need to.
	**/
	public function reshape(shape:Dynamic, ?ndim:Dynamic):Dynamic;
	/**
		See `theano.tensor.round`.
	**/
	public function round(?mode:Dynamic):Dynamic;
	public function searchsorted(v:Dynamic, ?side:Dynamic, ?sorter:Dynamic):Dynamic;
	public var shape : Dynamic;
	public function sin():Dynamic;
	public function sinh():Dynamic;
	public var size : Dynamic;
	/**
		See `theano.tensor.sort`.
	**/
	public function sort(?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
	public function sqrt():Dynamic;
	/**
		Remove broadcastable dimensions from the shape of an array.
		
		It returns the input array, but with the broadcastable dimensions
		removed. This is always `x` itself or a view into `x`.
	**/
	public function squeeze():Dynamic;
	/**
		See `theano.tensor.std`.
	**/
	public function std(?axis:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic, ?corrected:Dynamic):Dynamic;
	/**
		See `theano.tensor.sum`.
	**/
	public function sum(?axis:Dynamic, ?dtype:Dynamic, ?keepdims:Dynamic, ?acc_dtype:Dynamic):Dynamic;
	/**
		Return 'tensor.swapaxes(self, axis1, axis2).
		
		If a matrix is provided with the right axes, its transpose
		will be returned.
	**/
	public function swapaxes(axis1:Dynamic, axis2:Dynamic):Dynamic;
	public function take(indices:Dynamic, ?axis:Dynamic, ?mode:Dynamic):Dynamic;
	public function tan():Dynamic;
	public function tanh():Dynamic;
	public function trace():Dynamic;
	/**
		If `target` is `'cpu'` this will transfer to a TensorType (if
		not already one).  Other types may define additional targets.
		
		Parameters
		----------
		target : str
		    The desired location of the output variable
	**/
	public function transfer(target:Dynamic):Dynamic;
	/**
		Returns
		-------
		object
		    `tensor.transpose(self, axes)` or `tensor.transpose(self, axes[0])`.
		
		If only one `axes` argument is provided and it is iterable, then it is
		assumed to be the entire axes tuple, and passed intact to
		tensor.transpose.
	**/
	public function transpose(?axes:python.VarArgs<Dynamic>):Dynamic;
	public function trunc():Dynamic;
	/**
		See `theano.tensor.var`.
	**/
	@:native("var")
	public function _var(?axis:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic, ?corrected:Dynamic):Dynamic;
	static public function zeros_like(model:Dynamic, ?dtype:Dynamic):Dynamic;
}