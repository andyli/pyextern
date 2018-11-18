/* This file is generated, do not edit! */
package theano.tensor.sort;
@:pythonImport("theano.tensor.sort") extern class Sort_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks if a tensor variable is scalar, raise ValueError otherwise
	**/
	static public function _check_tensor_is_scalar(_var:Dynamic):Dynamic;
	static public function _topk_py_impl(op:Dynamic, x:Dynamic, k:Dynamic, axis:Dynamic, idx_dtype:Dynamic):Dynamic;
	static public function _variable_is_none(_var:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function arange(start:Dynamic, ?stop:Dynamic, ?step:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns the indices that would sort an array.
		
		Perform an indirect sort along the given axis using the algorithm
		specified by the kind keyword.  It returns an array of indices of
		the same shape as a that index data along the given axis in sorted
		order.
	**/
	static public function argsort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Returns the indices of k-largest elements along an axis.
		
		Parameters
		----------
		
		x: tensor instance
		
		kth: integer constant/variable
		    Must not be 0. If negative, gives k-smallest elements instead.
		
		sorted: bool
		    NOTE: NOT IMPLEMENTED YET, USE ``False`` FOR NOW.
		    Defaults to ``True``
		
		    If True, the result array of corresponding indices would be sorted in descending order.
		
		
		axis: integer, tuple/list of integers, or ``None``
		    Upon which axis shall the operation be performed on.
		    If ``None``, works on flattened array.
		
		idx_dtype: string
		    Specify output dtype, defaults to ``int64``, must be integer type.
		
		Returns
		-------
		Tensor variable with dtype specified in `idx_dtype`.
		
		Notes
		-----
		- ``sorted=True`` is not supported yet.
		
		- If the top-k-th value is not unique, we cannot guarantee the output
		  indices are deterministically chosen.
	**/
	static public function argtopk(x:Dynamic, kth:Dynamic, ?axis:Dynamic, ?sorted:Dynamic, ?idx_dtype:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return an un-computable symbolic variable of type `x.type`.
		
		If any call to tensor.grad results in an expression containing this
		un-computable variable, an exception (GradUndefinedError) will be
		raised indicating that the gradient on the
		`x_pos`'th input of `op` is mathematically undefined. Likewise if
		any call to theano.function involves this variable.
		
		Optionally adds a comment to the exception explaining why this
		gradient is not defined.
	**/
	static public function grad_undefined(op:Dynamic, x_pos:Dynamic, x:Dynamic, ?comment:Dynamic):Dynamic;
	/**
		elementwise multiplication
		
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
	static public function mul(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return x with the given subtensor overwritten by y.
		
		Parameters
		----------
		x
		    Symbolic variable for the lvalue of = operation.
		y
		    Symbolic variable for the rvalue of = operation.
		tolerate_inplace_aliasing
		    See inc_subtensor for documentation.
		
		Examples
		--------
		To replicate the numpy expression "r[10:] = 5", type
		
		>>> r = ivector()
		>>> new_r = set_subtensor(r[10:], 5)
	**/
	static public function set_subtensor(x:Dynamic, y:Dynamic, ?inplace:Dynamic, ?tolerate_inplace_aliasing:Dynamic):Dynamic;
	/**
		Parameters
		----------
		a : Tensor
		    Tensor to be sorted
		axis : Tensor
		    Axis along which to sort. If None, the array is flattened before
		    sorting.
		kind : {'quicksort', 'mergesort', 'heapsort'}, optional
		    Sorting algorithm. Default is 'quicksort'.
		order : list, optional
		    When `a` is a structured array, this argument specifies which
		    fields to compare first, second, and so on. This list does not
		    need to include all of the fields.
		
		Returns
		-------
		array
		    A sorted copy of an array.
	**/
	static public function sort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Returns the k-largest elements along an axis.
		
		Parameters
		----------
		
		x: tensor instance
		
		kth: integer constant/variable
		    Must not be 0. If negative, gives k-smallest elements instead.
		
		axis: integer or ``None``
		    Upon which axis shall the operation be performed on.
		    If ``None``, works on flattened array.
		
		sorted: bool
		    NOTE: NOT IMPLEMENTED YET, USE ``False`` FOR NOW.
		    Defaults to ``True``
		
		    If True, the result array would be sorted in descending order.
		
		idx_dtype: string
		    Specify output dtype used in indices, defaults to ``int64``, must be integer type.
		    This option is here because indices are needed for gradient.
		
		Returns
		-------
		Tensor variable with same dtype as `x`.
		
		Notes
		-----
		- ``sorted=True`` is not supported yet.
	**/
	static public function topk(x:Dynamic, kth:Dynamic, ?axis:Dynamic, ?sorted:Dynamic, ?idx_dtype:Dynamic):Dynamic;
	/**
		Returns the results of both topk() and argtopk() in one Op.
		
		See the respective documentation for details.
		
		Returns
		-------
		tuple: (values, indices)
	**/
	static public function topk_and_argtopk(x:Dynamic, kth:Dynamic, ?axis:Dynamic, ?sorted:Dynamic, ?idx_dtype:Dynamic):Dynamic;
}