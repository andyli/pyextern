/* This file is generated, do not edit! */
package tensorflow.python.framework.random_seed;
@:pythonImport("tensorflow.python.framework.random_seed") extern class Random_seed_Module {
	static public var DEFAULT_GRAPH_SEED : Dynamic;
	static public var _MAXINT32 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _graph_to_seed_dict : Dynamic;
	static public function _truncate_seed(seed:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns the local seeds an operation should use given an op-specific seed.
		
		Given operation-specific seed, `op_seed`, this helper function returns two
		seeds derived from graph-level and op-level seeds. Many random operations
		internally use the two seeds to allow user to change the seed globally for a
		graph, or for only specific operations.
		
		For details on how the graph-level seed interacts with op seeds, see
		`tf.compat.v1.random.set_random_seed`.
		
		Args:
		  op_seed: integer.
		
		Returns:
		  A tuple of two integers that should be used for the local seed of this
		  operation.
	**/
	static public function get_seed(op_seed:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Sets the graph-level random seed for the default graph.
		
		Operations that rely on a random seed actually derive it from two seeds:
		the graph-level and operation-level seeds. This sets the graph-level seed.
		
		Its interactions with operation-level seeds is as follows:
		
		  1. If neither the graph-level nor the operation seed is set:
		    A random seed is used for this op.
		  2. If the graph-level seed is set, but the operation seed is not:
		    The system deterministically picks an operation seed in conjunction with
		    the graph-level seed so that it gets a unique random sequence. Within the
		    same version of tensorflow and user code, this sequence is deterministic.
		    However across different versions, this sequence might change. If the
		    code depends on particular seeds to work, specify both graph-level
		    and operation-level seeds explicitly.
		  3. If the graph-level seed is not set, but the operation seed is set:
		    A default graph-level seed and the specified operation seed are used to
		    determine the random sequence.
		  4. If both the graph-level and the operation seed are set:
		    Both seeds are used in conjunction to determine the random sequence.
		
		To illustrate the user-visible effects, consider these examples:
		
		To generate different sequences across sessions, set neither
		graph-level nor op-level seeds:
		
		```python
		a = tf.random.uniform([1])
		b = tf.random.normal([1])
		
		print("Session 1")
		with tf.compat.v1.Session() as sess1:
		  print(sess1.run(a))  # generates 'A1'
		  print(sess1.run(a))  # generates 'A2'
		  print(sess1.run(b))  # generates 'B1'
		  print(sess1.run(b))  # generates 'B2'
		
		print("Session 2")
		with tf.compat.v1.Session() as sess2:
		  print(sess2.run(a))  # generates 'A3'
		  print(sess2.run(a))  # generates 'A4'
		  print(sess2.run(b))  # generates 'B3'
		  print(sess2.run(b))  # generates 'B4'
		```
		
		To generate the same repeatable sequence for an op across sessions, set the
		seed for the op:
		
		```python
		a = tf.random.uniform([1], seed=1)
		b = tf.random.normal([1])
		
		# Repeatedly running this block with the same graph will generate the same
		# sequence of values for 'a', but different sequences of values for 'b'.
		print("Session 1")
		with tf.compat.v1.Session() as sess1:
		  print(sess1.run(a))  # generates 'A1'
		  print(sess1.run(a))  # generates 'A2'
		  print(sess1.run(b))  # generates 'B1'
		  print(sess1.run(b))  # generates 'B2'
		
		print("Session 2")
		with tf.compat.v1.Session() as sess2:
		  print(sess2.run(a))  # generates 'A1'
		  print(sess2.run(a))  # generates 'A2'
		  print(sess2.run(b))  # generates 'B3'
		  print(sess2.run(b))  # generates 'B4'
		```
		
		To make the random sequences generated by all ops be repeatable across
		sessions, set a graph-level seed:
		
		```python
		tf.compat.v1.random.set_random_seed(1234)
		a = tf.random.uniform([1])
		b = tf.random.normal([1])
		
		# Repeatedly running this block with the same graph will generate the same
		# sequences of 'a' and 'b'.
		print("Session 1")
		with tf.compat.v1.Session() as sess1:
		  print(sess1.run(a))  # generates 'A1'
		  print(sess1.run(a))  # generates 'A2'
		  print(sess1.run(b))  # generates 'B1'
		  print(sess1.run(b))  # generates 'B2'
		
		print("Session 2")
		with tf.compat.v1.Session() as sess2:
		  print(sess2.run(a))  # generates 'A1'
		  print(sess2.run(a))  # generates 'A2'
		  print(sess2.run(b))  # generates 'B1'
		  print(sess2.run(b))  # generates 'B2'
		```
		
		@compatibility(TF2)
		'tf.compat.v1.set_random_seed' is compatible with eager mode. However,
		in eager mode this API will set the global seed instead of the
		graph-level seed of the default graph. In TF2 this API is changed to
		[tf.random.set_seed]
		(https://www.tensorflow.org/api_docs/python/tf/random/set_seed).
		@end_compatibility
		
		Args:
		  seed: integer.
	**/
	static public function set_random_seed(seed:Dynamic):Dynamic;
	/**
		Sets the global random seed.
		
		Operations that rely on a random seed actually derive it from two seeds:
		the global and operation-level seeds. This sets the global seed.
		
		Its interactions with operation-level seeds is as follows:
		
		  1. If neither the global seed nor the operation seed is set: A randomly
		    picked seed is used for this op.
		  2. If the global seed is set, but the operation seed is not:
		    The system deterministically picks an operation seed in conjunction with
		    the global seed so that it gets a unique random sequence. Within the
		    same version of tensorflow and user code, this sequence is deterministic.
		    However across different versions, this sequence might change. If the
		    code depends on particular seeds to work, specify both global
		    and operation-level seeds explicitly.
		  3. If the operation seed is set, but the global seed is not set:
		    A default global seed and the specified operation seed are used to
		    determine the random sequence.
		  4. If both the global and the operation seed are set:
		    Both seeds are used in conjunction to determine the random sequence.
		
		To illustrate the user-visible effects, consider these examples:
		
		If neither the global seed nor the operation seed is set, we get different
		results for every call to the random op and every re-run of the program:
		
		```python
		print(tf.random.uniform([1]))  # generates 'A1'
		print(tf.random.uniform([1]))  # generates 'A2'
		```
		
		(now close the program and run it again)
		
		```python
		print(tf.random.uniform([1]))  # generates 'A3'
		print(tf.random.uniform([1]))  # generates 'A4'
		```
		
		If the global seed is set but the operation seed is not set, we get different
		results for every call to the random op, but the same sequence for every
		re-run of the program:
		
		```python
		tf.random.set_seed(1234)
		print(tf.random.uniform([1]))  # generates 'A1'
		print(tf.random.uniform([1]))  # generates 'A2'
		```
		
		(now close the program and run it again)
		
		```python
		tf.random.set_seed(1234)
		print(tf.random.uniform([1]))  # generates 'A1'
		print(tf.random.uniform([1]))  # generates 'A2'
		```
		
		The reason we get 'A2' instead 'A1' on the second call of `tf.random.uniform`
		above is because the second call uses a different operation seed.
		
		Note that `tf.function` acts like a re-run of a program in this case. When
		the global seed is set but operation seeds are not set, the sequence of random
		numbers are the same for each `tf.function`. For example:
		
		```python
		tf.random.set_seed(1234)
		
		@tf.function
		def f():
		  a = tf.random.uniform([1])
		  b = tf.random.uniform([1])
		  return a, b
		
		@tf.function
		def g():
		  a = tf.random.uniform([1])
		  b = tf.random.uniform([1])
		  return a, b
		
		print(f())  # prints '(A1, A2)'
		print(g())  # prints '(A1, A2)'
		```
		
		If the operation seed is set, we get different results for every call to the
		random op, but the same sequence for every re-run of the program:
		
		```python
		print(tf.random.uniform([1], seed=1))  # generates 'A1'
		print(tf.random.uniform([1], seed=1))  # generates 'A2'
		```
		
		(now close the program and run it again)
		
		```python
		print(tf.random.uniform([1], seed=1))  # generates 'A1'
		print(tf.random.uniform([1], seed=1))  # generates 'A2'
		```
		
		The reason we get 'A2' instead 'A1' on the second call of `tf.random.uniform`
		above is because the same `tf.random.uniform` kernel (i.e. internal
		representation) is used by TensorFlow for all calls of it with the same
		arguments, and the kernel maintains an internal counter which is incremented
		every time it is executed, generating different results.
		
		Calling `tf.random.set_seed` will reset any such counters:
		
		```python
		tf.random.set_seed(1234)
		print(tf.random.uniform([1], seed=1))  # generates 'A1'
		print(tf.random.uniform([1], seed=1))  # generates 'A2'
		tf.random.set_seed(1234)
		print(tf.random.uniform([1], seed=1))  # generates 'A1'
		print(tf.random.uniform([1], seed=1))  # generates 'A2'
		```
		
		When multiple identical random ops are wrapped in a `tf.function`, their
		behaviors change because the ops no long share the same counter. For example:
		
		```python
		@tf.function
		def foo():
		  a = tf.random.uniform([1], seed=1)
		  b = tf.random.uniform([1], seed=1)
		  return a, b
		print(foo())  # prints '(A1, A1)'
		print(foo())  # prints '(A2, A2)'
		
		@tf.function
		def bar():
		  a = tf.random.uniform([1])
		  b = tf.random.uniform([1])
		  return a, b
		print(bar())  # prints '(A1, A2)'
		print(bar())  # prints '(A3, A4)'
		```
		
		The second call of `foo` returns '(A2, A2)' instead of '(A1, A1)' because
		`tf.random.uniform` maintains an internal counter. If you want `foo` to return
		'(A1, A1)' every time, use the stateless random ops such as
		`tf.random.stateless_uniform`. Also see `tf.random.experimental.Generator` for
		a new set of stateful random ops that use external variables to manage their
		states.
		
		Args:
		  seed: integer.
	**/
	static public function set_seed(seed:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}