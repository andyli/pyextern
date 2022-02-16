/* This file is generated, do not edit! */
package tensorflow.python.ops.bincount_ops;
@:pythonImport("tensorflow.python.ops.bincount_ops") extern class Bincount_ops_Module {
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
		Counts the number of occurrences of each value in an integer array.
		
		If `minlength` and `maxlength` are not given, returns a vector with length
		`tf.reduce_max(arr) + 1` if `arr` is non-empty, and length 0 otherwise.
		If `weights` are non-None, then index `i` of the output stores the sum of the
		value in `weights` at each index where the corresponding value in `arr` is
		`i`.
		
		```python
		values = tf.constant([1,1,2,3,2,4,4,5])
		tf.math.bincount(values) #[0 2 2 1 2 1]
		```
		Vector length = Maximum element in vector `values` is 5. Adding 1, which is 6
		                will be the vector length.
		
		Each bin value in the output indicates number of occurrences of the particular
		index. Here, index 1 in output has a value 2. This indicates value 1 occurs
		two times in `values`.
		
		```python
		values = tf.constant([1,1,2,3,2,4,4,5])
		weights = tf.constant([1,5,0,1,0,5,4,5])
		tf.math.bincount(values, weights=weights) #[0 6 0 1 9 5]
		```
		Bin will be incremented by the corresponding weight instead of 1.
		Here, index 1 in output has a value 6. This is the summation of weights
		corresponding to the value in `values`.
		
		**Bin-counting on a certain axis**
		
		This example takes a 2 dimensional input and returns a `Tensor` with
		bincounting on each sample.
		
		>>> data = np.array([[1, 2, 3, 0], [0, 0, 1, 2]], dtype=np.int32)
		>>> tf.math.bincount(data, axis=-1)
		<tf.Tensor: shape=(2, 4), dtype=int32, numpy=
		  array([[1, 1, 1, 1],
		         [2, 1, 1, 0]], dtype=int32)>
		
		
		**Bin-counting with binary_output**
		
		This example gives binary output instead of counting the occurrence.
		
		>>> data = np.array([[1, 2, 3, 0], [0, 0, 1, 2]], dtype=np.int32)
		>>> tf.math.bincount(data, axis=-1, binary_output=True)
		<tf.Tensor: shape=(2, 4), dtype=int32, numpy=
		  array([[1, 1, 1, 1],
		         [1, 1, 1, 0]], dtype=int32)>
		
		Args:
		  arr: A Tensor, RaggedTensor, or SparseTensor whose values should be counted.
		    These tensors must have a rank of 2 if `axis=-1`.
		  weights: If non-None, must be the same shape as arr. For each value in
		    `arr`, the bin will be incremented by the corresponding weight instead of
		    1.
		  minlength: If given, ensures the output has length at least `minlength`,
		    padding with zeros at the end if necessary.
		  maxlength: If given, skips values in `arr` that are equal or greater than
		    `maxlength`, ensuring that the output has length at most `maxlength`.
		  dtype: If `weights` is None, determines the type of the output bins.
		  name: A name scope for the associated operations (optional).
		  axis: The axis to slice over. Axes at and below `axis` will be flattened
		    before bin counting. Currently, only `0`, and `-1` are supported. If None,
		    all axes will be flattened (identical to passing `0`).
		  binary_output: If True, this op will output 1 instead of the number of times
		    a token appears (equivalent to one_hot + reduce_any instead of one_hot +
		    reduce_add). Defaults to False.
		
		Returns:
		  A vector with the same dtype as `weights` or the given `dtype`. The bin
		  values.
		
		Raises:
		  `InvalidArgumentError` if negative values are provided as an input.
	**/
	static public function bincount(arr:Dynamic, ?weights:Dynamic, ?minlength:Dynamic, ?maxlength:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?axis:Dynamic, ?binary_output:Dynamic):Dynamic;
	/**
		Counts the number of occurrences of each value in an integer array.
		
		If `minlength` and `maxlength` are not given, returns a vector with length
		`tf.reduce_max(arr) + 1` if `arr` is non-empty, and length 0 otherwise.
		If `weights` are non-None, then index `i` of the output stores the sum of the
		value in `weights` at each index where the corresponding value in `arr` is
		`i`.
		
		Args:
		  arr: An int32 tensor of non-negative values.
		  weights: If non-None, must be the same shape as arr. For each value in
		    `arr`, the bin will be incremented by the corresponding weight instead of
		    1.
		  minlength: If given, ensures the output has length at least `minlength`,
		    padding with zeros at the end if necessary.
		  maxlength: If given, skips values in `arr` that are equal or greater than
		    `maxlength`, ensuring that the output has length at most `maxlength`.
		  dtype: If `weights` is None, determines the type of the output bins.
		
		Returns:
		  A vector with the same dtype as `weights` or the given `dtype`. The bin
		  values.
	**/
	static public function bincount_v1(arr:Dynamic, ?weights:Dynamic, ?minlength:Dynamic, ?maxlength:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Count the number of times an integer value appears in a tensor.
		
		This op takes an N-dimensional `Tensor`, `RaggedTensor`, or `SparseTensor`,
		and returns an N-dimensional int64 SparseTensor where element
		`[i0...i[axis], j]` contains the number of times the value `j` appears in
		slice `[i0...i[axis], :]` of the input tensor.  Currently, only N=0 and
		N=-1 are supported.
		
		Args:
		  values: A Tensor, RaggedTensor, or SparseTensor whose values should be
		    counted. These tensors must have a rank of 2 if `axis=-1`.
		  weights: If non-None, must be the same shape as arr. For each value in
		    `value`, the bin will be incremented by the corresponding weight instead
		    of 1.
		  axis: The axis to slice over. Axes at and below `axis` will be flattened
		    before bin counting. Currently, only `0`, and `-1` are supported. If None,
		    all axes will be flattened (identical to passing `0`).
		  minlength: If given, ensures the output has length at least `minlength`,
		    padding with zeros at the end if necessary.
		  maxlength: If given, skips values in `values` that are equal or greater than
		    `maxlength`, ensuring that the output has length at most `maxlength`.
		  binary_output: If True, this op will output 1 instead of the number of times
		    a token appears (equivalent to one_hot + reduce_any instead of one_hot +
		    reduce_add). Defaults to False.
		  name: A name for this op.
		
		Returns:
		  A SparseTensor with `output.shape = values.shape[:axis] + [N]`, where `N` is
		    * `maxlength` (if set);
		    * `minlength` (if set, and `minlength > reduce_max(values)`);
		    * `0` (if `values` is empty);
		    * `reduce_max(values) + 1` otherwise.
		
		
		Examples:
		
		**Bin-counting every item in individual batches**
		
		This example takes an input (which could be a Tensor, RaggedTensor, or
		SparseTensor) and returns a SparseTensor where the value of (i,j) is the
		number of times value j appears in batch i.
		
		>>> data = np.array([[10, 20, 30, 20], [11, 101, 11, 10001]], dtype=np.int64)
		>>> output = tf.sparse.bincount(data, axis=-1)
		>>> print(output)
		SparseTensor(indices=tf.Tensor(
		[[    0    10]
		 [    0    20]
		 [    0    30]
		 [    1    11]
		 [    1   101]
		 [    1 10001]], shape=(6, 2), dtype=int64),
		 values=tf.Tensor([1 2 1 2 1 1], shape=(6,), dtype=int64),
		 dense_shape=tf.Tensor([    2 10002], shape=(2,), dtype=int64))
		
		**Bin-counting with defined output shape**
		
		This example takes an input (which could be a Tensor, RaggedTensor, or
		SparseTensor) and returns a SparseTensor where the value of (i,j) is the
		number of times value j appears in batch i. However, all values of j
		above 'maxlength' are ignored. The dense_shape of the output sparse tensor
		is set to 'minlength'. Note that, while the input is identical to the
		example above, the value '10001' in batch item 2 is dropped, and the
		dense shape is [2, 500] instead of [2,10002] or [2, 102].
		
		>>> minlength = maxlength = 500
		>>> data = np.array([[10, 20, 30, 20], [11, 101, 11, 10001]], dtype=np.int64)
		>>> output = tf.sparse.bincount(
		...    data, axis=-1, minlength=minlength, maxlength=maxlength)
		>>> print(output)
		SparseTensor(indices=tf.Tensor(
		[[  0  10]
		 [  0  20]
		 [  0  30]
		 [  1  11]
		 [  1 101]], shape=(5, 2), dtype=int64),
		 values=tf.Tensor([1 2 1 2 1], shape=(5,), dtype=int64),
		 dense_shape=tf.Tensor([  2 500], shape=(2,), dtype=int64))
		
		**Binary bin-counting**
		
		This example takes an input (which could be a Tensor, RaggedTensor, or
		SparseTensor) and returns a SparseTensor where (i,j) is 1 if the value j
		appears in batch i at least once and is 0 otherwise. Note that, even though
		some values (like 20 in batch 1 and 11 in batch 2) appear more than once,
		the 'values' tensor is all 1s.
		
		>>> data = np.array([[10, 20, 30, 20], [11, 101, 11, 10001]], dtype=np.int64)
		>>> output = tf.sparse.bincount(data, binary_output=True, axis=-1)
		>>> print(output)
		SparseTensor(indices=tf.Tensor(
		[[    0    10]
		 [    0    20]
		 [    0    30]
		 [    1    11]
		 [    1   101]
		 [    1 10001]], shape=(6, 2), dtype=int64),
		 values=tf.Tensor([1 1 1 1 1 1], shape=(6,), dtype=int64),
		 dense_shape=tf.Tensor([    2 10002], shape=(2,), dtype=int64))
		
		**Weighted bin-counting**
		
		This example takes two inputs - a values tensor and a weights tensor. These
		tensors must be identically shaped, and have the same row splits or indices
		in the case of RaggedTensors or SparseTensors. When performing a weighted
		count, the op will output a SparseTensor where the value of (i, j) is the
		sum of the values in the weight tensor's batch i in the locations where
		the values tensor has the value j. In this case, the output dtype is the
		same as the dtype of the weights tensor.
		
		>>> data = np.array([[10, 20, 30, 20], [11, 101, 11, 10001]], dtype=np.int64)
		>>> weights = [[2, 0.25, 15, 0.5], [2, 17, 3, 0.9]]
		>>> output = tf.sparse.bincount(data, weights=weights, axis=-1)
		>>> print(output)
		SparseTensor(indices=tf.Tensor(
		[[    0    10]
		 [    0    20]
		 [    0    30]
		 [    1    11]
		 [    1   101]
		 [    1 10001]], shape=(6, 2), dtype=int64),
		 values=tf.Tensor([2. 0.75 15. 5. 17. 0.9], shape=(6,), dtype=float32),
		 dense_shape=tf.Tensor([    2 10002], shape=(2,), dtype=int64))
	**/
	static public function sparse_bincount(values:Dynamic, ?weights:Dynamic, ?axis:Dynamic, ?minlength:Dynamic, ?maxlength:Dynamic, ?binary_output:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Validates the passed weight tensor or creates an empty one.
	**/
	static public function validate_dense_weights(values:Dynamic, weights:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Validates the passed weight tensor or creates an empty one.
	**/
	static public function validate_ragged_weights(values:Dynamic, weights:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Validates the passed weight tensor or creates an empty one.
	**/
	static public function validate_sparse_weights(values:Dynamic, weights:Dynamic, ?dtype:Dynamic):Dynamic;
}