/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.conv_utils;
@:pythonImport("tensorflow.python.keras.utils.conv_utils") extern class Conv_utils_Module {
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
		Return locations of the input connected to an output position.
		
		Assume a convolution with given parameters is applied to an input having N
		spatial dimensions with `input_shape = (d_in1, ..., d_inN)`. This method
		returns N ranges specifying the input region that was convolved with the
		kernel to produce the output at position
		`output_position = (p_out1, ..., p_outN)`.
		
		Example:
		  ```python
		      >>> input_shape = (4, 4)
		      >>> kernel_shape = (2, 1)
		      >>> output_position = (1, 1)
		      >>> strides = (1, 1)
		      >>> padding = "valid"
		      >>> conv_connected_inputs(input_shape, kernel_shape, output_position,
		      >>>                       strides, padding)
		      [xrange(1, 3), xrange(1, 2)]
		  ```
		Args:
		  input_shape: tuple of size N: `(d_in1, ..., d_inN)`,
		               spatial shape of the input.
		  kernel_shape: tuple of size N, spatial shape of the convolutional kernel
		                / receptive field.
		  output_position: tuple of size N: `(p_out1, ..., p_outN)`,
		                   a single position in the output of the convolution.
		  strides: tuple of size N, strides along each spatial dimension.
		  padding: type of padding, string `"same"` or `"valid"`.
		
		Returns:
		  N ranges `[[p_in_left1, ..., p_in_right1], ...,
		            [p_in_leftN, ..., p_in_rightN]]` specifying the region in the
		  input connected to output_position.
	**/
	static public function conv_connected_inputs(input_shape:Dynamic, kernel_shape:Dynamic, output_position:Dynamic, strides:Dynamic, padding:Dynamic):Dynamic;
	/**
		Determines input length of a convolution given output length.
		
		Arguments:
		    output_length: integer.
		    filter_size: integer.
		    padding: one of "same", "valid", "full".
		    stride: integer.
		
		Returns:
		    The input length (integer).
	**/
	static public function conv_input_length(output_length:Dynamic, filter_size:Dynamic, padding:Dynamic, stride:Dynamic):Dynamic;
	/**
		Compute a mask representing the connectivity of a convolution operation.
		
		Assume a convolution with given parameters is applied to an input having N
		spatial dimensions with `input_shape = (d_in1, ..., d_inN)` to produce an
		output with shape `(d_out1, ..., d_outN)`. This method returns a boolean array
		of shape `(d_in1, ..., d_inN, d_out1, ..., d_outN)` with `True` entries
		indicating pairs of input and output locations that are connected by a weight.
		
		Example:
		  ```python
		      >>> input_shape = (4,)
		      >>> kernel_shape = (2,)
		      >>> strides = (1,)
		      >>> padding = "valid"
		      >>> conv_kernel_mask(input_shape, kernel_shape, strides, padding)
		      array([[ True, False, False],
		             [ True,  True, False],
		             [False,  True,  True],
		             [False, False,  True]], dtype=bool)
		  ```
		  where rows and columns correspond to inputs and outputs respectively.
		
		
		Args:
		  input_shape: tuple of size N: `(d_in1, ..., d_inN)`,
		               spatial shape of the input.
		  kernel_shape: tuple of size N, spatial shape of the convolutional kernel
		                / receptive field.
		  strides: tuple of size N, strides along each spatial dimension.
		  padding: type of padding, string `"same"` or `"valid"`.
		
		Returns:
		  A boolean 2N-D `np.ndarray` of shape
		  `(d_in1, ..., d_inN, d_out1, ..., d_outN)`, where `(d_out1, ..., d_outN)`
		  is the spatial shape of the output. `True` entries in the mask represent
		  pairs of input-output locations that are connected by a weight.
		
		Raises:
		  ValueError: if `input_shape`, `kernel_shape` and `strides` don't have the
		      same number of dimensions.
		  NotImplementedError: if `padding` is not in {`"same"`, `"valid"`}.
	**/
	static public function conv_kernel_mask(input_shape:Dynamic, kernel_shape:Dynamic, strides:Dynamic, padding:Dynamic):Dynamic;
	/**
		Determines output length of a convolution given input length.
		
		Arguments:
		    input_length: integer.
		    filter_size: integer.
		    padding: one of "same", "valid", "full", "causal"
		    stride: integer.
		    dilation: dilation rate, integer.
		
		Returns:
		    The output length (integer).
	**/
	static public function conv_output_length(input_length:Dynamic, filter_size:Dynamic, padding:Dynamic, stride:Dynamic, ?dilation:Dynamic):Dynamic;
	/**
		Return the output shape of an N-D convolution.
		
		Forces dimensions where input is empty (size 0) to remain empty.
		
		Args:
		  input_shape: tuple of size N: `(d_in1, ..., d_inN)`,
		               spatial shape of the input.
		  kernel_shape: tuple of size N, spatial shape of the convolutional kernel
		                / receptive field.
		  strides: tuple of size N, strides along each spatial dimension.
		  padding: type of padding, string `"same"` or `"valid"`.
		
		Returns:
		  tuple of size N: `(d_out1, ..., d_outN)`, spatial shape of the output.
	**/
	static public function conv_output_shape(input_shape:Dynamic, kernel_shape:Dynamic, strides:Dynamic, padding:Dynamic):Dynamic;
	static public function convert_data_format(data_format:Dynamic, ndim:Dynamic):Dynamic;
	/**
		Converts a Numpy kernel matrix from Theano format to TensorFlow format.
		
		Also works reciprocally, since the transformation is its own inverse.
		
		Arguments:
		    kernel: Numpy array (3D, 4D or 5D).
		
		Returns:
		    The converted kernel.
		
		Raises:
		    ValueError: in case of invalid kernel shape or invalid data_format.
	**/
	static public function convert_kernel(kernel:Dynamic):Dynamic;
	/**
		Determines output length of a transposed convolution given input length.
		
		Arguments:
		    input_length: Integer.
		    filter_size: Integer.
		    padding: one of `"same"`, `"valid"`, `"full"`.
		    output_padding: Integer, amount of padding along the output dimension.
		        Can be set to `None` in which case the output length is inferred.
		    stride: Integer.
		    dilation: Integer.
		
		Returns:
		    The output length (integer).
	**/
	static public function deconv_output_length(input_length:Dynamic, filter_size:Dynamic, padding:Dynamic, ?output_padding:Dynamic, ?stride:Dynamic, ?dilation:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function normalize_data_format(value:Dynamic):Dynamic;
	static public function normalize_padding(value:Dynamic):Dynamic;
	/**
		Transforms a single integer or iterable of integers into an integer tuple.
		
		Arguments:
		  value: The value to validate and convert. Could an int, or any iterable
		    of ints.
		  n: The size of the tuple to be returned.
		  name: The name of the argument being validated, e.g. "strides" or
		    "kernel_size". This is only used to format error messages.
		
		Returns:
		  A tuple of n integers.
		
		Raises:
		  ValueError: If something else than an int/long or iterable thereof was
		    passed.
	**/
	static public function normalize_tuple(value:Dynamic, n:Dynamic, name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}