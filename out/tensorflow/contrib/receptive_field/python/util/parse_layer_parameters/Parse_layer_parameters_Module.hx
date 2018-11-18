/* This file is generated, do not edit! */
package tensorflow.contrib.receptive_field.python.util.parse_layer_parameters;
@:pythonImport("tensorflow.contrib.receptive_field.python.util.parse_layer_parameters") extern class Parse_layer_parameters_Module {
	static public var _SAME_PADDING : Dynamic;
	static public var _UNCHANGED_RF_LAYER_OPS : Dynamic;
	static public var _VALID_PADDING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes kernel size given a TF convolution or pooling node.
		
		Args:
		  node: Tensorflow node (NodeDef proto).
		  name_to_node: Dict keyed by node name, each entry containing the node's
		    NodeDef.
		
		Returns:
		  kernel_size_x: Kernel size for horizontal direction (integer).
		  kernel_size_y: Kernel size for vertical direction (integer).
		
		Raises:
		  ValueError: If the weight layer node is invalid.
	**/
	static public function _conv_kernel_size(node:Dynamic, name_to_node:Dynamic):Dynamic;
	/**
		Computes padding size given a TF convolution or pooling node.
		
		Args:
		  node: Tensorflow node (NodeDef proto).
		  kernel_size: Kernel size of node (integer).
		  stride: Stride size of node (integer).
		  input_resolution: Input resolution to assume, if not None (integer).
		
		Returns:
		  total_padding: Total padding size (integer).
		  padding: Padding size, applied to the left or top (integer).
		
		Raises:
		  ValueError: If padding is invalid.
	**/
	static public function _padding_size_conv_pool(node:Dynamic, kernel_size:Dynamic, stride:Dynamic, ?input_resolution:Dynamic):Dynamic;
	/**
		Computes padding size given a TF padding node.
		
		Args:
		  node: Tensorflow node (NodeDef proto).
		  name_to_node: Dict keyed by node name, each entry containing the node's
		    NodeDef.
		
		Returns:
		  total_padding_x: Total padding size for horizontal direction (integer).
		  padding_x: Padding size for horizontal direction, left side (integer).
		  total_padding_y: Total padding size for vertical direction (integer).
		  padding_y: Padding size for vertical direction, top side (integer).
		
		Raises:
		  ValueError: If padding layer is invalid.
	**/
	static public function _padding_size_pad_layer(node:Dynamic, name_to_node:Dynamic):Dynamic;
	/**
		Computes kernel size given a TF pooling node.
		
		Args:
		  node: Tensorflow node (NodeDef proto).
		  name_to_node: For MaxPoolV2, mapping from node name to NodeDef.
		
		Returns:
		  kernel_size_x: Kernel size for horizontal direction (integer).
		  kernel_size_y: Kernel size for vertical direction (integer).
		
		Raises:
		  ValueError: If pooling is invalid.
	**/
	static public function _pool_kernel_size(node:Dynamic, name_to_node:Dynamic):Dynamic;
	/**
		Computes stride size given a TF node.
		
		Args:
		  node: Tensorflow node (NodeDef proto).
		  name_to_node: For MaxPoolV2, mapping from variable name Tensorflow node.
		
		Returns:
		  stride_x: Stride size for horizontal direction (integer).
		  stride_y: Stride size for vertical direction (integer).
		
		Raises:
		  ValueError: If stride input cannot be found in `name_to_node`.
	**/
	static public function _stride_size(node:Dynamic, name_to_node:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Gets layer parameters relevant for RF computation.
		
		Currently, only these nodes are supported:
		- Conv2D
		- DepthwiseConv2dNative
		- Pad
		- MaxPool
		- AvgPool
		- all nodes listed in _UNCHANGED_RF_LAYER_OPS
		
		Args:
		  node: Tensorflow node (NodeDef proto).
		  name_to_node: Dict keyed by node name, each entry containing the node's
		    NodeDef.
		  input_resolution: List with 2 dimensions, denoting the height/width of the
		    input feature map to this layer. If set to None, then the padding may be
		    undefined (in tensorflow, SAME padding depends on input spatial
		    resolution).
		  force: If True, the function does not raise a ValueError if the layer op is
		    unknown. Instead, in this case it sets each of the returned parameters to
		    None.
		
		Returns:
		  kernel_size_x: Kernel size for horizontal direction (integer).
		  kernel_size_y: Kernel size for vertical direction (integer).
		  stride_x: Stride size for horizontal direction (integer).
		  stride_y: Stride size for vertical direction (integer).
		  padding_x: Padding size for horizontal direction, left side (integer).
		  padding_y: Padding size for vertical direction, top side (integer).
		  total_padding_x: Total padding size for horizontal direction (integer).
		  total_padding_y: Total padding size for vertical direction (integer).
		
		Raises:
		  ValueError: If layer op is unknown and force is False.
	**/
	static public function get_layer_params(node:Dynamic, name_to_node:Dynamic, ?input_resolution:Dynamic, ?force:Dynamic):Dynamic;
	/**
		Create a numpy ndarray from a tensor.
		
		Create a numpy ndarray with the same shape and data as the tensor.
		
		Args:
		  tensor: A TensorProto.
		
		Returns:
		  A numpy array with the tensor contents.
		
		Raises:
		  TypeError: if tensor has unsupported type.
	**/
	static public function make_ndarray(tensor:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}