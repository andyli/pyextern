/* This file is generated, do not edit! */
package tensorflow.python.compiler.xla.xla;
@:pythonImport("tensorflow.python.compiler.xla.xla") extern class Xla_Module {
	static public var _DENYLISTED_OPS : Dynamic;
	static public var _MAX_WARNING_LINES : Dynamic;
	static public var _UNSUPPORTED_OPS : Dynamic;
	static public var _XLA_COMPILE_ATTR : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Builds graph operators that compiles and symbolically executes computation.
		
		Args:
		  computation: A Python function that builds the computation to compile and
		    execute.
		  inputs: A list of inputs or `None` (equivalent to an empty list). Each input
		    can be a nested structure containing values that are convertible to
		    tensors. Note that passing an N-dimension list of compatible values will
		    result in a N-dimension list of scalar tensors rather than a single Rank-N
		    tensors. If you need different behavior, convert part of inputs to tensors
		    with `tf.convert_to_tensor`.
		
		Returns:
		  Same data structure as if computation(*inputs) is called directly with some
		  exceptions for correctness. Exceptions include: 1) None output 2) Single
		  value output 3) Operation-only outputs
		Raises:
		  ValueError: If any element in computation outputs is neither an operations
		    or a value that can be converted to tensor.
		  ValueError: If computation outputs is non-flat and contains any Operations.
		  TypeError: If `inputs` is not a list or tuple.
	**/
	static public function _compile_internal(computation:Dynamic, ?inputs:Dynamic):Dynamic;
	/**
		Enters a context where all summary ops are skipped.
		
		Summaries are not yet supported in xla.compile(). So we provide this context
		manager that can skip creating summary ops. This is a temporary workaround due
		to XLA not supporting summary ops.
		
		Yields:
		  None.
	**/
	static public function _disable_summary_context():Dynamic;
	/**
		Retrieves the Scaffold from `captured_scaffold_fn`.
	**/
	static public function _get_scaffold(captured_scaffold_fn:Dynamic):Dynamic;
	/**
		Validates flat outputs and adds back device assignments.
		
		Args:
		  outputs: Output from `computation` inside `xla.compile`.
		
		Returns:
		  Tensors and Operations extracted from outputs.
	**/
	static public function _postprocess_flat_outputs(outputs:Dynamic):Dynamic;
	/**
		Validates non-flat outputs and adds back device assignments.
		
		Args:
		  outputs: Output from `computation` inside `xla.compile`.
		
		Returns:
		  Tensors extracted from outputs and an empty list because Operations are not
		  allowed in non-flat outputs..
	**/
	static public function _postprocess_non_flat_outputs(outputs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Validate the number of input arguments to an XLA function.
		
		Args:
		  func: the Python function that will be called to generate the body of an XLA
		    computation graph.
		  input_arity: the number of explicit arguments supplied by the caller.
		  infeed_queue: if not None, the infeed queue that will supply
		    additional arguments to the function.
		
		Returns:
		  None if function can be called with the supplied number of
		    arguments, or an error string if it cannot.
	**/
	static public function check_function_argument_count(func:Dynamic, input_arity:Dynamic, infeed_queue:Dynamic):Dynamic;
	/**
		Builds an operator that compiles and runs `computation` with XLA. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		xla.experimental.compile is deprecated. Consider using tf.function(jit_compile=True)
		
		NOTE: In eager mode, `computation` will have `@tf.function` semantics.
		
		Args:
		  computation: A Python function that builds a computation to apply to the
		    input. If the function takes n inputs, 'inputs' should be a list of n
		    tensors.
		
		    `computation` may return a list of operations and tensors.  Tensors must
		    come before operations in the returned list.  The return value of
		    `compile` is a list of tensors corresponding to the tensors from the
		    output of `computation`.
		
		    All `Operation`s returned from `computation` will be executed when
		    evaluating any of the returned output tensors.
		  inputs: A list of inputs or `None` (equivalent to an empty list). Each input
		    can be a nested structure containing values that are convertible to
		    tensors. Note that passing an N-dimension list of compatible values will
		    result in a N-dimension list of scalar tensors rather than a single Rank-N
		    tensors. If you need different behavior, convert part of inputs to tensors
		    with `tf.convert_to_tensor`.
		
		Returns:
		  Same data structure as if computation(*inputs) is called directly with some
		  exceptions for correctness. Exceptions include:
		    1) None output: a NoOp would be returned which control-depends on
		       computation.
		    2) Single value output: A tuple containing the value would be returned.
		    3) Operation-only outputs: a NoOp would be returned which
		       control-depends on computation.
		    TODO(b/121383831): Investigate into removing these special cases.
		
		Raises:
		  RuntimeError: if called when eager execution is enabled.
		
		Known issues:
		  When a tf.random operation is built with XLA, the implementation doesn't
		    pass the user provided seed to the XLA compiler. As such, the XLA compiler
		    generates a random number and uses it as a seed when compiling the
		    operation. This implementation causes a violation of the Tensorflow
		    defined semantics in two aspects. First, changing the value of the user
		    defined seed doesn't change the numbers generated by the operation.
		    Second, when a seed is not specified, running the program multiple times
		    will generate the same numbers.
	**/
	static public function compile(computation:Dynamic, ?inputs:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Checks if outputs is a flat structure.
		
		  Following structures and values are considered flat:
		  1) None
		  2) A single object
		  3) A list or tuple of Tensors/Operations
		
		  The only structures that this function understands are sequences,
		  dictionaries and types defined using the attrs library.  E.g. this means
		  that if outputs contains a single user-defined Object, it is considered to
		  be flat. Errors are raised later on if that Object cannot be converted to a
		  Tensor.
		
		Args:
		  outputs: Output from `computation` inside `xla.compile`.
		
		Returns:
		  A boolean indicates whether outputs is flat.
	**/
	static public function is_flat(outputs:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}