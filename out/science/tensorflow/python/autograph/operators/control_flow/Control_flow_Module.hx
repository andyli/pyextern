/* This file is generated, do not edit! */
package tensorflow.python.autograph.operators.control_flow;
@:pythonImport("tensorflow.python.autograph.operators.control_flow") extern class Control_flow_Module {
	static public var INEFFICIENT_UNROLL_MIN_ITERATIONS : Dynamic;
	static public var INEFFICIENT_UNROLL_MIN_OPS : Dynamic;
	static public var LEGAL_LOOP_TYPES : Dynamic;
	static public var PYTHON_MAX_ITERATIONS : Dynamic;
	static public var WARN_INEFFICIENT_UNROLL : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_max_iterations_hint(opts:Dynamic, n:Dynamic):Dynamic;
	/**
		Variant of Dataset.scan with semantics of general-purpose computation.
	**/
	static public function _general_purpose_scan(ds:Dynamic, init_state:Dynamic, body:Dynamic):Dynamic;
	/**
		Tests whether a value is None or undefined.
		
		AutoGraph represents undefined symbols using special objects of type Undefined
		or UndefinedReturnValue.
		
		Args:
		  value: value to test
		Returns:
		  Boolean
	**/
	static public function _is_none_or_undef(value:Dynamic):Dynamic;
	/**
		Returns True if left shape is at least as specific as right shape.
	**/
	static public function _is_subshape(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Overload of for_stmt that iterates over TF entities that admit a length.
	**/
	static public function _known_len_tf_for_stmt(iter_:Dynamic, extra_test:Dynamic, body:Dynamic, get_state:Dynamic, set_state:Dynamic, symbol_names:Dynamic, opts:Dynamic):Dynamic;
	/**
		Constructs a (dummy) placeholder value for a loop-initialized variable.
		
		Args:
		  like: Any object. The value created by the first iteration of the loop.
		    If a Python scalar, the placeholder will be the zero value of that type.
		    If a Tensor, the placeholder will be a zero tensor of matching shape and
		    dtype. If a list, dict or tuple, the placeholder will be an identical
		    structure of placeholders.
		  shape_invariant: The shape invariant specified by the user (or None, if
		    nothing was specified) for the respective variable.
		  original: Any object. The value of the variable prior to entering the loop.
		    Typically, this is one of the special "Undefined" value, because that's
		    when a placeholder is needed.
		Returns:
		  Either a zero value of structure, shape and dtype mathing 'like', or
		  'original', if no such zero value could be created.
	**/
	static public function _placeholder_value(like:Dynamic, shape_invariant:Dynamic, ?original:Dynamic):Dynamic;
	/**
		Overload of for_stmt that executes a Python for loop.
	**/
	static public function _py_for_stmt(iter_:Dynamic, extra_test:Dynamic, body:Dynamic, get_state:Dynamic, set_state:Dynamic):Dynamic;
	/**
		Overload of if_stmt that executes a Python if statement.
	**/
	static public function _py_if_stmt(cond:Dynamic, body:Dynamic, orelse:Dynamic):Dynamic;
	/**
		Overload of while_stmt that executes a Python while loop.
	**/
	static public function _py_while_stmt(test:Dynamic, body:Dynamic, get_state:Dynamic, set_state:Dynamic, opts:Dynamic):Dynamic;
	/**
		Creates an error message asking for the loop to iterate at least once.
	**/
	static public function _runtime_zero_iterations_errmsg(symbol_names:Dynamic, nulls:Dynamic, init_vars:Dynamic):Dynamic;
	static public function _shape_invariants_mapping_to_positional_list(mapping:Dynamic, keys:Dynamic):Dynamic;
	/**
		Overload of _dataset_for_stmt with early stopping. See for_stmt.
	**/
	static public function _tf_dataset_for_stmt(ds:Dynamic, extra_test:Dynamic, body:Dynamic, get_state:Dynamic, set_state:Dynamic, symbol_names:Dynamic, opts:Dynamic):Dynamic;
	/**
		Overload of for_stmt that iterates over TF distributed datasets.
	**/
	static public function _tf_distributed_iterable_for_stmt(iter_:Dynamic, extra_test:Dynamic, body:Dynamic, get_state:Dynamic, set_state:Dynamic, symbol_names:Dynamic, opts:Dynamic):Dynamic;
	/**
		Overload of if_stmt that stages a TF cond.
	**/
	static public function _tf_if_stmt(cond:Dynamic, body:Dynamic, orelse:Dynamic, get_state:Dynamic, set_state:Dynamic, symbol_names:Dynamic, nouts:Dynamic):Dynamic;
	/**
		Overload of for_stmt that iterates over TF Iterators. See for_loop.
	**/
	static public function _tf_iterator_for_stmt(iter_:Dynamic, extra_test:Dynamic, body:Dynamic, get_state:Dynamic, set_state:Dynamic, symbol_names:Dynamic, opts:Dynamic):Dynamic;
	/**
		Overload of for_stmt that iterates over TF ragged tensors.
	**/
	static public function _tf_ragged_for_stmt(iter_:Dynamic, extra_test:Dynamic, body:Dynamic, get_state:Dynamic, set_state:Dynamic, symbol_names:Dynamic, opts:Dynamic):Dynamic;
	/**
		Overload of for_stmt that iterates over a TF range (and elides it).
	**/
	static public function _tf_range_for_stmt(iter_:Dynamic, extra_test:Dynamic, body:Dynamic, get_state:Dynamic, set_state:Dynamic, symbol_names:Dynamic, opts:Dynamic):Dynamic;
	/**
		Overload of while_stmt that stages a TF while_stmt.
	**/
	static public function _tf_while_stmt(test:Dynamic, body:Dynamic, get_state:Dynamic, set_state:Dynamic, symbol_names:Dynamic, opts:Dynamic):Dynamic;
	/**
		Makes a best-effort attempt to substitute undefineds with placeholders.
		
		Note: this substitution requires two things to happen:
		 1. the types of loop variables could be inferred (usually by staging one
		     iteration)
		 2. these types could be replaced by placeholders (e.g. zero values, for
		     tensors.
		
		Args:
		  body: a function representing the loop body. See while_stmt.
		  get_state: state getter for the loop statement. See while_stmt.
		  set_state: state getter for the loop statement. See while_stmt.
		  init_vars: loop variables before entering the loop. See while_stmt.
		  nulls: list of boolean flags indicating whether the corresponding loop
		      var is None or undefined.
		  shape_invariants: user-specified shape invariant for each loop variable.
		  symbol_names: list of loop variable names. See while_stmt.
		Returns:
		  A tuple (success, new_init_vars). success is a boolean flag indicating
		  whether types could be successfully inferred (step 1 above). new_init_vars
		  contains the loop vars, with None or undefined values replaced by
		  placeholders, where possible (step 2 above).
	**/
	static public function _try_handling_undefineds(body:Dynamic, get_state:Dynamic, set_state:Dynamic, init_vars:Dynamic, nulls:Dynamic, shape_invariants:Dynamic, symbol_names:Dynamic):Dynamic;
	/**
		Ensures that all values in the state are valid to use in a TF loop.
		
		The init_vars may contain placeholder values derived from first_iter_vars.
		
		Args:
		  init_vars: initial loop variables (as taken before entering the loop)
		  symbol_names: corresponding names of the initial loop variables
		  first_iter_vars: loop variables after one iteration of the loop
	**/
	static public function _verify_loop_init_vars(init_vars:Dynamic, symbol_names:Dynamic, ?first_iter_vars:Dynamic):Dynamic;
	/**
		Verifies whether the initial, entry and exit values are consistent.
	**/
	static public function _verify_single_loop_var(name:Dynamic, check_shape:Dynamic, init:Dynamic, entry:Dynamic, exit_:Dynamic, shape_invariant:Dynamic):Dynamic;
	/**
		Verifies variables output by a conditional branch for consistency.
	**/
	static public function _verify_tf_cond_branch_vars(vars_:Dynamic, symbol_names:Dynamic, branch_name:Dynamic):Dynamic;
	/**
		Verifies variables manipulated by a conditional for consistency.
	**/
	static public function _verify_tf_cond_vars(body_vars:Dynamic, orelse_vars:Dynamic, symbol_names:Dynamic):Dynamic;
	/**
		Ensures that the condition can be used in a TF control flow.
	**/
	static public function _verify_tf_condition(cond:Dynamic, tag:Dynamic):Dynamic;
	/**
		Verifies loop variables for consistency.
	**/
	static public function _verify_tf_loop_vars(init_vars:Dynamic, iter_entry_vars:Dynamic, iter_exit_vars:Dynamic, symbol_names:Dynamic, opts:Dynamic, ?check_shapes:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Functional form of a for statement.
		
		The loop operates on a state, which includes all symbols that are
		variant across loop iterations, excluding the variables local to the loop.
		
		For example, given the loop below that calculates the geometric and
		arithmetic means or some numbers:
		
		```
		  geo_mean = 1
		  arith_mean = 0
		  for i in range(n):
		    a = numbers[i]
		    geo_mean *= a
		    arith_mean += a
		```
		
		The state is represented by the variables geo_mean and arith_mean. The
		`extra_test`, `body`, `get_state` and `set_state` functions must bind to the
		original `geo_mean` and `arith_mean` symbols, using `nonlocal`.
		
		The inputs and outputs of the callables representing the loop blocks are not
		explicit - instead, these functions must use nonlocal/global for side effects.
		The inputs and outputs are instead controlled by the set_state/get_state
		functions.
		
		Args:
		  iter_: The entity being iterated over.
		  extra_test: Callable with boolean return type.
		    An additional loop condition.
		  body: Callable representing the actual loop body.
		  get_state: Additional callable which can capture additional state (such as
		    the values of composite symbols). This is only useful when staging the
		    loop.
		  set_state: Additional callable which save values captured by get_state back
		    into the Python environment. This is only useful when staging the loop.
		  symbol_names: Tuple containing names of the loop variables returned by
		    get_state.
		  opts: Optional dict of extra loop parameters.
	**/
	static public function for_stmt(iter_:Dynamic, extra_test:Dynamic, body:Dynamic, get_state:Dynamic, set_state:Dynamic, symbol_names:Dynamic, opts:Dynamic):Dynamic;
	/**
		Functional form of an if statement.
		
		The conditional operates on a state, which includes all symbols whose values
		are a function of the branch taken.
		
		For example, given the code below that calculates the abs function:
		
		```
		  x = 1
		  if x > 0:
		    x = -x
		```
		
		The state is represented by the variable `x`. The `body, `orelse` and
		`set_state` functions must bind to the original `x` symbol, using `nonlocal`.
		
		The inputs and outputs of the callables representing the loop blocks are not
		explicit - instead, these functions must use nonlocal/global for side effects.
		The inputs and outputs are instead controlled by the set_state/get_state
		functions.
		
		Args:
		  cond: Boolean.
		  body: Callable representing the main block of the conditional.
		  orelse: Callable representing the else block of the conditional.
		  get_state: Function that returns a tuple containing the values of all
		    composite symbols modified within the conditional. This allows access to
		    state that branches may mutate through side effects. This function is not
		    needed and should not be called when dispatching to code matching Python's
		    default semantics. This is useful for checkpointing to avoid unintended
		    side-effects when staging requires evaluating all code-paths.
		  set_state: Function to set the values of all composite symbols modified
		    within the conditional. This is the complement to get_state, used to
		    restore checkpointed values. The single argument a tuple containing values
		    for each composite symbol that may be modified in a branch of the
		    conditional. The is usually the result of a call to get_state.
		  symbol_names: Tuple containing basic loop var names.
		  nouts: Number of variables output by the statement. Vars which are
		    not outputs will not be passed through staged control flow such as
		    tf.cond. This includes variables that are defined before the conditional,
		    but are not used after it.
	**/
	static public function if_stmt(cond:Dynamic, body:Dynamic, orelse:Dynamic, get_state:Dynamic, set_state:Dynamic, symbol_names:Dynamic, nouts:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Verifies whether body_var and orelse_var are consistent.
	**/
	static public function verify_single_cond_var(name:Dynamic, body_var:Dynamic, orelse_var:Dynamic):Dynamic;
	/**
		Functional form of a while statement.
		
		The loop operates on a so-called state, which includes all symbols that are
		variant across loop iterations. In what follows we refer to state as either
		a tuple of entities that represent an actual state, or a list of arguments
		of the corresponding types.
		
		The inputs and outputs of the callables representing the loop blocks are not
		explicit - instead, these functions must use nonlocal/global for side effects.
		The inputs and outputs are instead controlled by the set_state/get_state
		functions.
		
		Args:
		  test: Callable with boolean return type. The loop condition.
		  body: Callable representing the actual loop body.
		  get_state: Additional callable which can capture additional state (such as
		    the values of composite symbols). This is only useful when staging the
		    loop.
		  set_state: Additional callable which save values captured by get_state back
		    into the Python environment. This is only useful when staging the loop.
		  symbol_names: Tuple containing the names of all loop variables.
		  opts: Optional dict of extra loop parameters.
		
		Returns:
		  Tuple containing the final state.
	**/
	static public function while_stmt(test:Dynamic, body:Dynamic, get_state:Dynamic, set_state:Dynamic, symbol_names:Dynamic, opts:Dynamic):Dynamic;
}