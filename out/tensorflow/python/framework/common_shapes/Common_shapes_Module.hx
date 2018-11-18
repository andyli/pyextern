/* This file is generated, do not edit! */
package tensorflow.python.framework.common_shapes;
@:pythonImport("tensorflow.python.framework.common_shapes") extern class Common_shapes_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper functions for is_broadcast_compatible and broadcast_shape.
		
		Args:
		  shape_x: A `TensorShape`
		  shape_y: A `TensorShape`
		
		Returns:
		  Returns None if the shapes are not broadcast compatible,
		  a list of the broadcast dimensions otherwise.
	**/
	static public function _broadcast_shape_helper(shape_x:Dynamic, shape_y:Dynamic):Dynamic;
	/**
		Core implementation of call_cpp_shape_fn.
	**/
	static public function _call_cpp_shape_fn_impl(op:Dynamic, input_tensors_needed:Dynamic, input_tensors_as_shapes_needed:Dynamic, require_shape_fn:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Shape function for an AvgPool op.
		
		This op has one input:
		
		* input, a 4D tensor with shape = [batch_size, rows, cols, depth]
		
		The output is a 4D tensor with shape = [batch_size, out_rows,
		out_cols, depth_out], where out_rows and out_cols depend on the
		value of the op's "ksize", "strides", and "padding" attrs.
		
		Args:
		  op: An AvgPool Operation.
		
		Returns:
		  A single-element list containing the Shape of the AvgPool output.
		
		Raises:
		  ValueError: If the shape of the input is invalid or incompatible with
		    the values of the attrs.
	**/
	static public function avg_pool_shape(op:Dynamic):Dynamic;
	/**
		Returns the broadcasted shape between `shape_x` and `shape_y`.
		
		Args:
		  shape_x: A `TensorShape`
		  shape_y: A `TensorShape`
		
		Returns:
		  A `TensorShape` representing the broadcasted shape.
		
		Raises:
		  ValueError: If the two shapes can not be broadcasted.
	**/
	static public function broadcast_shape(shape_x:Dynamic, shape_y:Dynamic):Dynamic;
	/**
		A shape function that delegates to the registered C++ shape function.
		
		Args:
		  op: the node in the graph for which to compute output shapes.
		  require_shape_fn: If true, and the C++ shape function is not registered
		    in the current binary then an exception is raised; otherwise, if the
		    C++ shape function is not registered then unknown_shape is used.
		
		Returns:
		  A dictionary with the following keys:
		    shapes: A TensorShape list of the output shapes of the op, as computed
		      using the C++ shape inference function registered for the op.
		    handle_shapes: A TensorShape list of the shapes for handle outputs, if
		       any.
		    handle_dtypes: A list of DataType enums for the handle outputs, if any.
		
		Raises:
		  ValueError: If the C++ shape function returned an error (e.g. because the
		    shapes of the inputs are of the wrong rank or otherwise incompatible
		    according to the shape function).
		  RuntimeError: If the C++ shape function is not registered and
		    <require_shape_fn> is True.
	**/
	static public function call_cpp_shape_fn(op:Dynamic, ?require_shape_fn:Dynamic):Dynamic;
	/**
		Shape function for a Conv2D op.
		
		This op has two inputs:
		
		* input, a 4D tensor with shape = [batch_size, rows, cols, depth_in]
		* filter, a 4D tensor with shape =  [filter_rows, filter_cols,
		  depth_in, depth_out]
		
		The output is a 4D tensor with shape = [batch_size, out_rows,
		out_cols, depth_out], where out_rows and out_cols depend on the
		value of the op's "padding" and "strides" attrs.
		
		Args:
		  op: A Conv2D Operation.
		
		Returns:
		  A list containing the Shape of the Conv2D output.
		
		Raises:
		  ValueError: If the shapes of the input or filter are incompatible.
	**/
	static public function conv2d_shape(op:Dynamic):Dynamic;
	/**
		Shape function for a DepthwiseConv2D op.
		
		This op has two inputs:
		
		* input, a 4D tensor with shape = [batch_size, rows, cols, depth_in]
		* filter, a 4D tensor with shape =  [filter_rows, filter_cols,
		  depth_in, depthwise_multiplier]
		
		The output is a 4D tensor with shape = [batch_size, out_rows,
		out_cols, depth_in*depthwise_multiplier], where out_rows and out_cols depend
		on the value of the op's "padding" and "strides" attrs.
		
		Args:
		  op: A DepthwiseConv2dNative Operation.
		
		Returns:
		  A list containing the Shape of the DepthwiseConv2DNative output.
		
		Raises:
		  ValueError: If the shapes of the input or filter are incompatible.
	**/
	static public function depthwise_conv2d_native_shape(op:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns the number of rows and columns in a convolution/pooling output.
	**/
	static public function get2d_conv_output_size(input_height:Dynamic, input_width:Dynamic, filter_height:Dynamic, filter_width:Dynamic, row_stride:Dynamic, col_stride:Dynamic, padding_type:Dynamic):Dynamic;
	/**
		Returns the spatial size of a n-d convolution/pooling output.
	**/
	static public function get_conv_output_size(input_size:Dynamic, filter_size:Dynamic, strides:Dynamic, padding_type:Dynamic):Dynamic;
	/**
		Returns true if tensor has a fully defined shape.
	**/
	static public function has_fully_defined_shape(tensor:Dynamic):Dynamic;
	/**
		Returns True if `shape_x` and `shape_y` are broadcast compatible.
		
		Args:
		  shape_x: A `TensorShape`
		  shape_y: A `TensorShape`
		
		Returns:
		  True if a shape exists that both `shape_x` and `shape_y` can be broadcasted
		  to.  False otherwise.
	**/
	static public function is_broadcast_compatible(shape_x:Dynamic, shape_y:Dynamic):Dynamic;
	/**
		Shape function for a MatMul op.
	**/
	static public function matmul_shape(op:Dynamic):Dynamic;
	/**
		Shape function for a MaxPool op.
		
		This op has one input:
		
		* input, a 4D tensor with shape = [batch_size, rows, cols, depth_in]
		
		The output is a 4D tensor with shape = [batch_size, out_rows,
		out_cols, depth_out], where out_rows, out_cols, and depth_out depend
		on the value of the op's "ksize", "strides", and "padding" attrs.
		
		Args:
		  op: A MaxPool Operation.
		
		Returns:
		  A single-element list containing the Shape of the MaxPool output.
		
		Raises:
		  ValueError: If the shape of the input is invalid or incompatible with
		    the values of the attrs.
	**/
	static public function max_pool_shape(op:Dynamic):Dynamic;
	/**
		Shape function for use with ops that have no outputs.
	**/
	static public function no_outputs(unused_op:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return a rank if it is a tensor, else return None.
	**/
	static public function rank(tensor:Dynamic):Dynamic;
	/**
		Shape function for ops that output a scalar value.
	**/
	static public function scalar_shape(unused_op:Dynamic):Dynamic;
	/**
		Shape function for a SeparableConv2D op.
		
		This op has three inputs:
		
		* input, a 4D tensor with shape = [batch_size, rows, cols, depth_in]
		
		* depthwise_filter, a 4D tensor with shape = [filter_rows,
		  filter_cols, depth_in, depth_multiplier]
		
		* pointwise_filter, a 4D tensor with shape = [1, 1, depth_in *
		  depth_multiplier, depth_out]
		
		The output is a 4D tensor with shape = [batch_size, out_rows,
		out_cols, depth_out], where out_rows and out_cols depend on the
		value of the op's "padding" and "strides" attrs.
		
		Args:
		  op: A SeparableConv2D Operation.
		
		Returns:
		  A list containing the Shape of the SeparableConv2D output.
		
		Raises:
		  ValueError: If the shapes of the input or filter are incompatible.
	**/
	static public function separable_conv2d_shape(op:Dynamic):Dynamic;
	/**
		Shape function for ops that output a tensor like their first input.
	**/
	static public function unchanged_shape(op:Dynamic):Dynamic;
	/**
		Returns a shape function for ops that constrain the rank of their input.
		
		Args:
		  rank: The exact rank of the input and output.
		
		Returns:
		  A shape function for ops that output a tensor of the same size as their
		  input, with a particular rank.
	**/
	static public function unchanged_shape_with_rank(rank:Dynamic):Dynamic;
	/**
		Returns a shape function for ops that constrain the rank of their input.
		
		Args:
		  rank: A lower bound on the rank of the input and output.
		
		Returns:
		  A shape function for ops that output a tensor of the same size as their
		  input, with a particular rank.
	**/
	static public function unchanged_shape_with_rank_at_least(rank:Dynamic):Dynamic;
	/**
		Returns a shape function for ops that constrain the rank of their input.
		
		Args:
		  rank: An upper bound on the rank of the input and output.
		
		Returns:
		  A shape function for ops that output a tensor of the same size as their
		  input, with a particular rank.
	**/
	static public function unchanged_shape_with_rank_at_most(rank:Dynamic):Dynamic;
	/**
		Shape function for use with ops whose output shapes are unknown.
	**/
	static public function unknown_shape(op:Dynamic):Dynamic;
}