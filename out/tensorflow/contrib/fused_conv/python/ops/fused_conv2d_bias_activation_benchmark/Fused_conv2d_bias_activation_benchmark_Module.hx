/* This file is generated, do not edit! */
package tensorflow.contrib.fused_conv.python.ops.fused_conv2d_bias_activation_benchmark;
@:pythonImport("tensorflow.contrib.fused_conv.python.ops.fused_conv2d_bias_activation_benchmark") extern class Fused_conv2d_bias_activation_benchmark_Module {
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
		builds a graph containing a sequence of conv2d operations.
		
		Args:
		  device: String, the device to run on.
		  input_shape: Shape of the input tensor.
		  filter_shape: Shape of the filter tensor.
		  strides: A list of ints. 1-D of length 4. The stride of sliding
		           window for each dimension of input.
		  padding: A string from: "SAME", "VALID". The type of padding
		           algorithm to use.
		  num_iters: number of iterations to run conv2d.
		  data_format: data format string of input, 'NHWC' and 'NCHW' are
		  supported.
		
		Returns:
		  An array of tensors to run()
	**/
	static public function build_conv_bias_relu_graph(device:Dynamic, input_shape:Dynamic, filter_shape:Dynamic, strides:Dynamic, padding:Dynamic, num_iters:Dynamic, data_format:Dynamic):Dynamic;
	/**
		builds a graph containing a sequence of conv2d operations.
		
		Args:
		  device: String, the device to run on.
		  input_shape: Shape of the input tensor.
		  filter_shape: Shape of the filter tensor.
		  strides: A list of ints. 1-D of length 4. The stride of sliding
		           window for each dimension of input.
		  padding: A string from: "SAME", "VALID". The type of padding
		           algorithm to use.
		  num_iters: number of iterations to run conv2d.
		  data_format: data format string of input, 'NHWC' and 'NCHW' are
		  supported.
		
		Returns:
		  An array of tensors to run()
	**/
	static public function build_fused_conv_bias_relu_graph(device:Dynamic, input_shape:Dynamic, filter_shape:Dynamic, strides:Dynamic, padding:Dynamic, num_iters:Dynamic, data_format:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}