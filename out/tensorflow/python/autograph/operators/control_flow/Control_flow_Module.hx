/* This file is generated, do not edit! */
package tensorflow.python.autograph.operators.control_flow;
@:pythonImport("tensorflow.python.autograph.operators.control_flow") extern class Control_flow_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Overload of for_stmt that iterates over TF Datasets.
	**/
	static public function _dataset_for_stmt(ds:Dynamic, extra_test:Dynamic, body:Dynamic, init_state:Dynamic):Dynamic;
	/**
		Overload of for_stmt that iterates over objects that admit a length.
	**/
	static public function _known_len_for_stmt(iter_:Dynamic, extra_test:Dynamic, body:Dynamic, init_state:Dynamic):Dynamic;
	/**
		Overload of for_stmt that executes a Python for loop.
	**/
	static public function _py_for_stmt(iter_:Dynamic, extra_test:Dynamic, body:Dynamic, init_state:Dynamic):Dynamic;
	/**
		Overload of if_stmt that executes a Python if statement.
	**/
	static public function _py_if_stmt(cond:Dynamic, body:Dynamic, orelse:Dynamic):Dynamic;
	/**
		Overload of while_stmt that executes a Python while loop.
	**/
	static public function _py_while_stmt(test:Dynamic, body:Dynamic, init_state:Dynamic, opts:Dynamic):Dynamic;
	/**
		Overload of while_stmt that stages a TF while_stmt.
	**/
	static public function _tf_while_stmt(test:Dynamic, body:Dynamic, init_state:Dynamic, opts:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Functional form of a for statement.
		
		The loop operates on a state, which includes all symbols that are
		variant across loop iterations, excluding the iterate as well as the
		variables local to the loop.
		
		For example, given the loop below that calculates the geometric and
		arithmetic means or some numbers:
		
		  geo_mean = 1
		  arith_mean = 0
		  for i in range(n):
		    a = numbers[i]
		    geo_mean *= a
		    arith_mean += a
		
		The state is represented by the variables geo_mean and arith_mean. The
		argument for initial_state may contain the tuple (1, 0), the body will
		include the arguments geo_mean and arith_mean and will return a tuple
		representing the new values for geo_mean and respectively arith_mean.
		
		Args:
		  iter_: The entity being iterated over.
		  extra_test: Callable with the state as arguments, and boolean return type.
		      An additional loop condition.
		  body: Callable with the iterate and the state as arguments, and
		      state as return type. The actual loop body.
		  init_state: Tuple containing the initial state.
		
		Returns:
		  Tuple containing the final state.
	**/
	static public function for_stmt(iter_:Dynamic, extra_test:Dynamic, body:Dynamic, init_state:Dynamic):Dynamic;
	/**
		Functional form of an if statement.
		
		Args:
		  cond: Boolean.
		  body: Callable with no arguments, and outputs of the positive (if) branch
		      as return type.
		  orelse: Callable with no arguments, and outputs of the negative (else)
		      branch as return type.
		
		Returns:
		  Tuple containing the statement outputs.
	**/
	static public function if_stmt(cond:Dynamic, body:Dynamic, orelse:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Overload of if_stmt that stages a TF cond.
	**/
	static public function tf_if_stmt(cond:Dynamic, body:Dynamic, orelse:Dynamic):Dynamic;
	/**
		Functional form of a while statement.
		
		The loop operates on a so-called state, which includes all symbols that are
		variant across loop iterations. In what follows we refer to state as either
		a tuple of entities that represent an actual state, or a list of arguments
		of the corresponding types.
		
		Args:
		  test: Callable with the state as arguments, and boolean return type.
		      The loop condition.
		  body: Callable with the state as arguments, and state as return type.
		      The actual loop body.
		  init_state: Tuple containing the initial state.
		  extra_deps: Tuple containing additional entities on which the loop may
		      depend, such as loop invariants referenced by test. Used
		      exclusively for dispatch control.
		  opts: Optional dict of extra loop parameters.
		
		Returns:
		  Tuple containing the final state.
	**/
	static public function while_stmt(test:Dynamic, body:Dynamic, init_state:Dynamic, extra_deps:Dynamic, ?opts:Dynamic):Dynamic;
}