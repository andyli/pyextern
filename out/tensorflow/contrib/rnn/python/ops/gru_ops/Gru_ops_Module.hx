/* This file is generated, do not edit! */
package tensorflow.contrib.rnn.python.ops.gru_ops;
@:pythonImport("tensorflow.contrib.rnn.python.ops.gru_ops") extern class Gru_ops_Module {
	/**
		Gradient for GRUBlockCell.
		
		Args:
		  op: Op for which the gradient is defined.
		  *grad: Gradients of the optimization function wrt output
		    for the Op.
		
		Returns:
		  d_x: Gradients wrt to x
		  d_h: Gradients wrt to h
		  d_w_ru: Gradients wrt to w_ru
		  d_w_c: Gradients wrt to w_c
		  d_b_ru: Gradients wrt to b_ru
		  d_b_c: Gradients wrt to b_c
		
		Mathematics behind the Gradients below:
		```
		d_c_bar = d_h \circ (1-u) \circ (1-c \circ c)
		d_u_bar = d_h \circ (h-c) \circ u \circ (1-u)
		
		d_r_bar_u_bar = [d_r_bar d_u_bar]
		
		[d_x_component_1 d_h_prev_component_1] = d_r_bar_u_bar * w_ru^T
		
		[d_x_component_2 d_h_prevr] = d_c_bar * w_c^T
		
		d_x = d_x_component_1 + d_x_component_2
		
		d_h_prev = d_h_prev_component_1 + d_h_prevr \circ r + u
		```
		Below calculation is performed in the python wrapper for the Gradients
		(not in the gradient kernel.)
		```
		d_w_ru = x_h_prevr^T * d_c_bar
		
		d_w_c = x_h_prev^T * d_r_bar_u_bar
		
		d_b_ru = sum of d_r_bar_u_bar along axis = 0
		
		d_b_c = sum of d_c_bar along axis = 0
		```
	**/
	static public function _GRUBlockCellGrad(op:Dynamic, ?grad:python.VarArgs<Dynamic>):Dynamic;
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
		Decorator for marking specific function arguments as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument. It has the following format:
		
		  Calling <function> (from <module>) with <arg> is deprecated and will be
		  removed after <date>. Instructions for updating:
		    <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> includes the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  *deprecated_arg_names_or_tuples: String or 2-Tuple(String,
		    [ok_vals]).  The string is the deprecated argument name.
		    Optionally, an ok-value may be provided.  If the user provided
		    argument equals this value, the warning is suppressed.
		  **kwargs: If `warn_once=False` is passed, every call with a deprecated
		    argument will log a warning. The default behavior is to only warn the
		    first time the function is called with any given deprecated argument.
		    All other kwargs raise `ValueError`.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, instructions are
		    empty, the deprecated arguments are not present in the function
		    signature, the second element of a deprecated_tuple is not a
		    list, or if a kwarg other than `warn_once` is passed.
	**/
	static public function deprecated_args(date:Dynamic, instructions:Dynamic, ?deprecated_arg_names_or_tuples:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}