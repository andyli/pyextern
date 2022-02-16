/* This file is generated, do not edit! */
package tensorflow.python.autograph.operators.exceptions;
@:pythonImport("tensorflow.python.autograph.operators.exceptions") extern class Exceptions_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Overload of assert_stmt that executes a Python assert statement.
	**/
	static public function _py_assert_stmt(expression1:Dynamic, expression2:Dynamic):Dynamic;
	/**
		Overload of assert_stmt that stages a TF Assert.
		
		This implementation deviates from Python semantics as follows:
		  (1) the assertion is verified regardless of the state of __debug__
		  (2) on assertion failure, the graph execution will fail with
		      tensorflow.errors.ValueError, rather than AssertionError.
		
		Args:
		  expression1: tensorflow.Tensor, must evaluate to a tf.bool scalar
		  expression2: Callable[[], Union[tensorflow.Tensor, List[tensorflow.Tensor]]]
		
		Returns:
		  tensorflow.Operation
	**/
	static public function _tf_assert_stmt(expression1:Dynamic, expression2:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Functional form of an assert statement.
		
		This follows the semantics of the Python assert statement, however the
		concrete implementations may deviate from it. See the respective
		implementation for details.
		
		In general, the assert statement should not be used for control flow.
		Furthermore, it is encouraged that the assertion expressions should not have
		side effects.
		
		Args:
		  expression1: Any
		  expression2: Callable[[], Any], returns the expression to include in the
		      error message when expression1 evaluates to False. When expression1 is
		      True, the result of expression2 will not be evaluated, however,
		      expression2 itself may be evaluated in some implementations.
		
		Returns:
		  Any, implementation-dependent.
		
		Raises:
		  ValueError: if any arguments are illegal.
	**/
	static public function assert_stmt(expression1:Dynamic, expression2:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}