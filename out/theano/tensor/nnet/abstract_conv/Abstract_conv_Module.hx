/* This file is generated, do not edit! */
package theano.tensor.nnet.abstract_conv;
@:pythonImport("theano.tensor.nnet.abstract_conv") extern class Abstract_conv_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _bvalfromboundary(boundary:Dynamic):Dynamic;
	/**
		out = _convolve2d(in1, in2, flip, mode, boundary, fillvalue)
	**/
	static public function _convolve2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _logger : Dynamic;
	static public function _valfrommode(mode:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
	/**
		Wraps `x` in an `Assert` to check its shape.
		
		Parameters
		----------
		x : Tensor
		    x will be wrapped in an `Assert`.
		expected_shape : tuple or list
		    The expected shape of `x`. The size of a dimension can be None,
		    which means it will not be checked.
		msg : str
		    The error message of the `Assert`.
		
		Returns
		-------
		Tensor
		    `x` wrapped in an `Assert`. At execution time, this will throw an
		    AssertionError if the shape of `x` does not match `expected_shape`.
		    If `expected_shape` is None or contains only Nones, the function
		    will return `x` directly.
	**/
	static public function assert_shape(x:Dynamic, expected_shape:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Compute 1D kernel for bilinear upsampling
		
		This function builds the 1D kernel that can be used to upsample
		a tensor by the given ratio using bilinear interpolation.
		
		Parameters
		----------
		ratio: int or Constant/Scalar Theano tensor of int* dtype
		    the ratio by which an image will be upsampled by the returned filter
		    in the 2D space.
		
		normalize: bool
		    param normalize: indicates whether to normalize the kernel or not.
		    Default is True.
		
		Returns
		-------
		symbolic 1D tensor
		    the 1D kernels that can be applied to any given image to upsample it
		    by the indicated ratio using bilinear interpolation in one dimension.
	**/
	static public function bilinear_kernel_1D(ratio:Dynamic, ?normalize:Dynamic):Dynamic;
	/**
		Compute 2D kernel for bilinear upsampling
		
		This function builds the 2D kernel that can be used to upsample
		a tensor by the given ratio using bilinear interpolation.
		
		Parameters
		----------
		ratio: int or Constant/Scalar Theano tensor of int* dtype
		    the ratio by which an image will be upsampled by the returned filter
		    in the 2D space.
		
		normalize: bool
		    param normalize: indicates whether to normalize the kernel or not.
		    Default is True.
		
		Returns
		-------
		symbolic 2D tensor
		    the 2D kernels that can be applied to any given image to upsample it
		    by the indicated ratio using bilinear interpolation in two dimensions.
	**/
	static public function bilinear_kernel_2D(ratio:Dynamic, ?normalize:Dynamic):Dynamic;
	/**
		Compute bilinear upsampling
		This function will build the symbolic graph for upsampling
		a tensor by the given ratio using bilinear interpolation.
		
		Parameters
		----------
		input: symbolic 4D tensor
		    mini-batch of feature map stacks, of shape (batch size,
		    input channels, input rows, input columns) that will be upsampled.
		ratio: `int or Constant or Scalar Tensor of int* dtype`
		    the ratio by which the input is upsampled in the 2D space (row and
		    col size).
		frac_ratio: None, tuple of int or tuple of tuples of int
		    The tuple defining the fractional ratio by which the input is
		    upsampled in the 2D space. One fractional ratio should be
		    represented as (numerator, denominator). If row and col ratios are
		    different frac_ratio should be a tuple of fractional ratios, i.e
		    a tuple of tuples.
		use_1D_kernel: bool
		    if set to true, row and column will be upsampled separately by 1D
		    kernels, otherwise they are upsampled together using a 2D kernel. The
		    final result is the same, only the speed can differ, given factors such
		    as upsampling ratio.
		Returns
		-------
		symbolic 4D tensor
		    set of feature maps generated by bilinear upsampling. Tensor
		    is of shape (batch size, num_input_channels, input row size * row ratio,
		    input column size * column ratio). Each of these ratios can be fractional.
		Notes
		-----
		:note: The kernel used for bilinear interpolation is fixed (not learned).
		:note: When the upsampling ratio is even, the last row and column is
		    repeated one extra time compared to the first row and column which makes
		    the upsampled tensor asymmetrical on both sides. This does not happen when
		    the upsampling ratio is odd.
		:note: This function must get either ratio or frac_ratio as parameter and
		    never both at once.
	**/
	static public function bilinear_upsampling(input:Dynamic, ?ratio:Dynamic, ?frac_ratio:Dynamic, ?batch_size:Dynamic, ?num_input_channels:Dynamic, ?use_1D_kernel:Dynamic):Dynamic;
	/**
		Computes a tuple for padding given the border_mode parameter
		
		Parameters
		----------
		mode : int or tuple
		    One of "valid", "full", "half", an integer, or a tuple where each
		    member is either an integer or a tuple of 2 positive integers.
		convdim : int
		    The dimensionality of the convolution.
		kshp : List/tuple of length 'convdim', indicating the size of the
		    kernel in the spatial dimensions.
		
		Returns
		-------
		A tuple containing 'convdim' elements, each of which is a tuple of
		two positive integers corresponding to the padding on the left
		and the right sides respectively.
	**/
	static public function border_mode_to_pad(mode:Dynamic, convdim:Dynamic, kshp:Dynamic):Dynamic;
	/**
		Computes (dilated) causal convolution
		
		The output at time t depends only on the inputs till t-1. Used for
		modelling temporal data.
		See [WaveNet: A Generative Model for Raw Audio, section 2.1]
		(https://arxiv.org/abs/1609.03499).
		
		Parameters
		----------
		input : symbolic 3D tensor
		    mini-batch of feature vector stacks, of shape
		    (batch_size, input_channels, input_length)
		    See the optional parameter ``input_shape``
		filters : symbolic 3D tensor
		    Set of filters used in the CNN, of shape
		    (output_channels, input_channels, filter_length)
		filter_shape : [None/int/Constant] * 2 + [Tensor/int/Constant]
		    The shape of the filters parameter.
		    A tuple/list of len 3, with the first two dimensions
		    being None or int or Constant and the last dimension being
		    Tensor or int or Constant.
		    Not optional, since the filter length is needed to calculate
		    the left padding for causality.
		input_shape : None or [None/int/Constant] * 3
		    The shape of the input parameter.
		    None, or a tuple/list of len 3.
		    Optional, possibly used to choose an optimal implementation.
		subsample : int
		    The factor by which to subsample the output. Also called strides
		    elsewhere.
		filter_dilation : int
		    Factor by which to subsample (stride) the input. Also called
		    dilation factor.
		num_groups : int
		    Divides the image, kernel and output tensors into num_groups
		    separate groups. Each which carry out convolutions separately
		unshared : bool
		    If true, then unshared or 'locally connected' convolution will be
		    performed. A different filter will be used for each region of the
		    input.
		
		Returns
		-------
		Symbolic 3D tensor.
		    Set of feature vectors generated by convolutional layer. Tensor is
		    of shape (batch_size, output_channels, output_length)
		
		Notes
		-----
		
		:note: Currently, this is implemented with the 2D convolution ops.
	**/
	static public function causal_conv1d(input:Dynamic, filters:Dynamic, filter_shape:Dynamic, ?input_shape:Dynamic, ?subsample:Dynamic, ?filter_flip:Dynamic, ?filter_dilation:Dynamic, ?num_groups:Dynamic, ?unshared:Dynamic):Dynamic;
	/**
		This function checks if the given image shapes are consistent.
		
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
		output_shape: tuple of int (symbolic or numeric) corresponding to the
		    output shape. Its four (or five) elements must correspond respectively
		    to: batch size, number of output channels, height and width
		    (and possibly depth) of the output. None where undefined.
		border_mode: string, int (symbolic or numeric) or tuple of int (symbolic
		    or numeric) or pairs of ints. If it is a string, it must be 'valid',
		    'half' or 'full'. If it is a tuple, its two (or three) elements respectively
		    correspond to the padding on height and width (and possibly depth)
		    axis. For asymmetric padding, provide a pair of ints for each dimension.
		subsample: tuple of int (symbolic or numeric). Its two or three elements
		    respectively correspond to the subsampling on height and width (and
		    possibly depth) axis.
		filter_dilation: tuple of int (symbolic or numeric). Its two or three
		    elements correspond respectively to the dilation on height and
		    width axis.
		
		Returns
		-------
		Returns False if a convolution with the given input shape, kernel shape
		and parameters would not have produced the given output shape.
		
		Returns True in all other cases: if the given output shape matches the
		computed output shape, but also if the shape could not be checked because
		because the shape contains symbolic values.
	**/
	static public function check_conv_gradinputs_shape(image_shape:Dynamic, kernel_shape:Dynamic, output_shape:Dynamic, border_mode:Dynamic, subsample:Dynamic, ?filter_dilation:Dynamic):Dynamic;
	/**
		This function will build the symbolic graph for convolving a mini-batch of a
		stack of 2D inputs with a set of 2D filters. The implementation is modelled
		after Convolutional Neural Networks (CNN).
		
		Refer to :func:`nnet.conv2d <theano.tensor.nnet.conv2d>` for a more detailed documentation.
	**/
	static public function conv2d(input:Dynamic, filters:Dynamic, ?input_shape:Dynamic, ?filter_shape:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?filter_flip:Dynamic, ?filter_dilation:Dynamic, ?num_groups:Dynamic, ?unshared:Dynamic):Dynamic;
	/**
		Compute conv output gradient w.r.t its inputs
		
		This function builds the symbolic graph for getting the
		gradient of the output of a convolution (namely output_grad)
		w.r.t the input of the convolution, given a set of 2D filters
		used by the convolution, such that the output_grad is upsampled
		to the input_shape.
		
		Parameters
		----------
		output_grad : symbolic 4D tensor
		    mini-batch of feature map stacks, of shape (batch size, input
		    channels, input rows, input columns).  This is the tensor that
		    will be upsampled or the output gradient of the convolution
		    whose gradient will be taken with respect to the input of the
		    convolution.
		filters: symbolic 4D or 6D tensor
		    Set of filters used in CNN layer of shape
		    (output channels, input channels, filter rows, filter columns)
		    for normal convolution and
		    (output channels, output rows, output columns, input channels,
		    filter rows, filter columns)
		    for unshared convolution.
		    See the optional parameter ``filter_shape``.
		input_shape : [None/int/Constant] * 2 + [Tensor/int/Constant] * 2
		    The shape of the input (upsampled) parameter.
		    A tuple/list of len 4, with the first two dimensions
		    being None or int or Constant and the last two dimensions being
		    Tensor or int or Constant.
		    Not Optional, since given the output_grad shape
		    and the subsample values, multiple input_shape may be
		    plausible.
		filter_shape : None or [None/int/Constant] * (4 or 6)
		    The shape of the filters parameter. None or a tuple/list of len 4 or a
		    tuple/list of len 6 (for unshared convolution)
		    Optional, possibly used  to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify that
		    this element is not known at compile time.
		border_mode: str, int or a tuple of two ints or pairs of ints
		    Either of the following:
		
		      ``'valid'``
		        apply filter wherever it completely overlaps with the
		        input. Generates output of shape: input shape - filter
		        shape + 1
		
		      ``'full'``
		        apply filter wherever it partly overlaps with the input.
		        Generates output of shape: input shape + filter shape - 1
		
		      ``'half'``
		        pad input with a symmetric border of ``filter rows // 2``
		        rows and ``filter columns // 2`` columns, then perform a
		        valid convolution. For filters with an odd number of rows
		        and columns, this leads to the output shape being equal to
		        the input shape. It is known as 'same' elsewhere.
		
		      ``int``
		        pad input with a symmetric border of zeros of the given
		        width, then perform a valid convolution.
		
		      ``(int1, int2)``
		        pad input with a symmetric border of ``int1`` rows and
		        ``int2`` columns, then perform a valid convolution.
		
		      ``(int1, (int2, int3))`` or ``((int1, int2), int3)``
		        pad input with one symmetric border of `int1`` or ``int3``, and
		        one asymmetric border of ``(int2, int3)`` or ``(int1, int2)``.
		
		      ``((int1, int2), (int3, int4))``
		        pad input with an asymmetric border of ``(int1, int2)`` along one dimension and ``(int3, int4)``
		        along the second dimension.
		
		subsample : tuple of len 2
		    The subsampling used in the forward pass.  Also called strides
		    elsewhere.
		filter_flip : bool
		    If ``True``, will flip the filter rows and columns before
		    sliding them over the input. This operation is normally
		    referred to as a convolution, and this is the default. If
		    ``False``, the filters are not flipped and the operation is
		    referred to as a cross-correlation.
		filter_dilation : tuple of len 2
		    The filter dilation used in the forward pass.
		    Also known as input striding.
		num_groups : int
		    Divides the image, kernel and output tensors into num_groups
		    separate groups. Each which carry out convolutions separately
		unshared: bool
		    If true, then unshared or 'locally connected' convolution will be
		    performed. A different filter will be used for each region of the
		    input.
		
		Returns
		-------
		symbolic 4D tensor
		    set of feature maps generated by convolutional layer. Tensor
		    is of shape (batch size, output channels, output rows, output
		    columns)
		
		Notes
		-----
		
		:note: If cuDNN is available, it will be used on the
		    GPU. Otherwise, it is the *CorrMM* convolution that will be used
		    "caffe style convolution".
		
		:note: This is only supported in Theano 0.8 or the development
		    version until it is released.
	**/
	static public function conv2d_grad_wrt_inputs(output_grad:Dynamic, filters:Dynamic, input_shape:Dynamic, ?filter_shape:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?filter_flip:Dynamic, ?filter_dilation:Dynamic, ?num_groups:Dynamic, ?unshared:Dynamic):Dynamic;
	/**
		Compute conv output gradient w.r.t its weights
		
		This function will build the symbolic graph for getting the
		gradient of the output of a convolution (output_grad) w.r.t its wights.
		
		Parameters
		----------
		input : symbolic 4D tensor
		    mini-batch of feature map stacks, of shape (batch size, input
		    channels, input rows, input columns).  This is the input of
		    the convolution in the forward pass.
		output_grad : symbolic 4D tensor
		    mini-batch of feature map stacks, of shape (batch size, input
		    channels, input rows, input columns).  This is the gradient of
		    the output of convolution.
		filter_shape : [None/int/Constant] * (2 or 4) + [Tensor/int/Constant] * 2
		    The shape of the filter parameter.  A tuple/list of len 4 or 6
		    (for unshared), with the first two dimensions being None or int or
		    Constant and the last two dimensions being Tensor or int or Constant.
		    Not Optional, since given the output_grad shape and
		    the input_shape, multiple filter_shape may be plausible.
		input_shape : None or [None/int/Constant] * 4
		    The shape of the input parameter. None or a tuple/list of len 4.
		    Optional, possibly used to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify
		    that this element is not known at compile time.
		border_mode: str, int or a tuple of two ints or pairs of ints
		    Either of the following:
		
		      ``'valid'``
		        apply filter wherever it completely overlaps with the
		        input. Generates output of shape: input shape - filter
		        shape + 1
		
		      ``'full'``
		        apply filter wherever it partly overlaps with the input.
		        Generates output of shape: input shape + filter shape - 1
		
		      ``'half'``
		        pad input with a symmetric border of ``filter rows // 2``
		        rows and ``filter columns // 2`` columns, then perform a
		        valid convolution. For filters with an odd number of rows
		        and columns, this leads to the output shape being equal to
		        the input shape. It is known as 'same' elsewhere.
		
		      ``int``
		        pad input with a symmetric border of zeros of the given
		        width, then perform a valid convolution.
		
		      ``(int1, int2)``
		        pad input with a symmetric border of ``int1`` rows and
		        ``int2`` columns, then perform a valid convolution.
		
		      ``(int1, (int2, int3))`` or ``((int1, int2), int3)``
		        pad input with one symmetric border of `int1`` or ``int3``, and
		        one asymmetric border of ``(int2, int3)`` or ``(int1, int2)``.
		
		      ``((int1, int2), (int3, int4))``
		        pad input with an asymmetric border of ``(int1, int2)`` along
		        one dimension and ``(int3, int4)`` along the second dimension.
		subsample : tuple of len 2
		    The subsampling used in the forward pass of the convolutional
		    operation.  Also called strides elsewhere.
		filter_flip : bool
		    If ``True``, will flip the filter rows and columns before
		    sliding them over the input. This operation is normally
		    referred to as a convolution, and this is the default. If
		    ``False``, the filters are not flipped and the operation is
		    referred to as a cross-correlation.
		filter_dilation : tuple of len 2
		    The filter dilation used in the forward pass.
		    Also known as input striding.
		num_groups : int
		    Divides the image, kernel and output tensors into num_groups
		    separate groups. Each which carry out convolutions separately
		unshared: bool
		    If true, then unshared or 'locally connected' convolution will be
		    performed. A different filter will be used for each region of the
		    input.
		
		Returns
		-------
		symbolic 4D tensor or 6D tensor
		    set of feature maps generated by convolutional layer. Tensor
		    is of shape (batch size, output channels, output rows, output
		    columns) for normal convolution and
		    (output channels, output rows, output columns, input channels,
		    filter rows, filter columns) for unshared convolution
		
		Notes
		-----
		
		:note: If cuDNN is available, it will be used on the
		    GPU. Otherwise, it is the *CorrMM* convolution that will be used
		    "caffe style convolution".
		
		:note: This is only supported in Theano 0.8 or the development
		    version until it is released.
	**/
	static public function conv2d_grad_wrt_weights(input:Dynamic, output_grad:Dynamic, filter_shape:Dynamic, ?input_shape:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?filter_flip:Dynamic, ?filter_dilation:Dynamic, ?num_groups:Dynamic, ?unshared:Dynamic):Dynamic;
	/**
		This function will build the symbolic graph for convolving a mini-batch of a
		stack of 3D inputs with a set of 3D filters. The implementation is modelled
		after Convolutional Neural Networks (CNN).
		
		
		Parameters
		----------
		input: symbolic 5D tensor
		    Mini-batch of feature map stacks, of shape
		    (batch size, input channels, input depth, input rows, input columns).
		    See the optional parameter ``input_shape``.
		
		filters: symbolic 5D tensor
		    Set of filters used in CNN layer of shape
		    (output channels, input channels, filter depth, filter rows, filter columns).
		    See the optional parameter ``filter_shape``.
		
		input_shape: None, tuple/list of len 5 of int or Constant variable
		    The shape of the input parameter.
		    Optional, possibly used to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify that this
		    element is not known at compile time.
		
		filter_shape: None, tuple/list of len 5 of int or Constant variable
		    The shape of the filters parameter.
		    Optional, possibly used to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify that this
		    element is not known at compile time.
		
		border_mode: str, int or tuple of three int
		    Either of the following:
		
		    ``'valid'``: apply filter wherever it completely overlaps with the
		        input. Generates output of shape: input shape - filter shape + 1
		    ``'full'``: apply filter wherever it partly overlaps with the input.
		        Generates output of shape: input shape + filter shape - 1
		    ``'half'``: pad input with a symmetric border of ``filter // 2``,
		        then perform a valid convolution. For filters with an odd
		        number of slices, rows and columns, this leads to the output
		        shape being equal to the input shape.
		    ``int``: pad input with a symmetric border of zeros of the given
		        width, then perform a valid convolution.
		    ``(int1, int2, int3)``
		        pad input with a symmetric border of ``int1``, ``int2`` and
		        ``int3`` columns, then perform a valid convolution.
		
		subsample: tuple of len 3
		    Factor by which to subsample the output.
		    Also called strides elsewhere.
		
		filter_flip: bool
		    If ``True``, will flip the filter x, y and z dimensions before
		    sliding them over the input. This operation is normally
		    referred to as a convolution, and this is the default. If
		    ``False``, the filters are not flipped and the operation is
		    referred to as a cross-correlation.
		
		filter_dilation: tuple of len 3
		    Factor by which to subsample (stride) the input.
		    Also called dilation elsewhere.
		
		num_groups : int
		    Divides the image, kernel and output tensors into num_groups
		    separate groups. Each which carry out convolutions separately
		
		Returns
		-------
		Symbolic 5D tensor
		    Set of feature maps generated by convolutional layer. Tensor is
		    is of shape (batch size, output channels, output depth,
		    output rows, output columns)
		
		Notes
		-----
		    If cuDNN is available, it will be used on the
		    GPU. Otherwise, it is the *Corr3dMM* convolution that will be used
		    "caffe style convolution".
		
		    This is only supported in Theano 0.8 or the development
		    version until it is released.
	**/
	static public function conv3d(input:Dynamic, filters:Dynamic, ?input_shape:Dynamic, ?filter_shape:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?filter_flip:Dynamic, ?filter_dilation:Dynamic, ?num_groups:Dynamic):Dynamic;
	/**
		Compute conv output gradient w.r.t its inputs
		
		This function builds the symbolic graph for getting the
		gradient of the output of a convolution (namely output_grad)
		w.r.t the input of the convolution, given a set of 3D filters
		used by the convolution, such that the output_grad is upsampled
		to the input_shape.
		
		Parameters
		----------
		output_grad : symbolic 5D tensor
		    mini-batch of feature map stacks, of shape (batch size, input
		    channels, input depth, input rows, input columns).  This is the
		    tensor that will be upsampled or the output gradient of the
		    convolution whose gradient will be taken with respect to the
		    input of the convolution.
		filters : symbolic 5D tensor
		    set of filters used in CNN layer of shape (output channels,
		    input channels, filter depth, filter rows, filter columns).
		    See the optional parameter ``filter_shape``.
		input_shape : [None/int/Constant] * 2 + [Tensor/int/Constant] * 2
		    The shape of the input (upsampled) parameter.
		    A tuple/list of len 5, with the first two dimensions
		    being None or int or Constant and the last three dimensions being
		    Tensor or int or Constant.
		    Not Optional, since given the output_grad shape
		    and the subsample values, multiple input_shape may be
		    plausible.
		filter_shape : None or [None/int/Constant] * 5
		    The shape of the filters parameter. None or a tuple/list of len 5.
		    Optional, possibly used  to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify that
		    this element is not known at compile time.
		border_mode : str, int or tuple of three int
		    Either of the following:
		
		      ``'valid'``
		        apply filter wherever it completely overlaps with the
		        input. Generates output of shape: input shape - filter
		        shape + 1
		
		      ``'full'``
		        apply filter wherever it partly overlaps with the input.
		        Generates output of shape: input shape + filter shape - 1
		
		      ``'half'``
		        pad input with a symmetric border of ``filter // 2``,
		        then perform a valid convolution. For filters with an odd
		        number of slices, rows and columns, this leads to the output
		        shape being equal to the input shape. It is known as 'same'
		        elsewhere.
		
		      ``int``
		        pad input with a symmetric border of zeros of the given
		        width, then perform a valid convolution.
		
		      ``(int1, int2, int3)``
		        pad input with a symmetric border of ``int1``, ``int2`` and
		        ``int3`` columns, then perform a valid convolution.
		
		subsample : tuple of len 3
		    The subsampling used in the forward pass.  Also called strides
		    elsewhere.
		filter_flip : bool
		    If ``True``, will flip the filter x, y and z dimensions before
		    sliding them over the input. This operation is normally
		    referred to as a convolution, and this is the default. If
		    ``False``, the filters are not flipped and the operation is
		    referred to as a cross-correlation.
		filter_dilation : tuple of len 3
		    The filter dilation used in the forward pass.
		    Also known as input striding.
		num_groups : int
		    Divides the image, kernel and output tensors into num_groups
		    separate groups. Each which carry out convolutions separately
		
		Returns
		-------
		symbolic 5D tensor
		    set of feature maps generated by convolutional layer. Tensor
		    is of shape (batch size, output channels, output depth,
		    output rows, output columns)
		
		Notes
		-----
		
		:note: If cuDNN is available, it will be used on the
		    GPU. Otherwise, it is the *Corr3dMM* convolution that will be used
		    "caffe style convolution".
		
		:note: This is only supported in Theano 0.8 or the development
		    version until it is released.
	**/
	static public function conv3d_grad_wrt_inputs(output_grad:Dynamic, filters:Dynamic, input_shape:Dynamic, ?filter_shape:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?filter_flip:Dynamic, ?filter_dilation:Dynamic, ?num_groups:Dynamic):Dynamic;
	/**
		Compute conv output gradient w.r.t its weights
		
		This function will build the symbolic graph for getting the
		gradient of the output of a convolution (output_grad) w.r.t its weights.
		
		Parameters
		----------
		input : symbolic 5D tensor
		    mini-batch of feature map stacks, of shape (batch size, input
		    channels, input depth, input rows, input columns).  This is the input
		    of the convolution in the forward pass.
		output_grad : symbolic 5D tensor
		    mini-batch of feature map stacks, of shape (batch size, input
		    channels, input depth, input rows, input columns).  This is the
		    gradient of the output of convolution.
		filter_shape : [None/int/Constant] * 2 + [Tensor/int/Constant] * 2
		    The shape of the filter parameter.  A tuple/list of len 5, with the
		    first two dimensions being None or int or Constant and the last three
		    dimensions being Tensor or int or Constant.
		    Not Optional, since given the output_grad shape and
		    the input_shape, multiple filter_shape may be plausible.
		input_shape : None or [None/int/Constant] * 5
		    The shape of the input parameter. None or a tuple/list of len 5.
		    Optional, possibly used to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify
		    that this element is not known at compile time.
		border_mode : str, int or tuple of two ints
		    Either of the following:
		
		      ``'valid'``
		        apply filter wherever it completely overlaps with the
		        input. Generates output of shape: input shape - filter
		        shape + 1
		
		      ``'full'``
		        apply filter wherever it partly overlaps with the input.
		        Generates output of shape: input shape + filter shape - 1
		
		      ``'half'``
		        pad input with a symmetric border of ``filter rows // 2``
		        rows and ``filter columns // 2`` columns, then perform a
		        valid convolution. For filters with an odd number of rows
		        and columns, this leads to the output shape being equal to
		        the input shape. It is known as 'same' elsewhere.
		
		      ``int``
		        pad input with a symmetric border of zeros of the given
		        width, then perform a valid convolution.
		
		      ``(int1, int2, int3)``
		        pad input with a symmetric border of ``int1``, ``int2`` and
		        ``int3``, then perform a valid convolution.
		subsample : tuple of len 3
		    The subsampling used in the forward pass of the convolutional
		    operation.  Also called strides elsewhere.
		filter_flip : bool
		    If ``True``, will flip the filters before sliding them over the
		    input. This operation is normally referred to as a convolution,
		    and this is the default. If ``False``, the filters are not
		    flipped and the operation is referred to as a cross-correlation.
		filter_dilation : tuple of len 3
		    The filter dilation used in the forward pass.
		    Also known as input striding.
		num_groups : int
		    Divides the image, kernel and output tensors into num_groups
		    separate groups. Each which carry out convolutions separately
		
		Returns
		-------
		symbolic 5D tensor
		    set of feature maps generated by convolutional layer. Tensor
		    is of shape (batch size, output channels, output time, output
		    rows, output columns)
		
		Notes
		-----
		
		:note: If cuDNN is available, it will be used on the
		    GPU. Otherwise, it is the *Corr3dMM* convolution that will be used
		    "caffe style convolution".
		
		:note: This is only supported in Theano 0.8 or the development
		    version until it is released.
	**/
	static public function conv3d_grad_wrt_weights(input:Dynamic, output_grad:Dynamic, filter_shape:Dynamic, ?input_shape:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?filter_flip:Dynamic, ?filter_dilation:Dynamic, ?num_groups:Dynamic):Dynamic;
	/**
		Convolve two N-dimensional arrays.
		
		Convolve `in1` and `in2`, with the output size determined by the
		`mode` argument.
		
		Parameters
		----------
		in1 : array_like
		    First input.
		in2 : array_like
		    Second input. Should have the same number of dimensions as `in1`.
		mode : str {'full', 'valid', 'same'}, optional
		    A string indicating the size of the output:
		
		    ``full``
		       The output is the full discrete linear convolution
		       of the inputs. (Default)
		    ``valid``
		       The output consists only of those elements that do not
		       rely on the zero-padding. In 'valid' mode, either `in1` or `in2`
		       must be at least as large as the other in every dimension.
		    ``same``
		       The output is the same size as `in1`, centered
		       with respect to the 'full' output.
		method : str {'auto', 'direct', 'fft'}, optional
		    A string indicating which method to use to calculate the convolution.
		
		    ``direct``
		       The convolution is determined directly from sums, the definition of
		       convolution.
		    ``fft``
		       The Fourier Transform is used to perform the convolution by calling
		       `fftconvolve`.
		    ``auto``
		       Automatically chooses direct or Fourier method based on an estimate
		       of which is faster (default).  See Notes for more detail.
		
		       .. versionadded:: 0.19.0
		
		Returns
		-------
		convolve : array
		    An N-dimensional array containing a subset of the discrete linear
		    convolution of `in1` with `in2`.
		
		See Also
		--------
		numpy.polymul : performs polynomial multiplication (same operation, but
		                also accepts poly1d objects)
		choose_conv_method : chooses the fastest appropriate convolution method
		fftconvolve
		
		Notes
		-----
		By default, `convolve` and `correlate` use ``method='auto'``, which calls
		`choose_conv_method` to choose the fastest method using pre-computed
		values (`choose_conv_method` can also measure real-world timing with a
		keyword argument). Because `fftconvolve` relies on floating point numbers,
		there are certain constraints that may force `method=direct` (more detail
		in `choose_conv_method` docstring).
		
		Examples
		--------
		Smooth a square pulse using a Hann window:
		
		>>> from scipy import signal
		>>> sig = np.repeat([0., 1., 0.], 100)
		>>> win = signal.hann(50)
		>>> filtered = signal.convolve(sig, win, mode='same') / sum(win)
		
		>>> import matplotlib.pyplot as plt
		>>> fig, (ax_orig, ax_win, ax_filt) = plt.subplots(3, 1, sharex=True)
		>>> ax_orig.plot(sig)
		>>> ax_orig.set_title('Original pulse')
		>>> ax_orig.margins(0, 0.1)
		>>> ax_win.plot(win)
		>>> ax_win.set_title('Filter impulse response')
		>>> ax_win.margins(0, 0.1)
		>>> ax_filt.plot(filtered)
		>>> ax_filt.set_title('Filtered signal')
		>>> ax_filt.margins(0, 0.1)
		>>> fig.tight_layout()
		>>> fig.show()
	**/
	static public function convolve(in1:Dynamic, in2:Dynamic, ?mode:Dynamic, ?method:Dynamic):Array<Dynamic>;
	static public var division : Dynamic;
	/**
		Compute bilinear upsampling
		This function will build the symbolic graph for upsampling
		a tensor by the given ratio using bilinear interpolation.
		
		Parameters
		----------
		input: symbolic 4D tensor
		    mini-batch of feature map stacks, of shape (batch size,
		    input channels, input rows, input columns) that will be upsampled.
		frac_ratio: tuple of int or tuple of tuples of int
		    The tuple defining the fractional ratio by which the input is
		    upsampled in the 2D space. One fractional ratio should be
		    represented as (numerator, denominator). If row and col ratios are
		    different frac_ratio should be a tuple of fractional ratios, i.e
		    a tuple of tuples.
		Returns
		-------
		symbolic 4D tensor
		    set of feature maps generated by bilinear upsampling. Tensor
		    is of shape (batch size, num_input_channels, input row size * row ratio,
		    input column size * column ratio). Each of these ratios can be fractional.
		Notes
		-----
		:note: The kernel used for bilinear interpolation is fixed (not learned).
		:note: When the upsampling frac_ratio numerator is even, the
		    last row and column is repeated one extra time compared to the first
		    row and column which makes the upsampled tensor asymmetrical on both
		    sides. This does not happen when it is odd.
	**/
	static public function frac_bilinear_upsampling(input:Dynamic, frac_ratio:Dynamic):Dynamic;
	/**
		Calculate the Greatest Common Divisor of a and b.
		
		Unless b==0, the result will have the same sign as b (so that when
		b is divided by it, the result comes out positive).
	**/
	static public function gcd(a:Dynamic, b:Dynamic):Dynamic;
	/**
		This function tries to compute the image shape of convolution gradInputs.
		
		The image shape can only be computed exactly when subsample is 1.
		If subsample for a dimension is not 1, this function will return None for
		that dimension.
		
		Parameters
		----------
		kernel_shape: tuple of int (symbolic or numeric) corresponding to the
		    kernel shape. Its four (or five) elements must correspond respectively
		    to: number of output channels, number of input channels, height and
		    width (and possibly depth) of the kernel. None where undefined.
		top_shape: tuple of int (symbolic or numeric) corresponding to the top
		    image shape. Its four (or five) element must correspond respectively
		    to: batch size, number of output channels, height and width (and
		    possibly depth) of the image. None where undefined.
		border_mode: string, int (symbolic or numeric) or tuple of int (symbolic
		    or numeric) or pairs of ints. If it is a string, it must be 'valid',
		    'half' or 'full'. If it is a tuple, its two (or three) elements respectively
		    correspond to the padding on height and width (and possibly depth)
		    axis. For asymmetric padding, provide a pair of ints for each dimension.
		subsample: tuple of int (symbolic or numeric). Its two or three elements
		    respectively correspond to the subsampling on height and width (and
		    possibly depth) axis.
		filter_dilation: tuple of int (symbolic or numeric). Its two or three
		    elements correspond respectively to the dilation on height and
		    width axis.
		num_groups: An int which specifies the number of separate groups to
		    be divided into.
		Note - The shape of the convolution output does not depend on the 'unshared'
		    parameter.
		
		Returns
		-------
		image_shape: tuple of int corresponding to the input image shape. Its
		    four element must correspond respectively to: batch size, number of
		    output channels, height and width of the image. None where undefined.
	**/
	static public function get_conv_gradinputs_shape(kernel_shape:Dynamic, top_shape:Dynamic, border_mode:Dynamic, subsample:Dynamic, ?filter_dilation:Dynamic, ?num_groups:Dynamic):Dynamic;
	/**
		This function tries to compute the image shape of convolution gradInputs.
		
		The image shape can only be computed exactly when subsample is 1.
		If subsample is not 1, this function will return None.
		
		Parameters
		----------
		kernel_shape: int or None. Corresponds to the kernel shape on a given
		    axis. None if undefined.
		top_shape: int or None. Corresponds to the top shape on a given axis.
		    None if undefined.
		border_mode: string, int or tuple of 2 ints. If it is a string, it must be
		    'valid', 'half' or 'full'. If it is an integer, it must correspond to
		    the padding on the considered axis. If it is a tuple, its two elements
		    must correspond to the asymmetric padding (e.g., left and right) on
		    the considered axis.
		subsample: int. It must correspond to the subsampling on the
		    considered axis.
		dilation: int. It must correspond to the dilation on the
		    considered axis.
		
		Returns
		-------
		image_shape: int or None. Corresponds to the input image shape on a
		    given axis. None if undefined.
	**/
	static public function get_conv_gradinputs_shape_1axis(kernel_shape:Dynamic, top_shape:Dynamic, border_mode:Dynamic, subsample:Dynamic, dilation:Dynamic):Dynamic;
	/**
		This function tries to compute the kernel shape of convolution gradWeights.
		
		The weights shape can only be computed exactly when subsample is 1 and
		border_mode is not 'half'. If subsample is not 1 or border_mode is 'half',
		this function will return None.
		
		Parameters
		----------
		image_shape: tuple of int corresponding to the input image shape. Its
		    four (or five) elements must correspond respectively to: batch size,
		    number of output channels, height and width of the image. None where
		    undefined.
		top_shape: tuple of int (symbolic or numeric) corresponding to the top
		    image shape. Its four (or five) element must correspond respectively
		    to: batch size, number of output channels, height and width (and
		    possibly depth) of the image. None where undefined.
		border_mode: string, int (symbolic or numeric) or tuple of int (symbolic
		    or numeric) or pairs of ints. If it is a string, it must be 'valid',
		    'half' or 'full'. If it is a tuple, its two (or three) elements respectively
		    correspond to the padding on height and width (and possibly depth)
		    axis. For asymmetric padding, provide a pair of ints for each dimension.
		subsample: tuple of int (symbolic or numeric). Its two or three elements
		    respectively correspond to the subsampling on height and width (and
		    possibly depth) axis.
		filter_dilation: tuple of int (symbolic or numeric). Its two or three
		    elements correspond respectively to the dilation on height and
		    width axis.
		num_groups: An int which specifies the number of separate groups to
		    be divided into.
		unshared: Boolean value. If true, unshared convolution will be performed,
		    where a different filter is applied to each area of the input.
		
		Returns
		-------
		kernel_shape: tuple of int (symbolic or numeric) corresponding to the
		    kernel shape. Its four (or five) elements correspond respectively
		    to: number of output channels, number of input channels, height and
		    width (and possibly depth) of the kernel. None where undefined.
	**/
	static public function get_conv_gradweights_shape(image_shape:Dynamic, top_shape:Dynamic, border_mode:Dynamic, subsample:Dynamic, ?filter_dilation:Dynamic, ?num_groups:Dynamic, ?unshared:Dynamic):Dynamic;
	/**
		This function tries to compute the image shape of convolution gradWeights.
		
		The weights shape can only be computed exactly when subsample is 1 and
		border_mode is not 'half'. If subsample is not 1 or border_mode is 'half',
		this function will return None.
		
		Parameters
		----------
		image_shape: int or None. Corresponds to the input image shape on a
		    given axis. None if undefined.
		top_shape: int or None. Corresponds to the top shape on a given axis.
		    None if undefined.
		border_mode: string, int or tuple of 2 ints. If it is a string, it must be
		    'valid', 'half' or 'full'. If it is an integer, it must correspond to
		    the padding on the considered axis. If it is a tuple, its two elements
		    must correspond to the asymmetric padding (e.g., left and right) on
		    the considered axis.
		subsample: int. It must correspond to the subsampling on the
		    considered axis.
		dilation: int. It must correspond to the dilation on the
		    considered axis.
		
		Returns
		-------
		kernel_shape: int or None. Corresponds to the kernel shape on a given
		    axis. None if undefined.
	**/
	static public function get_conv_gradweights_shape_1axis(image_shape:Dynamic, top_shape:Dynamic, border_mode:Dynamic, subsample:Dynamic, dilation:Dynamic):Dynamic;
	/**
		This function compute the output shape of convolution operation.
		
		Parameters
		----------
		image_shape: tuple of int (symbolic or numeric) corresponding to the input
		    image shape. Its four (or five) element must correspond respectively
		    to: batch size, number of input channels, height and width (and
		    possibly depth) of the image. None where undefined.
		kernel_shape: tuple of int (symbolic or numeric) corresponding to the
		    kernel shape. For a normal convolution, its four (for 2D convolution)
		    or five (for 3D convolution) elements must correspond respectively to :
		    number of output channels, number of input channels, height and width
		    (and possibly depth) of the kernel.
		    For an unshared 2D convolution, its six channels must correspond to :
		    number of output channels, height and width of the output, number of
		    input channels, height and width of the kernel.
		    None where undefined.
		border_mode: string, int (symbolic or numeric) or tuple of int (symbolic
		    or numeric) or pairs of ints. If it is a string, it must be 'valid',
		    'half' or 'full'. If it is a tuple, its two (or three) elements respectively
		    correspond to the padding on height and width (and possibly depth)
		    axis. For asymmetric padding, provide a pair of ints for each dimension.
		subsample: tuple of int (symbolic or numeric). Its two or three elements
		    espectively correspond to the subsampling on height and width (and
		    possibly depth) axis.
		filter_dilation: tuple of int (symbolic or numeric). Its two or three
		    elements correspond respectively to the dilation on height and width axis.
		Note - The shape of the convolution output does not depend on the 'unshared'
		    or the 'num_groups' parameters.
		
		Returns
		-------
		output_shape: tuple of int corresponding to the output image shape. Its
		    four element must correspond respectively to: batch size, number of
		    output channels, height and width of the image. None where undefined.
	**/
	static public function get_conv_output_shape(image_shape:Dynamic, kernel_shape:Dynamic, border_mode:Dynamic, subsample:Dynamic, ?filter_dilation:Dynamic):Dynamic;
	/**
		This function compute the output shape of convolution operation.
		
		Parameters
		----------
		image_shape: int or None. Corresponds to the input image shape on a
		    given axis. None if undefined.
		kernel_shape: int or None. Corresponds to the kernel shape on a given
		    axis. None if undefined.
		border_mode: string, int or tuple of 2 ints. If it is a string, it must be
		    'valid', 'half' or 'full'. If it is an integer, it must correspond to
		    the padding on the considered axis. If it is a tuple, its two elements
		    must correspond to the asymmetric padding (e.g., left and right) on
		    the considered axis.
		subsample: int. It must correspond to the subsampling on the
		    considered axis.
		dilation: int. It must correspond to the dilation on the
		    considered axis.
		
		Returns
		-------
		out_shp: int corresponding to the output image shape on the
		    considered axis. None if undefined.
	**/
	static public function get_conv_shape_1axis(image_shape:Dynamic, kernel_shape:Dynamic, border_mode:Dynamic, subsample:Dynamic, ?dilation:Dynamic):Dynamic;
	/**
		Return the constant scalar(0-D) value underlying variable `v`.
		
		If `v` is the output of dimshuffles, fills, allocs, rebroadcasts,
		cast, OutputGuard, DeepCopyOp, ScalarFromTensor, ScalarOp, Elemwise
		and some pattern with Subtensor, this function digs through them.
		
		If `v` is not some view of constant scalar data, then raise a
		NotScalarConstantError.
		
		Parameters
		----------
		elemwise : bool
		    If False, we won't try to go into elemwise. So this call is faster.
		    But we still investigate in Second Elemwise (as this is a substitute
		    for Alloc)
		only_process_constants : bool
		    If True, we only attempt to obtain the value of `orig_v` if it's
		    directly constant and don't try to dig through dimshuffles, fills,
		    allocs, and other to figure out its value.
		max_recur : int
		    The maximum number of recursion.
		
		Notes
		-----
		    There may be another function similar to this one in the code,
		    but I'm not sure where it is.
	**/
	static public function get_scalar_constant_value(orig_v:Dynamic, ?elemwise:Dynamic, ?only_process_constants:Dynamic, ?max_recur:Dynamic):Dynamic;
	static public var imported_scipy_signal : Dynamic;
	static public var integer_types : Dynamic;
	/**
		Make the input adopt a specific broadcasting pattern.
		
		Broadcastable must be iterable. For example,
		patternbroadcast(x, (True, False)) will make the first
		dimension of x broadcastable and the second dimension
		not broadcastable, so x will now be a row.
		
		We apply the opt here not to pollute the graph especially during the gpu
		optimization.
		
		Parameters
		----------
		x : tensor_like
		    Input theano tensor.
		broadcastable : an iterable object such as list or tuple of bool values
		    A set of boolean values indicating whether a dimension should be
		    broadcastable or not. If the length of x along these dimensions is
		    not 1, a ValueError will be raised.
		
		Returns
		-------
		tensor
		    A theano tensor, which is unbroadcastable along the specified dimensions.
	**/
	static public function patternbroadcast(x:Dynamic, broadcastable:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reraise an exception.
	**/
	static public function reraise(tp:Dynamic, value:Dynamic, ?tb:Dynamic):Dynamic;
	/**
		This function will build the symbolic graph for depthwise
		convolutions which act separately on the input channels followed by
		pointwise convolution which mixes channels.
		
		Parameters
		----------
		input: symbolic 4D tensor
		    Mini-batch of feature map stacks, of shape
		    (batch size, input channels, input rows, input columns).
		    See the optional parameter ``input_shape``.
		
		depthwise_filters: symbolic 4D tensor
		    Set of filters used depthwise convolution layer of shape
		    (depthwise output channels, 1, filter rows, filter columns).
		
		pointwise_filters: symbolic 4D tensor
		    Set of filters used pointwise convolution layer of shape
		    (output channels, depthwise output channels, 1, 1).
		
		num_channels: int
		    The number of channels of the input. Required for depthwise
		    convolutions.
		
		input_shape: None, tuple/list of len 4 of int or Constant variable
		    The shape of the input parameter.
		    Optional, possibly used to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify that this
		    element is not known at compile time.
		
		depthwise_filter_shape: None, tuple/list of len 4 of int or Constant variable
		    The shape of the depthwise filters parameter.
		    Optional, possibly used to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify that this
		    element is not known at compile time.
		
		pointwise_filter_shape: None, tuple/list of len 4 of int or Constant variable
		    The shape of the pointwise filters parameter.
		    Optional, possibly used to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify that this
		    element is not known at compile time.
		
		border_mode: str, int or tuple of two int
		    This applies only to depthwise convolutions
		    Either of the following:
		
		    ``'valid'``: apply filter wherever it completely overlaps with the
		        input. Generates output of shape: input shape - filter shape + 1
		    ``'full'``: apply filter wherever it partly overlaps with the input.
		        Generates output of shape: input shape + filter shape - 1
		    ``'half'``: pad input with a symmetric border of ``filter rows // 2``
		        rows and ``filter columns // 2`` columns, then perform a valid
		        convolution. For filters with an odd number of rows and columns, this
		        leads to the output shape being equal to the input shape.
		    ``int``: pad input with a symmetric border of zeros of the given
		        width, then perform a valid convolution.
		    ``(int1, int2)``: pad input with a symmetric border of ``int1`` rows
		        and ``int2`` columns, then perform a valid convolution.
		    ``(int1, (int2, int3))`` or ``((int1, int2), int3)``:
		        pad input with one symmetric border of `int1`` or ``int3``, and
		        one asymmetric border of ``(int2, int3)`` or ``(int1, int2)``.
		    ``((int1, int2), (int3, int4))``: pad input with an asymmetric
		        border of ``(int1, int2)`` along one dimension and ``(int3, int4)``
		        along the second dimension.
		
		subsample: tuple of len 2
		    Factor by which to subsample the output.
		    This applies only to depthwise convolutions
		
		filter_flip: bool
		    If ``True``, will flip the filter rows and columns
		    before sliding them over the input. This operation is normally referred
		    to as a convolution, and this is the default. If ``False``, the filters
		    are not flipped and the operation is referred to as a cross-correlation.
		
		filter_dilation: tuple of len 2
		    Factor by which to subsample (stride) the input.
		    This applies only to depthwise convolutions
		
		Returns
		-------
		Symbolic 4D tensor
		    Set of feature maps generated by convolutional layer. Tensor is
		    of shape (batch size, output channels, output rows, output columns)
	**/
	static public function separable_conv2d(input:Dynamic, depthwise_filters:Dynamic, pointwise_filters:Dynamic, num_channels:Dynamic, ?input_shape:Dynamic, ?depthwise_filter_shape:Dynamic, ?pointwise_filter_shape:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?filter_flip:Dynamic, ?filter_dilation:Dynamic):Dynamic;
	/**
		This function will build the symbolic graph for depthwise
		convolutions which act separately on the input channels followed by
		pointwise convolution which mixes channels.
		
		Parameters
		----------
		input: symbolic 5D tensor
		    Mini-batch of feature map stacks, of shape
		    (batch size, input channels, input depth, input rows, input columns).
		    See the optional parameter ``input_shape``.
		
		depthwise_filters: symbolic 5D tensor
		    Set of filters used depthwise convolution layer of shape
		    (depthwise output channels, 1, filter_depth, filter rows, filter columns).
		
		pointwise_filters: symbolic 5D tensor
		    Set of filters used pointwise convolution layer of shape
		    (output channels, depthwise output channels, 1, 1, 1).
		
		num_channels: int
		    The number of channels of the input. Required for depthwise
		    convolutions.
		
		input_shape: None, tuple/list of len 5 of int or Constant variable
		    The shape of the input parameter.
		    Optional, possibly used to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify that this
		    element is not known at compile time.
		
		depthwise_filter_shape: None, tuple/list of len 5 of int or Constant variable
		    The shape of the depthwise filters parameter.
		    Optional, possibly used to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify that this
		    element is not known at compile time.
		
		pointwise_filter_shape: None, tuple/list of len 5 of int or Constant variable
		    The shape of the pointwise filters parameter.
		    Optional, possibly used to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify that this
		    element is not known at compile time.
		
		border_mode: str, int or tuple of three int
		    This applies only to depthwise convolutions
		    Either of the following:
		
		    ``'valid'``: apply filter wherever it completely overlaps with the
		        input. Generates output of shape: input shape - filter shape + 1
		    ``'full'``: apply filter wherever it partly overlaps with the input.
		        Generates output of shape: input shape + filter shape - 1
		    ``'half'``: pad input with a symmetric border of ``filter // 2``,
		        then perform a valid convolution. For filters with an odd
		        number of slices, rows and columns, this leads to the output
		        shape being equal to the input shape.
		    ``int``: pad input with a symmetric border of zeros of the given
		        width, then perform a valid convolution.
		    ``(int1, int2, int3)``
		        pad input with a symmetric border of ``int1``, ``int2`` and
		        ``int3`` columns, then perform a valid convolution.
		
		subsample: tuple of len 3
		    This applies only to depthwise convolutions
		    Factor by which to subsample the output.
		    Also called strides elsewhere.
		
		filter_flip: bool
		    If ``True``, will flip the filter x, y and z dimensions before
		    sliding them over the input. This operation is normally
		    referred to as a convolution, and this is the default. If
		    ``False``, the filters are not flipped and the operation is
		    referred to as a cross-correlation.
		
		filter_dilation: tuple of len 3
		    Factor by which to subsample (stride) the input.
		    Also called dilation elsewhere.
		
		Returns
		-------
		Symbolic 5D tensor
		    Set of feature maps generated by convolutional layer. Tensor is
		    of shape (batch size, output channels, output_depth,
		    output rows, output columns)
	**/
	static public function separable_conv3d(input:Dynamic, depthwise_filters:Dynamic, pointwise_filters:Dynamic, num_channels:Dynamic, ?input_shape:Dynamic, ?depthwise_filter_shape:Dynamic, ?pointwise_filter_shape:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?filter_flip:Dynamic, ?filter_dilation:Dynamic):Dynamic;
}