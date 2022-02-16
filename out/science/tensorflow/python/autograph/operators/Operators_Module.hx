/* This file is generated, do not edit! */
package tensorflow.python.autograph.operators;
@:pythonImport("tensorflow.python.autograph.operators") extern class Operators_Module {
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
		Functional form of "and". Uses lazy evaluation semantics.
	**/
	static public function and_(a:Dynamic, b:Dynamic):Dynamic;
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
	/**
		Functional form of "equal".
	**/
	static public function eq(a:Dynamic, b:Dynamic):Dynamic;
	static public function float_(?x:Dynamic):Dynamic;
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
		The slice read operator (i.e. __getitem__).
		
		Note: it is unspecified whether target will be mutated or not. In general,
		if target is mutable (like Python lists), it will be mutated.
		
		Args:
		  target: An entity that supports getitem semantics.
		  i: Index to read from.
		  opts: A GetItemOpts object.
		
		Returns:
		  The read element.
		
		Raises:
		  ValueError: if target is not of a supported type.
	**/
	static public function get_item(target:Dynamic, i:Dynamic, opts:Dynamic):Dynamic;
	static public function if_exp(cond:Dynamic, if_true:Dynamic, if_false:Dynamic, expr_repr:Dynamic):Dynamic;
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
	static public function int_(?x:Dynamic, ?base:Dynamic):Dynamic;
	/**
		Load variable operator.
	**/
	static public function ld(v:Dynamic):Dynamic;
	/**
		Load variable operator that returns Undefined when failing to evaluate.
		
		Note: the name ("load or return undefined") is abbreviated to minimize
		the amount of clutter in generated code.
		
		This variant of `ld` is useful when loading symbols that may be undefined at
		runtime, such as composite symbols, and whether they are defined or not cannot
		be determined statically. For example `d['a']` is undefined when `d` is an
		empty dict.
		
		Args:
		  load_v: Lambda that executes the actual read.
		  name: Human-readable name of the symbol being read.
		Returns:
		  Either the value of the symbol, or Undefined, if the symbol is not fully
		  defined.
	**/
	static public function ldu(load_v:Dynamic, name:Dynamic):Dynamic;
	static public function len_(s:Dynamic):Dynamic;
	/**
		The list append function.
		
		Note: it is unspecified where list_ will be mutated or not. If list_ is
		a TensorFlow entity, it will not be typically mutated. If list_ is a plain
		list, it will be. In general, if the list is mutated then the return value
		should point to the original entity.
		
		Args:
		  list_: An entity that supports append semantics.
		  x: The element to append.
		
		Returns:
		  Same as list_, after the append was performed.
		
		Raises:
		  ValueError: if list_ is not of a known list-like type.
	**/
	static public function list_append(list_:Dynamic, x:Dynamic):Dynamic;
	/**
		The list pop function.
		
		Note: it is unspecified where list_ will be mutated or not. If list_ is
		a TensorFlow entity, it will not be typically mutated. If list_ is a plain
		list, it will be. In general, if the list is mutated then the return value
		should point to the original entity.
		
		Args:
		  list_: An entity that supports pop semantics.
		  i: Optional index to pop from. May be None.
		  opts: A ListPopOpts.
		
		Returns:
		  Tuple (x, out_list_):
		    out_list_: same as list_, after the removal was performed.
		    x: the removed element value.
		
		Raises:
		  ValueError: if list_ is not of a known list-like type or the operation is
		  not supported for that type.
	**/
	static public function list_pop(list_:Dynamic, i:Dynamic, opts:Dynamic):Dynamic;
	/**
		The list stack function.
		
		This does not have a direct correspondent in Python. The closest idiom to
		this is tf.append or np.stack. It's different from those in the sense that it
		accepts a Tensor list, rather than a list of tensors. It can also accept
		TensorArray. When the target is anything else, the dispatcher will rely on
		ctx.original_call for fallback.
		
		Args:
		  list_: An entity that supports append semantics.
		  opts: A ListStackOpts object.
		
		Returns:
		  The output of the stack operation, typically a Tensor.
	**/
	static public function list_stack(list_:Dynamic, opts:Dynamic):Dynamic;
	/**
		The list constructor.
		
		Args:
		  iterable: Optional elements to fill the list with.
		
		Returns:
		  A list-like object. The exact return value depends on the initial elements.
	**/
	static public function new_list(?iterable:Dynamic):Dynamic;
	/**
		Functional form of "not".
	**/
	static public function not_(a:Dynamic):Dynamic;
	/**
		Functional form of "not-equal".
	**/
	static public function not_eq(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Functional form of "or". Uses lazy evaluation semantics.
	**/
	static public function or_(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Overload of the print builtin.
	**/
	static public function print_(?objects:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function range_(start_or_stop:Dynamic, ?stop:Dynamic, ?step:Dynamic):Dynamic;
	/**
		The slice write operator (i.e. __setitem__).
		
		Note: it is unspecified whether target will be mutated or not. In general,
		if target is mutable (like Python lists), it will be mutated.
		
		Args:
		  target: An entity that supports setitem semantics.
		  i: Index to modify.
		  x: The new element value.
		
		Returns:
		  Same as target, after the update was performed.
		
		Raises:
		  ValueError: if target is not of a supported type.
	**/
	static public function set_item(target:Dynamic, i:Dynamic, x:Dynamic):Dynamic;
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