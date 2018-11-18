/* This file is generated, do not edit! */
package tensorflow.contrib.specs.python;
@:pythonImport("tensorflow.contrib.specs.python") extern class Python_Module {
	static public function Ap(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Bn(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Cl(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Cm(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Cr(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Cs(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Ct(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Cx(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Do(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Depth-wise convolution + softmax (used after LSTM).
	**/
	static public function Dwm(n:Dynamic):Dynamic;
	/**
		Depth-wise convolution + sigmoid (used after LSTM).
	**/
	static public function Dws(n:Dynamic):Dynamic;
	static public function Expand(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Import a function from an external module.
		
		Note that the `module_name` must be a module name
		that works with the usual import mechanisms. Shorthands
		like "tf.nn" will not work.
		
		Args:
		    module_name: name of the module
		    function_name: name of the function within the module
		
		Returns:
		    Function-wrapped value of symbol.
	**/
	static public function External(module_name:Dynamic, function_name:Dynamic):Dynamic;
	static public function Fl(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Flat(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Fm(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Fr(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Fs(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Ft(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Fx(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Id(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Import a function by exec.
		
		Args:
		    statements: Python statements
		
		Returns:
		    Function-wrapped value of `f`.
		
		Raises:
		    ValueError: the statements didn't define a value for "f"
	**/
	static public function Import(statements:Dynamic):Dynamic;
	static public var KEYWORDS : Dynamic;
	/**
		Log-uniform distributed floatint point number.
	**/
	static public function Lf(lo:Dynamic, hi:Dynamic):Dynamic;
	/**
		Log-uniform distributed integer, inclusive limits.
	**/
	static public function Li(lo:Dynamic, hi:Dynamic):Dynamic;
	static public function Lrn(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Mp(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var NEGATIVE_INFINITY : Dynamic;
	static public var NaN : Dynamic;
	/**
		Normally distributed floating point number with truncation.
	**/
	static public function Nt(mu:Dynamic, sigma:Dynamic, ?limit:Dynamic):Dynamic;
	static public var PI : Dynamic;
	static public var POSITIVE_INFINITY : Dynamic;
	static public function Print(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var QUOTED : Dynamic;
	static public function Relu(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Reshape(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var SHORT_NAMES : Dynamic;
	static public var SHORT_NAMES_SRC : Dynamic;
	static public function Sig(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Smax(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Squeeze(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Tanh(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Transpose(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Uniformly distributed floating number.
	**/
	static public function Uf(?lo:Dynamic, ?hi:Dynamic):Dynamic;
	/**
		Uniformly distributed integer, inclusive limits.
	**/
	static public function Ui(lo:Dynamic, hi:Dynamic):Dynamic;
	static public function Unit(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implements an operator that generates a variable.
		
		This function is still experimental. Use it only
		for generating a single variable instance for
		each name.
		
		Args:
		    name: Name of the variable.
		    *args: Other arguments to get_variable.
		    **kw: Other keywords for get_variable.
		
		Returns:
		    A specs object for generating a variable.
	**/
	static public function Var(name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		acos(x)
		
		Return the arc cosine (measured in radians) of x.
	**/
	static public function acos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		acosh(x)
		
		Return the inverse hyperbolic cosine of x.
	**/
	static public function acosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		asin(x)
		
		Return the arc sine (measured in radians) of x.
	**/
	static public function asin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		asinh(x)
		
		Return the inverse hyperbolic sine of x.
	**/
	static public function asinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		atan(x)
		
		Return the arc tangent (measured in radians) of x.
	**/
	static public function atan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		atan2(y, x)
		
		Return the arc tangent (measured in radians) of y/x.
		Unlike atan(y/x), the signs of both x and y are considered.
	**/
	static public function atan2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		atanh(x)
		
		Return the inverse hyperbolic tangent of x.
	**/
	static public function atanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ceil(x)
		
		Return the ceiling of x as an Integral.
		This is the smallest integer >= x.
	**/
	static public function ceil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check for common Python keywords in spec.
		
		This function discourages the use of complex constructs
		in TensorFlow specs; it doesn't completely prohibit them
		(if necessary, we could check the AST).
		
		Args:
		    spec: spec string
		
		Raises:
		    ValueError: raised if spec contains a prohibited keyword.
	**/
	static public function check_keywords(spec:Dynamic):Dynamic;
	/**
		copysign(x, y)
		
		Return a float with the magnitude (absolute value) of x but the sign 
		of y. On platforms that support signed zeros, copysign(1.0, -0.0) 
		returns -1.0.
	**/
	static public function copysign(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cos(x)
		
		Return the cosine of x (measured in radians).
	**/
	static public function cos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cosh(x)
		
		Return the hyperbolic cosine of x.
	**/
	static public function cosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Evaluates a spec and creates a network instance given the inputs.
		
		Args:
		    spec: specification as a string, ending with a `net = ...` statement
		    inputs: input that `net` is applied to
		    environment: a dictionary of input bindings
		
		Returns:
		    A callable that instantiates the `net` binding.
		
		Raises:
		    ValueError: spec failed to create a `net`
		    Exception: other exceptions raised during execution of `spec`
	**/
	static public function create_net(spec:Dynamic, inputs:Dynamic, ?environment:Dynamic):Dynamic;
	/**
		Evaluates a spec and returns the binding of `net`.
		
		Specs are written in a DSL based on function composition.  A spec
		like `net = Cr(64, [3, 3])` assigns an object that represents a
		single argument function capable of creating a network to
		the variable `net`.
		
		Args:
		    spec: specification as a string, ending with a `net = ...` statement
		    environment: a dictionary of input bindings
		
		Returns:
		    A callable that instantiates the `net` binding.
		
		Raises:
		    ValueError: spec failed to create a `net`
		    Exception: other exceptions raised during execution of `spec`
	**/
	static public function create_net_fun(spec:Dynamic, ?environment:Dynamic):Dynamic;
	/**
		Turn on/off debugging mode.
		
		Debugging mode prints more information about the construction
		of a network.
		
		Args:
		    mode: True if turned on, False otherwise
	**/
	static public function debug(?mode:Dynamic):Dynamic;
	static public var debug_ : Dynamic;
	/**
		degrees(x)
		
		Convert angle x from radians to degrees.
	**/
	static public function degrees(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var e : Dynamic;
	/**
		erf(x)
		
		Error function at x.
	**/
	static public function erf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		erfc(x)
		
		Complementary error function at x.
	**/
	static public function erfc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Evaluates a parameter specification and returns the environment.
		
		Args:
		    params: parameter assignments as a string
		    environment: a dictionary of input bindings
		
		Returns:
		    Environment with additional bindings created by
		    executing `params`
		
		Raises:
		    Exception: other exceptions raised during execution of `params`
	**/
	static public function eval_params(params:Dynamic, ?environment:Dynamic):Dynamic;
	/**
		Evaluates a spec and returns the environment.
		
		This function allows you to use a spec to obtain multiple bindings
		in an environment. That is useful if you use the spec language to
		specify multiple components of a larger network, for example: "left
		= Cr(64, [5,5]); right = Fc(64)" Usually, you will want to use
		`create_net` or `create_net_fun` below.
		
		Args:
		    spec: specification as a string
		    environment: a dictionary of input bindings
		
		Returns:
		    Environment with additional bindings created by spec.
		
		Raises:
		    Exception: other exceptions raised during execution of `spec`
	**/
	static public function eval_spec(spec:Dynamic, ?environment:Dynamic):Dynamic;
	/**
		Execute the given source in the context of globals and locals.
		
		The source may be a string representing one or more Python statements
		or a code object as returned by compile().
		The globals must be a dictionary and locals can be any mapping,
		defaulting to the current globals and locals.
		If only globals is given, locals defaults to it.
	**/
	static public function exec_(source:Dynamic, ?globals:Dynamic, ?locals:Dynamic):Dynamic;
	/**
		exp(x)
		
		Return e raised to the power of x.
	**/
	static public function exp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		expm1(x)
		
		Return exp(x)-1.
		This function avoids the loss of precision involved in the direct evaluation of exp(x)-1 for small x.
	**/
	static public function expm1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fabs(x)
		
		Return the absolute value of the float x.
	**/
	static public function fabs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		factorial(x) -> Integral
		
		Find x!. Raise a ValueError if x is negative or non-integral.
	**/
	static public function factorial(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		floor(x)
		
		Return the floor of x as an Integral.
		This is the largest integer <= x.
	**/
	static public function floor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fmod(x, y)
		
		Return fmod(x, y), according to platform C.  x % y may differ.
	**/
	static public function fmod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frexp(x)
		
		Return the mantissa and exponent of x, as pair (m, e).
		m is a float and e is an int, such that x = m * 2.**e.
		If x is 0, m and e are both 0.  Else 0.5 <= abs(m) < 1.0.
	**/
	static public function frexp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fsum(iterable)
		
		Return an accurate floating point sum of values in the iterable.
		Assumes IEEE-754 floating point arithmetic.
	**/
	static public function fsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gamma(x)
		
		Gamma function at x.
	**/
	static public function gamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gcd(x, y) -> int
		greatest common divisor of x and y
	**/
	static public function gcd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Interpolates keyword arguments into argument lists.
		
		If `kw` contains keywords of the form "_0", "_1", etc., these
		are positionally interpolated into the argument list.
		
		Args:
		    args: argument list
		    kw: keyword dictionary
		    kw_overrides: key/value pairs that override kw
		
		Returns:
		    (new_args, new_kw), new argument lists and keyword dictionaries
		    with values interpolated.
	**/
	static public function get_positional(args:Dynamic, kw:Dynamic, ?kw_overrides:Dynamic):Dynamic;
	/**
		hypot(x, y)
		
		Return the Euclidean distance, sqrt(x*x + y*y).
	**/
	static public function hypot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var inf : Dynamic;
	/**
		isclose(a, b, *, rel_tol=1e-09, abs_tol=0.0) -> bool
		
		Determine whether two floating point numbers are close in value.
		
		   rel_tol
		       maximum difference for being considered "close", relative to the
		       magnitude of the input values
		    abs_tol
		       maximum difference for being considered "close", regardless of the
		       magnitude of the input values
		
		Return True if a is close in value to b, and False otherwise.
		
		For the values to be considered close, the difference between them
		must be smaller than at least one of the tolerances.
		
		-inf, inf and NaN behave similarly to the IEEE 754 Standard.  That
		is, NaN is not close to anything, even itself.  inf and -inf are
		only close to themselves.
	**/
	static public function isclose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isfinite(x) -> bool
		
		Return True if x is neither an infinity nor a NaN, and False otherwise.
	**/
	static public function isfinite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isinf(x) -> bool
		
		Return True if x is a positive or negative infinity, and False otherwise.
	**/
	static public function isinf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isnan(x) -> bool
		
		Return True if x is a NaN (not a number), and False otherwise.
	**/
	static public function isnan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ldexp(x, i)
		
		Return x * (2**i).
	**/
	static public function ldexp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lgamma(x)
		
		Natural logarithm of absolute value of Gamma function at x.
	**/
	static public function lgamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log(x[, base])
		
		Return the logarithm of x to the given base.
		If the base not specified, returns the natural logarithm (base e) of x.
	**/
	static public function log(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log10(x)
		
		Return the base 10 logarithm of x.
	**/
	static public function log10(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log1p(x)
		
		Return the natural logarithm of 1+x (base e).
		The result is computed in a way which is accurate for x near zero.
	**/
	static public function log1p(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log2(x)
		
		Return the base 2 logarithm of x.
	**/
	static public function log2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		modf(x)
		
		Return the fractional and integer parts of x.  Both results carry the sign
		of x and are floats.
	**/
	static public function modf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var nan : Dynamic;
	static public var pi : Dynamic;
	/**
		pow(x, y)
		
		Return x**y (x to the power of y).
	**/
	static public function pow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		radians(x)
		
		Convert angle x from degrees to radians.
	**/
	static public function radians(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sin(x)
		
		Return the sine of x (measured in radians).
	**/
	static public function sin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sinh(x)
		
		Return the hyperbolic sine of x.
	**/
	static public function sinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sqrt(x)
		
		Return the square root of x.
	**/
	static public function sqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tan(x)
		
		Return the tangent of x (measured in radians).
	**/
	static public function tan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tanh(x)
		
		Return the hyperbolic tangent of x.
	**/
	static public function tanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var tau : Dynamic;
	/**
		Split the parameters of op for left recursion.
		
		Args:
		  op: tf.Operation
		
		Returns:
		  A tuple of the leftmost input tensor and a list of the
		  remaining arguments.
	**/
	static public function tf_left_split(op:Dynamic):Dynamic;
	/**
		Number of parameters in a TensorFlow subgraph.
		
		Args:
		    x: root of the subgraph (Tensor, Operation)
		
		Returns:
		    Total number of elements found in all Variables
		    in the subgraph.
	**/
	static public function tf_num_params(x:Dynamic):Dynamic;
	/**
		Iterate over the left branches of a graph and yield sizes.
		
		Args:
		    x: root of the subgraph (Tensor, Operation)
		
		Yields:
		    A triple of name, number of params, and shape.
	**/
	static public function tf_parameter_iter(x:Dynamic):Dynamic;
	/**
		Summarize parameters by depth.
		
		Args:
		    x: root of the subgraph (Tensor, Operation)
		    printer: print function for output
		    combine: combine layers by top-level scope
	**/
	static public function tf_parameter_summary(x:Dynamic, ?printer:Dynamic, ?combine:Dynamic):Dynamic;
	/**
		A simple print function for a TensorFlow graph.
		
		Args:
		    x: a tf.Tensor or tf.Operation
		    depth: current printing depth
		    finished: set of nodes already output
		    printer: print function to use
		
		Returns:
		    Total number of parameters found in the
		    subtree.
	**/
	static public function tf_print(x:Dynamic, ?depth:Dynamic, ?finished:Dynamic, ?printer:Dynamic):Dynamic;
	/**
		Print a tree representing the spec.
		
		Args:
		    spec: specification
		    inputs: input to the spec construction (usually a Tensor)
		    input_shape: optional shape of input
		    input_type: type of the input tensor
	**/
	static public function tf_spec_print(spec:Dynamic, ?inputs:Dynamic, ?input_shape:Dynamic, ?input_type:Dynamic):Dynamic;
	/**
		Return a postfix representation of the specification.
		
		This is intended to be used as part of test cases to
		check for gross differences in the structure of the graph.
		The resulting string is not invertible or unabiguous
		and cannot be used to reconstruct the graph accurately.
		
		Args:
		    spec: specification
		    inputs: input to the spec construction (usually a Tensor)
		    input_shape: tensor shape (in lieu of inputs)
		    input_type: type of the input tensor
		
		Returns:
		    A string with a postfix representation of the
		    specification.
	**/
	static public function tf_spec_structure(spec:Dynamic, ?inputs:Dynamic, ?input_shape:Dynamic, ?input_type:Dynamic):Dynamic;
	/**
		Output a summary of the specification.
		
		This prints a list of left-most tensor operations and summarized the
		variables found in the right branches. This kind of representation
		is particularly useful for networks that are generally structured
		like pipelines.
		
		Args:
		    spec: specification
		    inputs: input to the spec construction (usually a Tensor)
		    input_shape: optional shape of input
		    input_type: type of the input tensor
	**/
	static public function tf_spec_summary(spec:Dynamic, ?inputs:Dynamic, ?input_shape:Dynamic, ?input_type:Dynamic):Dynamic;
	/**
		A postfix expression summarizing the TF graph.
		
		This is intended to be used as part of test cases to
		check for gross differences in the structure of the graph.
		The resulting string is not invertible or unabiguous
		and cannot be used to reconstruct the graph accurately.
		
		Args:
		    x: a tf.Tensor or tf.Operation
		    include_shapes: include shapes in the output string
		    finished: a set of ops that have already been output
		
		Returns:
		    A string representing the structure as a string of
		    postfix operations.
	**/
	static public function tf_structure(x:Dynamic, ?include_shapes:Dynamic, ?finished:Dynamic):Dynamic;
	/**
		trunc(x:Real) -> Integral
		
		Truncates x to the nearest Integral toward 0. Uses the __trunc__ magic method.
	**/
	static public function trunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
}