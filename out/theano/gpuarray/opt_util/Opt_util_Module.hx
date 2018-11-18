/* This file is generated, do not edit! */
package theano.gpuarray.opt_util;
@:pythonImport("theano.gpuarray.opt_util") extern class Opt_util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator to merge multiplication by a scalar on the output.
		
		This will find a pattern of `scal * <yourop>(some, params, alpha,
		beta)` and update it so that the scalar multiplication happens as
		part of your op.
		
		The op needs to accept an alpha and a beta scalar which act this way::
		
		   out = Op() * alpha + out_like * beta
		
		Where out_like is a buffer that has the same size as the output
		and gets added to the "real" output of the operation.  An example
		of an operation that respects this pattern is GEMM from blas.
		
		The decorated function must have this signature::
		
		    maker(node, *inputs)
		
		The `node` argument you receive is the original apply node that
		contains your op.  You should use it to grab relevant properties
		for your op so that the new version performs the same computation.
		The `*inputs` parameters contains the new inputs for your op.  You
		MUST use those inputs instead of the ones on `node`.  Note that
		this function can be as simple as::
		
		    def maker(node, *inputs):
		        return node.op(*inputs)
		
		Parameters
		----------
		cls : op class
		    The class of the op you want to merge
		alpha_in : int
		    The input index for the alpha scalar for your op (in node.inputs).
		beta_in : int
		    The input index for the beta scalar for your op (in node.inputs).
		
		Returns
		-------
		local optimizer
		    an unregistered local optimizer that has the same name as the
		    decorated function.
		
		Notes
		-----
		This was factored out since the code to deal with intervening
		transfers and correctness in the presence of different values of
		alpha and beta scaling factors is not trivial.
	**/
	static public function alpha_merge(cls:Dynamic, alpha_in:Dynamic, beta_in:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Find the node that has an op of of type `cls` in `v`.
		
		This digs through possibly redundant transfers to for the node
		that has the type `cls`. If `ignore_clients` is False (the
		default) it will only dig through nodes that have a single client
		to avoid duplicating computations.
		
		Parameters
		----------
		v
		    The variable to dig through
		cls : Op class
		    The type of the node we are looking for
		ignore_clients : bool, optional
		    Whether to ignore multiple clients or not.
	**/
	static public function find_node(v:Dynamic, cls:Dynamic, ?ignore_clients:Dynamic):Dynamic;
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
	/**
		Get a scalar variable value from the tree at `v`.
		
		This function will dig through transfers and dimshuffles to get
		the constant value. If no such constant is found, it returns None.
		
		Parameters
		----------
		v
		    Theano variable to extract the constant value from.
		nd : int
		    Expected number of dimensions for the variable (for
		    broadcasted constants).
	**/
	static public function grab_cpu_scalar(v:Dynamic, nd:Dynamic):Dynamic;
	/**
		Contextmanager that copies the stack trace from one or more variable nodes to all
		variable nodes constructed in the body. new_nodes is the list of all the newly created
		variable nodes inside an optimization that is managed by graph.nodes_constructed().
		
		Parameters
		----------
		from_var
		    Variable node or a list of variable nodes to copy stack traces from.
	**/
	static public function inherit_stack_trace(from_var:Dynamic):Dynamic;
	/**
		Wrapper to make an inplace optimization that deals with AllocEmpty
		
		This will duplicate the alloc input if it has more than one client
		to allow the op to work on it inplace.
		
		The decorated function must have this signature::
		
		    maker(node, inputs)
		
		The `node` argument you receive is the original apply node that
		contains your op.  You should use it to grab relevant properties
		for your op so that the new version performs the same computation.
		You should also switch the op to work inplace.  The `*inputs`
		parameters contains the new inputs for your op.  You MUST use
		those inputs instead of the ones on `node`.  Note that this
		function can be as simple as::
		
		    def maker(node, inputs):
		        return [node.op.__class__(inplace=True)(*inputs)]
		
		Parameters
		----------
		op : op class
		    The op class to look for to make inplace
		idx : int
		    The index of the (possibly) AllocEmpty input (in node.inputs).
		
		Returns
		-------
		local optimizer
		    an unregistered inplace local optimizer that has the same name
		    as the decorated function.
	**/
	static public function inplace_allocempty(op:Dynamic, idx:Dynamic):Dynamic;
	/**
		Returns True if `var` is always equal to `val`.
		
		This will only return True if the variable will always be equal to
		the value.  If it might not be true in some cases then it returns False.
		
		Parameters
		----------
		var
		    Variable to compare
		val
		    Python value
	**/
	static public function is_equal(_var:Dynamic, val:Dynamic):Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
	/**
		Decorator to merge addition by a value on the output.
		
		This will find a pattern of `val * <yourop>(some, params, alpha,
		beta, out_like)` and update it so that the addtition happens as
		part of your op.
		
		The op needs to accept an alpha and a beta scalar which act this way::
		
		   out = Op() * alpha + out_like * beta
		
		Where out_like is a buffer that has the same size as the output
		and gets added to the "real" output of the operation.  An example
		of an operation that respects this pattern is GEMM from blas.
		
		The decorated function must have this signature::
		
		    maker(node, *inputs)
		
		The `node` argument you receive is the original apply node that
		contains your op.  You should use it to grab relevant properties
		for your op so that the new version performs the same computation.
		The `*inputs` parameters contains the new inputs for your op.  You
		MUST use those inputs instead of the ones on `node`.  Note that
		this function can be as simple as::
		
		    def maker(node, *inputs):
		        return node.op(*inputs)
		
		Parameters
		----------
		cls : op class
		    The class of the op you want to merge
		alpha_in : int
		    The input index for the alpha scalar for your op (in node.inputs).
		beta_in : int
		    The input index for the beta scalar for your op (in node.inputs).
		out_in : int
		    The input index for the out_like input for your op (in node.inputs).
		
		Returns
		-------
		local optimizer
		    an unregistered local optimizer that has the same name as the
		    decorated function.
		
		Notes
		-----
		This was factored out since the code to deal with intervening
		transfers and correctness in the presence of different values of
		alpha and beta scaling factors is not trivial.
		
		This also correctly handles the case where the added value is
		broadcasted (by not performing the replacement).
	**/
	static public function output_merge(cls:Dynamic, alpha_in:Dynamic, beta_in:Dynamic, out_in:Dynamic):Dynamic;
	/**
		Reshapes the input to a (leftdims + rightdims) tensor
		
		This helper function is used to convert pooling inputs with arbitrary
		non-pooling dimensions to the correct number of dimensions for the
		GPU pooling ops.
		
		This reduces or expands the number of dimensions of the input to
		exactly `leftdims`, by adding extra dimensions on the left or by
		combining some existing dimensions on the left of the input.
		
		Use `unpad_dims` to reshape back to the original dimensions.
		
		Examples
		--------
		Given input of shape (3, 5, 7), ``pad_dims(input, 2, 2)``
		adds a singleton dimension and reshapes to (1, 3, 5, 7).
		Given that output from pad_dims, ``unpad_dims(output, input, 2, 2)``
		reshapes back to (3, 5, 7).
		
		Given input of shape (3, 5, 7, 9), ``pad_dims(input, 2, 2)``
		does not reshape and returns output with shape (3, 5, 7, 9).
		
		Given input of shape (3, 5, 7, 9, 11), ``pad_dims(input, 2, 2)``
		combines the first two dimensions and reshapes to (15, 7, 9, 11).
		
		Given input of shape (3, 5, 7, 9), ``pad_dims(input, 2, 3)``
		adds a singleton dimension and reshapes to (1, 3, 5, 7, 9).
	**/
	static public function pad_dims(input:Dynamic, leftdims:Dynamic, rightdims:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reshapes the output after pad_dims.
		
		This reverts the padding by `pad_dims`.
	**/
	static public function unpad_dims(output:Dynamic, input:Dynamic, leftdims:Dynamic, rightdims:Dynamic):Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}