/* This file is generated, do not edit! */
package theano.sandbox.cuda.dnn;
@:pythonImport("theano.sandbox.cuda.dnn") extern class Dnn_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _one : Dynamic;
	static public var _zero : Dynamic;
	static public var absolute_import : Dynamic;
	static public function alpha_merge(cls:Dynamic, alpha_in:Dynamic, beta_in:Dynamic):Dynamic;
	static public function as_cuda_ndarray_variable(x:Dynamic):Dynamic;
	static public function as_scalar(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This function adds Assert nodes that check if shape is a valid convolution shape.
		
		The first two dimensions should be larger than or equal to zero. The convolution
		dimensions should be larger than zero.
		
		Parameters
		----------
		shape: tuple of int (symbolic or numeric) corresponding to the input, output or
		    kernel shape of a convolution. For input and output, the first elements should
		    should be the batch size and number of channels. For kernels, the first and
		    second elements should contain the number of input and output channels.
		    The remaining dimensions are the convolution dimensions.
		
		Returns
		-------
		Returns a tuple similar to the given `shape`. For constant elements in `shape`,
		the function checks the value and raises a `ValueError` if the dimension is invalid.
		The elements that are not constant are wrapped in an `Assert` op that checks the
		dimension at run time.
	**/
	static public function assert_conv_shape(shape:Dynamic):Dynamic;
	static public function c_clean_tensor_desc(desc:Dynamic):Dynamic;
	static public function c_define_tensor_desc(desc:Dynamic):Dynamic;
	static public function c_init_tensor_desc(desc:Dynamic, err:Dynamic, fail:Dynamic):Dynamic;
	static public function c_set_tensor4d(_var:Dynamic, desc:Dynamic, err:Dynamic, fail:Dynamic):Dynamic;
	static public var config : Dynamic;
	static public function constant(x:Dynamic, ?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function dnn_available():Dynamic;
	/**
		Performs batch normalization of the given inputs, using the given mean and
		variance.
		
		Parameters
		----------
		mode : {'per-activation', 'spatial'}
		    Whether to normalize per activation or share normalization factors
		    across spatial dimensions (i.e., all dimensions past the second).
		gamma : tensor
		    Scale factors. Must match the dimensionality of `inputs`, but have
		    sizes of `1` for all axes normalized over (i.e., in the first dimension
		    for ``mode='per-activation'`, and additionally in all dimensions past
		    the second for ``mode='spatial'``).
		beta : tensor
		    Biases. Must match the tensor layout of `gamma`.
		mean : tensor
		    Means. Usually these are running averages computed during training.
		    Must match the tensor layout of `gamma`.
		var : tensor
		    Variances. Usually these are running averages computed during training.
		    Must match the tensor layout of `gamma`.
		epsilon : float
		    Epsilon value used in the batch normalization formula. Minimum allowed
		    value is 1e-5 (imposed by cuDNN).
		
		Returns
		-------
		out : tensor
		    Batch-normalized inputs.
		
		Notes
		-----
		Request cuDNN 5 and Theano 0.9dev2 or more recent.
		
		For 4d tensors, the returned value is equivalent to:
		
		.. code-block:: python
		
		    axes = (0,) if mode == 'per-activation' else (0, 2, 3)
		    gamma, beta, mean, var = (T.addbroadcast(t, *axes)
		                              for t in (gamma, beta, mean, var))
		    out = (inputs - mean) * gamma / T.sqrt(var + epsilon) + beta
		
		For 5d tensors, the axes would be (0, 2, 3, 4).
	**/
	static public function dnn_batch_normalization_test(inputs:Dynamic, gamma:Dynamic, beta:Dynamic, mean:Dynamic, _var:Dynamic, ?mode:Dynamic, ?epsilon:Dynamic):Dynamic;
	/**
		Performs batch normalization of the given inputs, using the mean and
		variance of the inputs.
		
		Parameters
		----------
		mode : {'per-activation', 'spatial'}
		    Whether to normalize per activation or share normalization factors
		    across spatial dimensions (i.e., all dimensions past the second).
		gamma : tensor
		    Learnable scale factors. Must match the dimensionality of `inputs`,
		    but have sizes of `1` for all axes normalized over (i.e., in the first
		    dimension for ``mode='per-activation'`, and additionally in all
		    dimensions past the second for ``mode='spatial'``).
		beta : tensor
		    Learnable biases. Must match the tensor layout of `gamma`.
		epsilon : float
		    Epsilon value used in the batch normalization formula. Minimum allowed
		    value is 1e-5 (imposed by cuDNN).
		running_average_factor : float
		    Factor for updating the values or `running_mean` and `running_var`.
		    If the factor is close to one, the running averages will update quickly,
		    if the factor is close to zero it will update slowly.
		running_mean : tensor or None
		    Previous value of the running mean. If this is given, the new value
		    ``running_mean * (1 - r_a_factor) + batch mean * r_a_factor``
		    will be returned as one of the outputs of this function.
		    `running_mean` and `running_var` should either both be given or
		    both be None.
		running_var : tensor or None
		    Previous value of the running variance. If this is given, the new value
		    ``running_var * (1 - r_a_factor) + (m / (m - 1)) * batch var * r_a_factor``
		    will be returned as one of the outputs of this function,
		    where `m` is the product of lengths of the averaged-over dimensions.
		    `running_mean` and `running_var` should either both be given or
		    both be None.
		
		Returns
		-------
		out : tensor
		    Batch-normalized inputs.
		mean : tensor
		    Means of `inputs` across the normalization axes.
		invstd : tensor
		    Inverse standard deviations of `inputs` across the normalization axes.
		new_running_mean : tensor
		    New value of the running mean (only if both `running_mean` and
		    `running_var` were given).
		new_running_var : tensor
		    New value of the running variance (only if both `running_var` and
		    `running_mean` were given).
		
		Notes
		-----
		Request cuDNN 5 and Theano 0.9dev2 or more recent.
		
		For 4d tensors, returned values are equivalent to:
		
		.. code-block:: python
		
		    axes = 0 if mode == 'per-activation' else (0, 2, 3)
		    mean = inputs.mean(axes, keepdims=True)
		    var = inputs.var(axes, keepdims=True)
		    invstd = T.inv(T.sqrt(var + epsilon))
		    out = (inputs - mean) * gamma * invstd + beta
		
		    m = T.cast(T.prod(inputs.shape) / T.prod(mean.shape), 'float32')
		    running_mean = running_mean * (1 - running_average_factor) + \
		                   mean * running_average_factor
		    running_var = running_var * (1 - running_average_factor) + \
		                  (m / (m - 1)) * var * running_average_factor
		
		For 5d tensors, the axes are (0, 2, 3, 4).
	**/
	static public function dnn_batch_normalization_train(inputs:Dynamic, gamma:Dynamic, beta:Dynamic, ?mode:Dynamic, ?epsilon:Dynamic, ?running_average_factor:Dynamic, ?running_mean:Dynamic, ?running_var:Dynamic):Dynamic;
	/**
		GPU convolution using cuDNN from NVIDIA.
		
		The memory layout to use is 'bc01', that is 'batch', 'channel',
		'first dim', 'second dim' in that order.
		
		Parameters
		----------
		img
		    Images to do the convolution over.
		kerns
		    Convolution filters.
		border_mode
		    One of 'valid', 'full', 'half'; additionally, the padding size can be
		    directly specified by an integer or a pair of integers (as a tuple),
		    specifying the amount of zero padding added to _both_ the top and
		    bottom (first entry) and left and right (second entry) sides of
		    the image.
		subsample
		    Perform subsampling of the output (default: (1, 1)).
		conv_mode
		    Perform convolution (kernels flipped) or cross-correlation.
		    One of 'conv', 'cross' (default: 'conv').
		direction_hint
		    Used by graph optimizers to change algorithm choice.
		    By default, GpuDnnConv will be used to carry out the convolution.
		    If border_mode is 'valid', subsample is (1,1) and direction_hint is
		    'bprop weights', it will use GpuDnnConvGradW.
		    If border_mode is 'full', subsample is (1,1) and direction_hint is
		    'bprop inputs', it will use GpuDnnConvGradI.
		    This parameter is used internally by graph optimizers and may be
		    removed at any time without a deprecation period. You have been warned.
		workmem
		    *deprecated*, use parameter algo instead.
		algo : {'none', 'small', 'large', 'fft', 'guess_once', 'guess_on_shape_change', 'time_once', 'time_on_shape_change'}
		    Convolution implementation to use. Some of its  values may require certain
		    versions of cuDNN to be installed. Default is the value of
		    :attr:`config.dnn.conv.algo_fwd`.
		precision : {'as_input_f32', 'as_input', 'float16', 'float32', 'float64'}
		    Description of the dtype in which the computation of the convolution
		    should be done. Possible values are 'as_input', 'float16', 'float32'
		    and 'float64'. Default is the value of
		    :attr:`config.dnn.conv.precision`.
	**/
	static public function dnn_conv(img:Dynamic, kerns:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?conv_mode:Dynamic, ?direction_hint:Dynamic, ?workmem:Dynamic, ?algo:Dynamic, ?precision:Dynamic):Dynamic;
	/**
		GPU convolution using cuDNN from NVIDIA.
		
		The memory layout to use is 'bct01', that is 'batch', 'channel',
		'first dim', 'second dim', 'third dim' in that order.
		
		:param img: images to do the convolution over
		:param kerns: convolution filters
		:param border_mode: One of 'valid', 'full', 'half'; additionally, the
		    padding size can be directly specified by an integer or a triplet of
		    integers (as a tuple), specifying the amount of zero padding added to
		    _both_ the top and bottom (first entry) and left and right (second
		    entry) and front and back (third entry) sides of the volume.
		:param subsample: perform subsampling of the output (default: (1, 1, 1))
		:param conv_mode: perform convolution (kernels flipped) or
		    cross-correlation. One of 'conv', 'cross'. (default: 'conv')
		:param direction_hint: Used by graph optimizers to change algorithm choice.
		    By default, GpuDnnConv will be used to carry out the convolution.
		    If border_mode is 'valid', subsample is (1,1,1) and direction_hint is
		    'bprop weights', it will use GpuDnnConvGradW.
		    This parameter is used internally by graph optimizers and may be
		    removed at any time without a deprecation period. You have been warned.
		:param workmem: *deprecated*, use param algo instead
		:param algo: convolution implementation to use. Only 'none' is implemented
		    for the conv3d. Default is the value of
		    :attr:`config.dnn.conv.algo_fwd`.
		:param precision: dtype in which the computation of the convolution
		    should be done. Possible values are 'as_input_f32', 'as_input',
		    'float16', 'float32' and 'float64'. Default is the value of
		    :attr:`config.dnn.conv.precision`.
		
		:warning: The cuDNN library only works with GPU that have a compute
		    capability of 3.0 or higer.  This means that older GPU will not
		    work with this Op.
		:warning: dnn_conv3d only works with cuDNN library 3.0
	**/
	static public function dnn_conv3d(img:Dynamic, kerns:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?conv_mode:Dynamic, ?direction_hint:Dynamic, ?workmem:Dynamic, ?algo:Dynamic, ?precision:Dynamic):Dynamic;
	/**
		GPU convolution gradient with respect to input using cuDNN from NVIDIA.
		
		The memory layout to use is 'bc01', that is 'batch', 'channel',
		'first dim', 'second dim' in that order.
		
		FIXME parameters doc
		
		:warning: The cuDNN library only works with GPU that have a compute
		  capability of 3.0 or higer.  This means that older GPU will not
		  work with this Op.
	**/
	static public function dnn_gradinput(kerns:Dynamic, topgrad:Dynamic, img_shp:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?conv_mode:Dynamic):Dynamic;
	/**
		GPU convolution gradient with respect to input using cuDNN from NVIDIA.
		
		The memory layout to use is 'bct01', that is 'batch', 'channel',
		'first dim', 'second dim' in that order.
		
		FIXME parameters doc
		
		:warning: The cuDNN library only works with GPU that have a compute
		  capability of 3.0 or higer.  This means that older GPU will not
		  work with this Op.
	**/
	static public function dnn_gradinput3d(kerns:Dynamic, topgrad:Dynamic, img_shp:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?conv_mode:Dynamic):Dynamic;
	/**
		GPU convolution gradient with respect to weight using cuDNN from NVIDIA.
		
		The memory layout to use is 'bc01', that is 'batch', 'channel',
		'first dim', 'second dim' in that order.
		
		FIXME parameters doc
		
		:warning: The cuDNN library only works with GPU that have a compute
		  capability of 3.0 or higer.  This means that older GPU will not
		  work with this Op.
	**/
	static public function dnn_gradweight(img:Dynamic, topgrad:Dynamic, kerns_shp:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?conv_mode:Dynamic):Dynamic;
	/**
		GPU convolution gradient with respect to weight using cuDNN from NVIDIA.
		
		The memory layout to use is 'bct01', that is 'batch', 'channel',
		'first dim', 'second dim' in that order.
		
		FIXME parameters doc
		
		:warning: The cuDNN library only works with GPU that have a compute
		  capability of 3.0 or higer.  This means that older GPU will not
		  work with this Op.
	**/
	static public function dnn_gradweight3d(img:Dynamic, topgrad:Dynamic, kerns_shp:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?conv_mode:Dynamic):Dynamic;
	/**
		GPU pooling using cuDNN from NVIDIA.
		
		For 2D pooling, the memory layout to use is 'bc01', that is 'batch',
		'channel', 'first dim', 'second dim' in that order.
		
		For 3D pooling, the memory layout to use is 'bc012', that is 'batch',
		'channel', 'first dim', 'second dim', 'third dim'.
		
		Parameters
		----------
		img
		    Images to do the pooling over.
		ws
		    Subsampling window size.  Should have 2 or 3 elements.
		stride
		    Subsampling stride (default: (1, 1) or (1, 1, 1)).
		mode : {'max', 'average_inc_pad', 'average_exc_pad', 'sum'}
		pad
		    Padding: (pad_h, pad_w) for 2D or (pad_h, pad_w, pad_d) for 3D.
		    pad_h is the number of zero-valued pixels added to each of the top and
		    bottom borders.
		    pad_w is the number of zero-valued pixels added to each of the left
		    and right borders.
		    pad_d is the number of zero-valued pixels added to each of the front
		    and back borders (3D pooling only).
		
		
		.. warning:: The cuDNN library only works with GPU that have a compute
		  capability of 3.0 or higer.  This means that older GPU will not
		  work with this Op.
		
		Notes
		-----
		This Op implements the ignore_border=True of max_pool_2d.
	**/
	static public function dnn_pool(img:Dynamic, ws:Dynamic, ?stride:Dynamic, ?mode:Dynamic, ?pad:Dynamic):Dynamic;
	static public function ensure_float(val:Dynamic, _default:Dynamic, name:Dynamic):Dynamic;
	/**
		This function compute the output shape of convolution operation.
		
		Parameters
		----------
		image_shape: tuple of int (symbolic or numeric) corresponding to the input
		    image shape. Its four (or five) element must correspond respectively
		    to: batch size, number of input channels, height and width (and
		    possibly depth) of the image. None where undefined.
		kernel_shape: tuple of int (symbolic or numeric) corresponding to the
		    kernel shape. Its four (or five) elements must correspond respectively
		    to: number of output channels, number of input channels, height and
		    width (and possibly depth) of the kernel. None where undefined.
		border_mode: string, int (symbolic or numeric) or tuple of int (symbolic
		    or numeric). If it is a string, it must be 'valid', 'half' or 'full'.
		    If it is a tuple, its two (or three) elements respectively correspond
		    to the padding on height and width (and possibly depth) axis.
		subsample: tuple of int (symbolic or numeric). Its two or three elements
		    espectively correspond to the subsampling on height and width (and
		    possibly depth) axis.
		filter_dilation: tuple of int (symbolic or numeric). Its two or three
		    elements correspond respectively to the dilation on height and width axis.
		
		Returns
		-------
		output_shape: tuple of int corresponding to the output image shape. Its
		    four element must correspond respectively to: batch size, number of
		    output channels, height and width of the image. None where undefined.
	**/
	static public function get_conv_output_shape(image_shape:Dynamic, kernel_shape:Dynamic, border_mode:Dynamic, subsample:Dynamic, ?filter_dilation:Dynamic):Dynamic;
	static public function gpu_alloc(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_alloc_empty(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_contiguous(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var gpu_seqopt : Dynamic;
	/**
		Return an un-computable symbolic variable of type `x.type`.
		
		If any call to tensor.grad results in an expression containing this
		un-computable variable, an exception (NotImplementedError) will be
		raised indicating that the gradient on the
		`x_pos`'th input of `op` has not been implemented. Likewise if
		any call to theano.function involves this variable.
		
		Optionally adds a comment to the exception explaining why this
		gradient is not implemented.
	**/
	static public function grad_not_implemented(op:Dynamic, x_pos:Dynamic, x:Dynamic, ?comment:Dynamic):Dynamic;
	static public function host_from_gpu(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var integer_types : Dynamic;
	static public var local_abstract_batch_norm_inference_cudnn : Dynamic;
	static public var local_abstract_batch_norm_train_cudnn : Dynamic;
	static public var local_abstract_batch_norm_train_grad_cudnn : Dynamic;
	static public var local_abstractconv3d_cudnn : Dynamic;
	static public var local_abstractconv_cudnn : Dynamic;
	static public var local_avgpool_dnn_grad_stride : Dynamic;
	static public var local_conv_dnn : Dynamic;
	static public var local_conv_dnn_alternative : Dynamic;
	static public var local_dnn_conv_alpha_merge : Dynamic;
	static public var local_dnn_conv_inplace : Dynamic;
	static public var local_dnn_conv_output_merge : Dynamic;
	static public var local_dnn_convgi_inplace : Dynamic;
	static public var local_dnn_convgw_inplace : Dynamic;
	static public var local_dnn_convi_alpha_merge : Dynamic;
	static public var local_dnn_convi_output_merge : Dynamic;
	static public var local_dnn_convw_alpha_merge : Dynamic;
	static public var local_dnn_convw_output_merge : Dynamic;
	static public var local_gpu_batch_norm_inference_inplace : Dynamic;
	static public var local_gpu_batch_norm_inplace_output : Dynamic;
	static public var local_gpu_batch_norm_inplace_running_mean : Dynamic;
	static public var local_gpu_batch_norm_inplace_running_var : Dynamic;
	static public var local_log_softmax_dnn : Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
	static public var local_pool_dnn : Dynamic;
	static public var local_pool_dnn_alternative : Dynamic;
	static public var local_pool_dnn_grad : Dynamic;
	static public var local_pool_dnn_grad_stride : Dynamic;
	static public var local_softmax_dnn : Dynamic;
	static public var local_softmax_dnn_grad : Dynamic;
	static public var optdb : Dynamic;
	static public function output_merge(cls:Dynamic, alpha_in:Dynamic, beta_in:Dynamic, out_in:Dynamic):Dynamic;
	/**
		Reshapes the input to a (leftdims + rightdims) tensor
		
		This helper function is used to convert pooling inputs with arbitrary
		non-pooling dimensions to the correct number of dimensions for the
		GPU pooling ops.
		
		This reduces or expands the number of dimensions of the input to
		exactly `leftdims`, by adding extra dimensions on the left or by
		combining some existing dimensions on the left of the input.
		
		Use `unpad_dims` to reshape back to the original dimensions.
		
		Examples
		--------
		Given input of shape (3, 5, 7), ``pad_dims(input, 2, 2)``
		adds a singleton dimension and reshapes to (3, 1, 5, 7).
		Given that output from pad_dims, ``unpad_dims(output, input, 2, 2)``
		reshapes back to (3, 5, 7).
		
		Given input of shape (3, 5, 7, 9), ``pad_dims(input, 2, 2)``
		does not reshape and returns output with shape (3, 5, 7, 9).
		
		Given input of shape (3, 5, 7, 9, 11), ``pad_dims(input, 2, 2)``
		combines the first two dimensions and reshapes to (8, 7, 9, 11).
		
		Given input of shape (3, 5, 7, 9), ``pad_dims(input, 2, 3)``
		adds a singleton dimension and reshapes to (3, 1, 5, 7, 9).
	**/
	static public function pad_dims(input:Dynamic, leftdims:Dynamic, rightdims:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function register_inplace(?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function register_opt(?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Equivalent of var.shape[i], but apply if possible the shape feature
		optimization.
		
		This is useful in optimization that need to get the shape. This
		remove the need of the following shape_feature optimization that
		convert it. So this speed up optimization and remove Equilibrium
		max iteration problems.
		
		Parameters
		----------
		var
		    The variable we want to take the shape of.
		i
		    The shape dimensions we want
		fgraph : optional
		    If var.fgraph do not exist, the fgraph that have the shape_feature to
		    introduce var in to get the optimized shape.
	**/
	static public function shape_i(_var:Dynamic, i:Dynamic, ?fgraph:Dynamic):Dynamic;
	/**
		Reshapes the output after pad_dims.
		
		This reverts the padding by `pad_dims`.
	**/
	static public function unpad_dims(output:Dynamic, input:Dynamic, leftdims:Dynamic, rightdims:Dynamic):Dynamic;
	/**
		This fct is needed to don't have DebugMode raise useless
		errors due to rounding error.
		
		This happen as we reduce on the two last dimensions, so this
		can raise the absolute error if the number of elements we
		reduce on is significant.
	**/
	static public function values_eq_approx_high_tol(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Return the current cuDNN version we compile with.
		
		This returns a tuple with the header version and the library
		version we link with. For older cudnn version without version
		information, we return -1.
	**/
	static public function version():Dynamic;
}