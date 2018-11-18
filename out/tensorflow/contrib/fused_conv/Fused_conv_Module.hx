/* This file is generated, do not edit! */
package tensorflow.contrib.fused_conv;
@:pythonImport("tensorflow.contrib.fused_conv") extern class Fused_conv_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Fused 2D conv, bias and activation with optional side input.
		
		Computes a fused 2-D convolution scaled by conv_input_scale,
		adds an optional side input scaled by side_input_scale, adds biases,
		and applies ReLU. As an equation:
		output = ReLU(conv_input_scale * Conv(conv_input, filter) +
		              side_input_scale * side_input + bias)
		Note: In int8 mode, The ReLU will clip the output to the range [0..127].
		
		Args:
		  conv_input: A `Tensor` of the format specified by `data_format`.
		  filter: A `Tensor` whose format depends on `data_format`:
		      if `data_format` is "NCHW_VECT_C", filter should be "OIHW_VECT_I"
		      otherwise, it should be "HWIO" format.
		  bias: A 1-D `Tensor` of type `float32`, and dimensions equal to the
		      number of output channels.
		  strides: A list of 4 `ints` specifying convolution strides.
		      if `data_format` is "NCHW" or "NCHW_VECT_C", the order should be NCHW.
		      if `data_format` is "NHWC", the order should be NHWC.
		  padding: A `string` from: `"SAME", "VALID"`.
		  conv_input_scale: A scalar `float32` that will be multiplied by conv_input.
		      This is optional and defaults to 1. However it should be set to
		      specify the quantization scale when `data_format` is "NCHW_VECT_C".
		  side_input_scale: A scalar `float32` that will be multiplied by side_input.
		      This is optional and defaults to 0.
		  side_input: A `Tensor` of the format specified by `data_format`.
		      This is useful for implementing ResNet blocks.
		  activation_mode: (optional) currently supports the default "Relu", or
		      "None" activation function.
		      Note: in qint8 mode, "None" actually clips to the range [-128, 127],
		      while "Relu" clips to the range [0, 127].
		  data_format: Specifies the data format.
		      Possible values are:
		      "NHWC" float [batch, height, width, channels]
		      "NCHW" float [batch, channels, height, width]
		      "NCHW_VECT_C" qint8 [batch, channels / 4, height, width, channels % 4]
		      Defaults to `"NHWC"`.
		      Performance is worst for `"NHWC"` and best for `"NCHW_VECT_C"`.
		  filter_format: Specifies the filter format.
		      Possible values are:
		      "HWIO" float [kernel_height, kernel_width, input_channels,
		                    output_channels ]
		      "OIHW" float [output_channels, input_channels, kernel_height,
		                    kernel_width ]
		      "OIHW_VECT_I" qint8 [ output_channels, input_channels / 4,
		                            kernel_height, kernel_width, input_channels % 4 ]
		      Defaults to `"HWIO"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the format specified by `data_format`.
	**/
	static public function fused_conv2d_bias_activation(conv_input:Dynamic, filter:Dynamic, bias:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?conv_input_scale:Dynamic, ?side_input_scale:Dynamic, ?side_input:Dynamic, ?activation_mode:Dynamic, ?data_format:Dynamic, ?filter_format:Dynamic, ?name:Dynamic):Dynamic;
}