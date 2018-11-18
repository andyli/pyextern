/* This file is generated, do not edit! */
package tensorflow.contrib.fused_conv.ops.gen_fused_conv2d_bias_activation_op;
@:pythonImport("tensorflow.contrib.fused_conv.ops.gen_fused_conv2d_bias_activation_op") extern class Gen_fused_conv2d_bias_activation_op_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Computes a fused kernel which implements: 2-D convolution, adds side input,
		
		    with separate scaling on convolution and side inputs, then adds bias and
		    applies the RELU activation function to the result. Supports both float and
		    qint8 data formats. In the case of qint8, the output is clipped to [0..127].
		
		    conv_input: A tensor with format as specified by `data_format` (see below).
		    filter: A tensor with format depending on `data_format` as follows:
		        "NHWC", "NCHW":
		             `float [ filter_height, filter_width, in_channels, out_channels ]`
		        "NCHW_VECT_C":
		             `qint8 [ out_channels, in_channels, filter_height, filter_width ]`
		    bias: 1-D float tensor with size matching the `out_channels` dimension of
		        `filter`.
		        Note: this tensor is still float, even if other inputs are qint8.
		    side_input: A tensor with format as specified by `data_format` (see below).
		        This tensor will be ignored and can be [] if side_input_scale == 0.
		        Otherwise, the size of each dimension must match the `output` tensor.
		    conv_input_scale: scalar float value to be multiplied by `conv_input`.
		        (conceptually.. in reality it is applied after convolution).
		    side_input_scale: scalar float value to be multiplied by `side_input`.
		    output: A tensor with format as specified by `data_format` (see below).
		        The dimension sizes are determined automatically based on other inputs
		        and attributes.
		    T: The element data type of `conv_input`, `side_input` and `output` tensors.
		        Note: must match with the `data_format`.
		    Tbias: The element data type of `bias`.
		    strides: 1-D tensor of length 4.  The stride of the sliding window for each
		        dimension of `input`. The dimension order is determined by the value of
		        `data_format`, see below for details.
		        Note: the stride for batch and channel dimensions must be 1.
		    padding: The type of padding algorithm to use.
		    data_format: A string specifying the data format of `conv_input`,
		        `side_input` and `output` tensors with the following options:
		        "NHWC": `float [ batch, height, width, channels ]`
		        "NCHW": `float [ batch, channels, height, width ]`
		        "NCHW_VECT_C":
		            `qint8 [ batch, channels / 4, height, width, channels % 4 ]`
		        Note: for "NCHW_VECT_C", `channels` must be a multiple of 4.
		    filter_format: A string specifying the data format of `filter`,
		        "HWIO": `float [ kernel_height, kernel_width, input_channels,
		                         output_channels ]`
		        "OIHW_VECT_I":
		            `qint8 [ output_channels, input_channels / 4,
		                     kernel_height, kernel_width, input_channels % 4 ]`
		    activation_mode: The activation applied to the output.
		        Must be "Relu" or "None".
		    dilations: 1-D tensor of length 4.  The dilation factor for each dimension
		        of `input`. If set to k > 1, there will be k-1 skipped cells between
		        each filter element on that dimension. The dimension order is determined
		        by the value of `data_format`, see above for details. Dilations in the
		        batch and depth dimensions must be 1.
		
		Args:
		  conv_input: A `Tensor`. Must be one of the following types: `float32`, `half`, `qint8`.
		  filter: A `Tensor`. Must have the same type as `conv_input`.
		  bias: A `Tensor`. Must be one of the following types: `float32`, `half`.
		  side_input: A `Tensor`. Must have the same type as `conv_input`.
		  conv_input_scale: A `Tensor` of type `float32`.
		  side_input_scale: A `Tensor` of type `float32`.
		  strides: A list of `ints`.
		  padding: A `string` from: `"SAME", "VALID"`.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NCHW_VECT_C"`. Defaults to `"NHWC"`.
		  filter_format: An optional `string` from: `"HWIO", "OIHW", "OIHW_VECT_I"`. Defaults to `"HWIO"`.
		  activation_mode: An optional `string` from: `"Relu", "None"`. Defaults to `"Relu"`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `conv_input`.
	**/
	static public function fused_conv2d_bias_activation(conv_input:Dynamic, filter:Dynamic, bias:Dynamic, side_input:Dynamic, conv_input_scale:Dynamic, side_input_scale:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?filter_format:Dynamic, ?activation_mode:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fused_conv2d_bias_activation
	**/
	static public function fused_conv2d_bias_activation_eager_fallback(conv_input:Dynamic, filter:Dynamic, bias:Dynamic, side_input:Dynamic, conv_input_scale:Dynamic, side_input_scale:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?filter_format:Dynamic, ?activation_mode:Dynamic, ?dilations:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}