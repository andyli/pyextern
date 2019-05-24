/* This file is generated, do not edit! */
package tensorflow.contrib.compiler.xla;
@:pythonImport("tensorflow.contrib.compiler.xla") extern class Xla_Module {
	static public var _BLACKLISTED_OPS : Dynamic;
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
		  inputs: A list of input tensors or `None` (equivalent to `[]`). Its order
		    should match ordering of computation arguments.
		Returns:
		  A list of output tensors from computation.
		Raises:
		  ValueError: If any element in computation outputs is neither an operations
		    or a value that can be converted to tensor.
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
		Builds an operator that compiles and runs `computation` with XLA.
		
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
		  inputs: A list of input tensors or `None` (equivalent to an empty list).
		
		Returns:
		  A list of output tensors.
	**/
	static public function compile(computation:Dynamic, ?inputs:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		estimator_model_fn decorates a model_fn to be compiled for execution.
		
		Currently it only works with `TPUEstimator`. If you need to use it with base
		`Estimator`, please add `tf.enable_resource_variables()` at the beginning of
		your program.
		
		Example 1, decorating model_fn:
		```
		@xla.estimator_model_fn()
		def model_fn(features, labels, mode, params):
		  ...
		  return EstimatorSpec(...)
		
		
		est = Estimator(model_fn=model_fn, ...)
		est.train(...)
		
		```
		
		Example 2, decorator as function:
		```
		def model_fn(features, labels, mode, params):
		  ...
		  return EstimatorSpec(...)
		
		est = Estimator(model_fn=xla.estimator_model_fn(model_fn), ...)
		est.train(...)
		```
		
		Args:
		  target_model_fn: model_fn to be decorated. This is only needed when
		    decorator is used in function call form (example 2).
		
		Returns:
		  Decorated target_model_fn.
	**/
	static public function estimator_model_fn(?target_model_fn:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}