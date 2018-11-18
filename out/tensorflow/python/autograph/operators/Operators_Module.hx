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
	static public var division : Dynamic;
	static public function float_(?x:Dynamic):Dynamic;
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
	static public function int_(?x:Dynamic, ?base:Dynamic):Dynamic;
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