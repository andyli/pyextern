/* This file is generated, do not edit! */
package theano.gpuarray.dnn;
@:pythonImport("theano.gpuarray.dnn") extern class Dnn_Module {
	static public var SUPPORTED_DNN_CONV_ALGO_BWD_FILTER : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _dnn_check_compile():Dynamic;
	static public function _dnn_check_version():Dynamic;
	static public function _dnn_lib():Dynamic;
	static public function _get_param_size(desc:Dynamic, input_size:Dynamic, dtype:Dynamic, context_name:Dynamic):Dynamic;
	static public function _make_dropout_desc(dropout:Dynamic, seed:Dynamic, context_name:Dynamic):Dynamic;
	static public function _make_handle(ctx:Dynamic):Dynamic;
	static public function _make_rnn_desc(hidden_size:Dynamic, num_layers:Dynamic, ddesc:Dynamic, rnn_mode:Dynamic, input_mode:Dynamic, direction_mode:Dynamic, dtype:Dynamic, context_name:Dynamic):Dynamic;
	static public var _one : Dynamic;
	static public function _split_rnn_params(w:Dynamic, desc:Dynamic, layer:Dynamic, input_size:Dynamic, dtype:Dynamic, rnn_mode:Dynamic):Dynamic;
	static public var _zero : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator to merge multiplication by a scalar on the output.
		
		This will find a pattern of `scal * <yourop>(some, params, alpha,
		beta)` and update it so that the scalar multiplication happens as
		part of your op.
		
		The op needs to accept an alpha and a beta scalar which act this way::
		
		   out = Op() * alpha + out_like * beta
		
		Where out_like is a buffer that has the same size as the output
		and gets added to the "real" output of the operation.  An example
		of an operation that respects this pattern is GEMM from blas.
		
		The decorated function must have this signature::
		
		    maker(node, *inputs)
		
		The `node` argument you recieve is the original apply node that
		contains your op.  You should use it to grab relevant properties
		for your op so that the new version performs the same computation.
		The `*inputs` parameters contains the new inputs for your op.  You
		MUST use those inputs instead of the ones on `node`.  Note that
		this function can be as simple as::
		
		    def maker(node, *inputs):
		        return node.op(*inputs)
		
		Parameters
		----------
		cls : op class
		    The class of the op you want to merge
		alpha_in : int
		    The input index for the alpha scalar for your op (in node.inputs).
		beta_in : int
		    The input index for the beta scalar for your op (in node.inputs).
		
		Returns
		-------
		local optimizer
		    an unregistered local optimizer that has the same name as the
		    decorated function.
		
		Notes
		-----
		This was factored out since the code to deal with intervening
		transfers and correctness in the presence of different values of
		alpha and beta scaling factors is not trivial.
	**/
	static public function alpha_merge(cls:Dynamic, alpha_in:Dynamic, beta_in:Dynamic):Dynamic;
	/**
		This will attempt to convert `x` into a variable on the GPU.
		
		It can take either a value of another variable.  If `x` is already
		suitable, it will be returned as-is.
		
		Parameters
		----------
		x
		    Object to convert
		context_name : str or None
		    target context name for the result
	**/
	static public function as_gpuarray_variable(x:Dynamic, context_name:Dynamic):Dynamic;
	static public function as_i32(v:Dynamic):Dynamic;
	static public function as_scalar(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return `x`, transformed into a `TensorType`.
		
		This function is often used by `make_node` methods of `Op` subclasses
		to turn ndarrays, numbers, `Scalar` instances, `Apply` instances and
		`TensorType` instances into valid input list elements.
		
		Parameters
		----------
		x : Apply instance, Variable instance, numpy.ndarray, or number
		    This thing will be transformed into a `Variable` in a sensible way. An
		    ndarray argument will not be copied, but a list of numbers will be
		    copied to make an ndarray.
		name : str or None
		    If a new `Variable` instance is created, it will be named with this
		    string.
		ndim : None or integer
		    Return a Variable with this many dimensions.
		
		Raises
		------
		ValueError
		    If an `Apply` with more than one output is fetched or
		    if `x` cannot be made into a Variable with `ndim` dimensions.
		AsTensorError
		    If `x` cannot be converted to a TensorType Variable.
	**/
	static public function as_tensor_variable(x:Dynamic, ?name:Dynamic, ?ndim:Dynamic):Dynamic;
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
	static public var config : Dynamic;
	static public function constant(x:Dynamic, ?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function dnn_available(context_name:Dynamic):Dynamic;
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
		Requires cuDNN 5 and Theano 0.9dev2 or more recent.
		
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
		Requires cuDNN 5 and Theano 0.9dev2 or more recent.
		
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
		    One of 'valid', 'full', 'half'; additionally, the padding size
		    could be directly specified by an integer or a pair of integers.
		subsample
		    Perform subsampling of the output (default: (1, 1)).
		conv_mode
		    Perform convolution (kernels flipped) or cross-correlation.
		    One of 'conv', 'cross' (default: 'conv').
		direction_hint
		    Used by graph optimizers to change algorithm choice.
		    By default, GpuDnnConv will be used to carry out the convolution.
		    If border_mode is 'valid', subsample is (1, 1) and direction_hint is
		    'bprop weights', it will use GpuDnnConvGradW.
		    If border_mode is 'full', subsample is (1, 1) and direction_hint is
		    *not* 'forward!', it will use GpuDnnConvGradI.
		    This parameter is used internally by graph optimizers and may be
		    removed at any time without a deprecation period. You have been warned.
		algo : {'none', 'small', 'large', 'fft', 'guess_once', 'guess_on_shape_change', 'time_once', 'time_on_shape_change'}
		    Convolution implementation to use. Some of its values may
		    require certain versions of cuDNN to be installed. Default is
		    the value of :attr:`config.dnn.conv.algo_fwd`.
		precision : {'as_input_f32', 'as_input', 'float16', 'float32', 'float64'}
		    Description of the dtype in which the computation of the convolution
		    should be done. Possible values are 'as_input', 'float16', 'float32'
		    and 'float64'. Default is the value of
		    :attr:`config.dnn.conv.precision`.
		
		
		.. warning:: The cuDNN library only works with GPUs that have a compute
		    capability of 3.0 or higer. This means that older GPUs will not
		    work with this Op.
	**/
	static public function dnn_conv(img:Dynamic, kerns:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?conv_mode:Dynamic, ?direction_hint:Dynamic, ?workmem:Dynamic, ?algo:Dynamic, ?precision:Dynamic):Dynamic;
	/**
		GPU convolution using cuDNN from NVIDIA.
		
		The memory layout to use is 'bc012', that is 'batch', 'channel',
		'first dim', 'second dim', 'third dim' in that order.
		
		Parameters
		----------
		img
		    Images to do the convolution over.
		kerns
		    Convolution filters.
		border_mode
		    One of 'valid', 'full', 'half'; additionally, the padding size
		    could be directly specified by an integer or a pair of integers.
		subsample
		    Perform subsampling of the output (default: (1, 1)).
		conv_mode
		    Perform convolution (kernels flipped) or cross-correlation.
		    One of 'conv', 'cross' (default: 'conv').
		direction_hint
		    Used by graph optimizers to change algorithm choice.
		    By default, GpuDnnConv will be used to carry out the convolution.
		    If border_mode is 'valid', subsample is (1, 1) and direction_hint is
		    'bprop weights', it will use GpuDnnConvGradW.
		    If border_mode is 'full', subsample is (1, 1) and direction_hint is
		    *not* 'forward!', it will use GpuDnnConvGradI.
		    This parameter is used internally by graph optimizers and may be
		    removed at any time without a deprecation period. You have been warned.
		algo : convolution implementation to use. Only 'none' is implemented
		    for the conv3d. Default is the value of :attr:`config.dnn.conv.algo_fwd`.
		precision : {'as_input_f32', 'as_input', 'float16', 'float32', 'float64'}
		    Description of the dtype in which the computation of the convolution
		    should be done. Possible values are 'as_input', 'float16', 'float32'
		    and 'float64'. Default is the value of
		    :attr:`config.dnn.conv.precision`.
		
		
		.. warning:: The cuDNN library only works with GPUs that have a compute
		    capability of 3.0 or higer. This means that older GPUs will not
		    work with this Op.
	**/
	static public function dnn_conv3d(img:Dynamic, kerns:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?conv_mode:Dynamic, ?direction_hint:Dynamic, ?algo:Dynamic, ?precision:Dynamic):Dynamic;
	/**
		TODO: document this
	**/
	static public function dnn_gradinput(kerns:Dynamic, topgrad:Dynamic, img_shp:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?conv_mode:Dynamic, ?precision:Dynamic):Dynamic;
	/**
		3d version of `dnn_gradinput`.
	**/
	static public function dnn_gradinput3d(kerns:Dynamic, topgrad:Dynamic, img_shp:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?conv_mode:Dynamic, ?precision:Dynamic):Dynamic;
	/**
		TODO: document this
	**/
	static public function dnn_gradweight(img:Dynamic, topgrad:Dynamic, kerns_shp:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?conv_mode:Dynamic, ?precision:Dynamic):Dynamic;
	/**
		3d version of dnn_gradweight
	**/
	static public function dnn_gradweight3d(img:Dynamic, topgrad:Dynamic, kerns_shp:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?conv_mode:Dynamic, ?precision:Dynamic):Dynamic;
	/**
		GPU pooling using cuDNN from NVIDIA.
		
		The memory layout to use is 'bc01', that is 'batch', 'channel',
		'first dim', 'second dim' in that order.
		
		`ws`, `stride` and `pad` must have the same length.
		
		Parameters
		----------
		img
		    Images to do the pooling over.
		ws : tuple
		    Subsampling window size.  Should have 2 or 3 elements.
		stride : tuple
		    Subsampling stride (default: (1, 1) or (1, 1, 1)).
		mode : {'max', 'average_inc_pad', 'average_exc_pad', 'sum'}
		pad : tuple
		    (padX, padY) or (padX, padY, padZ)
		    default: (0, 0) or (0, 0, 0)
		
		
		.. warning:: The cuDNN library only works with GPU that have a compute
		    capability of 3.0 or higer.  This means that older GPU will not
		    work with this Op.
		
		Notes
		-----
		This Op implements the ignore_border=True of max_pool_2d.
	**/
	static public function dnn_pool(img:Dynamic, ws:Dynamic, ?stride:Dynamic, ?mode:Dynamic, ?pad:Dynamic):Dynamic;
	static public function dnn_present():Dynamic;
	static public function dropout(x:Dynamic, ?dropout:Dynamic, ?seed:Dynamic):Dynamic;
	static public function dropoutdesc_type(?name:Dynamic):Dynamic;
	static public function empty_like(_var:Dynamic):Dynamic;
	static public function ensure_dt(val:Dynamic, _default:Dynamic, name:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Retrive the context associated with a name.
		
		Return the context object mapped to `ref` that was previously
		register through :func:`reg_context`. Trying to get the context
		for an unregistered `ref` will raise a exception.
		
		Parameters
		----------
		name : hashable object
		    Name associated with the context we want (usually a string)
	**/
	static public function get_context(name:Dynamic):Dynamic;
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
	static public function get_precision(precision:Dynamic, inputs:Dynamic):Dynamic;
	/**
		Return a Scalar(dtype) object.
		
		This caches objects to save allocation and run time.
	**/
	static public function get_scalar_type(dtype:Dynamic):Dynamic;
	static public function gpu_alloc_empty(ctx:Dynamic, dtype:Dynamic):Dynamic;
	static public function gpu_context_type(?name:Dynamic):Dynamic;
	static public function gpu_contiguous(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_dnn_conv(?algo:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function gpu_dnn_conv_desc(border_mode:Dynamic, ?subsample:Dynamic, ?conv_mode:Dynamic, ?precision:Dynamic):Dynamic;
	static public function gpu_dnn_conv_gradI(?algo:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function gpu_dnn_conv_gradW(?algo:Dynamic, ?inplace:Dynamic):Dynamic;
	static public var gpu_seqopt : Dynamic;
	static public function gpudata_type(?name:Dynamic):Dynamic;
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
	static public function handle_type(?name:Dynamic):Dynamic;
	/**
		Infer the context name to use from the inputs given
	**/
	static public function infer_context_name(?vars:python.VarArgs<Dynamic>):Dynamic;
	/**
		Wrapper to make an inplace optimization that deals with AllocEmpty
		
		This will duplicate the alloc input if it has more than one client
		to allow the op to work on it inplace.
		
		The decorated function must have this signature::
		
		    maker(node, inputs)
		
		The `node` argument you recieve is the original apply node that
		contains your op.  You should use it to grab relevant properties
		for your op so that the new version performs the same computation.
		You should also switch the op to work inplace.  The `*inputs`
		parameters contains the new inputs for your op.  You MUST use
		those inputs instead of the ones on `node`.  Note that this
		function can be as simple as::
		
		    def maker(node, inputs):
		        return [node.op.__class__(inplace=True)(*inputs)]
		
		Parameters
		----------
		op : op class
		    The op class to look for to make inplace
		idx : int
		    The index of the (possibly) AllocEmpty input (in node.inputs).
		
		Returns
		-------
		local optimizer
		    an unregistered inplace local optimizer that has the same name
		    as the decorated function.
	**/
	static public function inplace_allocempty(op:Dynamic, idx:Dynamic):Dynamic;
	static public var integer_types : Dynamic;
	/**
		Return an iterable of all the registered context names.
	**/
	static public function list_contexts():Dynamic;
	static public function local_abstract_batch_norm_inference_cudnn(op:Dynamic, ctx_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public function local_abstract_batch_norm_train_cudnn(op:Dynamic, ctx_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public function local_abstract_batch_norm_train_grad_cudnn(op:Dynamic, ctx_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public function local_abstractconv3d_cudnn_graph(op:Dynamic, context_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public var local_abstractconv_cudnn : Dynamic;
	static public function local_abstractconv_cudnn_graph(op:Dynamic, context_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public var local_abstractconv_gi_cudnn : Dynamic;
	static public var local_abstractconv_gw_cudnn : Dynamic;
	static public var local_batch_norm_inference_inplace : Dynamic;
	static public var local_batch_norm_inplace_output : Dynamic;
	static public var local_batch_norm_inplace_running_mean : Dynamic;
	static public var local_batch_norm_inplace_running_var : Dynamic;
	static public var local_dnn_conv_alpha_merge : Dynamic;
	static public var local_dnn_conv_inplace : Dynamic;
	static public var local_dnn_conv_output_merge : Dynamic;
	static public var local_dnn_convgi_inplace : Dynamic;
	static public var local_dnn_convgw_inplace : Dynamic;
	static public var local_dnn_convi_alpha_merge : Dynamic;
	static public var local_dnn_convi_output_merge : Dynamic;
	static public var local_dnn_convw_alpha_merge : Dynamic;
	static public var local_dnn_convw_output_merge : Dynamic;
	static public function local_gpua_avg_pool_dnn_grad_stride(op:Dynamic, ctx_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public var local_gpua_logsoftmax_to_dnn : Dynamic;
	static public function local_gpua_pool_dnn_alternative(op:Dynamic, ctx_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public function local_gpua_pool_dnn_grad_stride(op:Dynamic, ctx_name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public var local_gpua_softmax_dnn_grad : Dynamic;
	static public var local_log_softmax_dnn : Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
	static public var local_softmax_dnn : Dynamic;
	/**
		OP(..., host_from_gpu(), ...) -> host_from_gpu(GpuOP(...))
		
		gpu_from_host(OP(inp0, ...)) -> GpuOP(inp0, ...)
	**/
	static public function op_lifter(OP:Dynamic, ?cuda_only:Dynamic):Dynamic;
	static public var optdb : Dynamic;
	/**
		Decorator to merge addition by a value on the output.
		
		This will find a pattern of `val * <yourop>(some, params, alpha,
		beta, out_like)` and update it so that the addtition happens as
		part of your op.
		
		The op needs to accept an alpha and a beta scalar which act this way::
		
		   out = Op() * alpha + out_like * beta
		
		Where out_like is a buffer that has the same size as the output
		and gets added to the "real" output of the operation.  An example
		of an operation that respects this pattern is GEMM from blas.
		
		The decorated function must have this signature::
		
		    maker(node, *inputs)
		
		The `node` argument you recieve is the original apply node that
		contains your op.  You should use it to grab relevant properties
		for your op so that the new version performs the same computation.
		The `*inputs` parameters contains the new inputs for your op.  You
		MUST use those inputs instead of the ones on `node`.  Note that
		this function can be as simple as::
		
		    def maker(node, *inputs):
		        return node.op(*inputs)
		
		Parameters
		----------
		cls : op class
		    The class of the op you want to merge
		alpha_in : int
		    The input index for the alpha scalar for your op (in node.inputs).
		beta_in : int
		    The input index for the beta scalar for your op (in node.inputs).
		out_in : int
		    The input index for the out_like input for your op (in node.inputs).
		
		Returns
		-------
		local optimizer
		    an unregistered local optimizer that has the same name as the
		    decorated function.
		
		Notes
		-----
		This was factored out since the code to deal with intervening
		transfers and correctness in the presence of different values of
		alpha and beta scaling factors is not trivial.
		
		This also correctly handles the case where the added value is
		broadcasted (by not performing the replacement).
	**/
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
		adds a singleton dimension and reshapes to (1, 3, 5, 7).
		Given that output from pad_dims, ``unpad_dims(output, input, 2, 2)``
		reshapes back to (3, 5, 7).
		
		Given input of shape (3, 5, 7, 9), ``pad_dims(input, 2, 2)``
		does not reshape and returns output with shape (3, 5, 7, 9).
		
		Given input of shape (3, 5, 7, 9, 11), ``pad_dims(input, 2, 2)``
		combines the first two dimensions and reshapes to (15, 7, 9, 11).
		
		Given input of shape (3, 5, 7, 9), ``pad_dims(input, 2, 3)``
		adds a singleton dimension and reshapes to (1, 3, 5, 7, 9).
	**/
	static public function pad_dims(input:Dynamic, leftdims:Dynamic, rightdims:Dynamic):Dynamic;
	static public var pool_db : Dynamic;
	static public var pool_db2 : Dynamic;
	static public var print_function : Dynamic;
	static public function register_inplace(?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function register_opt(?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Decorator for the new GraphToGPU optimizer.
		Takes an extra parameter(Op) compared to register_opt decorator.
		
		Parameters
		----------
		tracks : List of Op class Or Op instance or None
		    The Node's Op to which optimization is being applied.
		
		tags : String
		    The optimization tag to which the optimizer will be registered.
	**/
	static public function register_opt2(tracks:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rnndesc_type(?name:Dynamic):Dynamic;
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
	static public function shape_i_op(i:Dynamic):Dynamic;
	/**
		Reshapes the output after pad_dims.
		
		This reverts the padding by `pad_dims`.
	**/
	static public function unpad_dims(output:Dynamic, input:Dynamic, leftdims:Dynamic, rightdims:Dynamic):Dynamic;
	/**
		Return the current cuDNN version we link with.
		
		This also does a check that the header version matches the runtime version.
		
		:raises: If True, raise an exception if cuDNN is not present or badly installed.
		    Otherwise, return -1.
	**/
	static public function version(?raises:Dynamic):Dynamic;
}