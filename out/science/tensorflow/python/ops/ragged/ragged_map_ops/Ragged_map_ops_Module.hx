/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_map_ops;
@:pythonImport("tensorflow.python.ops.ragged.ragged_map_ops") extern class Ragged_map_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _ragged_type_to_spec(t:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		map on the list of tensors unpacked from `elems` on dimension 0.
		
		The simplest version of `map_fn` repeatedly applies the callable `fn` to a
		sequence of elements from first to last. The elements are made of the
		tensors unpacked from `elems`. `dtype` is the data type of the return
		value of `fn`. Users must provide `dtype` if it is different from
		the data type of `elems`.
		
		Suppose that `elems` is unpacked into `values`, a list of tensors. The shape
		of the result tensor is `[values.shape[0]] + fn(values[0]).shape`.
		
		This method also allows multi-arity `elems` and output of `fn`.  If `elems`
		is a (possibly nested) list or tuple of tensors, then each of these tensors
		must have a matching first (unpack) dimension.  The signature of `fn` may
		match the structure of `elems`.  That is, if `elems` is
		`(t1, [t2, t3, [t4, t5]])`, then an appropriate signature for `fn` is:
		`fn = lambda (t1, [t2, t3, [t4, t5]]):`.
		
		Furthermore, `fn` may emit a different structure than its input.  For example,
		`fn` may look like: `fn = lambda t1: return (t1 + 1, t1 - 1)`.  In this case,
		the `dtype` parameter is not optional: `dtype` must be a type or (possibly
		nested) tuple of types matching the output of `fn`.
		
		To apply a functional operation to the nonzero elements of a SparseTensor
		one of the following methods is recommended. First, if the function is
		expressible as TensorFlow ops, use
		
		```python
		  result = SparseTensor(input.indices, fn(input.values), input.dense_shape)
		```
		
		If, however, the function is not expressible as a TensorFlow op, then use
		
		```python
		result = SparseTensor(
		  input.indices, map_fn(fn, input.values), input.dense_shape)
		```
		
		instead.
		
		When executing eagerly, map_fn does not execute in parallel even if
		`parallel_iterations` is set to a value > 1. You can still get the
		performance benefits of running a function in parallel by using the
		`tf.contrib.eager.defun` decorator,
		
		```python
		# Assume the function being used in map_fn is fn.
		# To ensure map_fn calls fn in parallel, use the defun decorator.
		@tf.contrib.eager.defun
		def func(tensor):
		  return tf.map_fn(fn, tensor)
		```
		
		Note that if you use the defun decorator, any non-TensorFlow Python code
		that you may have written in your function won't get executed. See
		`tf.contrib.eager.defun` for more details. The recommendation would be to
		debug without defun but switch to defun to get performance benefits of
		running map_fn in parallel.
		
		Args:
		  fn: The callable to be performed.  It accepts one argument, which will have
		    the same (possibly nested) structure as `elems`.  Its output must have the
		    same structure as `dtype` if one is provided, otherwise it must have the
		    same structure as `elems`.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which will
		    be unpacked along their first dimension.  The nested sequence of the
		    resulting slices will be applied to `fn`.
		  dtype: (optional) The output type(s) of `fn`.  If `fn` returns a structure
		    of Tensors differing from the structure of `elems`, then `dtype` is not
		    optional and must have the same structure as the output of `fn`. Use
		    `RaggedTensorType` to declare an output of type `RaggedTensor`.
		  parallel_iterations: (optional) The number of iterations allowed to run in
		    parallel. When graph building, the default value is 10. While executing
		    eagerly, the default value is set to 1.
		  back_prop: (optional) True enables support for back propagation.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  infer_shape: (optional) False disables tests for consistent output shapes.
		  name: (optional) Name prefix for the returned tensors.
		
		Returns:
		  A possibly nested sequence of potentially ragged tensors.  Each
		  tensor packs the results of applying `fn` to tensors unpacked from `elems`
		  along the first dimension, from first to last.
		
		Raises:
		  TypeError: if `fn` is not callable or the structure of the output of
		    `fn` and `dtype` do not match, or if elems is a SparseTensor.
		  ValueError: if the lengths of the output of `fn` and `dtype` do not match.
		
		#### Examples:
		
		  ```python
		  elems = np.array([1, 2, 3, 4, 5, 6])
		  squares = map_fn(lambda x: x * x, elems)
		  # squares == [1, 4, 9, 16, 25, 36]
		  ```
		
		  ```python
		  elems = (np.array([1, 2, 3]), np.array([-1, 1, -1]))
		  alternate = map_fn(lambda x: x[0] * x[1], elems, dtype=tf.int64)
		  # alternate == [-1, 2, -3]
		  ```
		
		  ```python
		  elems = np.array([1, 2, 3])
		  alternates = map_fn(lambda x: (x, -x), elems, dtype=(tf.int64, tf.int64))
		  # alternates[0] == [1, 2, 3]
		  # alternates[1] == [-1, -2, -3]
		  ```
		
		  ```python
		  elems=ragged.constant([[1, 2, 3], [4, 5], [6, 7]])
		  mean = map_fn(tf.reduce_mean, elems)
		  # mean == [2, 4, 6]
		  ```
		
		  ```python
		  elems=ragged.constant([[1, 2, 3], [4, 5], [6, 7]], dtype=tf.int64)
		  out = map_fn(fn=lambda x: x+1, elems,
		    dtype=ragged.RaggedTensorType(type=tf.int64, ragged_rank=0))
		  # out = tf.ragged.constant([[2, 3, 4], [5, 6], [7, 8]])
		  ```
	**/
	static public function map_fn(fn:Dynamic, elems:Dynamic, ?dtype:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?infer_shape:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}