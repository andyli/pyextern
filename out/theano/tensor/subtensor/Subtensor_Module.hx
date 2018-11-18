/* This file is generated, do not edit! */
package theano.tensor.subtensor;
@:pythonImport("theano.tensor.subtensor") extern class Subtensor_Module {
	static public var NoneConst : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
	/**
		Sum of gx over dimensions to reproduce x.broadcastable.
		
		This is useful to sum gradients over certain dimensions when
		x has been broadcasted, and we need to sum the gradient contributions
		over all duplications.
	**/
	static public function _sum_grad_over_bcasted_dims(x:Dynamic, gx:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
	static public function alloc(val:Dynamic, ?shapes:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function as_index_variable(idx:Dynamic):Dynamic;
	/**
		This function checks if the index list in idx_list is correct.
		If there are any boolean masks, we check if the mask has the
		same shape as the input. This is enforced in NumPy 0.13.0 and
		newer, but not by earlier versions. If the size is not the same,
		this method raises an IndexError.
	**/
	static public function check_advanced_indexing_dimensions(input:Dynamic, idx_list:Dynamic):Dynamic;
	static public function check_and_reject_bool(args_el:Dynamic):Dynamic;
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
	static public var config : Dynamic;
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
	static public var division : Dynamic;
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
	static public function hashtype(self:Dynamic):Dynamic;
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
	static public var integer_types : Dynamic;
	/**
		Convert python litterals to theano constants in subtensor arguments.
	**/
	static public function make_constant(args:Dynamic):Dynamic;
	static public function make_slice(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function pprint(?args:python.VarArgs<Dynamic>):Dynamic;
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
	static public var sparse_module_ref : Dynamic;
	static public function take(a:Dynamic, indices:Dynamic, ?axis:Dynamic, ?mode:Dynamic):Dynamic;
}