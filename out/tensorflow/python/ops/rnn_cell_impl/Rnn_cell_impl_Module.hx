/* This file is generated, do not edit! */
package tensorflow.python.ops.rnn_cell_impl;
@:pythonImport("tensorflow.python.ops.rnn_cell_impl") extern class Rnn_cell_impl_Module {
	static public var ASSERT_LIKE_RNNCELL_ERROR_REGEXP : Dynamic;
	static public var _BIAS_VARIABLE_NAME : Dynamic;
	static public var _WEIGHTS_VARIABLE_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Concat that enables int, Tensor, or TensorShape values.
		
		This function takes a size specification, which can be an integer, a
		TensorShape, or a Tensor, and converts it into a concatenated Tensor
		(if static = False) or a list of integers (if static = True).
		
		Args:
		  prefix: The prefix; usually the batch size (and/or time step size).
		    (TensorShape, int, or Tensor.)
		  suffix: TensorShape, int, or Tensor.
		  static: If `True`, return a python list with possibly unknown dimensions.
		    Otherwise return a `Tensor`.
		
		Returns:
		  shape: the concatenation of prefix and suffix.
		
		Raises:
		  ValueError: if `suffix` is not a scalar or vector (or TensorShape).
		  ValueError: if prefix or suffix was `None` and asked for dynamic
		    Tensors out.
	**/
	static public function _concat(prefix:Dynamic, suffix:Dynamic, ?_static:Dynamic):Dynamic;
	static public function _default_dropout_state_filter_visitor(substate:Dynamic):Dynamic;
	static public function _enumerated_map_structure_up_to(shallow_structure:Dynamic, map_fn:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create tensors of zeros based on state_size, batch_size, and dtype.
	**/
	static public function _zero_state_tensors(state_size:Dynamic, batch_size:Dynamic, dtype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Raises a TypeError if cell is not like an RNNCell.
		
		NOTE: Do not rely on the error message (in particular in tests) which can be
		subject to change to increase readability. Use
		ASSERT_LIKE_RNNCELL_ERROR_REGEXP.
		
		Args:
		  cell_name: A string to give a meaningful error referencing to the name
		    of the functionargument.
		  cell: The object which should behave like an RNNCell.
		
		Raises:
		  TypeError: A human-friendly exception.
	**/
	static public function assert_like_rnncell(cell_name:Dynamic, cell:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}