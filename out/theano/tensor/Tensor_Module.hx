/* This file is generated, do not edit! */
package theano.tensor;
@:pythonImport("theano.tensor") extern class Tensor_Module {
	/**
		Computes the L operation on `f` wrt to `wrt` at `eval_points`.
		
		Mathematically this stands for the jacobian of `f` wrt
		to `wrt` left muliplied by the eval points.
		
		Parameters
		----------
		f : :class:`~theano.gof.graph.Variable` or list of Variables
		    `f` stands for the output of the computational graph to which you
		    want to apply the L operator
		wrt : :class:`~theano.gof.graph.Variable` or list of Variables
		    variables for which you compute the L operator of the expression
		    described by `f`
		eval_points : :class:`~theano.gof.graph.Variable` or list of Variables
		    evalutation points for each of the variables in `f`
		
		Returns
		-------
		:class:`~theano.gof.Variable` or list/tuple of Variables depending on type of f
		    Symbolic expression such that
		    L_op[i] = sum_i (d f[i] / d wrt[j]) eval_point[i]
		    where the indices in that expression are magic multidimensional
		    indices that specify both the position within a list and all
		    coordinates of the tensor element in the last
		    If `f` is a list/tuple, then return a list/tuple with the results.
	**/
	static public function Lop(f:Dynamic, wrt:Dynamic, eval_points:Dynamic, ?consider_constant:Dynamic, ?disconnected_inputs:Dynamic):Dynamic;
	static public var NoneConst : Dynamic;
	/**
		Computes the R operation on `f` wrt to `wrt` at `eval_points`.
		
		Mathematically this stands for the jacobian of `f` wrt
		to `wrt` right muliplied by the eval points.
		
		Parameters
		----------
		f : :class:`~theano.gof.graph.Variable` or list of Variables
		    `f` stands for the output of the computational graph to which you
		    want to apply the R operator
		wrt : :class:`~theano.gof.graph.Variable` or list of Variables
		    variables for which you compute the R operator of the expression
		    described by `f`
		eval_points : :class:`~theano.gof.graph.Variable` or list of Variables
		    evalutation points for each of the variables in `wrt`
		disconnected_outputs : str
		    Defines the behaviour if some of the variables in `f`
		    have no dependency on any of the variable in `wrt` (or if
		    all links are non-differentiable). The possible values are:
		
		    - 'ignore': considers that the gradient on these parameters is zero.
		    - 'warn': consider the gradient zero, and print a warning.
		    - 'raise': raise DisconnectedInputError.
		
		return_disconnected : {'zero', 'None', 'Disconnected'}
		    - 'zero' : If wrt[i] is disconnected, return value i will be
		      wrt[i].zeros_like()
		    - 'None' : If wrt[i] is disconnected, return value i will be
		      None
		    - 'Disconnected' : returns variables of type DisconnectedType
		
		Returns
		-------
		:class:`~theano.gof.graph.Variable` or list/tuple of Variables depending on type of f
		    Symbolic expression such that
		    R_op[i] = sum_j (d f[i] / d wrt[j]) eval_point[j]
		    where the indices in that expression are magic multidimensional
		    indices that specify both the position within a list and all
		    coordinates of the tensor element in the last.
		    If `wrt` is a list/tuple, then return a list/tuple with the results.
	**/
	static public function Rop(f:Dynamic, wrt:Dynamic, eval_points:Dynamic, ?disconnected_outputs:Dynamic, ?return_disconnected:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		SharedVariable Constructor for TensorType.
		
		Notes
		-----
		Regarding the inference of the broadcastable pattern...
		The default is to assume that the value might be resized in any
		dimension, so the default broadcastable is ``(False,)*len(value.shape)``.
		The optional `broadcastable` argument will override this default.
	**/
	static public function _shared(value:Dynamic, ?name:Dynamic, ?strict:Dynamic, ?allow_downcast:Dynamic, ?borrow:Dynamic, ?broadcastable:Dynamic, ?target:Dynamic):Dynamic;
	/**
		|`a`|
		
		TensorVariable overloads the `TensorVariable.__abs__` operator so that
		this function is called when you type abs(a).
		
		
		
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
	static public function abs_(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		elementwise addition
		
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
	static public function add(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make the input broadcastable in the specified axes.
		
		For example, addbroadcast(x, 0) will make the first dimension of
		x broadcastable. When performing the function, if the length of
		x along that dimension is not 1, a ValueError will be raised.
		
		We apply the opt here not to pollute the graph especially during
		the gpu optimization
		
		Parameters
		----------
		x : tensor_like
		    Input theano tensor.
		axis : an int or an iterable object such as list or tuple of int values
		    The dimension along which the tensor x should be broadcastable.
		    If the length of x along these dimensions is not 1, a ValueError will
		    be raised.
		
		Returns
		-------
		tensor
		    A theano tensor, which is broadcastable along the specified dimensions.
	**/
	static public function addbroadcast(x:Dynamic, ?axes:python.VarArgs<Dynamic>):Dynamic;
	/**
		This function is only used to determine the broadcast pattern for
		AdvancedSubtensor output variable.
		
		For this, we make a fake ndarray and a fake idx and call use ask numpy
		the output. From this, we find the output broadcast pattern.
	**/
	static public function adv_index_broadcastable_pattern(a:Dynamic, idx:Dynamic):Dynamic;
	static public function advanced_boolean_inc_subtensor(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function advanced_boolean_set_subtensor(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function advanced_boolean_subtensor(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function advanced_inc_subtensor(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function advanced_inc_subtensor1(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function advanced_set_subtensor(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function advanced_set_subtensor1(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function advanced_subtensor(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function advanced_subtensor1(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function all(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public var all_dtypes : Dynamic;
	/**
		Implement Numpy's ``allclose`` on tensors.
		
		``absolute(a - b) <= (atol + rtol * absolute(b))``
		
		Parameters
		----------
		a : tensor
		    Input to compare.
		b : tensor
		    Input to compare.
		rtol : float
		    The relative tolerance parameter.
		atol : float
		    The absolute tolerance parameter.
		equal_nan: bool
		    Whether to consider nan's in the same place to be close.
		
		Returns
		-------
		bool
		    A boolean value (of type int8 returned by the tensor elementwise `all`
		    function) whether all elements in a and b are in the tolerance range
		    defined above.
		
		Notes
		-----
		Not a symmetric equation. See Numpy's documentation.
	**/
	static public function allclose(a:Dynamic, b:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?equal_nan:Dynamic):Dynamic;
	static public function alloc(val:Dynamic, ?shapes:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function alloc_validate_shape(shape:Dynamic):Dynamic;
	/**
		bitwise a & b
		
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
	static public function and_(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return polar-coordinate angle of complex-valued tensor `z`
		
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
	static public function angle(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function any(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function arange(start:Dynamic, ?stop:Dynamic, ?step:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		arccosine of a
		
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
	static public function arccos(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		hyperbolic arc cosine of a
		
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
	static public function arccosh(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		arcsine of a
		
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
	static public function arcsin(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		hyperbolic arc sine of a
		
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
	static public function arcsinh(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		arctangent of a
		
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
	static public function arctan(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		arctangent of a / b
		
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
	static public function arctan2(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		hyperbolic arc tangent of a
		
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
	static public function arctanh(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns indices of maximum elements obtained by iterating over given axis.
		
		When axis is None (the default value), the argmax is performed
		over the flattened tensor.
		
		Parameters
		----------
		keepdims : bool
		    If this is set to True, the axes which are reduced are left in
		    the result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original tensor.
	**/
	static public function argmax(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Returns indices of minimum elements obtained by iterating over given axis.
		
		When axis is None (the default value), the argmin is performed
		over the flattened tensor.
		
		Parameters
		----------
		keepdims: bool
		    If this is set to True, the axes which are reduced are left in
		    the result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original tensor.
	**/
	static public function argmin(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
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
	static public function as_index_variable(idx:Dynamic):Dynamic;
	static public function as_int_none_variable(x:Dynamic):Dynamic;
	/**
		Return `x`, transformed into a `TensorType`.
		
		This function is often used by `make_node` methods of `Op` subclasses
		to turn ndarrays, numbers, `Scalar` instances, `Apply` instances and
		`TensorType` instances into valid input list elements.
		
		Parameters
		----------
		x : Apply instance, Variable instance, numpy.ndarray, or number
		    This thing will be transformed into a `Variable` in a sensible way. An
		    ndarray argument will not be copied, but a list of numbers will be
		    copied to make an ndarray.
		name : str or None
		    If a new `Variable` instance is created, it will be named with this
		    string.
		ndim : None or integer
		    Return a Variable with this many dimensions.
		
		Raises
		------
		ValueError
		    If an `Apply` with more than one output is fetched or
		    if `x` cannot be made into a Variable with `ndim` dimensions.
		AsTensorError
		    If `x` cannot be converted to a TensorType Variable.
	**/
	static public function as_tensor(x:Dynamic, ?name:Dynamic, ?ndim:Dynamic):Dynamic;
	/**
		Return `x`, transformed into a `TensorType`.
		
		This function is often used by `make_node` methods of `Op` subclasses
		to turn ndarrays, numbers, `Scalar` instances, `Apply` instances and
		`TensorType` instances into valid input list elements.
		
		Parameters
		----------
		x : Apply instance, Variable instance, numpy.ndarray, or number
		    This thing will be transformed into a `Variable` in a sensible way. An
		    ndarray argument will not be copied, but a list of numbers will be
		    copied to make an ndarray.
		name : str or None
		    If a new `Variable` instance is created, it will be named with this
		    string.
		ndim : None or integer
		    Return a Variable with this many dimensions.
		
		Raises
		------
		ValueError
		    If an `Apply` with more than one output is fetched or
		    if `x` cannot be made into a Variable with `ndim` dimensions.
		AsTensorError
		    If `x` cannot be converted to a TensorType Variable.
	**/
	static public function as_tensor_variable(x:Dynamic, ?name:Dynamic, ?ndim:Dynamic):Dynamic;
	/**
		An instance of this class returns the Bartlett spectral window in the
		time-domain. The Bartlett window is very similar to a triangular window,
		except that the end points are at zero. It is often used in signal
		processing for tapering a signal, without generating too much ripple in
		the frequency domain.
		
		.. versionadded:: 0.6
		
		Parameters
		----------
		M : integer scalar
		    Number of points in the output window. If zero or less,
		    an empty vector is returned.
		
		Returns
		-------
		vector of doubles
		    The triangular window, with the maximum value normalized to one
		    (the value one appears only if the number of samples is odd), with
		    the first and last samples equal to zero.
	**/
	static public function bartlett(M:Dynamic):Dynamic;
	/**
		Compute the batched dot product of two variables:
		
		    batched_dot(a, b)[i] = dot(a[i], b[i])
		
		Note that this batched_dot function does one of three things, in the
		following sequence:
		
		    1.  If either a or b is a vector, it returns the batched elementwise
		        product without calling the Theano BatchedDot op.
		
		    2.  If both a and b have either 2 or 3 dimensions, it calls Theano's
		        BatchedDot op on a and b.
		
		    3.  If either a or b has more than 3 dimensions, it calls Theano's
		        batched_tensordot function with appropriate axes. The
		        batched_tensordot function expresses high-dimensional batched
		        dot products in terms of batched matrix-matrix dot products, so
		        it may be possible to futherize optimize for performance.
	**/
	static public function batched_dot(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Compute a batched tensordot product.
		
		A hybrid of batched_dot and tensordot, this function computes the
		tensordot product between the two tensors, by iterating over the
		first dimension to perform a sequence of tensordots.
		
		Parameters
		----------
		x : tensor
		    A Tensor with sizes e.g.: for 3D (dim1, dim3, dim2)
		y : tensor
		    A Tensor with sizes e.g.: for 3D (dim1, dim2, dim4)
		axes: int or array-like of length 2
		    If an integer, the number of axes to sum over.
		    If an array, it must have two array elements containing the axes to sum
		    over in each tensor.
		
		    If an integer i, it is converted to an array containing
		    the last i dimensions of the first tensor and the first
		    i dimensions of the second tensor (excluding the first
		    (batch) dimension):
		        axes = [list(range(a.ndim - i, b.ndim)), list(range(1,i+1))]
		
		    If an array, its two elements must contain compatible axes
		    of the two tensors. For example, [[1, 2], [2, 4]] means sum
		    over the 2nd and 3rd axes of a and the 3rd and 5th axes of b.
		    (Remember axes are zero-indexed!) The 2nd axis of a and the
		    3rd axis of b must have the same shape; the same is true for
		    the 3rd axis of a and the 5th axis of b.
		
		Like tensordot, this function uses a series of dimshuffles and
		reshapes to reduce the tensor dot product to a matrix or vector
		dot product.  Finally, it calls batched_dot to compute the result.
	**/
	static public function batched_tensordot(x:Dynamic, y:Dynamic, ?axes:Dynamic):Dynamic;
	static public function bcol(?name:Dynamic):Dynamic;
	/**
		Count number of occurrences of each value in array of ints.
		
		The number of bins (of size 1) is one larger than the largest
		value in x. If minlength is specified, there will be at least
		this number of bins in the output array (though it will be longer
		if necessary, depending on the contents of x). Each bin gives the
		number of occurrences of its index value in x. If weights is
		specified the input array is weighted by it, i.e. if a value n
		is found at position i, out[n] += weight[i] instead of out[n] += 1.
		
		Parameters
		----------
		x : 1 dimension, nonnegative ints
		weights : array of the same shape as x with corresponding weights.
		    Optional.
		minlength : A minimum number of bins for the output array.
		    Optional.
		assert_nonneg : A flag that inserts an assert_op to check if
		    every input x is nonnegative.
		    Optional.
		
		
		.. versionadded:: 0.6
	**/
	static public function bincount(x:Dynamic, ?weights:Dynamic, ?minlength:Dynamic, ?assert_nonneg:Dynamic):Dynamic;
	/**
		bitwise a & b
		
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
	static public function bitwise_and(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		bitwise ~a
		
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
	static public function bitwise_not(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		bitwise a | b
		
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
	static public function bitwise_or(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		bitwise a ^ b
		
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
	static public function bitwise_xor(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function bmatrix(?name:Dynamic):Dynamic;
	static public function brow(?name:Dynamic):Dynamic;
	static public function bscalar(?name:Dynamic):Dynamic;
	static public function btensor3(?name:Dynamic):Dynamic;
	static public function btensor4(?name:Dynamic):Dynamic;
	static public function btensor5(?name:Dynamic):Dynamic;
	static public function btensor6(?name:Dynamic):Dynamic;
	static public function btensor7(?name:Dynamic):Dynamic;
	static public function bvector(?name:Dynamic):Dynamic;
	/**
		Symbolically cast `x` to a Tensor of type `dtype`.
	**/
	@:native("cast")
	static public function _cast(x:Dynamic, dtype:Dynamic):Dynamic;
	static public function ccol(?name:Dynamic):Dynamic;
	/**
		ceiling of a
		
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
	static public function ceil(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Safely compute ceil(float_division(a, b)).
		
		Works for all dtypes, but mostly useful when a and b are int.
	**/
	static public function ceil_intdiv(a:Dynamic, b:Dynamic):Dynamic;
	/**
		This function checks if the index list in idx_list is correct.
		If there are any boolean masks, we check if the mask has the
		same shape as the input. This is enforced in NumPy 0.13.0 and
		newer, but not by earlier versions. If the size is not the same,
		this method raises an IndexError.
	**/
	static public function check_advanced_indexing_dimensions(input:Dynamic, idx_list:Dynamic):Dynamic;
	/**
		Check axes, normalize and convert them to a Python list of integers.
		Return an empty list if argument is None.
		
		Parameters
		----------
		x: Tensor variable
		axis = Integer, tuple or list of integers
		
		Returns
		-------
		axis: list of integers
	**/
	static public function check_and_normalize_axes(x:Dynamic, axis:Dynamic):Dynamic;
	static public function check_and_reject_bool(args_el:Dynamic):Dynamic;
	/**
		Return True iff x and y are equal.
		
		Checks the dtype and shape if x and y are numpy.ndarray instances.
	**/
	static public function check_equal_numpy(x:Dynamic, y:Dynamic):Dynamic;
	/**
		chi squared survival function
		
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
	static public function chi2sf(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Construct an array from an index array and a set of arrays to choose from.
		
		First of all, if confused or uncertain, definitely look at the Examples -
		in its full generality, this function is less simple than it might seem
		from the following code description (below ndi = numpy.lib.index_tricks):
		
		np.choose(a,c) == np.array([c[a[I]][I] for I in ndi.ndindex(a.shape)]).
		
		But this omits some subtleties. Here is a fully general summary:
		
		Given an ``index`` array (a) of integers and a sequence of n arrays
		(choices), a and each choice array are first broadcast, as necessary,
		to arrays of a common shape; calling these Ba and
		Bchoices[i], i = 0,...,n-1 we have that, necessarily,
		Ba.shape == Bchoices[i].shape for each i.
		Then, a new array with shape Ba.shape is created as follows:
		
		- if mode=raise (the default), then, first of all, each element of a
		  (and thus Ba) must be in the range [0, n-1]; now, suppose that
		  i (in that range) is the value at the (j0, j1, ..., jm) position in Ba -
		  then the value at the same position in the new array is the value in
		  Bchoices[i] at that same position;
		
		- if mode=wrap, values in a (and thus Ba) may be any (signed) integer;
		  modular arithmetic is used to map integers outside the range [0, n-1]
		  back into that range; and then the new array is constructed as above;
		
		- if mode=clip, values in a (and thus Ba) may be any (signed) integer;
		  negative integers are mapped to 0; values greater than n-1 are mapped
		  to n-1; and then the new array is constructed as above.
		
		Parameters
		----------
		a : int array
		    This array must contain integers in [0, n-1], where n is the number of
		    choices, unless mode=wrap or mode=clip, in which cases any integers
		    are permissible.
		choices : sequence of arrays
		    Choice arrays. a and all of the choices must be broadcastable to
		    the same shape. If choices is itself an array (not recommended),
		    then its outermost dimension (i.e., the one corresponding to
		    choices.shape[0]) is taken as defining the ``sequence``.
		out : array, optional
		    If provided, the result will be inserted into this array.
		    It should be of the appropriate shape and dtype.
		mode : {``raise`` (default), ``wrap``, ``clip``}, optional
		    Specifies how indices outside [0, n-1] will be treated:
		    ``raise`` : an exception is raised
		    ``wrap`` : value becomes value mod n
		    ``clip`` : values < 0 are mapped to 0, values > n-1 are mapped to n-1
		
		Returns
		-------
		merged_array - array
		    The merged result.
		
		Raises
		------
		ValueError - shape mismatch
		    If a and each choice array are not all broadcastable to the same shape.
	**/
	static public function choose(a:Dynamic, choices:Dynamic, ?out:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Clip x to be between min and max.
		
		Notes
		-----
		When `x` is equal to the boundaries, the output is considered
		to be `x`, so at these points, the gradient of the cost wrt the output
		will be propagated to `x`, not to `min` nor `max`. In other words,
		on these points, the gradient wrt `x` will be equal to the gradient wrt
		the output, and the gradient wrt `min` and `max` will be zero.
		
		
		
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
	static public function clip(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cmatrix(?name:Dynamic):Dynamic;
	/**
		Return a symbolic column variable (ndim=2, broadcastable=[False,True]).
		
		Parameters
		----------
		dtype : numeric
		    None means to use theano.config.floatX.
		name
		    A name to attach to this variable.
	**/
	static public function col(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function cols(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return complex-valued tensor with `real` and `imag` components
		
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
	static public function complex(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var complex_dtypes : Dynamic;
	/**
		Return complex-valued tensor from polar coordinate specification.
		
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
	static public function complex_from_polar(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var complex_matrix_types : Dynamic;
	static public var complex_scalar_types : Dynamic;
	static public var complex_types : Dynamic;
	static public var complex_vector_types : Dynamic;
	/**
		Alias for `join`(axis, *tensor_list).
		
		This function is similar to `join`, but uses the signature of
		numpy's concatenate function.
		
		Raises
		------
		TypeError
		    The tensor_list must be a tuple or list.
	**/
	static public function concatenate(tensor_list:Dynamic, ?axis:Dynamic):Dynamic;
	static public var config : Dynamic;
	/**
		Return the complex conjugate of `z`.
		
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
	static public function conj(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		DEPRECATED: use zero_grad() or disconnected_grad() instead.
		
		Consider an expression constant when computing gradients.
		
		The expression itself is unaffected, but when its gradient is
		computed, or the gradient of another expression that this
		expression is a subexpression of, it will not be backpropagated
		through. In other words, the gradient of the expression is
		truncated to 0.
		
		:param x: A Theano expression whose gradient should be truncated.
		
		:return: The expression is returned unmodified, but its gradient
		    is now truncated to 0.
		
		.. versionadded:: 0.7
	**/
	static public function consider_constant(x:Dynamic):Dynamic;
	/**
		Return a symbolic `Constant` with value `x`.
		
		Raises
		------
		TypeError
		    `x` could not be converted to a numpy.ndarray.
		ValueError
		    `x` could not be expanded to have ndim dimensions.
		
		Note
		----
		We create a small cache of frequently used constant.
		This speed up the Merge optimization for big graph.
		We want to cache all scalar to don't merge as frequently constants.
		But we don't want to cache too much stuff.
		So we cache integer with dtype [u]int and float where the value is
		between -10 and 10.
		We cache all broadcast pattern for scalar.
	**/
	static public function constant(x:Dynamic, ?name:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var constant_cache : Dynamic;
	/**
		Add `f` to :doc:`oplist`.
		
		Make `f` appear as a constructor in the oplist (`gen_oplist`,
		doc/oplist.txt).
	**/
	static public function constructor(f:Dynamic):Dynamic;
	static public var continuous_dtypes : Dynamic;
	/**
		cosine of a
		
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
	static public function cos(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		hyperbolic cosine of a
		
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
	static public function cosh(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the covariance matrix.
		Covariance indicates the level to which two variables vary together.
		If we examine N-dimensional samples, :math:`m = [x_1, x_2, ... x_N]^T`,
		then the covariance matrix element :math:`C_{ij}` is the covariance of
		:math:`x_i` and :math:`x_j`. The element :math:`C_{ii}` is the variance
		of :math:`x_i`. Code and docstring ported from numpy.
		----------
		m : array_like
		    A 2-D array containing multiple variables and observations.
		    Each row of `m` represents a variable, and each column is
		    observations of all those variables.
		y : array_like, optional
		    An additional set of variables and observations. `y` has the same form
		    as that of `m`.
		rowvar : bool, optional
		    If `rowvar` is True (default), then each row represents a
		    variable, with observations in the columns. Otherwise, the relationship
		    is transposed: each column represents a variable, while the rows
		    contain observations.
		bias : bool, optional
		    Default normalization (False) is by ``(N - 1)``, where ``N`` is the
		    number of observations given (unbiased estimate). If `bias` is True, then
		    normalization is by ``N``. These values can be overridden by using the
		    keyword ``ddof``.
		ddof : int, optional
		    If not ``None`` the default value implied by `bias` is overridden.
		    The default value is ``None``.
		Returns
		-------
		out : The covariance matrix of the variables.
	**/
	static public function cov(m:Dynamic, ?y:Dynamic, ?rowvar:Dynamic, ?bias:Dynamic, ?ddof:Dynamic, ?fweights:Dynamic, ?aweights:Dynamic):Dynamic;
	static public function crow(?name:Dynamic):Dynamic;
	static public function cscalar(?name:Dynamic):Dynamic;
	static public function ctensor3(?name:Dynamic):Dynamic;
	static public function ctensor4(?name:Dynamic):Dynamic;
	static public function ctensor5(?name:Dynamic):Dynamic;
	static public function ctensor6(?name:Dynamic):Dynamic;
	static public function ctensor7(?name:Dynamic):Dynamic;
	/**
		Return the cumulative product of the elements along a given axis.
		
		Wraping of numpy.cumprod.
		
		Parameters
		----------
		x
		    Input tensor variable.
		
		axis
		    The axis along which the cumulative product is computed.
		    The default (None) is to compute the cumprod over the flattened array.
		
		
		.. versionadded:: 0.7
	**/
	static public function cumprod(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return the cumulative sum of the elements along a given axis.
		
		Wraping of numpy.cumsum.
		
		Parameters
		----------
		x
		    Input tensor variable.
		axis
		    The axis along which the cumulative sum is computed.
		    The default (None) is to compute the cumsum over the flattened array.
		
		
		.. versionadded:: 0.7
	**/
	static public function cumsum(x:Dynamic, ?axis:Dynamic):Dynamic;
	static public function cvector(?name:Dynamic):Dynamic;
	static public function dcol(?name:Dynamic):Dynamic;
	static public function dcols(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.  (This behaviour is
		new in Python 2.5; older versions of this module incorrectly
		expanded tabs before searching for common leading whitespace.)
	**/
	static public function dedent(text:Dynamic):Dynamic;
	@:native("default")
	static public function _default(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		convert degree a to radian
		
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
	static public function deg2rad(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A helper function for two ops: `theano.tensor.ExtractDiag` and
		`theano.tensor.AllocDiag`. The name `diag` is meant to keep it consistent
		with numpy. It both accepts tensor vector and tensor matrix.
		While the passed tensor variable `v` has `v.ndim>=2`, it builds a
		`ExtractDiag` instance, and returns a vector with its entries equal to
		`v`'s main diagonal; otherwise if `v.ndim` is `1`, it builds an `AllocDiag`
		instance, and returns a matrix with `v` at its k-th diaogonal.
		
		Parameters
		----------
		v : symbolic tensor
		k : int
		    offset
		
		Returns
		-------
		tensor : symbolic tensor
	**/
	static public function diag(v:Dynamic, ?k:Dynamic):Dynamic;
	/**
		A helper function for `theano.tensor.ExtractDiag`. It accepts tensor with
		`ndim >= 2` as input. The name `diagonal` is just meant to keep it
		consistent with numpy.
		
		Parameters
		----------
		a : symbolic tensor
		offset : int
		    offset
		axis1 : int
		axis2 : int
		
		Returns
		-------
		tensor : symbolic tensor
	**/
	static public function diagonal(a:Dynamic, ?offset:Dynamic, ?axis1:Dynamic, ?axis2:Dynamic):Dynamic;
	static public var discrete_dtypes : Dynamic;
	/**
		Proxy for either true_div or int_div, depending on types of x, y.
	**/
	static public function div_proxy(x:Dynamic, y:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		elementvise divmod, using floor_div and mod_check
	**/
	static public function divmod(x:Dynamic, y:Dynamic):Dynamic;
	static public function dmatrices(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function dmatrix(?name:Dynamic):Dynamic;
	/**
		Computes the dot product of two variables.
		
		For two matrices, this is equivalent to matrix multiplication.
		For two vectors, this is the inner product.
		When one variable is a scalar, this is like elementwise multiplication.
		For N dimensions, this is a sum product over the last axis
		of the first array and the second-to-last axis of the second array:
		
		    dot(a, b)[i,j,k,m] = sum(a[i,j,:] * b[k,:,m])
		
		Note that this dot function does one of three things, in the following
		sequence:
		
		    1.  If either a or b is scalar, it returns the elementwise product
		        without calling the Theano Dot op.
		
		    2.  If either a or b has more than 2 dimensions, it calls Theano's
		        tensordot function with appropriate axes. The tensordot function
		        expresses high-dimensional dot products in terms of 2D matrix
		        multiplications, so it may be possible to futherize optimize for
		        performance.
		
		    3.  If both a and b have either 1 or 2 dimensions, it calls Theano's
		        Dot op on a and b.
		
		Notes
		-----
		Matrix-matrix products are sometimes optimized to Dot22 or Gemm ops
		(see tensor.blas).
		Vector-vector products are sometimes optimized to Ger or CGer (see
		tensor.blas).
		Matrix-vector products are sometimes optimized to Gemv, CGemv (see
		tensor.blas).
	**/
	static public function dot(a:Dynamic, b:Dynamic):Dynamic;
	static public function drow(?name:Dynamic):Dynamic;
	static public function drows(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function dscalar(?name:Dynamic):Dynamic;
	static public function dscalars(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function dtensor3(?name:Dynamic):Dynamic;
	static public function dtensor3s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function dtensor4(?name:Dynamic):Dynamic;
	static public function dtensor4s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function dtensor5(?name:Dynamic):Dynamic;
	static public function dtensor5s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function dtensor6(?name:Dynamic):Dynamic;
	static public function dtensor6s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function dtensor7(?name:Dynamic):Dynamic;
	static public function dtensor7s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function dvector(?name:Dynamic):Dynamic;
	static public function dvectors(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		a == b
		
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
	static public function eq(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		error function
		
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
	static public function erf(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		complementary error function
		
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
	static public function erfc(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		inverse complementary error function
		
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
	static public function erfcinv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		scaled complementary error function
		
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
	static public function erfcx(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		inverse error function
		
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
	static public function erfinv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		e^`a`
		
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
	static public function exp(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		2^`a`
		
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
	static public function exp2(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		e^`a` - 1
		
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
	static public function expm1(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		This function is basically a call to tensor.get_scalar_constant_value.
		
		The main difference is the behaviour in case of failure. While
		get_scalar_constant_value raises an TypeError, this function returns x,
		as a tensor if possible. If x is a ScalarVariable from a
		scalar_from_tensor, we remove the conversion. If x is just a
		ScalarVariable, we convert it to a tensor with tensor_from_scalar.
	**/
	static public function extract_constant(x:Dynamic, ?elemwise:Dynamic, ?only_process_constants:Dynamic):Dynamic;
	/**
		Return a 2-D array with ones on the diagonal and zeros elsewhere.
		
		Parameters
		----------
		n : int
		    Number of rows in the output.
		m : int, optional
		    Number of columns in the output. If None, defaults to `N`.
		k : int, optional
		    Index of the diagonal: 0 (the default) refers to the main diagonal,
		    a positive value refers to an upper diagonal, and a negative value
		    to a lower diagonal.
		dtype : data-type, optional
		    Data-type of the returned array.
		
		Returns
		-------
		ndarray of shape (N,M)
		    An array where all elements are equal to zero, except for the `k`-th
		    diagonal, whose values are equal to one.
	**/
	static public function eye(n:Dynamic, ?m:Dynamic, ?k:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function fcol(?name:Dynamic):Dynamic;
	static public function fcols(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		Create a matrix by filling the shape of a with b
		
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
	static public function fill(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a copy of an array with all
		elements of the main diagonal set to a specified scalar value.
		
		.. versionadded:: 0.6
		
		Parameters
		----------
		a
		    Rectangular array of at least two dimensions.
		val
		    Scalar value to fill the diagonal whose type must be
		    compatible with that of array 'a' (i.e. 'val' cannot be viewed
		    as an upcast of 'a').
		
		Returns
		-------
		array
		    An array identical to 'a' except that its main diagonal
		    is filled with scalar 'val'. (For an array 'a' with a.ndim >=
		    2, the main diagonal is the list of locations a[i, i, ..., i]
		    (i.e. with indices all identical).)
		
		Support rectangular matrix and tensor with more than 2 dimensions
		if the later have all dimensions are equals.
	**/
	static public function fill_diagonal(a:Dynamic, val:Dynamic):Dynamic;
	/**
		Returns a copy of an array with all
		elements of the main diagonal set to a specified scalar value.
		
		Parameters
		----------
		a
		    Rectangular array of two dimensions.
		val
		    Scalar value to fill the diagonal whose type must be
		    compatible with that of array 'a' (i.e. 'val' cannot be viewed
		    as an upcast of 'a').
		offset
		    Scalar value Offset of the diagonal from the main
		    diagonal. Can be positive or negative integer.
		
		Returns
		-------
		array
		    An array identical to 'a' except that its offset diagonal
		    is filled with scalar 'val'. The output is unwrapped.
	**/
	static public function fill_diagonal_offset(a:Dynamic, val:Dynamic, offset:Dynamic):Dynamic;
	/**
		Return a vector of indices that are non-zero in the flattened version of a.
		
		This is equivalent to nonzero(a.flatten(), return_matrix=True)[0]
		
		Parameters
		----------
		a : tensor
		    Input tensor
		
		Returns
		-------
		vector
		    Output vector, containing the indices of the elements of `a.flatten()`
		    that are non-zero.
		
		See Also
		--------
		nonzero : Return the indices of the non-zero elements of the input array.
		nonzero_values : Return the non-zero elements of the input array
	**/
	static public function flatnonzero(a:Dynamic):Dynamic;
	/**
		Reshapes the variable x by keeping
		the first outdim-1 dimension size(s) of x the same,
		and making the last dimension size of x equal to
		the multiplication of its remaining dimension size(s).
		
		Parameters
		----------
		    x : theano.tensor.var.TensorVariable
		        the variable that should be reshaped.
		
		    ndim : int
		        the number of dimensions of the returned variable
		        Default 1.
		    outdim : int
		        DEPRECATED synonym for ndim
		Returns
		-------
		theano.tensor.var.TensorVariable
		    the flattend variable with dimensionality of outdim
	**/
	static public function flatten(x:Dynamic, ?ndim:Dynamic, ?outdim:Dynamic):Dynamic;
	static public var float16_atol : Dynamic;
	static public var float16_rtol : Dynamic;
	static public var float32_atol : Dynamic;
	static public var float32_rtol : Dynamic;
	static public var float64_atol : Dynamic;
	static public var float64_rtol : Dynamic;
	static public var float_dtypes : Dynamic;
	static public var float_matrix_types : Dynamic;
	static public var float_scalar_types : Dynamic;
	static public var float_types : Dynamic;
	static public var float_vector_types : Dynamic;
	/**
		floor of a
		
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
	static public function floor(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		elementwise [floor] division (inverse of multiplication)
		
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
	static public function floor_div(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fmatrices(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function fmatrix(?name:Dynamic):Dynamic;
	static public function frow(?name:Dynamic):Dynamic;
	static public function frows(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function fscalar(?name:Dynamic):Dynamic;
	static public function fscalars(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function ftensor3(?name:Dynamic):Dynamic;
	static public function ftensor3s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function ftensor4(?name:Dynamic):Dynamic;
	static public function ftensor4s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function ftensor5(?name:Dynamic):Dynamic;
	static public function ftensor5s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function ftensor6(?name:Dynamic):Dynamic;
	static public function ftensor6s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function ftensor7(?name:Dynamic):Dynamic;
	static public function ftensor7s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function fvector(?name:Dynamic):Dynamic;
	static public function fvectors(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		gamma function
		
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
	static public function gamma(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Regularized lower gamma function
		
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
	static public function gammainc(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Regularized upper gamma function
		
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
	static public function gammaincc(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Lower incomplete gamma function.
		
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
	static public function gammal(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		log gamma function
		
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
	static public function gammaln(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Upper incomplete gamma function.
		
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
	static public function gammau(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		a >= b
		
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
	static public function ge(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Given a slice [start:stop:step] transform it into a canonical form
		that respects the conventions imposed by python and numpy.
		
		In a canonical form a slice is represented by a canonical form slice,
		in which 0 <= start <= stop <= length and step > 0, and a flag which says
		if the resulting set of numbers needs to be reversed or not.
	**/
	static public function get_canonical_form_slice(theslice:Dynamic, length:Dynamic):Dynamic;
	/**
		Given a list of inputs to the subtensor and its idx_list reorders
		the inputs according to the idx list to get the right values.
		
		If get_counts=True, instead returns the number of inputs consumed
		during this process.
	**/
	static public function get_idx_list(inputs:Dynamic, idx_list:Dynamic, ?get_count:Dynamic):Dynamic;
	/**
		Return the constant scalar(0-D) value underlying variable `v`.
		
		If `v` is the output of dimshuffles, fills, allocs, rebroadcasts,
		cast, OutputGuard, DeepCopyOp, ScalarFromTensor, ScalarOp, Elemwise
		and some pattern with Subtensor, this function digs through them.
		
		If `v` is not some view of constant scalar data, then raise a
		NotScalarConstantError.
		
		Parameters
		----------
		elemwise : bool
		    If False, we won't try to go into elemwise. So this call is faster.
		    But we still investigate in Second Elemwise (as this is a substitute
		    for Alloc)
		only_process_constants : bool
		    If True, we only attempt to obtain the value of `orig_v` if it's
		    directly constant and don't try to dig through dimshuffles, fills,
		    allocs, and other to figure out its value.
		max_recur : int
		    The maximum number of recursion.
		
		Notes
		-----
		    There may be another function similar to this one in the code,
		    but I'm not sure where it is.
	**/
	static public function get_scalar_constant_value(orig_v:Dynamic, ?elemwise:Dynamic, ?only_process_constants:Dynamic, ?max_recur:Dynamic):Dynamic;
	static public var get_scalar_constant_value_elemwises : Dynamic;
	/**
		Return the run-time length of a symbolic vector.
		
		Parameters
		----------
		v
		    A rank-1 TensorType variable.
		
		Raises
		------
		TypeError
		    `v` hasn't the proper type.
		ValueError
		    No special case applies, the length is not known.
		    In general this is not possible, but for a number of special cases
		    the length can be determined at compile / graph-construction time.
		    This function implements these special cases.
	**/
	static public function get_vector_length(v:Dynamic):Dynamic;
	/**
		Return symbolic gradients of one cost with respect to one or more variables.
		
		For more information about how automatic differentiation works in Theano,
		see :mod:`gradient`. For information on how to implement the gradient of
		a certain Op, see :func:`grad`.
		
		Parameters
		----------
		cost : :class:`~theano.gof.graph.Variable` scalar (0-dimensional) tensor variable or ``None``
		    Value that we are differentiating (that we want the gradient of).
		    May be `None` if `known_grads` is provided.
		wrt : :class:`~theano.gof.graph.Variable` or list of Variables
		    Term[s] with respect to which we want gradients
		consider_constant : list of variables
		    Expressions not to backpropagate through
		disconnected_inputs : {'ignore', 'warn', 'raise'}
		    Defines the behaviour if some of the variables in `wrt` are
		    not part of the computational graph computing `cost` (or if
		    all links are non-differentiable). The possible values are:
		
		    - 'ignore': considers that the gradient on these parameters is zero.
		    - 'warn': consider the gradient zero, and print a warning.
		    - 'raise': raise DisconnectedInputError.
		add_names : bool
		    If True, variables generated by grad will be named
		    (d<cost.name>/d<wrt.name>) provided that both cost and wrt
		    have names
		known_grads : OrderedDict, optional
		    A ordered dictionary mapping variables to their gradients. This is
		    useful in the case where you know the gradient on some
		    variables but do not know the original cost.
		return_disconnected : {'zero', 'None', 'Disconnected'}
		    - 'zero' : If wrt[i] is disconnected, return value i will be
		      wrt[i].zeros_like()
		    - 'None' : If wrt[i] is disconnected, return value i will be
		      None
		    - 'Disconnected' : returns variables of type DisconnectedType
		null_gradients : {'raise', 'return'}
		    Defines the behaviour if some of the variables in `wrt` have a
		    null gradient. The possibles values are:
		
		    - 'raise' : raise a NullTypeGradError exception
		    - 'return' : return the null gradients
		
		Returns
		-------
		variable or list/tuple of variables (matches `wrt`)
		    Symbolic expression of gradient of `cost` with respect to each
		    of the `wrt` terms.  If an element of `wrt` is not
		    differentiable with respect to the output, then a zero
		    variable is returned.
	**/
	static public function grad(cost:Dynamic, wrt:Dynamic, ?consider_constant:Dynamic, ?disconnected_inputs:Dynamic, ?add_names:Dynamic, ?known_grads:Dynamic, ?return_disconnected:Dynamic, ?null_gradients:Dynamic):Dynamic;
	/**
		Return an un-computable symbolic variable of type `x.type`.
		
		If any call to tensor.grad results in an expression containing this
		un-computable variable, an exception (NotImplementedError) will be
		raised indicating that the gradient on the
		`x_pos`'th input of `op` has not been implemented. Likewise if
		any call to theano.function involves this variable.
		
		Optionally adds a comment to the exception explaining why this
		gradient is not implemented.
	**/
	static public function grad_not_implemented(op:Dynamic, x_pos:Dynamic, x:Dynamic, ?comment:Dynamic):Dynamic;
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
		a > b
		
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
	static public function gt(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hashtype(self:Dynamic):Dynamic;
	/**
		Parameters
		----------
		cost: Scalar (0-dimensional) variable.
		wrt: Vector (1-dimensional tensor) 'Variable' or list of
		vectors (1-dimensional tensors) Variables
		consider_constant:
		    a list of expressions not to backpropagate through
		disconnected_inputs: string
		    Defines the behaviour if some of the variables
		    in ``wrt`` are not part of the computational graph computing ``cost``
		    (or if all links are non-differentiable). The possible values are:
		
		    - 'ignore': considers that the gradient on these parameters is zero.
		    - 'warn': consider the gradient zero, and print a warning.
		    - 'raise': raise an exception.
		
		Returns
		-------
		:class:`~theano.gof.graph.Variable` or list/tuple of Variables
		    The Hessian of the `cost` with respect to (elements of) `wrt`.
		    If an element of `wrt` is not differentiable with respect to the
		    output, then a zero variable is returned. The return value is
		    of same type as `wrt`: a list/tuple or TensorVariable in all cases.
	**/
	static public function hessian(cost:Dynamic, wrt:Dynamic, ?consider_constant:Dynamic, ?disconnected_inputs:Dynamic):Dynamic;
	/**
		Horizontally stack two L{TensorType}s.
		
		Stack two L{TensorType}s along the second axis (column wise). These
		L{TensorType}s must have the same shape along all dimensions but the
		second.
	**/
	static public function horizontal_stack(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Modified Bessel function of the first kind of order 0.
		
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
	static public function i0(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Modified Bessel function of the first kind of order 1.
		
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
	static public function i1(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function icol(?name:Dynamic):Dynamic;
	static public function icols(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function identity_like(x:Dynamic):Dynamic;
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
	static public function imag(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function imatrices(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function imatrix(?name:Dynamic):Dynamic;
	static public function inc_code():Dynamic;
	/**
		Return x with the given subtensor incremented by y.
		
		Parameters
		----------
		x
		    The symbolic result of a Subtensor operation.
		y
		    The amount by which to increment the subtensor in question.
		inplace
		    Don't use. Theano will do it when possible.
		set_instead_of_inc
		    If True, do a set_subtensor instead.
		tolerate_inplace_aliasing:
		    Allow x and y to be views of a single underlying array even while
		    working inplace. For correct results, x and y must not be overlapping
		    views; if they overlap, the result of this Op will generally be
		    incorrect. This value has no effect if inplace=False.
		
		Examples
		--------
		To replicate the numpy expression "r[10:] += 5", type
		
		>>> r = ivector()
		>>> new_r = inc_subtensor(r[10:], 5)
	**/
	static public function inc_subtensor(x:Dynamic, y:Dynamic, ?inplace:Dynamic, ?set_instead_of_inc:Dynamic, ?tolerate_inplace_aliasing:Dynamic):Dynamic;
	static public function int32(?name:Dynamic):Dynamic;
	static public function int32_t(?name:Dynamic):Dynamic;
	/**
		elementwise [floor] division (inverse of multiplication)
		
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
	static public function int_div(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var int_dtypes : Dynamic;
	static public var int_matrix_types : Dynamic;
	static public var int_scalar_types : Dynamic;
	static public var int_types : Dynamic;
	static public var int_vector_types : Dynamic;
	static public var integer_dtypes : Dynamic;
	static public var integer_types : Dynamic;
	/**
		1.0/a
		
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
	static public function inv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Computes the inverse of permutations.
		
		Each row of input should contain a permutation of the first integers.
	**/
	static public function inverse_permutation(perm:Dynamic):Dynamic;
	/**
		bitwise ~a
		
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
	static public function invert(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Non-blocking receive.
	**/
	static public function irecv(shape:Dynamic, dtype:Dynamic, source:Dynamic, tag:Dynamic):Dynamic;
	/**
		cast(round(a,mode),'int64')
	**/
	static public function iround(a:Dynamic, ?mode:Dynamic):Dynamic;
	static public function irow(?name:Dynamic):Dynamic;
	static public function irows(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		Verifies the dimensionality of the var is equal to
		outdim. This method is usually called after flatten method on a
		variable, where the first outdim-1 dimension size(s) of the variable
		is kept intact, and the last dimension size of the variable is made
		equal to the multiplication of its remaining dimension size(s), such that
		the variable would end up with as many dimension as outdim.
		
		Parameters
		----------
		    var : theano.tensor.var.TensorVariable
		        the theano var on which the dimensionality is checked.
		
		    outdim : int
		        the expected dimensionality of var.
		
		Returns
		-------
		bool
		    the comparison result of var's dim
		    and the expected outdim.
	**/
	static public function is_flat(_var:Dynamic, ?ndim:Dynamic, ?outdim:Dynamic):Dynamic;
	static public function iscalar(?name:Dynamic):Dynamic;
	static public function iscalars(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		Implements Numpy's ``isclose`` on tensors.
		
		The tolerance values are positive, typically very small numbers. The
		relative difference (`rtol` * abs(`b`)) and the absolute difference
		`atol` are added together to compare against the absolute difference
		between `a` and `b`.
		
		``absolute(a - b) <= (atol + rtol * absolute(b))``
		
		Parameters
		----------
		a : tensor
		    Input to compare.
		b : tensor
		    Input to compare.
		rtol : float
		    The relative tolerance parameter.
		atol : float
		    The absolute tolerance parameter.
		equal_nan : bool
		    Whether to consider nan's in the same place to be close
		
		Returns
		-------
		int8
		    A boolean (int8) array where two arrays are element-wise equal
		    within a tolerance.
		
		Notes
		-----
		Not a symmetric equation. See Numpy's documentation.
		
		Examples
		--------
		>>> import theano
		>>> import numpy as np
		>>> a = theano._asarray([1e10, 1e-7], dtype="float64")
		>>> b = theano._asarray([1.00001e10, 1e-8], dtype="float64")
		>>> theano.tensor.isclose(a, b).eval()
		array([1, 0], dtype=int8)
		>>> a = theano._asarray([1e10, 1e-8], dtype="float64")
		>>> b = theano._asarray([1.00001e10, 1e-9], dtype="float64")
		>>> theano.tensor.isclose(a, b).eval()
		array([1, 1], dtype=int8)
		>>> a = theano._asarray([1e10, 1e-8], dtype="float64")
		>>> b = theano._asarray([1.0001e10, 1e-9], dtype="float64")
		>>> theano.tensor.isclose(a, b).eval()
		array([0, 1], dtype=int8)
		>>> a = theano._asarray([1.0, np.nan], dtype="float64")
		>>> b = theano._asarray([1.0, np.nan], dtype="float64")
		>>> theano.tensor.isclose(a, b).eval()
		array([1, 0], dtype==int8)
		>>> a = theano._asarray([1.0, np.nan], dtype="float64")
		>>> b = theano._asarray([1.0, np.nan], dtype="float64")
		>>> theano.tensor.isclose(a, b, equal_nan=True).eval()
		array([1, 1], dtype==int8)
		>>> a = theano._asarray([1.0, np.inf], dtype="float64")
		>>> b = theano._asarray([1.0, -np.inf], dtype="float64")
		>>> theano.tensor.isclose(a, b).eval()
		array([1, 0], dtype==int8)
		>>> a = theano._asarray([1.0, np.inf], dtype="float64")
		>>> b = theano._asarray([1.0, np.inf], dtype="float64")
		>>> theano.tensor.isclose(a, b).eval()
		array([1, 1], dtype==int8)
	**/
	static public function isclose(a:Dynamic, b:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?equal_nan:Dynamic):Dynamic;
	/**
		Non blocking send.
	**/
	static public function isend(_var:Dynamic, dest:Dynamic, tag:Dynamic):Dynamic;
	/**
		isinf(a)
	**/
	static public function isinf(a:Dynamic):Dynamic;
	/**
		isinf(a)
		
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
	static public function isinf_(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		isnan(a)
	**/
	static public function isnan(a:Dynamic):Dynamic;
	/**
		isnan(a)
		
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
	static public function isnan_(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function itensor3(?name:Dynamic):Dynamic;
	static public function itensor3s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function itensor4(?name:Dynamic):Dynamic;
	static public function itensor4s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function itensor5(?name:Dynamic):Dynamic;
	static public function itensor5s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function itensor6(?name:Dynamic):Dynamic;
	static public function itensor6s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function itensor7(?name:Dynamic):Dynamic;
	static public function itensor7s(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		Modified Bessel function of the first kind of order v (real).
		
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
	static public function iv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ivector(?name:Dynamic):Dynamic;
	static public function ivectors(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		Bessel function of the first kind of order 0.
		
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
	static public function j0(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Bessel function of the first kind of order 1.
		
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
	static public function j1(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the full Jacobian, row by row.
		
		Parameters
		----------
		expression : Vector (1-dimensional) :class:`~theano.gof.graph.Variable`
		    Values that we are differentiating (that we want the Jacobian of)
		wrt : :class:`~theano.gof.graph.Variable` or list of Variables
		    Term[s] with respect to which we compute the Jacobian
		consider_constant : list of variables
		    Expressions not to backpropagate through
		
		disconnected_inputs: string
		    Defines the behaviour if some of the variables
		    in `wrt` are not part of the computational graph computing `cost`
		    (or if all links are non-differentiable). The possible values are:
		
		    - 'ignore': considers that the gradient on these parameters is zero.
		    - 'warn': consider the gradient zero, and print a warning.
		    - 'raise': raise an exception.
		
		Returns
		-------
		:class:`~theano.gof.graph.Variable` or list/tuple of Variables (depending upon `wrt`)
		    The Jacobian of `expression` with respect to (elements of) `wrt`.
		    If an element of `wrt` is not differentiable with respect to the
		    output, then a zero variable is returned. The return value is
		    of same type as `wrt`: a list/tuple or TensorVariable in all cases.
	**/
	static public function jacobian(expression:Dynamic, wrt:Dynamic, ?consider_constant:Dynamic, ?disconnected_inputs:Dynamic):Dynamic;
	/**
		Convenience function to concatenate `TensorType`s along the given axis.
		
		This function will not add the op in the graph when it is not useful.
		For example, in the case that the list of tensors to be concatenated
		is one, it will just return the tensor.
		
		Parameters
		----------
		tensors : list of tensors (or list-like)
		    A list of tensors to be concatenated along the given axis.
		    The shapes of the tensors to be concatenated must be all
		    identical, except in the dimension (`axis`) on which they are to
		    be joined.
		axis : int (symbolic or literal)
		    On which dimension should the tensors be joined?  The `axis`
		    must be a valid index into the shape of the tensors to be
		    concatenated.
		    The `axis` parameter may either be an integer or an object that
		    can be converted to a scalar using `as_scalar`(`axis`). In the
		    former case, the axis is fixed at construction, while in the
		    latter it may vary over time depending on the value of the
		    `axis` variable.
	**/
	static public function join(axis:Dynamic, ?tensors_list:python.VarArgs<Dynamic>):Dynamic;
	static public function join_(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Bessel function of the first kind of order v (real).
		
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
	static public function jv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		comparator function based on "key" function
	**/
	static public function key_to_cmp(key:Dynamic):Dynamic;
	/**
		Return the [elementwise] largest of a variable number of arguments.
		
		Like python's max.
	**/
	static public function largest(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function lcol(?name:Dynamic):Dynamic;
	static public function lcols(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		a <= b
		
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
	static public function le(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lmatrices(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function lmatrix(?name:Dynamic):Dynamic;
	/**
		Load an array from an .npy file.
		
		Parameters
		----------
		path
		    A Generic symbolic variable, that will contain a string
		dtype : data-type
		    The data type of the array to be read.
		broadcastable
		    The broadcastable pattern of the loaded array, for instance,
		    (False,) for a vector, (False, True) for a column,
		    (False, False) for a matrix.
		mmap_mode
		    How the file will be loaded. None means that the
		    data will be copied into an array in memory, 'c' means that the file
		    will be mapped into virtual memory, so only the parts that are
		    needed will be actually read from disk and put into memory.
		    Other modes supported by numpy.load ('r', 'r+', 'w+') cannot
		    be supported by Theano.
		
		Examples
		--------
		>>> from theano import *
		>>> path = Variable(Generic())
		>>> x = tensor.load(path, 'int64', (False,))
		>>> y = x*2
		>>> fn = function([path], y)
		>>> fn("stored-array.npy")  # doctest: +SKIP
		array([0, 2, 4, 6, 8], dtype=int64)
	**/
	static public function load(path:Dynamic, dtype:Dynamic, broadcastable:Dynamic, ?mmap_mode:Dynamic):Dynamic;
	/**
		base e logarithm of a
		
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
	static public function log(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		base 10 logarithm of a
		
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
	static public function log10(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		log(1+a)
		
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
	static public function log1p(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		base 2 logarithm of a
		
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
	static public function log2(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lrow(?name:Dynamic):Dynamic;
	static public function lrows(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function lscalar(?name:Dynamic):Dynamic;
	static public function lscalars(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		a < b
		
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
	static public function lt(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ltensor3(?name:Dynamic):Dynamic;
	static public function ltensor3s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function ltensor4(?name:Dynamic):Dynamic;
	static public function ltensor4s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function ltensor5(?name:Dynamic):Dynamic;
	static public function ltensor5s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function ltensor6(?name:Dynamic):Dynamic;
	static public function ltensor6s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function ltensor7(?name:Dynamic):Dynamic;
	static public function ltensor7s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function lvector(?name:Dynamic):Dynamic;
	static public function lvectors(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		Reintroduces in y with length one the axes of x which have been left out
		in a prior reduction of x. With this option, the resulting tensor will
		broadcast correctly against the original tensor x.
	**/
	static public function makeKeepDims(x:Dynamic, y:Dynamic, axis:Dynamic):Dynamic;
	/**
		Convert python litterals to theano constants in subtensor arguments.
	**/
	static public function make_constant(args:Dynamic):Dynamic;
	static public function make_slice(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function matrices(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return a symbolic matrix variable.
		
		Parameters
		----------
		dtype: numeric
		    None means to use theano.config.floatX.
		name
		    A name to attach to this variable.
	**/
	static public function matrix(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns maximum elements obtained by iterating over given axis.
		
		When axis is None (the default value), the max is performed
		over the flattened tensor.
		
		Parameters
		----------
		keepdims: bool
		    If this is set to True, the axes which are reduced are left in
		    the result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original tensor.
		
		Notes
		-----
		We return an error as numpy when we reduce a dim with a shape of 0.
	**/
	static public function max(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Returns maximum elements and their indices obtained by iterating over
		given axis.
		
		When axis is None (the default value), the max is performed
		over the flattened tensor.
		
		Parameters
		----------
		keepdims : bool
		    If this is set to True, the axes which are reduced are left in
		    the result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original tensor.
	**/
	static public function max_and_argmax(a:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		elemwise maximum. See max for the maximum in one tensor
		
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
	static public function maximum(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Computes the mean value along the given axis(es) of a tensor `input`.
		
		Parameters
		----------
		axis : None or int or (list of int) (see `Sum`)
		    Compute the mean along this axis of the tensor.
		    None means all axes (like numpy).
		dtype: None or string
		    Dtype to cast the result of the inner summation into.
		    For instance, by default, a sum of a float32 tensor will be
		    done in float64 (acc_dtype would be float64 by default),
		    but that result will be casted back in float32.
		keepdims: bool
		    If this is set to True, the axes which are reduced are
		    left in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original tensor.
		acc_dtype: None or string
		    Dtype to use for the inner summation. This will not
		    necessarily be the dtype of the output (in particular
		    if it is a discrete (int/uint) dtype, the output will
		    be in a float type). If None, then we use the same rules as `sum()`.
		
		Notes
		-----
		For gpu, if you specify dtype=float32, everything will be done on the gpu.
	**/
	static public function mean(input:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?op:Dynamic, ?keepdims:Dynamic, ?acc_dtype:Dynamic):Dynamic;
	static public var mgrid : Dynamic;
	/**
		Returns minimum elements obtained by iterating over given axis.
		
		When axis is None (the default value), the min is performed
		over the flattened tensor.
		
		Parameters
		----------
		keepdims: bool
		    If this is set to True, the axes which are reduced are left in
		    the result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original tensor.
	**/
	static public function min(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Returns a string specifying to the user what obj is
		The string will print out as much of the graph as is needed
		for the whole thing to be specified in terms only of constants
		or named variables.
		
		
		Parameters
		----------
		obj: the name to convert to a string
		indent_level: the number of tabs the tree should start printing at
		              (nested levels of the tree will get more tabs)
		_prev_obs: should only be used by min_informative_str
		                a dictionary mapping previously converted
		                objects to short tags
		
		
		Basic design philosophy
		-----------------------
		
		The idea behind this function is that it can be used as parts of
		command line tools for debugging or for error messages. The
		information displayed is intended to be concise and easily read by
		a human. In particular, it is intended to be informative when
		working with large graphs composed of subgraphs from several
		different people's code, as in pylearn2.
		
		Stopping expanding subtrees when named variables are encountered
		makes it easier to understand what is happening when a graph
		formed by composing several different graphs made by code written
		by different authors has a bug.
		
		An example output is:
		
		A. Elemwise{add_no_inplace}
		    B. log_likelihood_v_given_h
		    C. log_likelihood_h
		
		
		If the user is told they have a problem computing this value, it's
		obvious that either log_likelihood_h or log_likelihood_v_given_h
		has the wrong dimensionality. The variable's str object would only
		tell you that there was a problem with an
		Elemwise{add_no_inplace}. Since there are many such ops in a
		typical graph, such an error message is considerably less
		informative. Error messages based on this function should convey
		much more information about the location in the graph of the error
		while remaining succint.
		
		One final note: the use of capital letters to uniquely identify
		nodes within the graph is motivated by legibility. I do not use
		numbers or lower case letters since these are pretty common as
		parts of names of ops, etc. I also don't use the object's id like
		in debugprint because it gives such a long string that takes time
		to visually diff.
	**/
	static public function min_informative_str(obj:Dynamic, ?indent_level:Dynamic, ?_prev_obs:Dynamic, ?_tag_generator:Dynamic):Dynamic;
	/**
		elemwise minimum. See min for the minimum in one tensor
		
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
	static public function minimum(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		elementwise modulo
		
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
	static public function mod(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make sure we do not try to use complex numbers.
	**/
	static public function mod_check(x:Dynamic, y:Dynamic):Dynamic;
	static public var mpi_cmps : Dynamic;
	static public var mpi_enabled : Dynamic;
	static public var mpi_keys : Dynamic;
	static public function mpi_send_wait_cmp(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Wait as long as possible on Waits, Start Send/Recvs early.
	**/
	static public function mpi_send_wait_key(a:Dynamic):Dynamic;
	static public function mpi_tag_cmp(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Break MPI ties by using the variable tag - prefer lower tags first.
	**/
	static public function mpi_tag_key(a:Dynamic):Dynamic;
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
	/**
		-a
		
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
	static public function neg(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		a != b
		
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
	static public function neq(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function none_type_t(?name:Dynamic):Dynamic;
	/**
		Returns one of the following:
		
		    If return_matrix is False (default, same as NumPy):
		        A tuple of vector arrays such that the ith element of the jth array
		        is the index of the ith non-zero element of the input array in the
		        jth dimension.
		
		    If return_matrix is True (same as Theano Op):
		        Returns a matrix of shape (ndim, number of nonzero elements) such
		        that element (i,j) is the index in the ith dimension of the jth
		        non-zero element.
		
		Parameters
		----------
		a : array_like
		    Input array.
		return_matrix : bool
		    If True, returns a symbolic matrix. If False, returns a tuple of
		    arrays. Defaults to False.
		
		Returns
		-------
		tuple of vectors or matrix
		
		See Also
		--------
		nonzero_values : Return the non-zero elements of the input array
		flatnonzero : Return the indices of the non-zero elements of the
		    flattened input array.
	**/
	static public function nonzero(a:Dynamic, ?return_matrix:Dynamic):Dynamic;
	/**
		Return a vector of non-zero elements contained in the input array.
		
		The following behavior works to extract non-zero elements from an array
		in NumPy but is *NOT* supported by Theano:
		
		    a[numpy.nonzero(a)]
		
		Instead, the nonzero_values function or method should be used:
		
		    tensor.nonzero_values(a)
		    a.nonzero_values()
		
		This is equivalent to the following:
		
		    a.flatten()[tensor.flatnonzero(a)]
		
		Parameters
		----------
		a : tensor
		    Input tensor
		
		Returns
		-------
		vector
		    Output vector, containing the non-zero elements of a.
		
		See Also
		--------
		nonzero : Return the indices of the non-zero elements of the input array.
		flatnonzero : Return the indices of the non-zero elements of the
		    flattened input array.
	**/
	static public function nonzero_values(a:Dynamic):Dynamic;
	static public var numpy_diagonal_return_view : Dynamic;
	/**
		Return a scalar stored in a numpy ndarray.
		
		Raises
		------
		 NotScalarConstantError
		    If the numpy ndarray is not a scalar.
	**/
	static public function numpy_scalar(data:Dynamic):Dynamic;
	static public var ogrid : Dynamic;
	/**
		Create a Tensor filled with ones, closer to Numpy's syntax than ``alloc``.
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		equivalent of numpy.ones_like
		Parameters
		----------
		model : tensor
		dtype : data-type, optional
		opt : If True, we will return a constant instead of a graph when possible.
		      Useful for Theano optimization, not for user building a graph as this
		      have the consequence that model isn't always in the graph.
		
		Returns
		-------
		tensor
		    tensor the shape of model containing ones of the type of dtype.
	**/
	static public function ones_like(model:Dynamic, ?dtype:Dynamic, ?opt:Dynamic):Dynamic;
	/**
		bitwise a | b
		
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
	static public function or_(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return vector-vector outer product.
		
		If an input isn't a vector, we flatten it first.
	**/
	static public function outer(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Make the input adopt a specific broadcasting pattern.
		
		Broadcastable must be iterable. For example,
		patternbroadcast(x, (True, False)) will make the first
		dimension of x broadcastable and the second dimension
		not broadcastable, so x will now be a row.
		
		We apply the opt here not to pollute the graph especially during the gpu
		optimization.
		
		Parameters
		----------
		x : tensor_like
		    Input theano tensor.
		broadcastable : an iterable object such as list or tuple of bool values
		    A set of boolean values indicating whether a dimension should be
		    broadcastable or not. If the length of x along these dimensions is
		    not 1, a ValueError will be raised.
		
		Returns
		-------
		tensor
		    A theano tensor, which is unbroadcastable along the specified dimensions.
	**/
	static public function patternbroadcast(x:Dynamic, broadcastable:Dynamic):Dynamic;
	static public function permute_row_elements(x:Dynamic, y:Dynamic, ?inverse:Dynamic):Dynamic;
	/**
		elementwise power
		
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
	static public function pow(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function power(x:Dynamic, y:Dynamic):Dynamic;
	static public function pprint(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Computes the product along the given axis(es) of a tensor `input`.
		
		When axis is None (the default value), the product is performed
		over the flattened tensor.
		
		For full documentation see ``tensor.elemwise.Prod``.
		
		Parameters
		----------
		keepdims: bool
		    If this is set to True, the axes which are reduced are left in
		    the result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original tensor.
	**/
	static public function prod(input:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?keepdims:Dynamic, ?acc_dtype:Dynamic, ?no_zeros_in_input:Dynamic):Dynamic;
	/**
		derivative of log gamma function
		
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
	static public function psi(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Range of values (maximum - minimum) along an axis.
		
		The name of the function comes from the acronym for peak to peak.
		
		Parameters
		----------
		a
		    Input tensor.
		axis
		    Axis along which to find the peaks. By default, flatten the array.
		
		Returns
		-------
		array
		    A new array holding the result.
	**/
	static public function ptp(a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return True if bool(x) is True for all values x in the iterable.
		
		If the iterable is empty, return True.
	**/
	static public function python_all(iterable:Dynamic):Dynamic;
	/**
		Return True if bool(x) is True for any x in the iterable.
		
		If the iterable is empty, return False.
	**/
	static public function python_any(iterable:Dynamic):Dynamic;
	/**
		convert radian a to degree
		
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
	static public function rad2deg(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Converts a tuple of index arrays into an array of flat
		indices, applying boundary modes to the multi-index.
		
		Parameters
		----------
		multi_index : tuple of Theano or NumPy arrays
		    A tuple of integer arrays, one array for each dimension.
		dims : tuple of ints
		    The shape of array into which the indices from ``multi_index`` apply.
		mode : {'raise', 'wrap', 'clip'}, optional
		    Specifies how out-of-bounds indices are handled.  Can specify
		    either one mode or a tuple of modes, one mode per index.
		    * 'raise' -- raise an error (default)
		    * 'wrap' -- wrap around
		    * 'clip' -- clip to the range
		    In 'clip' mode, a negative index which would normally
		    wrap will clip to 0 instead.
		order : {'C', 'F'}, optional
		    Determines whether the multi-index should be viewed as
		    indexing in row-major (C-style) or column-major
		    (Fortran-style) order.
		
		Returns
		-------
		raveled_indices : Theano array
		    An array of indices into the flattened version of an array
		    of dimensions ``dims``.
		
		See Also
		--------
		unravel_index
	**/
	static public function ravel_multi_index(multi_index:Dynamic, dims:Dynamic, ?mode:Dynamic, ?order:Dynamic):Dynamic;
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
	static public function real(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Blocking receive.
	**/
	static public function recv(shape:Dynamic, dtype:Dynamic, source:Dynamic, tag:Dynamic):Dynamic;
	/**
		Register a transfer function for alternative targets.
		
		Parameters
		----------
		fn : callable
	**/
	static public function register_transfer(fn:Dynamic):Dynamic;
	/**
		Repeat elements of an array.
		
		It returns an array which has the same shape as `x`, except
		along the given axis. The axis is used to speficy along which
		axis to repeat values. By default, use the flattened input
		array, and return a flat output array.
		
		The number of repetitions for each element is `repeat`.
		`repeats` is broadcasted to fit the length of the given `axis`.
		
		Parameters
		----------
		x
		    Input data, tensor variable.
		repeats
		    int, scalar or tensor variable
		axis : int, optional
		
		See Also
		--------
		tensor.tile
		
		.. versionadded:: 0.6
	**/
	static public function repeat(x:Dynamic, repeats:Dynamic, ?axis:Dynamic):Dynamic;
	static public function reshape(x:Dynamic, newshape:Dynamic, ?ndim:Dynamic):Dynamic;
	/**
		Convenience function to roll TensorTypes along the given axis.
		
		Syntax copies numpy.roll function.
		
		Parameters
		----------
		x : tensor_like
		    Input tensor.
		shift : int (symbolic or literal)
		    The number of places by which elements are shifted.
		axis : int (symbolic or literal), optional
		    The axis along which elements are shifted. By default, the array
		    is flattened before shifting, after which the original
		    shape is restored.
		
		Returns
		-------
		tensor
		    Output tensor, with the same shape as ``x``.
	**/
	static public function roll(x:Dynamic, shift:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		round_mode(a) with mode in [half_away_from_zero, half_to_even].
		Default to half_to_even.
	**/
	static public function round(a:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		round_half_away_from_zero(a)
		
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
	static public function round_half_away_from_zero(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		round_half_to_even(a)
		
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
	static public function round_half_to_even(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a symbolic row variable (ndim=2, broadcastable=[True,False]).
		
		Parameters
		----------
		dtype: numeric type
		    None means to use theano.config.floatX.
		name
		    A name to attach to this variable.
	**/
	static public function row(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function rows(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return a symbolic scalar variable.
		
		Parameters
		----------
		dtype: numeric
		    None means to use theano.config.floatX.
		name
		    A name to attach to this variable.
	**/
	static public function scalar(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function scalar_from_tensor(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function scalars(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		Create a matrix by filling the shape of a with b
		
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
	static public function second(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Blocking send.
	**/
	static public function send(_var:Dynamic, dest:Dynamic, tag:Dynamic):Dynamic;
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
	static public function setdefault(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		sign of a
		
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
	static public function sgn(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function shape(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Reshape `t` by inserting 1 at the dimension `axis`.
		
		Example
		-------
		>>> tensor = theano.tensor.tensor3()
		>>> theano.tensor.shape_padaxis(tensor, axis=0)
		DimShuffle{x,0,1,2}.0
		>>> theano.tensor.shape_padaxis(tensor, axis=1)
		DimShuffle{0,x,1,2}.0
		>>> theano.tensor.shape_padaxis(tensor, axis=3)
		DimShuffle{0,1,2,x}.0
		>>> theano.tensor.shape_padaxis(tensor, axis=-1)
		DimShuffle{0,1,2,x}.0
		
		See Also
		--------
		shape_padleft
		shape_padright
		Dimshuffle
	**/
	static public function shape_padaxis(t:Dynamic, axis:Dynamic):Dynamic;
	/**
		Reshape `t` by left-padding the shape with `n_ones` 1s.
		
		See Also
		--------
		shape_padaxis
		shape_padright
		Dimshuffle
	**/
	static public function shape_padleft(t:Dynamic, ?n_ones:Dynamic):Dynamic;
	/**
		Reshape `t` by right-padding the shape with `n_ones` 1s.
		
		See Also
		--------
		shape_padaxis
		shape_padleft
		Dimshuffle
	**/
	static public function shape_padright(t:Dynamic, ?n_ones:Dynamic):Dynamic;
	/**
		sine of a
		
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
	static public function sin(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		hyperbolic sine of a
		
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
	static public function sinh(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function slicetype(?name:Dynamic):Dynamic;
	/**
		Return the [elementwise] smallest of a variable number of arguments.
		
		Like python's min.
	**/
	static public function smallest(?args:python.VarArgs<Dynamic>):Dynamic;
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
	static public var sparse_module_ref : Dynamic;
	static public function specify_shape(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function split(x:Dynamic, splits_size:Dynamic, n_splits:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		square of a
		
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
	static public function sqr(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		square root of a
		
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
	static public function sqrt(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		square of a
		
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
	static public function square(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Remove broadcastable dimensions from the shape of an array.
		
		It returns the input array, but with the
		broadcastable dimensions removed. This is
		always `x` itself or a view into `x`.
		
		.. versionadded:: 0.6
		
		Parameters
		----------
		x
		    Input data, tensor variable.
		
		Returns
		-------
		object
		    `x` without its broadcastable dimensions.
	**/
	static public function squeeze(x:Dynamic):Dynamic;
	/**
		Stack tensors in sequence on given axis (default is 0).
		
		Take a sequence of tensors and stack them on given axis to make a single
		tensor. The size in dimension `axis` of the result will be equal to the number
		of tensors passed.
		
		Note: The interface stack(*tensors) is deprecated, you should use
		stack(tensors, axis=0) insted.
		
		Parameters
		----------
		tensors : list or tuple of tensors
		    A list of tensors to be stacked.
		axis : int
		    The index of the new axis. Default value is 0.
		
		Examples
		--------
		>>> a = theano.tensor.scalar()
		>>> b = theano.tensor.scalar()
		>>> c = theano.tensor.scalar()
		>>> x = theano.tensor.stack([a, b, c])
		>>> x.ndim # x is a vector of length 3.
		1
		>>> a = theano.tensor.tensor4()
		>>> b = theano.tensor.tensor4()
		>>> c = theano.tensor.tensor4()
		>>> x = theano.tensor.stack([a, b, c])
		>>> x.ndim # x is a 5d tensor.
		5
		>>> rval = x.eval(dict((t, np.zeros((2, 2, 2, 2))) for t in [a, b, c]))
		>>> rval.shape # 3 tensors are stacked on axis 0
		(3, 2, 2, 2, 2)
		>>> x = theano.tensor.stack([a, b, c], axis=3)
		>>> x.ndim
		5
		>>> rval = x.eval(dict((t, np.zeros((2, 2, 2, 2))) for t in [a, b, c]))
		>>> rval.shape # 3 tensors are stacked on axis 3
		(2, 2, 2, 3, 2)
		>>> x = theano.tensor.stack([a, b, c], axis=-2)
		>>> x.ndim
		5
		>>> rval = x.eval(dict((t, np.zeros((2, 2, 2, 2))) for t in [a, b, c]))
		>>> rval.shape # 3 tensors are stacked on axis -2
		(2, 2, 2, 3, 2)
	**/
	static public function stack(?tensors:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Recursively stack lists of tensors to maintain similar structure.
		
		This function can create a tensor from a shaped list of scalars:
		
		Examples
		--------
		>>> from theano.tensor import stacklists, scalars, matrices
		>>> from theano import function
		>>> a, b, c, d = scalars('abcd')
		>>> X = stacklists([[a, b], [c, d]])
		>>> f = function([a, b, c, d], X)
		>>> f(1, 2, 3, 4)
		array([[ 1.,  2.],
		       [ 3.,  4.]], dtype=float32)
		
		We can also stack arbitrarily shaped tensors. Here we stack matrices into
		a 2 by 2 grid:
		
		>>> from numpy import ones
		>>> a, b, c, d = matrices('abcd')
		>>> X = stacklists([[a, b], [c, d]])
		>>> f = function([a, b, c, d], X)
		>>> x = ones((4, 4), 'float32')
		>>> f(x, x, x, x).shape
		(2, 2, 4, 4)
	**/
	static public function stacklists(arg:Dynamic):Dynamic;
	/**
		Computes the standard deviation along the given axis(es) of a tensor `input`.
		
		Parameters
		----------
		axis: None or int or (list of int) (see `Sum`)
		    Compute the variance along this axis of the tensor.
		    None means all axes (like numpy).
		ddof: Degrees of freedom; 0 would compute the ML estimate, 1 would compute
		    the unbiased estimate.
		keepdims : bool
		    If this is set to True, the axes which are reduced are
		    left in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original tensor.
		corrected : bool
		    If this is set to True, the 'corrected_two_pass' algorithm is
		    used to compute the variance.
		    Refer : http://www.cs.yale.edu/publications/techreports/tr222.pdf
		
		Notes
		-----
		It calls 'var()' and 'var()' uses the two-pass algorithm (reference below).
		https://en.wikipedia.org/wiki/Algorithms_for_calculating_variance#Two-pass_algorithm
		Function 'var()' also supports 'corrected_two_pass' algorithm (using the
		'corrected' flag) which is numerically more stable. There exist other
		implementations that offer better stability, but probably slower.
	**/
	static public function std(input:Dynamic, ?axis:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic, ?corrected:Dynamic):Dynamic;
	/**
		elementwise subtraction
		
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
	static public function sub(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Computes the sum along the given axis(es) of a tensor `input`.
		
		When axis is None (the default value), the sum is performed
		over the flattened tensor.
		
		For full documentation see ``tensor.elemwise.Sum``.
		In particular please pay attention to the important warning when using
		a custom acc_dtype.
		
		Parameters
		----------
		keepdims: bool
		    If this is set to True, the axes which are reduced are left in
		    the result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original tensor.
	**/
	static public function sum(input:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?keepdims:Dynamic, ?acc_dtype:Dynamic):Dynamic;
	/**
		swap axes of inputted tensor
	**/
	static public function swapaxes(y:Dynamic, axis1:Dynamic, axis2:Dynamic):Dynamic;
	/**
		if cond then ift else iff
		
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
	@:native("switch")
	static public function _switch(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function take(a:Dynamic, indices:Dynamic, ?axis:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		tangent of a
		
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
	static public function tan(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		hyperbolic tangent of a
		
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
	static public function tanh(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function tensor(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a symbolic 3-D variable.
		
		Parameters
		----------
		dtype: numeric type
		    None means to use theano.config.floatX.
		name
		    A name to attach to this variable.
	**/
	static public function tensor3(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function tensor3s(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return a symbolic 4-D variable.
		
		Parameters
		----------
		dtype: numeric type
		    None means to use theano.config.floatX.
		name
		    A name to attach to this variable.
	**/
	static public function tensor4(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function tensor4s(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return a symbolic 5-D variable.
		
		Parameters
		----------
		dtype: numeric type
		    None means to use theano.config.floatX.
		name
		    A name to attach to this variable.
	**/
	static public function tensor5(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function tensor5s(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return a symbolic 6-D variable.
		
		Parameters
		----------
		dtype: numeric type
		    None means to use theano.config.floatX.
		name
		    A name to attach to this variable.
	**/
	static public function tensor6(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function tensor6s(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return a symbolic 7-D variable.
		
		Parameters
		----------
		dtype: numeric type
		    None means to use theano.config.floatX.
		name
		    A name to attach to this variable.
	**/
	static public function tensor7(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function tensor7s(?names:python.VarArgs<Dynamic>):Dynamic;
	static public function tensor_copy(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function tensor_from_scalar(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute a generalized dot product over provided axes.
		
		Given two tensors a and b, tensordot computes a generalized dot product over
		the provided axes. Theano's implementation reduces all expressions to
		matrix or vector dot products and is based on code from Tijmen Tieleman's
		gnumpy (http://www.cs.toronto.edu/~tijmen/gnumpy.html).
		
		Parameters
		----------
		a: symbolic tensor
		    The first tensor variable.
		b: symbolic tensor
		    The second tensor variable
		axes: int or array-like of length 2
		    If an integer, the number of axes to sum over.
		    If an array, it must have two array elements containing the axes
		    to sum over in each tensor.
		
		    Note that the default value of 2 is not guaranteed to work
		    for all values of a and b, and an error will be raised if
		    that is the case. The reason for keeping the default is to
		    maintain the same signature as numpy's tensordot function
		    (and np.tensordot raises analogous errors for non-compatible
		    inputs).
		
		    If an integer i, it is converted to an array containing
		    the last i dimensions of the first tensor and the first
		    i dimensions of the second tensor:
		        axes = [list(range(a.ndim - i, b.ndim)), list(range(i))]
		
		    If an array, its two elements must contain compatible axes
		    of the two tensors. For example, [[1, 2], [2, 0]] means sum
		    over the 2nd and 3rd axes of a and the 3rd and 1st axes of b.
		    (Remember axes are zero-indexed!) The 2nd axis of a and the
		    3rd axis of b must have the same shape; the same is true for
		    the 3rd axis of a and the 1st axis of b.
		
		Returns
		-------
		symbolic tensor
		    A tensor with shape equal to the concatenation of a's shape
		    (less any dimensions that were summed over) and b's shape
		    (less any dimensions that were summed over).
		
		Examples
		--------
		It may be helpful to consider an example to see what tensordot does.
		Theano's implementation is identical to NumPy's. Here a has shape (2, 3, 4)
		and b has shape (5, 6, 4, 3). The axes to sum over are [[1, 2], [3, 2]] --
		note that a.shape[1] == b.shape[3] and a.shape[2] == b.shape[2]; these axes
		are compatible. The resulting tensor will have shape (2, 5, 6) -- the
		dimensions that are not being summed:
		
		>>> a = np.random.random((2,3,4))
		>>> b = np.random.random((5,6,4,3))
		
		#tensordot
		>>> c = np.tensordot(a, b, [[1,2],[3,2]])
		
		#loop replicating tensordot
		>>> a0, a1, a2 = a.shape
		>>> b0, b1, _, _ = b.shape
		>>> cloop = np.zeros((a0,b0,b1))
		
		#loop over non-summed indices -- these exist
		#in the tensor product.
		>>> for i in range(a0):
		...     for j in range(b0):
		...         for k in range(b1):
		...             #loop over summed indices -- these don't exist
		...             #in the tensor product.
		...             for l in range(a1):
		...                 for m in range(a2):
		...                     cloop[i,j,k] += a[i,l,m] * b[j,k,m,l]
		
		>>> np.allclose(c, cloop)
		true
		
		This specific implementation avoids a loop by transposing a and b such that
		the summed axes of a are last and the summed axes of b are first. The
		resulting arrays are reshaped to 2 dimensions (or left as vectors, if
		appropriate) and a matrix or vector dot product is taken. The result is
		reshaped back to the required output dimensions.
		
		In an extreme case, no axes may be specified. The resulting tensor
		will have shape equal to the concatenation of the shapes of a and b:
		
		>>> c = np.tensordot(a, b, 0)
		>>> print(a.shape)
		(2,3,4)
		>>> print(b.shape)
		(5,6,4,3)
		>>> print(c.shape)
		(2,3,4,5,6,4,3)
		
		See the documentation of numpy.tensordot for more examples.
	**/
	static public function tensordot(a:Dynamic, b:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		Tile input array `x` according to `reps`.
		
		See the docstring of `numpy.tile` for details.
		
		'reps' can be constant integer (e.g. 3), constant vector(e.g. [2 3]),
		symbolic scalar (e.g. tensor.iscalar()), symbolic vector (e.g. tensor.ivector())
		or a list of symbolic scalar (e.g. [tensor.iscalar(), tensor.iscalar()]).
		
		ndim is the number of the dimensions of the output, if it is provided, ndim
		should be equal or larger than x.ndim and len(reps), otherwise, we will use
		max(x.ndim, len(reps)) as ndim. If reps is symbolic vector, the ndim has to
		be provided.
	**/
	static public function tile(x:Dynamic, reps:Dynamic, ?ndim:Dynamic):Dynamic;
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
	/**
		Return a version of `var` transferred to `target`.
		
		`cpu` mean a TensorType (on the CPU).  Other types may define
		additional targets.
		
		Parameters
		----------
		var : variable
		    A theano variable
		target : str
		    The target of the transfer
	**/
	static public function transfer(_var:Dynamic, target:Dynamic):Dynamic;
	/**
		Reorder the dimensions of x. (Default: reverse them)
		
		This is a macro around dimshuffle that matches the numpy.transpose function.
	**/
	static public function transpose(x:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		An array with ones at and below the given diagonal and zeros elsewhere.
		
		Parameters
		----------
		N : int
		    Number of rows in the array.
		M : int, optional
		    Number of columns in the array.
		    By default, `M` is taken equal to `N`.
		k : int, optional
		    The sub-diagonal at and below which the array is filled.
		    `k` = 0 is the main diagonal, while `k` < 0 is below it,
		    and `k` > 0 is above.  The default is 0.
		dtype : dtype, optional
		    Data type of the returned array.  The default is float.
		
		Returns
		-------
		Array of shape (N, M)
		    Array with its lower triangle filled with ones and zero elsewhere;
		    in other words ``T[i,j] == 1`` for ``i <= j + k``, 0 otherwise.
	**/
	static public function tri(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		second derivative of the log gamma function
		
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
	static public function tri_gamma(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Lower triangle of an array.
		
		Return a copy of an array with elements above the `k`-th diagonal zeroed.
		
		Parameters
		----------
		m : array_like, shape (M, N)
		    Input array.
		k : int, optional
		    Diagonal above which to zero elements.  `k = 0` (the default) is the
		    main diagonal, `k < 0` is below it and `k > 0` is above.
		
		Returns
		-------
		array, shape (M, N)
		    Lower triangle of `m`, of same shape and data-type as `m`.
		
		See Also
		--------
		triu : Same thing, only for the upper triangle.
	**/
	static public function tril(m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Upper triangle of an array.
		
		Return a copy of a matrix with the elements below the `k`-th diagonal
		zeroed.
		
		Please refer to the documentation for `tril` for further details.
		
		See Also
		--------
		tril : Lower triangle of an array.
	**/
	static public function triu(m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		elementwise [true] division (inverse of multiplication)
		
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
	static public function true_div(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		trunc of a
		
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
	static public function trunc(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var uint_dtypes : Dynamic;
	/**
		Make the input impossible to broadcast in the specified axes.
		
		For example, addbroadcast(x, 0) will make the first dimension
		of x broadcastable. When performing the function, if the length
		of x along that dimension is not 1, a ValueError will be raised.
		
		We apply the opt here not to pollute the graph especially during
		the gpu optimization
		
		Parameters
		----------
		x : tensor_like
		    Input theano tensor.
		axis : an int or an iterable object such as list or tuple of int values
		    The dimension along which the tensor x should be unbroadcastable.
		    If the length of x along these dimensions is not 1, a ValueError will
		    be raised.
		
		Returns
		-------
		tensor
		    A theano tensor, which is unbroadcastable along the specified dimensions.
	**/
	static public function unbroadcast(x:Dynamic, ?axes:python.VarArgs<Dynamic>):Dynamic;
	/**
		Converts a flat index or array of flat indices into a tuple
		of coordinate arrays.
		
		This method is similar to the NumPy version, except for the
		additional ``ndim`` parameter. This parameter is required if
		the length of ``dims`` cannot be determined automatically.
		
		Parameters
		----------
		indices : Theano or NumPy array
		    An integer array whose elements are indices into the flattened
		    version of an array of dimensions ``dims``.
		dims : tuple of ints
		    The shape of the array to use for unraveling ``indices``.
		order : {'C', 'F'}, optional
		    Determines whether the indices should be viewed as indexing in
		    row-major (C-style) or column-major (Fortran-style) order.
		ndim : int, optional
		    Specifies the number of dimensions, i.e., the length of
		    ``dims``. This is required if the dimensions cannot be determined
		    automatically from ``dims`` itself.
		
		Returns
		-------
		unraveled_coords : tuple of ndarray
		    Each array in the tuple has the same shape as the ``indices``
		    array.
		
		See Also
		--------
		ravel_multi_index
	**/
	static public function unravel_index(indices:Dynamic, dims:Dynamic, ?order:Dynamic, ?ndim:Dynamic):Dynamic;
	static public function values_eq_approx_always_true(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Computes the variance along the given axis(es) of a tensor `input`.
		
		Parameters
		----------
		axis: None or int or (list of int) (see `Sum`)
		    Compute the variance along this axis of the tensor.
		    None means all axes (like numpy).
		ddof: Degrees of freedom; 0 would compute the ML estimate, 1 would compute
		    the unbiased estimate.
		keepdims : bool
		    If this is set to True, the axes which are reduced are
		    left in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original tensor.
		corrected : bool
		    If this is set to True, the 'corrected_two_pass' algorithm is
		    used to compute the variance.
		    Refer : http://www.cs.yale.edu/publications/techreports/tr222.pdf
		
		Notes
		-----
		Default uses the two-pass algorithm (reference below).
		https://en.wikipedia.org/wiki/Algorithms_for_calculating_variance#Two-pass_algorithm
		Also supports 'corrected_two_pass' algorithm (using the 'corrected' flag)
		which is numerically more stable. There exist other implementations that
		offer better stability, but probably slower.
	**/
	@:native("var")
	static public function _var(input:Dynamic, ?axis:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic, ?corrected:Dynamic):Dynamic;
	/**
		Return a symbolic vector variable.
		
		Parameters
		----------
		dtype: numeric
		    None means to use theano.config.floatX.
		name
		    A name to attach to this variable
	**/
	static public function vector(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function vectors(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		Test a gradient by Finite Difference Method. Raise error on failure.
		
		Raises an Exception if the difference between the analytic gradient and
		numerical gradient (computed through the Finite Difference Method) of a
		random projection of the fun's output to a scalar exceeds the given
		tolerance.
		
		Examples
		--------
		>>> verify_grad(theano.tensor.tanh,
		...             (np.asarray([[2, 3, 4], [-1, 3.3, 9.9]]),),
		...             rng=np.random)
		
		Parameters
		----------
		fun : a Python function
		    `fun` takes Theano variables as inputs, and returns a Theano variable.
		    For instance, an Op instance with  a single output.
		pt : list of numpy.ndarrays
		    Input values, points where the gradient is estimated.
		    These arrays must be either float16, float32, or float64 arrays.
		n_tests : int
		    number of times to run the test
		rng : numpy.random.RandomState, optional
		    random number generator used to sample the output random projection `u`,
		    we test gradient of sum(u * fun) at `pt`
		eps : float, optional
		    stepsize used in the Finite Difference Method (Default
		    None is type-dependent).
		    Raising the value of eps can raise or lower the absolute
		    and relative errors of the verification depending on the
		    Op. Raising eps does not lower the verification quality for
		    linear operations. It is better to raise `eps` than raising
		    `abs_tol` or `rel_tol`.
		out_type : string
		    dtype of output, if complex (i.e., 'complex32' or 'complex64')
		abs_tol : float
		    absolute tolerance used as threshold for gradient comparison
		rel_tol : float
		    relative tolerance used as threshold for gradient comparison
		cast_to_output_type : bool
		    if the output is float32 and cast_to_output_type is True, cast
		    the random projection to float32. Otherwise it is float64.
		    float16 is not handled here.
		no_debug_ref : bool
		    Don't use DebugMode for the numerical gradient function.
		
		Note
		----
		This function does not support multiple outputs. In
		tests/test_scan.py there is an experimental verify_grad that
		covers that case as well by using random projections.
	**/
	static public function verify_grad(fun:Dynamic, pt:Dynamic, ?n_tests:Dynamic, ?rng:Dynamic, ?eps:Dynamic, ?out_type:Dynamic, ?abs_tol:Dynamic, ?rel_tol:Dynamic, ?mode:Dynamic, ?cast_to_output_type:Dynamic, ?no_debug_ref:Dynamic):Dynamic;
	static public function vertical_stack(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function wcol(?name:Dynamic):Dynamic;
	/**
		if cond then ift else iff
		
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
	static public function where(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function wmatrix(?name:Dynamic):Dynamic;
	static public function wrow(?name:Dynamic):Dynamic;
	static public function wscalar(?name:Dynamic):Dynamic;
	static public function wtensor3(?name:Dynamic):Dynamic;
	static public function wtensor4(?name:Dynamic):Dynamic;
	static public function wtensor5(?name:Dynamic):Dynamic;
	static public function wtensor6(?name:Dynamic):Dynamic;
	static public function wtensor7(?name:Dynamic):Dynamic;
	static public function wvector(?name:Dynamic):Dynamic;
	/**
		bitwise a ^ b
		
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
	static public function xor(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function zcol(?name:Dynamic):Dynamic;
	/**
		Create a Tensor filled with zeros, closer to Numpy's syntax than ``alloc``.
	**/
	static public function zeros(shape:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		equivalent of numpy.zeros_like
		Parameters
		----------
		model : tensor
		dtype : data-type, optional
		opt : If True, we will return a constant instead of a graph when possible.
		      Useful for Theano optimization, not for user building a graph as this
		      have the consequence that model isn't always in the graph.
		
		Returns
		-------
		tensor
		    tensor the shape of model containing zeros of the type of dtype.
	**/
	static public function zeros_like(model:Dynamic, ?dtype:Dynamic, ?opt:Dynamic):Dynamic;
	static public function zmatrix(?name:Dynamic):Dynamic;
	static public function zrow(?name:Dynamic):Dynamic;
	static public function zscalar(?name:Dynamic):Dynamic;
	static public function ztensor3(?name:Dynamic):Dynamic;
	static public function ztensor4(?name:Dynamic):Dynamic;
	static public function ztensor5(?name:Dynamic):Dynamic;
	static public function ztensor6(?name:Dynamic):Dynamic;
	static public function ztensor7(?name:Dynamic):Dynamic;
	static public function zvector(?name:Dynamic):Dynamic;
}