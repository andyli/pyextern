/* This file is generated, do not edit! */
package tensorflow.python.framework.tensor_shape;
@:pythonImport("tensorflow.python.framework.tensor_shape") extern class Tensor_shape_Module {
	static public var _TENSORSHAPE_V2_OVERRIDE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _api_usage_gauge : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts the given value to a Dimension.
		
		A Dimension input will be returned unmodified.
		An input of `None` will be converted to an unknown Dimension.
		An integer input will be converted to a Dimension with that value.
		
		Args:
		  value: The value to be converted.
		
		Returns:
		  A Dimension corresponding to the given value.
	**/
	static public function as_dimension(value:Dynamic):Dynamic;
	/**
		Converts the given object to a TensorShape.
	**/
	static public function as_shape(shape:Dynamic):Dynamic;
	/**
		Compatibility utility required to allow for both V1 and V2 behavior in TF.
		
		Until the release of TF 2.0, we need the legacy behavior of `TensorShape` to
		coexist with the new behavior. This utility is a bridge between the two.
		
		If you want to retrieve the Dimension instance corresponding to a certain
		index in a TensorShape instance, use this utility, like this:
		
		```
		# If you had this in your V1 code:
		dim = tensor_shape[i]
		
		# Use `dimension_at_index` as direct replacement compatible with both V1 & V2:
		dim = dimension_at_index(tensor_shape, i)
		
		# Another possibility would be this, but WARNING: it only works if the
		# tensor_shape instance has a defined rank.
		dim = tensor_shape.dims[i]  # `dims` may be None if the rank is undefined!
		
		# In native V2 code, we recommend instead being more explicit:
		if tensor_shape.rank is None:
		  dim = Dimension(None)
		else:
		  dim = tensor_shape.dims[i]
		
		# Being more explicit will save you from the following trap (present in V1):
		# you might do in-place modifications to `dim` and expect them to be reflected
		# in `tensor_shape[i]`, but they would not be (as the Dimension object was
		# instantiated on the fly.
		```
		
		Args:
		  shape: A TensorShape instance.
		  index: An integer index.
		
		Returns:
		  A dimension object.
	**/
	static public function dimension_at_index(shape:Dynamic, index:Dynamic):Dynamic;
	/**
		Compatibility utility required to allow for both V1 and V2 behavior in TF.
		
		Until the release of TF 2.0, we need the legacy behavior of `TensorShape` to
		coexist with the new behavior. This utility is a bridge between the two.
		
		When accessing the value of a TensorShape dimension,
		use this utility, like this:
		
		```
		# If you had this in your V1 code:
		value = tensor_shape[i].value
		
		# Use `dimension_value` as direct replacement compatible with both V1 & V2:
		value = dimension_value(tensor_shape[i])
		
		# This would be the V2 equivalent:
		value = tensor_shape[i]  # Warning: this will return the dim value in V2!
		```
		
		Args:
		  dimension: Either a `Dimension` instance, an integer, or None.
		
		Returns:
		  A plain value, i.e. an integer or None.
	**/
	static public function dimension_value(dimension:Dynamic):Dynamic;
	/**
		Disables the V2 TensorShape behavior and reverts to V1 behavior.
		
		See docstring for `enable_v2_tensorshape` for details about the new behavior.
	**/
	static public function disable_v2_tensorshape():Dynamic;
	static public var division : Dynamic;
	/**
		In TensorFlow 2.0, iterating over a TensorShape instance returns values.
		
		This enables the new behavior.
		
		Concretely, `tensor_shape[i]` returned a Dimension instance in V1, but
		it V2 it returns either an integer, or None.
		
		Examples:
		
		```
		#######################
		# If you had this in V1:
		value = tensor_shape[i].value
		
		# Do this in V2 instead:
		value = tensor_shape[i]
		
		#######################
		# If you had this in V1:
		for dim in tensor_shape:
		  value = dim.value
		  print(value)
		
		# Do this in V2 instead:
		for value in tensor_shape:
		  print(value)
		
		#######################
		# If you had this in V1:
		dim = tensor_shape[i]
		dim.assert_is_compatible_with(other_shape)  # or using any other shape method
		
		# Do this in V2 instead:
		if tensor_shape.rank is None:
		  dim = Dimension(None)
		else:
		  dim = tensor_shape.dims[i]
		dim.assert_is_compatible_with(other_shape)  # or using any other shape method
		
		# The V2 suggestion above is more explicit, which will save you from
		# the following trap (present in V1):
		# you might do in-place modifications to `dim` and expect them to be reflected
		# in `tensor_shape[i]`, but they would not be.
		```
	**/
	static public function enable_v2_tensorshape():Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns an unknown TensorShape, optionally with a known rank.
		
		Args:
		  rank: (Optional) If specified, the number of dimensions in the shape.
		  **kwargs: For backwards compatibility.
		
		Returns:
		  An unknown TensorShape.
		
		Raises:
		  TypeError: In case of invalid arguments.
	**/
	static public function unknown_shape(?rank:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}