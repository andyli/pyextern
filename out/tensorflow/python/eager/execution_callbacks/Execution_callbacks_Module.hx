/* This file is generated, do not edit! */
package tensorflow.python.eager.execution_callbacks;
@:pythonImport("tensorflow.python.eager.execution_callbacks") extern class Execution_callbacks_Module {
	static public var _DEFAULT_CALLBACK_ACTION : Dynamic;
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
		Add an execution callback to the default eager context.
		
		An execution callback is invoked immediately after an eager operation or
		function has finished execution, providing access to the op's type, name
		input and output tensors. Multiple execution callbacks can be added, in
		which case the callbacks will be invoked in the order in which they are
		added. To clear all execution callbacks that have been added, use
		`clear_execution_callbacks()`.
		
		Example:
		```python
		def print_even_callback(op_type, op_name, attrs, inputs, outputs):
		  # A callback that prints only the even output values.
		  if outputs[0].numpy() % 2 == 0:
		    print("Even output from %s: %s" % (op_name or op_type,  outputs))
		tfe.add_execution_callback(print_even_callback)
		
		x = tf.pow(2.0, 3.0) - 3.0
		y = tf.multiply(x, tf.add(1.0, 5.0))
		# When the line above is run, you will see all intermediate outputs that are
		# even numbers printed to the console.
		
		tfe.clear_execution_callbacks()
		```
		
		Args:
		  callback: a callable of the signature
		    `f(op_type, op_name, attrs, inputs, outputs)`.
		    `op_type` is the type of the operation that was just executed (e.g.,
		      `MatMul`).
		    `op_name` is the name of the operation that was just executed. This
		      name is set by the client who created the operation and can be `None` if
		      it is unset.
		    `attrs` contains the attributes of the operation as a `tuple` of
		      alternating attribute name and attribute value.
		    `inputs` is the `list` of input `Tensor`(s) to the op.
		    `outputs` is the `list` of output `Tensor`(s) from the op.
		     Return value(s) from the callback are ignored.
	**/
	static public function add_execution_callback(callback:Dynamic):Dynamic;
	/**
		Clear all execution callbacks from the default eager context.
	**/
	static public function clear_execution_callbacks():Dynamic;
	static public var division : Dynamic;
	/**
		Context manager setting error state.
		
		Example:
		```
		c = tf.log(0.)  # -inf
		
		with errstate(inf_or_nan=ExecutionCallback.RAISE):
		  tf.log(0.)  # <-- Raises InfOrNanError.
		```
		
		Args:
		  inf_or_nan: An `ExecutionCallback` determining the action for infinity
		    (`inf`) and NaN (`nan`) values. A value of `None` leads to no change in
		    the action of the condition.
		
		Yields:
		  None.
		
		Raises:
		  ValueError: If the value of any keyword arguments is invalid.
	**/
	static public function errstate(?inf_or_nan:Dynamic):Dynamic;
	/**
		A specialization of `inf_nan_callback` that checks for `inf`s only.
	**/
	static public function inf_callback(op_type:Dynamic, inputs:Dynamic, attrs:Dynamic, outputs:Dynamic, op_name:Dynamic, ?action:Dynamic):Dynamic;
	/**
		An execution callback that checks for `inf`s and `nan`s in output tensors.
		
		This callback can be used with `tfe.add_execute_callback` to check for invalid
		numeric values. E.g.,
		```python
		tfe.add_execute_callback(tfe.inf_nan_callback)
		```
		
		Args:
		  op_type: Name of the TFE operation type (e.g., `MatMul`).
		  inputs: The `list` of input tensors to the operation, currently unused by
		    this callback.
		  attrs: Attributes of the TFE operation, as a tuple of alternating attribute
		    names and attribute values.
		  outputs: The `list` of output tensors from the operation, checked by this
		    callback for `inf` and `nan` values.
		  op_name: Name of the TFE operation. This name is set by client and can be
		    `None` if it unset.
		  check_inf: (`bool`) Whether this callback should check for `inf` values in
		    the output tensor values.
		  check_nan: (`bool`) Whether this callback should check for `nan` values in
		    the output tensor values.
		  action: (`ExecutionCallback`) Action to be taken by the callback when
		    `inf` or `nan` values are detected.
		
		Raises:
		  InfOrNanError: iff `inf` or `nan` values are seen in any of `outputs` and
		    `action` is `"raise"`.
		  ValueError: iff the value of `action` is invalid.
	**/
	static public function inf_nan_callback(op_type:Dynamic, inputs:Dynamic, attrs:Dynamic, outputs:Dynamic, op_name:Dynamic, ?check_inf:Dynamic, ?check_nan:Dynamic, ?action:Dynamic):Dynamic;
	/**
		A specialization of `inf_nan_callback` that checks for `nan`s only.
	**/
	static public function nan_callback(op_type:Dynamic, inputs:Dynamic, attrs:Dynamic, outputs:Dynamic, op_name:Dynamic, ?action:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Set how abnormal conditions are handled by the default eager context.
		
		Example:
		```python
		tfe.seterr(inf_or_nan=ExecutionCallback.RAISE)
		a = tf.constant(10.0)
		b = tf.constant(0.0)
		try:
		  c = a / b  # <-- Raises InfOrNanError.
		except Exception as e:
		  print("Caught Exception: %s" % e)
		
		tfe.seterr(inf_or_nan=ExecutionCallback.IGNORE)
		c = a / b  # <-- Does NOT raise exception anymore.
		```
		
		Args:
		  inf_or_nan: An `ExecutionCallback` determining the action for infinity
		    (`inf`) and NaN (`nan`) values. A value of `None` leads to no change in
		    the action of the condition.
		
		Returns:
		  A dictionary of old actions.
		
		Raises:
		  ValueError: If the value of any keyword arguments is invalid.
	**/
	static public function seterr(?inf_or_nan:Dynamic):Dynamic;
}