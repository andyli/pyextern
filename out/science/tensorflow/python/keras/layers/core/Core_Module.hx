/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.core;
@:pythonImport("tensorflow.python.keras.layers.core") extern class Core_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Register method on a KerasTensor class.
		
		Calling this function times with the same arguments should be a no-op.
		
		This method exposes an instance method on the KerasTensor class that will use
		an `InstanceMethod` layer to run the desired method on the represented
		intermediate values in the model.
		
		Args:
		  keras_tensor_cls: The KerasTensor subclass that should expose the property.
		  method_name: The name of the method to expose and delegate to the
		    represented (Composite)Tensor.
	**/
	static public function _delegate_method(keras_tensor_cls:Dynamic, method_name:Dynamic):Dynamic;
	/**
		Register property on a KerasTensor class.
		
		Calling this multiple times with the same arguments should be a no-op.
		
		This method exposes a property on the KerasTensor class that will use an
		`InstanceProperty` layer to access the property on the represented
		intermediate values in the model.
		
		Args:
		  keras_tensor_cls: The KerasTensor subclass that should expose the property.
		  property_name: The name of the property to expose and delegate to the
		    represented (Composite)Tensor.
	**/
	static public function _delegate_property(keras_tensor_cls:Dynamic, property_name:Dynamic):Dynamic;
	static public function _dict_to_slice(x:Dynamic):Dynamic;
	static public function _slice_to_dict(x:Dynamic):Dynamic;
	/**
		Get canonical name for the API symbol.
		
		Args:
		  symbol: API function or class.
		  api_name: API name (tensorflow or estimator).
		  add_prefix_to_v1_names: Specifies whether a name available only in V1
		    should be prefixed with compat.v1.
		
		Returns:
		  Canonical name for the API symbol (for e.g. initializers.zeros) if
		  canonical name could be determined. Otherwise, returns None.
	**/
	static public function get_canonical_name_for_symbol(symbol:Dynamic, ?api_name:Dynamic, ?add_prefix_to_v1_names:Dynamic):Dynamic;
	static public function get_symbol_from_name(name:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var ragged_class_method : Dynamic;
	static public var ragged_method_name : Dynamic;
	static public var ragged_property : Dynamic;
	/**
		Returns the specified piece of this RaggedTensor.
		
		Supports multidimensional indexing and slicing, with one restriction:
		indexing into a ragged inner dimension is not allowed.  This case is
		problematic because the indicated value may exist in some rows but not
		others.  In such cases, it's not obvious whether we should (1) report an
		IndexError; (2) use a default value; or (3) skip that value and return a
		tensor with fewer rows than we started with.  Following the guiding
		principles of Python ("In the face of ambiguity, refuse the temptation to
		guess"), we simply disallow this operation.
		
		Args:
		  rt_input: The RaggedTensor to slice.
		  key: Indicates which piece of the RaggedTensor to return, using standard
		    Python semantics (e.g., negative values index from the end).  `key`
		    may have any of the following types:
		
		    * `int` constant
		    * Scalar integer `Tensor`
		    * `slice` containing integer constants and/or scalar integer
		      `Tensor`s
		    * `Ellipsis`
		    * `tf.newaxis`
		    * `tuple` containing any of the above (for multidimensional indexing)
		
		Returns:
		  A `Tensor` or `RaggedTensor` object.  Values that include at least one
		  ragged dimension are returned as `RaggedTensor`.  Values that include no
		  ragged dimensions are returned as `Tensor`.  See above for examples of
		  expressions that return `Tensor`s vs `RaggedTensor`s.
		
		Raises:
		  ValueError: If `key` is out of bounds.
		  ValueError: If `key` is not supported.
		  TypeError: If the indices in `key` have an unsupported type.
		
		Examples:
		
		>>> # A 2-D ragged tensor with 1 ragged dimension.
		>>> rt = tf.ragged.constant([['a', 'b', 'c'], ['d', 'e'], ['f'], ['g']])
		>>> rt[0].numpy()                 # First row (1-D `Tensor`)
		array([b'a', b'b', b'c'], dtype=object)
		>>> rt[:3].to_list()              # First three rows (2-D RaggedTensor)
		[[b'a', b'b', b'c'], [b'd', b'e'], [b'f']]
		>>> rt[3, 0].numpy()              # 1st element of 4th row (scalar)
		b'g'
		
		>>> # A 3-D ragged tensor with 2 ragged dimensions.
		>>> rt = tf.ragged.constant([[[1, 2, 3], [4]],
		...                          [[5], [], [6]],
		...                          [[7]],
		...                          [[8, 9], [10]]])
		>>> rt[1].to_list()               # Second row (2-D RaggedTensor)
		[[5], [], [6]]
		>>> rt[3, 0].numpy()              # First element of fourth row (1-D Tensor)
		array([8, 9], dtype=int32)
		>>> rt[:, 1:3].to_list()          # Items 1-3 of each row (3-D RaggedTensor)
		[[[4]], [[], [6]], [], [[10]]]
		>>> rt[:, -1:].to_list()          # Last item of each row (3-D RaggedTensor)
		[[[4]], [[6]], [[7]], [[10]]]
	**/
	static public function slicing_op(rt_input:Dynamic, key:Dynamic):Dynamic;
	static public var sparse_method : Dynamic;
	static public var sparse_property : Dynamic;
}