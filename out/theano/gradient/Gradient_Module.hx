/* This file is generated, do not edit! */
package theano.gradient;
@:pythonImport("theano.gradient") extern class Gradient_Module {
	static public var FAST_RUN : Dynamic;
	/**
		Computes the L operation on `f` wrt to `wrt` evaluated at points given
		in `eval_points`. Mathematically this stands for the jacobian of `f` wrt
		to `wrt` left muliplied by the eval points.
		
		:type f: Variable or list of Variables
		    `f` stands for the output of the computational graph to which you
		    want to apply the L operator
		:type wrt: Variable or list of `Variables`s
		    variables for which you compute the L operator of the expression
		    described by `f`
		:type eval_points: Variable or list of Variables
		                    evalutation points for each of the variables in `f`
		
		:rtype: :class:`~theano.gof.Variable` or list/tuple of Variables depending on type of f
		:return: symbolic expression such that
		    L_op[i] = sum_i ( d f[i] / d wrt[j]) eval_point[i]
		    where the indices in that expression are magic multidimensional
		    indices that specify both the position within a list and all
		    coordinates of the tensor element in the last
		    If `f` is a list/tuple, then return a list/tuple with the results.
	**/
	static public function Lop(f:Dynamic, wrt:Dynamic, eval_points:Dynamic, ?consider_constant:Dynamic, ?disconnected_inputs:Dynamic):Dynamic;
	/**
		Computes the R operation on `f` wrt to `wrt` evaluated at points given
		in `eval_points`. Mathematically this stands for the jacobian of `f` wrt
		to `wrt` right muliplied by the eval points.
		
		:type f: Variable or list of Variables
		         `f` stands for the output of the computational graph to which you
		         want to apply the R operator
		:type wrt: Variable or list of `Variables`s
		           variables for which you compute the R operator of the expression
		           described by `f`
		:type eval_points: Variable or list of Variables
		                   evalutation points for each of the variables in `wrt`
		:rtype: :class:`~theano.gof.Variable` or list/tuple of Variables depending on type of f
		:return: symbolic expression such that
		    R_op[i] = sum_j ( d f[i] / d wrt[j]) eval_point[j]
		    where the indices in that expression are magic multidimensional
		    indices that specify both the position within a list and all
		    coordinates of the tensor element in the last.
		    If `wrt` is a list/tuple, then return a list/tuple with the results.
	**/
	static public function Rop(f:Dynamic, wrt:Dynamic, eval_points:Dynamic):Dynamic;
	static public var __authors__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __contact__ : Dynamic;
	static public var __copyright__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __license__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Like ones_like, but forces the object to have a
		floating point dtype 
	**/
	static public function _float_ones_like(x:Dynamic):Dynamic;
	/**
		Like zeros_like, but forces the object to have a
		a floating point dtype 
	**/
	static public function _float_zeros_like(x:Dynamic):Dynamic;
	/**
		Returns 'yes', 'no', or 'maybe' indicating whether x
		is always 0.
		'maybe' means that x is an expression that is complicated enough
		that we can't tell that it simplifies to 0.
	**/
	static public function _is_zero(x:Dynamic):Dynamic;
	static public var _logger : Dynamic;
	static public var _msg_retType : Dynamic;
	/**
		given an apply node, obtain its connection pattern
		this is just a wrapper around Op.connection_pattern
		that does type checking and supplies the default value
		if the method is not implemented
	**/
	static public function _node_to_pattern(node:Dynamic):Dynamic;
	/**
		Helper function for grad function.
		
		var_to_app_to_idx: a dictionary mapping a variable to
		        a second dictionary.
		        the second dictionary maps apply nodes acting on
		        this variable to the variable's index in the apply
		        node's input list
		
		grad_dict: A dictionary mapping variables to their gradients.
		           Should be populated by grad function, which should:
		               -Set the gradient with respect to the cost to 1
		               -Load all gradients from known_grads, possibly
		                overriding the cost
		               -Set the gradient for disconnected
		                inputs to a variable with type DisconnectedType()
		
		wrt: the minimal set of variables that must be included in grad_dict
		
		cost_name: The name of the cost being differentiated, optional.
		            used to name the grad with respect to x as
		            (d<cost_name>/dx)
		
		returns: a list of gradients corresponding to wrt
	**/
	static public function _populate_grad_dict(var_to_app_to_idx:Dynamic, grad_dict:Dynamic, wrt:Dynamic, ?cost_name:Dynamic):Dynamic;
	/**
		Helper function for grad function.
		
		outputs: a list of variables we want to take gradients of
		
		wrt: a list of variables we want to take the gradient with
		    respect to.
		
		consider_constant: a list of variables not to backpropagate
		    through.
		
		returns:
		
		 var_to_app_to_idx:
		
		  A dictionary mapping a variable to a second dictionary.
		  The second dictionary maps apply nodes acting on this
		  variable to the variable's index in the apply node's
		  input list.
		
		  This dictionary will only contain variables that
		  meet two criteria:
		
		   1) The elements of at least one output are a
		      function of the elements of the variable
		
		   2) The elements of the variable are a function of the
		      elements of at least one member of wrt.
		
		  This set is exactly the set of variables that connect
		  the variables in wrt to the cost being differentiated.
		
		  (A variable in consider_constant is not a function of
		  anything)
	**/
	static public function _populate_var_to_app_to_idx(outputs:Dynamic, wrt:Dynamic, consider_constant:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
	static public function consider_constant_(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Consider an expression constant when computing gradients,
		while effectively not backpropagating through it.
		
		The expression itself is unaffected, but when its gradient is
		computed, or the gradient of another expression that this
		expression is a subexpression of, it will not be backpropagated
		through. This is effectively equivalent to truncating the gradient
		expression to 0, but is executed faster than zero_grad(), which stilll
		has to go through the underlying computational graph related to the
		expression.
		
		:param x: A Theano expression whose gradient should not be
		          backpropagated through.
		
		:return: The expression is returned unmodified, but its gradient
		    is now effectively truncated to 0.
	**/
	static public function disconnected_grad(x:Dynamic):Dynamic;
	static public function disconnected_grad_(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function disconnected_type(?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Formats the outputs according to the flags `use_list` and `use_tuple`.
		If `use_list` is True, `outputs` is returned as a list (if `outputs`
		is not a list or a tuple then it is converted in a one element list).
		If `use_tuple` is True, `outputs` is returned as a tuple (if `outputs`
		is not a list or a tuple then it is converted into a one element tuple).
		Otherwise (if both flags are false), `outputs` is returned.
	**/
	static public function format_as(use_list:Dynamic, use_tuple:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Intended use:
		
		    for val_1, ..., val_n in get_debug_values(var_1, ..., var_n):
		        if some condition on val_1, ..., val_n is not met:
		            debug_error_message("condition was not met")
		
		Given a list of variables, get_debug_values does one of three things:
		
		    1. If the interactive debugger is off, returns an empty list
		    2. If the interactive debugger is on, and all variables have
		        debug values, returns a list containing a single element.
		        This single element is either:
		            a) if there is only one variable, the element is its
		               value
		            b) otherwise, a tuple containing debug values of all
		               the variables.
		    3. If the interactive debugger is on, and some variable does
		        not have a debug value, issue a missing_test_message about
		        the variable, and, if still in control of execution, return
		        an empty list.
	**/
	static public function get_debug_values(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return symbolic gradients for one or more variables with respect to some
		cost.
		
		For more information about how automatic differentiation works in Theano,
		see :mod:`gradient`. For information on how to implement the gradient of
		a certain Op, see :func:`grad`.
		
		Parameters
		----------
		cost : :class:`~theano.gof.Variable` scalar (0-dimensional) tensor variable or None
		    Value with respect to which we are differentiating.  May be
		    `None` if known_grads is provided.
		wrt : :class:`~theano.gof.Variable` or list of Variables
		    term[s] for which we want gradients
		consider_constant : list of variables
		    expressions not to backpropagate through
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
		    symbolic expression of gradient of `cost` with respect to each
		    of the `wrt` terms.  If an element of `wrt` is not
		    differentiable with respect to the output, then a zero
		    variable is returned.
	**/
	static public function grad(cost:Dynamic, wrt:Dynamic, ?consider_constant:Dynamic, ?disconnected_inputs:Dynamic, ?add_names:Dynamic, ?known_grads:Dynamic, ?return_disconnected:Dynamic, ?null_gradients:Dynamic):Dynamic;
	/**
		This op do a view in the forward, but clip the gradient.
		
		This is an elemwise operation.
		
		:param x: the variable we want its gradient inputs clipped
		:param lower_bound: The lower bound of the gradient value
		:param upper_bound: The upper bound of the gradient value.
		
		:examples:
		
		    x = theano.tensor.scalar()
		
		    z = theano.tensor.grad(grad_clip(x, -1, 1)**2, x)
		    z2 = theano.tensor.grad(x**2, x)
		
		    f = theano.function([x], outputs = [z, z2])
		
		    print(f(2.0))  # output (1.0, 4.0)
		
		:note: We register an opt in tensor/opt.py that remove the GradClip.
		   So it have 0 cost in the forward and only do work in the grad.
	**/
	static public function grad_clip(x:Dynamic, lower_bound:Dynamic, upper_bound:Dynamic):Dynamic;
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
		This op scale or inverse the gradient in the backpropagation.
		
		:param x: the variable we want its gradient inputs scale
		:param multiplier: scale of the gradient
		
		:examples:
		
		    x = theano.tensor.fscalar()
		    fx = theano.tensor.sin(x)
		
		    fp = theano.tensor.grad(fx, wrt=x)
		    fprime = theano.function([x], fp)
		    print(fprime(2))#-0.416
		
		    f_inverse=grad_scale(fx,-1.)
		    fpp = theano.tensor.grad(f_inverse, wrt=x)
		    fpprime = theano.function([x], fpp)
		    print(fpprime(2))#0.416
	**/
	static public function grad_scale(x:Dynamic, multiplier:Dynamic):Dynamic;
	static public var grad_time : Dynamic;
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
		:type cost: Scalar (0-dimensional) Variable.
		:type wrt: Vector (1-dimensional tensor) 'Variable' or list of
		           vectors (1-dimensional tensors) Variables
		
		:param consider_constant: a list of expressions not to backpropagate
		    through
		
		:type disconnected_inputs: string
		:param disconnected_inputs: Defines the behaviour if some of the variables
		    in ``wrt`` are not part of the computational graph computing ``cost``
		    (or if all links are non-differentiable). The possible values are:
		    - 'ignore': considers that the gradient on these parameters is zero.
		    - 'warn': consider the gradient zero, and print a warning.
		    - 'raise': raise an exception.
		
		:return: either a instance of Variable or list/tuple of Variables
		        (depending upon `wrt`) repressenting the Hessian of the `cost`
		        with respect to (elements of) `wrt`. If an element of `wrt` is not
		        differentiable with respect to the output, then a zero
		        variable is returned. The return value is of same type
		        as `wrt`: a list/tuple or TensorVariable in all cases.
	**/
	static public function hessian(cost:Dynamic, wrt:Dynamic, ?consider_constant:Dynamic, ?disconnected_inputs:Dynamic):Dynamic;
	/**
		Return an iterator over the values of a dictionary.
	**/
	static public function itervalues(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		:type expression: Vector (1-dimensional) Variable
		:type wrt: Variable or list of Variables
		
		:param consider_constant: a list of expressions not to backpropagate
		    through
		
		:type disconnected_inputs: string
		:param disconnected_inputs: Defines the behaviour if some of the variables
		    in ``wrt`` are not part of the computational graph computing ``cost``
		    (or if all links are non-differentiable). The possible values are:
		    - 'ignore': considers that the gradient on these parameters is zero.
		    - 'warn': consider the gradient zero, and print a warning.
		    - 'raise': raise an exception.
		
		:return: either a instance of Variable or list/tuple of Variables
		        (depending upon `wrt`) repesenting the jacobian of `expression`
		        with respect to (elements of) `wrt`. If an element of `wrt` is not
		        differentiable with respect to the output, then a zero
		        variable is returned. The return value is of same type
		        as `wrt`: a list/tuple or TensorVariable in all cases.
	**/
	static public function jacobian(expression:Dynamic, wrt:Dynamic, ?consider_constant:Dynamic, ?disconnected_inputs:Dynamic):Dynamic;
	static public function mode_not_debug(mode:Dynamic):Dynamic;
	static public function null_type(?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		With respect to `wrt`, computes gradients of cost and/or from
		existing `start` gradients, up to the `end` variables of a
		symbolic digraph.  In other words, computes gradients for a
		subgraph of the symbolic theano function. Ignores all disconnected
		inputs.
		
		This can be useful when one needs to perform the gradient descent
		iteratively (e.g. one layer at a time in an MLP), or when a
		particular operation is not differentiable in theano
		(e.g. stochastic sampling from a multinomial). In the latter case,
		the gradient of the non-differentiable process could be
		approximated by user-defined formula, which could be calculated
		using the gradients of a cost with respect to samples (0s and
		1s). These gradients are obtained by performing a subgraph_grad
		from the `cost` or previously known gradients (`start`) up to the
		outputs of the stochastic process (`end`).  A dictionary mapping
		gradients obtained from the user-defined differentiation of the
		process, to variables, could then be fed into another
		subgraph_grad as `start` with any other `cost` (e.g. weight
		decay).
		
		In an MLP, we could use subgraph_grad to iteratively backpropagate:
		
		.. code-block:: python
		
		    x, t = theano.tensor.fvector('x'), theano.tensor.fvector('t')
		    w1 = theano.shared(np.random.randn(3,4))
		    w2 = theano.shared(np.random.randn(4,2))
		    a1 = theano.tensor.tanh(theano.tensor.dot(x,w1))
		    a2 = theano.tensor.tanh(theano.tensor.dot(a1,w2))
		    cost2 = theano.tensor.sqr(a2 - t).sum()
		    cost2 += theano.tensor.sqr(w2.sum())
		    cost1 = theano.tensor.sqr(w1.sum())
		
		    params = [[w2],[w1]]
		    costs = [cost2,cost1]
		    grad_ends = [[a1], [x]]
		
		    next_grad = None
		    param_grads = []
		    for i in xrange(2):
		        param_grad, next_grad = theano.subgraph_grad(
		            wrt=params[i], end=grad_ends[i],
		            start=next_grad, cost=costs[i]
		        )
		        next_grad = dict(zip(grad_ends[i], next_grad))
		        param_grads.extend(param_grad)
		
		:type wrt: list of variables
		:param wrt:
		  Gradients are computed with respect to `wrt`.
		
		:type end: list of variables
		:param end:
		  Theano variables at which to end gradient descent (they are
		  considered constant in theano.grad).  For convenience, the
		  gradients with respect to these variables are also returned.
		
		:type start: dictionary of variables
		:param start:
		  If not None, a dictionary mapping variables to their
		  gradients. This is useful when the gradient on some variables
		  are known. These are used to compute the gradients backwards up
		  to the variables in `end` (they are used as known_grad in
		  theano.grad).
		
		:type cost: :class:`~theano.gof.Variable` scalar (0-dimensional) variable
		:param cost:
		  Additional costs for which to compute the gradients.  For
		  example, these could be weight decay, an l1 constraint, MSE,
		  NLL, etc. May optionally be None if start is provided.  Warning
		  : If the gradients of `cost` with respect to any of the `start`
		  variables is already part of the `start` dictionary, then it may
		  be counted twice with respect to `wrt` and `end`.
		
		  .. warning::
		
		    If the gradients of `cost` with respect to any of the `start`
		    variables is already part of the `start` dictionary, then it
		    may be counted twice with respect to `wrt` and `end`.
		
		
		:type details: bool
		:param details:
		  When True, additionally returns the list of gradients from
		  `start` and of `cost`, respectively, with respect to `wrt` (not
		  `end`).
		
		:rtype: Tuple of 2 or 4 Lists of Variables
		
		:return: Returns lists of gradients with respect to `wrt` and `end`,
		        respectively.
		
		.. versionadded:: 0.7
	**/
	static public function subgraph_grad(wrt:Dynamic, end:Dynamic, ?start:Dynamic, ?cost:Dynamic, ?details:Dynamic):Dynamic;
	static public var tensor : Dynamic;
	/**
		Test a gradient by Finite Difference Method. Raise error on failure.
		
		Example:
		    >>> verify_grad(theano.tensor.tanh,
		    ...             (numpy.asarray([[2,3,4], [-1, 3.3, 9.9]]),),
		    ...             rng=numpy.random)
		
		Raises an Exception if the difference between the analytic gradient and
		numerical gradient (computed through the Finite Difference Method) of a
		random projection of the fun's output to a scalar exceeds the given
		tolerance.
		
		:param fun: a Python function that takes Theano variables as inputs,
		    and returns a Theano variable. For instance, an Op instance with
		    a single output.
		:param pt: the list of numpy.ndarrays to use as input values.
		    These arrays must be either float16, float32, or float64 arrays.
		:param n_tests: number of times to run the test
		:param rng: random number generator used to sample u, we test gradient
		    of sum(u * fun) at pt
		:param eps: stepsize used in the Finite Difference Method (Default
		    None is type-dependent)
		    Raising the value of eps can raise or lower the absolute and
		    relative errors of the verification depending on the
		    Op. Raising eps does not lower the verification quality
		    for linear operations. It
		    is better to raise eps than raising abs_tol or rel_tol.
		:param out_type: dtype of output, if complex (i.e. 'complex32' or
		    'complex64')
		:param abs_tol: absolute tolerance used as threshold for gradient
		    comparison
		:param rel_tol: relative tolerance used as threshold for gradient
		    comparison
		:param cast_to_output_type: if the output is float32 and
		    cast_to_output_type is True, cast the random projection to
		    float32. Otherwise it is float64. float16 is not handled here.
		:param no_debug_ref: Don't use DebugMode for the numerical
		    gradient function.
		
		:note: This function does not support multiple outputs. In
		    tests/test_scan.py there is an experimental verify_grad that
		    covers that case as well by using random projections.
	**/
	static public function verify_grad(fun:Dynamic, pt:Dynamic, ?n_tests:Dynamic, ?rng:Dynamic, ?eps:Dynamic, ?out_type:Dynamic, ?abs_tol:Dynamic, ?rel_tol:Dynamic, ?mode:Dynamic, ?cast_to_output_type:Dynamic, ?no_debug_ref:Dynamic):Dynamic;
	/**
		Consider an expression constant when computing gradients.
		
		The expression itself is unaffected, but when its gradient is
		computed, or the gradient of another expression that this
		expression is a subexpression of, it will be backpropagated
		through with a value of zero. In other words, the gradient of
		the expression is truncated to 0.
		
		:param x: A Theano expression whose gradient should be truncated.
		
		:return: The expression is returned unmodified, but its gradient
		    is now truncated to 0.
	**/
	static public function zero_grad(x:Dynamic):Dynamic;
	static public function zero_grad_(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}