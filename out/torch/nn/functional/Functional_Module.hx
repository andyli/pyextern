/* This file is generated, do not edit! */
package torch.nn.functional;
@:pythonImport("torch.nn.functional") extern class Functional_Module {
	static public var GRID_SAMPLE_INTERPOLATION_MODES : Dynamic;
	static public var GRID_SAMPLE_PADDING_MODES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Applies a 1D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool1d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function _adaptive_max_pool1d(input:Dynamic, output_size:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 2D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool2d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		        double-integer tuple)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function _adaptive_max_pool2d(input:Dynamic, output_size:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 3D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool3d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		        triple-integer tuple)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function _adaptive_max_pool3d(input:Dynamic, output_size:Dynamic, ?return_indices:Dynamic):Dynamic;
	static public function _add_docstr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies 2D fractional max pooling over an input signal composed of several input planes.
		
		Fractional MaxPooling is described in detail in the paper `Fractional MaxPooling`_ by Ben Graham
		
		The max-pooling operation is applied in :math:`kH \times kW` regions by a stochastic
		step size determined by the target output size.
		The number of output features is equal to the number of input planes.
		
		Args:
		    kernel_size: the size of the window to take a max over.
		                 Can be a single number :math:`k` (for a square kernel of :math:`k \times k`)
		                 or a tuple :math:`(kH \times kW)`
		    output_size: the target output size of the image of the form :math:`oH \times oW`.
		                 Can be a tuple `(oH, oW)` or a single number :math:`oH` for a square image :math:`oH \times oH`
		    output_ratio: If one wants to have an output size as a ratio of the input size, this option can be given.
		                  This has to be a number or tuple in the range (0, 1)
		    return_indices: if ``True``, will return the indices along with the outputs.
		                    Useful to pass to :func:`~torch.nn.functional.max_unpool2d`.
		
		Examples::
		    >>> input = torch.randn(20, 16, 50, 32)
		    >>> # pool of square window of size=3, and target output size 13x12
		    >>> F.fractional_max_pool2d(input, 3, output_size=(13, 12))
		    >>> # pool of square window and target output size being half of input image size
		    >>> F.fractional_max_pool2d(input, 3, output_ratio=(0.5, 0.5))
		
		.. _Fractional MaxPooling:
		    http://arxiv.org/abs/1412.6071
	**/
	static public function _fractional_max_pool2d(input:Dynamic, kernel_size:Dynamic, ?output_size:Dynamic, ?output_ratio:Dynamic, ?return_indices:Dynamic, ?_random_samples:Dynamic):Dynamic;
	static public function _get_softmax_dim(name:Dynamic, ndim:Dynamic, stacklevel:Dynamic):Dynamic;
	/**
		Draw a sample from the Gumbel-Softmax distribution
		
		based on
		https://github.com/ericjang/gumbel-softmax/blob/3c8584924603869e90ca74ac20a6a03d99a91ef9/Categorical%20VAE.ipynb
		(MIT license)
	**/
	static public function _gumbel_softmax_sample(logits:Dynamic, ?tau:Dynamic, ?eps:Dynamic):Dynamic;
	static public function _infer_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _list_with_default(out_size:Dynamic, defaults:Dynamic):Dynamic;
	/**
		Applies a 1D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool1d` for details.
	**/
	static public function _max_pool1d(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?ceil_mode:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 2D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool2d` for details.
	**/
	static public function _max_pool2d(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?ceil_mode:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 3D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool3d` for details.
	**/
	static public function _max_pool3d(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?ceil_mode:Dynamic, ?return_indices:Dynamic):Dynamic;
	static public function _no_grad_embedding_renorm_(weight:Dynamic, input:Dynamic, max_norm:Dynamic, norm_type:Dynamic):Dynamic;
	static public function _pair(x:Dynamic):Dynamic;
	static public function _pointwise_loss(lambd:Dynamic, lambd_optimized:Dynamic, input:Dynamic, target:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Sample from Gumbel(0, 1)
		
		based on
		https://github.com/ericjang/gumbel-softmax/blob/3c8584924603869e90ca74ac20a6a03d99a91ef9/Categorical%20VAE.ipynb ,
		(MIT license)
	**/
	static public function _sample_gumbel(shape:Dynamic, ?eps:Dynamic, ?out:Dynamic):Dynamic;
	static public function _single(x:Dynamic):Dynamic;
	static public function _smooth_l1_loss(input:Dynamic, target:Dynamic):Dynamic;
	static public function _triple(x:Dynamic):Dynamic;
	static public function _unpool_output_size(input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, output_size:Dynamic):Dynamic;
	/**
		adaptive_avg_pool1d(input, output_size) -> Tensor
		
		Applies a 1D adaptive average pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveAvgPool1d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer)
	**/
	static public function adaptive_avg_pool1d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies a 2D adaptive average pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveAvgPool2d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		        double-integer tuple)
	**/
	static public function adaptive_avg_pool2d(input:Dynamic, output_size:Dynamic):Dynamic;
	/**
		Applies a 3D adaptive average pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveAvgPool3d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		        triple-integer tuple)
	**/
	static public function adaptive_avg_pool3d(input:Dynamic, output_size:Dynamic):Dynamic;
	/**
		Applies a 1D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool1d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function adaptive_max_pool1d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies a 1D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool1d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function adaptive_max_pool1d_with_indices(input:Dynamic, output_size:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 2D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool2d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		        double-integer tuple)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function adaptive_max_pool2d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies a 2D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool2d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		        double-integer tuple)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function adaptive_max_pool2d_with_indices(input:Dynamic, output_size:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 3D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool3d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		        triple-integer tuple)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function adaptive_max_pool3d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies a 3D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool3d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		        triple-integer tuple)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function adaptive_max_pool3d_with_indices(input:Dynamic, output_size:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Generates a 2d flow field, given a batch of affine matrices :attr:`theta`
		Generally used in conjunction with :func:`grid_sample` to
		implement Spatial Transformer Networks.
		
		Args:
		    theta (Tensor): input batch of affine matrices (:math:`N \times 2 \times 3`)
		    size (torch.Size): the target output image size (:math:`N \times C \times H \times W`)
		                       Example: torch.Size((32, 3, 24, 24))
		
		Returns:
		    output (Tensor): output Tensor of size (:math:`N \times H \times W \times 2`)
	**/
	static public function affine_grid(theta:Dynamic, size:Dynamic):Dynamic;
	/**
		Applies alpha dropout to the input.
		
		See :class:`~torch.nn.AlphaDropout` for details.
	**/
	static public function alpha_dropout(input:Dynamic, ?p:Dynamic, ?training:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function assert_int_or_pair(arg:Dynamic, arg_name:Dynamic, message:Dynamic):Dynamic;
	/**
		avg_pool1d(input, kernel_size, stride=None, padding=0, ceil_mode=False, count_include_pad=True) -> Tensor
		
		Applies a 1D average pooling over an input signal composed of several
		input planes.
		
		See :class:`~torch.nn.AvgPool1d` for details and output shape.
		
		Args:
		    input: input tensor of shape :math:`(\text{minibatch} \times \text{in\_channels} \times iW)`
		    kernel_size: the size of the window. Can be a single number or a
		      tuple :math:`(kW,)`
		    stride: the stride of the window. Can be a single number or a tuple
		      `(sW,)`. Default: :attr:`kernel_size`
		    padding: implicit zero paddings on both sides of the input. Can be a
		      single number or a tuple `(padW,)`. Default: 0
		    ceil_mode: when True, will use `ceil` instead of `floor` to compute the
		        output shape. Default: ``False``
		    count_include_pad: when True, will include the zero-padding in the
		        averaging calculation. Default: ``True``
		
		Examples::
		    >>> # pool of square window of size=3, stride=2
		    >>> input = torch.tensor([[[1,2,3,4,5,6,7]]])
		    >>> F.avg_pool1d(input, kernel_size=3, stride=2)
		    tensor([[[ 2.,  4.,  6.]]])
	**/
	static public function avg_pool1d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		avg_pool2d(input, kernel_size, stride=None, padding=0, ceil_mode=False, count_include_pad=True) -> Tensor
		
		Applies 2D average-pooling operation in :math:`kH \times kW` regions by step size
		:math:`sH \times sW` steps. The number of output features is equal to the number of
		input planes.
		
		See :class:`~torch.nn.AvgPool2d` for details and output shape.
		
		Args:
		    input: input tensor :math:`(\text{minibatch} \times \text{in\_channels} \times iH \times iW)`
		    kernel_size: size of the pooling region. Can be a single number or a
		      tuple :math:`(kH \times kW)`
		    stride: stride of the pooling operation. Can be a single number or a
		      tuple `(sH, sW)`. Default: :attr:`kernel_size`
		    padding: implicit zero paddings on both sides of the input. Can be a
		      single number or a tuple `(padH, padW)`. Default: 0
		    ceil_mode: when True, will use `ceil` instead of `floor` in the formula
		        to compute the output shape. Default: ``False``
		    count_include_pad: when True, will include the zero-padding in the
		        averaging calculation. Default: ``True``
	**/
	static public function avg_pool2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		avg_pool3d(input, kernel_size, stride=None, padding=0, ceil_mode=False, count_include_pad=True) -> Tensor
		
		Applies 3D average-pooling operation in :math:`kT \times kH \times kW` regions by step
		size :math:`sT \times sH \times sW` steps. The number of output features is equal to
		:math:`\lfloor\frac{\text{input planes}}{sT}\rfloor`.
		
		See :class:`~torch.nn.AvgPool3d` for details and output shape.
		
		Args:
		    input: input tensor :math:`(\text{minibatch} \times \text{in\_channels} \times iT \times iH \times iW)`
		    kernel_size: size of the pooling region. Can be a single number or a
		      tuple :math:`(kT \times kH \times kW)`
		    stride: stride of the pooling operation. Can be a single number or a
		      tuple `(sT, sH, sW)`. Default: :attr:`kernel_size`
		    padding: implicit zero paddings on both sides of the input. Can be a
		      single number or a tuple `(padT, padH, padW)`, Default: 0
		    ceil_mode: when True, will use `ceil` instead of `floor` in the formula
		        to compute the output shape
		    count_include_pad: when True, will include the zero-padding in the
		        averaging calculation
	**/
	static public function avg_pool3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies Batch Normalization for each channel across a batch of data.
		
		See :class:`~torch.nn.BatchNorm1d`, :class:`~torch.nn.BatchNorm2d`,
		:class:`~torch.nn.BatchNorm3d` for details.
	**/
	static public function batch_norm(input:Dynamic, running_mean:Dynamic, running_var:Dynamic, ?weight:Dynamic, ?bias:Dynamic, ?training:Dynamic, ?momentum:Dynamic, ?eps:Dynamic):Dynamic;
	static public function bilinear(input1:Dynamic, input2:Dynamic, weight:Dynamic, ?bias:Dynamic):Dynamic;
	/**
		Function that measures the Binary Cross Entropy
		between the target and the output.
		
		See :class:`~torch.nn.BCELoss` for details.
		
		Args:
		    input: Tensor of arbitrary shape
		    target: Tensor of the same shape as input
		    weight (Tensor, optional): a manual rescaling weight
		            if provided it's repeated to match input tensor shape
		    size_average (bool, optional): Deprecated (see :attr:`reduction`). By default,
		        the losses are averaged over each loss element in the batch. Note that for
		        some losses, there multiple elements per sample. If the field :attr:`size_average`
		        is set to ``False``, the losses are instead summed for each minibatch. Ignored
		        when reduce is ``False``. Default: ``True``
		    reduce (bool, optional): Deprecated (see :attr:`reduction`). By default, the
		        losses are averaged or summed over observations for each minibatch depending
		        on :attr:`size_average`. When :attr:`reduce` is ``False``, returns a loss per
		        batch element instead and ignores :attr:`size_average`. Default: ``True``
		    reduction (string, optional): Specifies the reduction to apply to the output:
		        'none' | 'mean' | 'sum'. 'none': no reduction will be applied,
		        'mean': the sum of the output will be divided by the number of
		        elements in the output, 'sum': the output will be summed. Note: :attr:`size_average`
		        and :attr:`reduce` are in the process of being deprecated, and in the meantime,
		        specifying either of those two args will override :attr:`reduction`. Default: 'mean'
		
		Examples::
		
		    >>> input = torch.randn((3, 2), requires_grad=True)
		    >>> target = torch.rand((3, 2), requires_grad=False)
		    >>> loss = F.binary_cross_entropy(F.sigmoid(input), target)
		    >>> loss.backward()
	**/
	static public function binary_cross_entropy(input:Dynamic, target:Dynamic, ?weight:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Function that measures Binary Cross Entropy between target and output
		logits.
		
		See :class:`~torch.nn.BCEWithLogitsLoss` for details.
		
		Args:
		    input: Tensor of arbitrary shape
		    target: Tensor of the same shape as input
		    weight (Tensor, optional): a manual rescaling weight
		        if provided it's repeated to match input tensor shape
		    size_average (bool, optional): Deprecated (see :attr:`reduction`). By default,
		        the losses are averaged over each loss element in the batch. Note that for
		        some losses, there multiple elements per sample. If the field :attr:`size_average`
		        is set to ``False``, the losses are instead summed for each minibatch. Ignored
		        when reduce is ``False``. Default: ``True``
		    reduce (bool, optional): Deprecated (see :attr:`reduction`). By default, the
		        losses are averaged or summed over observations for each minibatch depending
		        on :attr:`size_average`. When :attr:`reduce` is ``False``, returns a loss per
		        batch element instead and ignores :attr:`size_average`. Default: ``True``
		    reduction (string, optional): Specifies the reduction to apply to the output:
		        'none' | 'mean' | 'sum'. 'none': no reduction will be applied,
		        'mean': the sum of the output will be divided by the number of
		        elements in the output, 'sum': the output will be summed. Note: :attr:`size_average`
		        and :attr:`reduce` are in the process of being deprecated, and in the meantime,
		        specifying either of those two args will override :attr:`reduction`. Default: 'mean'
		    pos_weight (Tensor, optional): a weight of positive examples.
		            Must be a vector with length equal to the number of classes.
		
		Examples::
		
		     >>> input = torch.randn(3, requires_grad=True)
		     >>> target = torch.empty(3).random_(2)
		     >>> loss = F.binary_cross_entropy_with_logits(input, target)
		     >>> loss.backward()
	**/
	static public function binary_cross_entropy_with_logits(input:Dynamic, target:Dynamic, ?weight:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic, ?pos_weight:Dynamic):Dynamic;
	/**
		celu(input, alpha=1., inplace=False) -> Tensor
		
		Applies element-wise,
		:math:`\text{CELU}(x) = \max(0,x) + \min(0, \alpha * (\exp(x/\alpha) - 1))`.
		
		See :class:`~torch.nn.CELU` for more details.
	**/
	static public function celu(input:Dynamic, ?alpha:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		celu_(input, alpha=1.) -> Tensor
		
		In-place version of :func:`~celu`.
	**/
	static public function celu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conv1d(input, weight, bias=None, stride=1, padding=0, dilation=1, groups=1) -> Tensor
		
		Applies a 1D convolution over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.Conv1d` for details and output shape.
		
		.. include:: cudnn_deterministic.rst
		
		Args:
		    input: input tensor of shape :math:`(\text{minibatch} \times \text{in\_channels} \times iW)`
		    weight: filters of shape :math:`(\text{out\_channels} \times \frac{\text{in\_channels}}{\text{groups}} \times kW)`
		    bias: optional bias of shape :math:`(\text{out\_channels})`. Default: ``None``
		    stride: the stride of the convolving kernel. Can be a single number or
		      a one-element tuple `(sW,)`. Default: 1
		    padding: implicit zero paddings on both sides of the input. Can be a
		      single number or a one-element tuple `(padW,)`. Default: 0
		    dilation: the spacing between kernel elements. Can be a single number or
		      a one-element tuple `(dW,)`. Default: 1
		    groups: split input into groups, :math:`\text{in\_channels}` should be divisible by
		      the number of groups. Default: 1
		
		Examples::
		
		    >>> filters = torch.randn(33, 16, 3)
		    >>> inputs = torch.randn(20, 16, 50)
		    >>> F.conv1d(inputs, filters)
	**/
	static public function conv1d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conv2d(input, weight, bias=None, stride=1, padding=0, dilation=1, groups=1) -> Tensor
		
		Applies a 2D convolution over an input image composed of several input
		planes.
		
		See :class:`~torch.nn.Conv2d` for details and output shape.
		
		.. include:: cudnn_deterministic.rst
		
		Args:
		    input: input tensor of shape :math:`(\text{minibatch} \times \text{in\_channels} \times iH \times iW)`
		    weight: filters of shape :math:`(\text{out\_channels} \times \frac{\text{in\_channels}}{\text{groups}} \times kH \times kW)`
		    bias: optional bias tensor of shape :math:`(\text{out\_channels})`. Default: ``None``
		    stride: the stride of the convolving kernel. Can be a single number or a
		      tuple `(sH, sW)`. Default: 1
		    padding: implicit zero paddings on both sides of the input. Can be a
		      single number or a tuple `(padH, padW)`. Default: 0
		    dilation: the spacing between kernel elements. Can be a single number or
		      a tuple `(dH, dW)`. Default: 1
		    groups: split input into groups, :math:`\text{in\_channels}` should be divisible by the
		      number of groups. Default: 1
		
		Examples::
		
		    >>> # With square kernels and equal stride
		    >>> filters = torch.randn(8,4,3,3)
		    >>> inputs = torch.randn(1,4,5,5)
		    >>> F.conv2d(inputs, filters, padding=1)
	**/
	static public function conv2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conv3d(input, weight, bias=None, stride=1, padding=0, dilation=1, groups=1) -> Tensor
		
		Applies a 3D convolution over an input image composed of several input
		planes.
		
		See :class:`~torch.nn.Conv3d` for details and output shape.
		
		.. include:: cudnn_deterministic.rst
		
		Args:
		    input: input tensor of shape :math:`(\text{minibatch} \times \text{in\_channels} \times iT \times iH \times iW)`
		    weight: filters of shape :math:`(\text{out\_channels} \times \frac{\text{in\_channels}}{\text{groups}} \times kT \times kH \times kW)`
		    bias: optional bias tensor of shape :math:`(\text{out\_channels})`. Default: None
		    stride: the stride of the convolving kernel. Can be a single number or a
		      tuple `(sT, sH, sW)`. Default: 1
		    padding: implicit zero paddings on both sides of the input. Can be a
		      single number or a tuple `(padT, padH, padW)`. Default: 0
		    dilation: the spacing between kernel elements. Can be a single number or
		      a tuple `(dT, dH, dW)`. Default: 1
		    groups: split input into groups, :math:`\text{in\_channels}` should be divisible by
		      the number of groups. Default: 1
		
		Examples::
		
		    >>> filters = torch.randn(33, 16, 3, 3, 3)
		    >>> inputs = torch.randn(20, 16, 50, 10, 20)
		    >>> F.conv3d(inputs, filters)
	**/
	static public function conv3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies a 1-dimensional sequence convolution over an input sequence.
		Input and output dimensions are (Time, Batch, Channels) - hence TBC.
		
		Args:
		    input: input tensor of shape :math:`(\text{sequence length} \times batch \times \text{in\_channels})`
		    weight: filter of shape (:math:`\text{kernel width} \times \text{in\_channels} \times \text{out\_channels}`)
		    bias: bias of shape (:math:`\text{out\_channels}`)
		    pad: number of timesteps to pad. Default: 0
	**/
	static public function conv_tbc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conv_transpose1d(input, weight, bias=None, stride=1, padding=0, output_padding=0, groups=1, dilation=1) -> Tensor
		
		Applies a 1D transposed convolution operator over an input signal
		composed of several input planes, sometimes also called "deconvolution".
		
		See :class:`~torch.nn.ConvTranspose1d` for details and output shape.
		
		.. include:: cudnn_deterministic.rst
		
		Args:
		    input: input tensor of shape :math:`(\text{minibatch} \times \text{in\_channels} \times iW)`
		    weight: filters of shape :math:`(\text{in\_channels} \times \frac{\text{out\_channels}}{\text{groups}} \times kW)`
		    bias: optional bias of shape :math:`(\text{out\_channels})`. Default: None
		    stride: the stride of the convolving kernel. Can be a single number or a
		      tuple ``(sW,)``. Default: 1
		    padding: ``kernel_size - 1 - padding`` zero-padding will be added to both
		      sides of each dimension in the input. Can be a single number or a tuple
		      ``(padW,)``. Default: 0
		    output_padding: additional size added to one side of each dimension in the
		      output shape. Can be a single number or a tuple ``(out_padW)``. Default: 0
		    groups: split input into groups, :math:`\text{in\_channels}` should be divisible by the
		      number of groups. Default: 1
		    dilation: the spacing between kernel elements. Can be a single number or
		      a tuple ``(dW,)``. Default: 1
		
		Examples::
		
		    >>> inputs = torch.randn(20, 16, 50)
		    >>> weights = torch.randn(16, 33, 5)
		    >>> F.conv_transpose1d(inputs, weights)
	**/
	static public function conv_transpose1d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conv_transpose2d(input, weight, bias=None, stride=1, padding=0, output_padding=0, groups=1, dilation=1) -> Tensor
		
		Applies a 2D transposed convolution operator over an input image
		composed of several input planes, sometimes also called "deconvolution".
		
		See :class:`~torch.nn.ConvTranspose2d` for details and output shape.
		
		.. include:: cudnn_deterministic.rst
		
		Args:
		    input: input tensor of shape :math:`(\text{minibatch} \times \text{in\_channels} \times iH \times iW)`
		    weight: filters of shape :math:`(\text{in\_channels} \times \frac{\text{out\_channels}}{\text{groups}} \times kH \times kW)`
		    bias: optional bias of shape :math:`(\text{out\_channels})`. Default: None
		    stride: the stride of the convolving kernel. Can be a single number or a
		      tuple ``(sH, sW)``. Default: 1
		    padding: ``kernel_size - 1 - padding`` zero-padding will be added to both
		      sides of each dimension in the input. Can be a single number or a tuple
		      ``(padH, padW)``. Default: 0
		    output_padding: additional size added to one side of each dimension in the
		      output shape. Can be a single number or a tuple ``(out_padH, out_padW)``.
		      Default: 0
		    groups: split input into groups, :math:`\text{in\_channels}` should be divisible by the
		      number of groups. Default: 1
		    dilation: the spacing between kernel elements. Can be a single number or
		      a tuple ``(dH, dW)``. Default: 1
		
		Examples::
		
		    >>> # With square kernels and equal stride
		    >>> inputs = torch.randn(1, 4, 5, 5)
		    >>> weights = torch.randn(4, 8, 3, 3)
		    >>> F.conv_transpose2d(inputs, weights, padding=1)
	**/
	static public function conv_transpose2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conv_transpose3d(input, weight, bias=None, stride=1, padding=0, output_padding=0, groups=1, dilation=1) -> Tensor
		
		Applies a 3D transposed convolution operator over an input image
		composed of several input planes, sometimes also called "deconvolution"
		
		See :class:`~torch.nn.ConvTranspose3d` for details and output shape.
		
		.. include:: cudnn_deterministic.rst
		
		Args:
		    input: input tensor of shape :math:`(\text{minibatch} \times \text{in\_channels} \times iT \times iH \times iW)`
		    weight: filters of shape :math:`(\text{in\_channels} \times \frac{\text{out\_channels}}{\text{groups}} \times kT \times kH \times kW)`
		    bias: optional bias of shape :math:`(\text{out\_channels})`. Default: None
		    stride: the stride of the convolving kernel. Can be a single number or a
		      tuple ``(sT, sH, sW)``. Default: 1
		    padding: ``kernel_size - 1 - padding`` zero-padding will be added to both
		      sides of each dimension in the input. Can be a single number or a tuple
		      ``(padT, padH, padW)``. Default: 0
		    output_padding: additional size added to one side of each dimension in the
		      output shape. Can be a single number or a tuple
		      ``(out_padT, out_padH, out_padW)``. Default: 0
		    groups: split input into groups, :math:`\text{in\_channels}` should be divisible by the
		      number of groups. Default: 1
		    dilation: the spacing between kernel elements. Can be a single number or
		      a tuple `(dT, dH, dW)`. Default: 1
		
		Examples::
		
		    >>> inputs = torch.randn(20, 16, 50, 10, 20)
		    >>> weights = torch.randn(16, 33, 3, 3, 3)
		    >>> F.conv_transpose3d(inputs, weights)
	**/
	static public function conv_transpose3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cosine_embedding_loss(input1, input2, target, margin=0, size_average=None, reduce=None, reduction='mean') -> Tensor
		
		See :class:`~torch.nn.CosineEmbeddingLoss` for details.
	**/
	static public function cosine_embedding_loss(input1:Dynamic, input2:Dynamic, target:Dynamic, ?margin:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		cosine_similarity(x1, x2, dim=1, eps=1e-8) -> Tensor
		
		Returns cosine similarity between x1 and x2, computed along dim.
		
		.. math ::
		    \text{similarity} = \dfrac{x_1 \cdot x_2}{\max(\Vert x_1 \Vert _2 \cdot \Vert x_2 \Vert _2, \epsilon)}
		
		Args:
		    x1 (Tensor): First input.
		    x2 (Tensor): Second input (of size matching x1).
		    dim (int, optional): Dimension of vectors. Default: 1
		    eps (float, optional): Small value to avoid division by zero.
		        Default: 1e-8
		
		Shape:
		    - Input: :math:`(\ast_1, D, \ast_2)` where D is at position `dim`.
		    - Output: :math:`(\ast_1, \ast_2)` where 1 is at position `dim`.
		
		Example::
		
		    >>> input1 = torch.randn(100, 128)
		    >>> input2 = torch.randn(100, 128)
		    >>> output = F.cosine_similarity(input1, input2)
		    >>> print(output)
	**/
	static public function cosine_similarity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		This criterion combines `log_softmax` and `nll_loss` in a single
		function.
		
		See :class:`~torch.nn.CrossEntropyLoss` for details.
		
		Args:
		    input (Tensor) : :math:`(N, C)` where `C = number of classes` or :math:`(N, C, H, W)`
		        in case of 2D Loss, or :math:`(N, C, d_1, d_2, ..., d_K)` where :math:`K > 1`
		        in the case of K-dimensional loss.
		    target (Tensor) : :math:`(N)` where each value is :math:`0 \leq \text{targets}[i] \leq C-1`,
		        or :math:`(N, d_1, d_2, ..., d_K)` where :math:`K \geq 1` for
		        K-dimensional loss.
		    weight (Tensor, optional): a manual rescaling weight given to each
		        class. If given, has to be a Tensor of size `C`
		    size_average (bool, optional): Deprecated (see :attr:`reduction`). By default,
		        the losses are averaged over each loss element in the batch. Note that for
		        some losses, there multiple elements per sample. If the field :attr:`size_average`
		        is set to ``False``, the losses are instead summed for each minibatch. Ignored
		        when reduce is ``False``. Default: ``True``
		    ignore_index (int, optional): Specifies a target value that is ignored
		        and does not contribute to the input gradient. When :attr:`size_average` is
		        ``True``, the loss is averaged over non-ignored targets. Default: -100
		    reduce (bool, optional): Deprecated (see :attr:`reduction`). By default, the
		        losses are averaged or summed over observations for each minibatch depending
		        on :attr:`size_average`. When :attr:`reduce` is ``False``, returns a loss per
		        batch element instead and ignores :attr:`size_average`. Default: ``True``
		    reduction (string, optional): Specifies the reduction to apply to the output:
		        'none' | 'mean' | 'sum'. 'none': no reduction will be applied,
		        'mean': the sum of the output will be divided by the number of
		        elements in the output, 'sum': the output will be summed. Note: :attr:`size_average`
		        and :attr:`reduce` are in the process of being deprecated, and in the meantime,
		        specifying either of those two args will override :attr:`reduction`. Default: 'mean'
		
		Examples::
		
		    >>> input = torch.randn(3, 5, requires_grad=True)
		    >>> target = torch.randint(5, (3,), dtype=torch.int64)
		    >>> loss = F.cross_entropy(input, target)
		    >>> loss.backward()
	**/
	static public function cross_entropy(input:Dynamic, target:Dynamic, ?weight:Dynamic, ?size_average:Dynamic, ?ignore_index:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		The Connectionist Temporal Classification loss.
		
		See :class:`~torch.nn.CTCLoss` for details.
		
		.. include:: cudnn_deterministic.rst
		.. include:: cuda_deterministic_backward.rst
		
		Args:
		    log_probs: :math:`(T, N, C)` where `C = number of characters in alphabet including blank`,
		        `T = input length`, and `N = batch size`.
		        The logarithmized probabilities of the outputs
		        (e.g. obtained with :func:`torch.nn.functional.log_softmax`).
		    targets: :math:`(N, S)` or `(sum(target_lengths))`.
		        Targets (cannot be blank). In the second form, the targets are assumed to be concatenated.
		    input_lengths: :math:`(N)`.
		        Lengths of the inputs (must each be :math:`\leq T`)
		    target_lengths: :math:`(N)`.
		        Lengths of the targets
		    blank (int, optional):
		        Blank label. Default :math:`0`.
		    reduction (string, optional): Specifies the reduction to apply to the output:
		        'none' | 'mean' | 'sum'. 'none': no reduction will be applied,
		        'mean': the output losses will be divided by the target lengths and
		        then the mean over the batch is taken. Default: 'mean'
		
		Example::
		
		    >>> log_probs = torch.randn(50, 16, 20).log_softmax(2).detach().requires_grad_()
		    >>> targets = torch.randint(1, 20, (16, 30), dtype=torch.long)
		    >>> input_lengths = torch.full((16,), 50, dtype=torch.long)
		    >>> target_lengths = torch.randint(10,30,(16,), dtype=torch.long)
		    >>> loss = F.ctc_loss(log_probs, targets, input_lengths, target_lengths)
		    >>> loss.backward()
	**/
	static public function ctc_loss(log_probs:Dynamic, targets:Dynamic, input_lengths:Dynamic, target_lengths:Dynamic, ?blank:Dynamic, ?reduction:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		During training, randomly zeroes some of the elements of the input
		tensor with probability :attr:`p` using samples from a Bernoulli
		distribution.
		
		See :class:`~torch.nn.Dropout` for details.
		
		Args:
		    p: probability of an element to be zeroed. Default: 0.5
		    training: apply dropout if is ``True``. Defualt: ``True``
		    inplace: If set to ``True``, will do this operation in-place. Default: ``False``
	**/
	static public function dropout(input:Dynamic, ?p:Dynamic, ?training:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Randomly zero out entire channels (a channel is a 2D feature map,
		e.g., the :math:`j`-th channel of the :math:`i`-th sample in the
		batched input is a 2D tensor :math:`\text{input}[i, j]`) of the input tensor).
		Each channel will be zeroed out independently on every forward call.
		with probability :attr:`p` using samples from a Bernoulli distribution.
		
		See :class:`~torch.nn.Dropout2d` for details.
		
		Args:
		    p: probability of a channel to be zeroed. Default: 0.5
		    training: apply dropout if is ``True``. Defualt: ``True``
		    inplace: If set to ``True``, will do this operation in-place. Default: ``False``
	**/
	static public function dropout2d(input:Dynamic, ?p:Dynamic, ?training:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Randomly zero out entire channels (a channel is a 3D feature map,
		e.g., the :math:`j`-th channel of the :math:`i`-th sample in the
		batched input is a 3D tensor :math:`\text{input}[i, j]`) of the input tensor).
		Each channel will be zeroed out independently on every forward call.
		with probability :attr:`p` using samples from a Bernoulli distribution.
		
		See :class:`~torch.nn.Dropout3d` for details.
		
		Args:
		    p: probability of a channel to be zeroed. Default: 0.5
		    training: apply dropout if is ``True``. Defualt: ``True``
		    inplace: If set to ``True``, will do this operation in-place. Default: ``False``
	**/
	static public function dropout3d(input:Dynamic, ?p:Dynamic, ?training:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Applies element-wise,
		:math:`\text{ELU}(x) = \max(0,x) + \min(0, \alpha * (\exp(x) - 1))`.
		
		See :class:`~torch.nn.ELU` for more details.
	**/
	static public function elu(input:Dynamic, ?alpha:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		elu_(input, alpha=1.) -> Tensor
		
		In-place version of :func:`~elu`.
	**/
	static public function elu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		A simple lookup table that looks up embeddings in a fixed dictionary and size.
		
		This module is often used to retrieve word embeddings using indices.
		The input to the module is a list of indices, and the embedding matrix,
		and the output is the corresponding word embeddings.
		
		See :class:`torch.nn.Embedding` for more details.
		
		Args:
		    input (LongTensor): Tensor containing indices into the embedding matrix
		    weight (Tensor): The embedding matrix with number of rows equal to the maximum possible index + 1,
		        and number of columns equal to the embedding size
		    padding_idx (int, optional): If given, pads the output with the embedding vector at :attr:`padding_idx`
		                                     (initialized to zeros) whenever it encounters the index.
		    max_norm (float, optional): If given, each embedding vector with norm larger than :attr:`max_norm`
		                                is renormalized to have norm :attr:`max_norm`.
		                                Note: this will modify :attr:`weight` in-place.
		    norm_type (float, optional): The p of the p-norm to compute for the :attr:`max_norm` option. Default ``2``.
		    scale_grad_by_freq (boolean, optional): If given, this will scale gradients by the inverse of frequency of
		                                            the words in the mini-batch. Default ``False``.
		    sparse (bool, optional): If ``True``, gradient w.r.t. :attr:`weight` will be a sparse tensor. See Notes under
		                             :class:`torch.nn.Embedding` for more details regarding sparse gradients.
		
		Shape:
		    - Input: LongTensor of arbitrary shape containing the indices to extract
		    - Weight: Embedding matrix of floating point type with shape `(V, embedding_dim)`,
		                        where V = maximum index + 1 and embedding_dim = the embedding size
		    - Output: `(*, embedding_dim)`, where `*` is the input shape
		
		Examples::
		
		    >>> # a batch of 2 samples of 4 indices each
		    >>> input = torch.tensor([[1,2,4,5],[4,3,2,9]])
		    >>> # an embedding matrix containing 10 tensors of size 3
		    >>> embedding_matrix = torch.rand(10, 3)
		    >>> F.embedding(input, embedding_matrix)
		    tensor([[[ 0.8490,  0.9625,  0.6753],
		             [ 0.9666,  0.7761,  0.6108],
		             [ 0.6246,  0.9751,  0.3618],
		             [ 0.4161,  0.2419,  0.7383]],
		
		            [[ 0.6246,  0.9751,  0.3618],
		             [ 0.0237,  0.7794,  0.0528],
		             [ 0.9666,  0.7761,  0.6108],
		             [ 0.3385,  0.8612,  0.1867]]])
		
		    >>> # example with padding_idx
		    >>> weights = torch.rand(10, 3)
		    >>> weights[0, :].zero_()
		    >>> embedding_matrix = weights
		    >>> input = torch.tensor([[0,2,0,5]])
		    >>> F.embedding(input, embedding_matrix, padding_idx=0)
		    tensor([[[ 0.0000,  0.0000,  0.0000],
		             [ 0.5609,  0.5384,  0.8720],
		             [ 0.0000,  0.0000,  0.0000],
		             [ 0.6262,  0.2438,  0.7471]]])
	**/
	static public function embedding(input:Dynamic, weight:Dynamic, ?padding_idx:Dynamic, ?max_norm:Dynamic, ?norm_type:Dynamic, ?scale_grad_by_freq:Dynamic, ?sparse:Dynamic):Dynamic;
	/**
		Computes sums, means or maxes of 'bags' of embeddings, without instantiating the
		intermediate embeddings.
		
		See :class:`torch.nn.EmbeddingBag` for more details.
		.. include:: cuda_deterministic_backward.rst
		
		Args:
		    input (LongTensor): Tensor containing bags of indices into the embedding matrix
		    weight (Tensor): The embedding matrix with number of rows equal to the maximum possible index + 1,
		        and number of columns equal to the embedding size
		    offsets (LongTensor, optional): Only used when :attr:`input` is 1D. :attr:`offsets` determines
		                         the starting index position of each bag (sequence) in :attr:`input`.
		    max_norm (float, optional): If given, each embedding vector with norm larger than :attr:`max_norm`
		                                is renormalized to have norm :attr:`max_norm`.
		                                Note: this will modify :attr:`weight` in-place.
		    norm_type (float, optional): The ``p`` in the ``p``-norm to compute for the :attr:`max_norm` option.
		                                 Default ``2``.
		    scale_grad_by_freq (boolean, optional): if given, this will scale gradients by the inverse of frequency of
		                                            the words in the mini-batch. Default ``False``.
		                                            Note: this option is not supported when ``mode="max"``.
		    mode (string, optional): ``"sum"``, ``"mean"`` or ``"max"``. Specifies the way to reduce the bag.
		                             Default: ``"mean"``
		    sparse (bool, optional): if ``True``, gradient w.r.t. :attr:`weight` will be a sparse tensor. See Notes under
		                             :class:`torch.nn.Embedding` for more details regarding sparse gradients.
		                             Note: this option is not supported when ``mode="max"``.
		
		Shape:
		
		    - :attr:`input` (LongTensor) and :attr:`offsets` (LongTensor, optional)
		
		      - If :attr:`input` is 2D of shape ``B x N``,
		
		        it will be treated as ``B`` bags (sequences) each of fixed length ``N``, and
		        this will return ``B`` values aggregated in a way depending on the :attr:`mode`.
		        :attr:`offsets` is ignored and required to be ``None`` in this case.
		
		      - If :attr:`input` is 1D of shape ``N``,
		
		        it will be treated as a concatenation of multiple bags (sequences).
		        :attr:`offsets` is required to be a 1D tensor containing the
		        starting index positions of each bag in :attr:`input`. Therefore,
		        for :attr:`offsets` of shape ``B``, :attr:`input` will be viewed as
		        having ``B`` bags. Empty bags (i.e., having 0-length) will have
		        returned vectors filled by zeros.
		
		    - :attr:`weight` (Tensor): the learnable weights of the module of
		      shape ``(num_embeddings x embedding_dim)``
		
		    - :attr:`output`: aggregated embedding values of shape ``B x embedding_dim``
		
		Examples::
		
		    >>> # an Embedding module containing 10 tensors of size 3
		    >>> embedding_matrix = torch.rand(10, 3)
		    >>> # a batch of 2 samples of 4 indices each
		    >>> input = torch.tensor([1,2,4,5,4,3,2,9])
		    >>> offsets = torch.tensor([0,4])
		    >>> F.embedding_bag(embedding_matrix, input, offsets)
		    tensor([[ 0.3397,  0.3552,  0.5545],
		            [ 0.5893,  0.4386,  0.5882]])
	**/
	static public function embedding_bag(input:Dynamic, weight:Dynamic, ?offsets:Dynamic, ?max_norm:Dynamic, ?norm_type:Dynamic, ?scale_grad_by_freq:Dynamic, ?mode:Dynamic, ?sparse:Dynamic):Dynamic;
	static public function feature_alpha_dropout(input:Dynamic, ?p:Dynamic, ?training:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Combines an array of sliding local blocks into a large containing
		tensor.
		
		.. warning::
		    Currently, only 4-D output tensors (batched image-like tensors) are
		    supported.
		
		See :class:`torch.nn.Fold` for details
	**/
	static public function fold(input:Dynamic, output_size:Dynamic, kernel_size:Dynamic, ?dilation:Dynamic, ?padding:Dynamic, ?stride:Dynamic):Dynamic;
	/**
		Applies 2D fractional max pooling over an input signal composed of several input planes.
		
		Fractional MaxPooling is described in detail in the paper `Fractional MaxPooling`_ by Ben Graham
		
		The max-pooling operation is applied in :math:`kH \times kW` regions by a stochastic
		step size determined by the target output size.
		The number of output features is equal to the number of input planes.
		
		Args:
		    kernel_size: the size of the window to take a max over.
		                 Can be a single number :math:`k` (for a square kernel of :math:`k \times k`)
		                 or a tuple :math:`(kH \times kW)`
		    output_size: the target output size of the image of the form :math:`oH \times oW`.
		                 Can be a tuple `(oH, oW)` or a single number :math:`oH` for a square image :math:`oH \times oH`
		    output_ratio: If one wants to have an output size as a ratio of the input size, this option can be given.
		                  This has to be a number or tuple in the range (0, 1)
		    return_indices: if ``True``, will return the indices along with the outputs.
		                    Useful to pass to :func:`~torch.nn.functional.max_unpool2d`.
		
		Examples::
		    >>> input = torch.randn(20, 16, 50, 32)
		    >>> # pool of square window of size=3, and target output size 13x12
		    >>> F.fractional_max_pool2d(input, 3, output_size=(13, 12))
		    >>> # pool of square window and target output size being half of input image size
		    >>> F.fractional_max_pool2d(input, 3, output_ratio=(0.5, 0.5))
		
		.. _Fractional MaxPooling:
		    http://arxiv.org/abs/1412.6071
	**/
	static public function fractional_max_pool2d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies 2D fractional max pooling over an input signal composed of several input planes.
		
		Fractional MaxPooling is described in detail in the paper `Fractional MaxPooling`_ by Ben Graham
		
		The max-pooling operation is applied in :math:`kH \times kW` regions by a stochastic
		step size determined by the target output size.
		The number of output features is equal to the number of input planes.
		
		Args:
		    kernel_size: the size of the window to take a max over.
		                 Can be a single number :math:`k` (for a square kernel of :math:`k \times k`)
		                 or a tuple :math:`(kH \times kW)`
		    output_size: the target output size of the image of the form :math:`oH \times oW`.
		                 Can be a tuple `(oH, oW)` or a single number :math:`oH` for a square image :math:`oH \times oH`
		    output_ratio: If one wants to have an output size as a ratio of the input size, this option can be given.
		                  This has to be a number or tuple in the range (0, 1)
		    return_indices: if ``True``, will return the indices along with the outputs.
		                    Useful to pass to :func:`~torch.nn.functional.max_unpool2d`.
		
		Examples::
		    >>> input = torch.randn(20, 16, 50, 32)
		    >>> # pool of square window of size=3, and target output size 13x12
		    >>> F.fractional_max_pool2d(input, 3, output_size=(13, 12))
		    >>> # pool of square window and target output size being half of input image size
		    >>> F.fractional_max_pool2d(input, 3, output_ratio=(0.5, 0.5))
		
		.. _Fractional MaxPooling:
		    http://arxiv.org/abs/1412.6071
	**/
	static public function fractional_max_pool2d_with_indices(input:Dynamic, kernel_size:Dynamic, ?output_size:Dynamic, ?output_ratio:Dynamic, ?return_indices:Dynamic, ?_random_samples:Dynamic):Dynamic;
	/**
		glu(input, dim=-1) -> Tensor
		
		The gated linear unit. Computes:
		
		.. math ::
		
		    H = A \times \sigma(B)
		
		where `input` is split in half along `dim` to form `A` and `B`.
		
		See `Language Modeling with Gated Convolutional Networks <https://arxiv.org/abs/1612.08083>`_.
		
		Args:
		    input (Tensor): input tensor
		    dim (int): dimension on which to split the input
	**/
	static public function glu(input:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Given an :attr:`input` and a flow-field :attr:`grid`, computes the
		``output`` using :attr:`input` values and pixel locations from :attr:`grid`.
		
		Currently, only spatial (4-D) and volumetric (5-D) :attr:`input` are
		supported.
		
		In the spatial (4-D) case, for :attr:`input` with shape
		:math:`(N, C, H_\text{in}, W_\text{in})` and :attr:`grid` with shape
		:math:`(N, H_\text{out}, W_\text{out}, 2)`, the output will have shape
		:math:`(N, C, H_\text{out}, W_\text{out})`.
		
		For each output location ``output[n, :, h, w]``, the size-2 vector
		``grid[n, h, w]`` specifies :attr:`input` pixel locations ``x`` and ``y``,
		which are used to interpolate the output value ``output[n, :, h, w]``.
		In the case of 5D inputs, ``grid[n, d, h, w]`` specifies the
		``x``, ``y``, ``z`` pixel locations for interpolating
		``output[n, :, d, h, w]``. :attr:`mode` argument specifies ``nearest`` or
		``bilinear`` interpolation method to sample the input pixels.
		
		:attr:`grid` should have most values in the range of ``[-1, 1]``. This is
		because the pixel locations are normalized by the :attr:`input` spatial
		dimensions. For example, values ``x = -1, y = -1`` is the left-top pixel of
		:attr:`input`, and values  ``x = 1, y = 1`` is the right-bottom pixel of
		:attr:`input`.
		
		If :attr:`grid` has values outside the range of ``[-1, 1]``, those locations
		are handled as defined by :attr:`padding_mode`. Options are
		
		    * ``padding_mode="zeros"``: use ``0`` for out-of-bound values,
		    * ``padding_mode="border"``: use border values for out-of-bound values,
		    * ``padding_mode="reflection"``: use values at locations reflected by
		      the border for out-of-bound values. For location far away from the
		      border, it will keep being reflected until becoming in bound, e.g.,
		      (normalized) pixel location ``x = -3.5`` reflects by ``-1`` and
		      becomes ``x' = 2.5``, then reflects by border ``1`` and becomes
		      ``x'' = -0.5``.
		
		.. Note:: This function is often used in building Spatial Transformer Networks.
		.. include:: cuda_deterministic_backward.rst
		
		Args:
		    input (Tensor): input of shape :math:`(N, C, H_\text{in}, W_\text{in})` (4-D case)
		                    or :math:`(N, C, D_\text{in}, H_\text{in}, W_\text{in})` (5-D case)
		    grid (Tensor): flow-field of shape :math:`(N, H_\text{out}, W_\text{out}, 2)` (4-D case)
		                   or :math:`(N, D_\text{out}, H_\text{out}, W_\text{out}, 3)` (5-D case)
		    mode (str): interpolation mode to calculate output values
		        'bilinear' | 'nearest'. Default: 'bilinear'
		    padding_mode (str): padding mode for outside grid values
		        'zeros' | 'border' | 'reflection'. Default: 'zeros'
		
		Returns:
		    output (Tensor): output Tensor
	**/
	static public function grid_sample(input:Dynamic, grid:Dynamic, ?mode:Dynamic, ?padding_mode:Dynamic):Dynamic;
	/**
		Applies Group Normalization for last certain number of dimensions.
		
		See :class:`~torch.nn.GroupNorm` for details.
	**/
	static public function group_norm(input:Dynamic, num_groups:Dynamic, ?weight:Dynamic, ?bias:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Sample from the Gumbel-Softmax distribution and optionally discretize.
		
		Args:
		  logits: `[batch_size, num_features]` unnormalized log probabilities
		  tau: non-negative scalar temperature
		  hard: if ``True``, the returned samples will be discretized as one-hot vectors,
		        but will be differentiated as if it is the soft sample in autograd
		
		Returns:
		  Sampled tensor of shape ``batch_size x num_features`` from the Gumbel-Softmax distribution.
		  If ``hard=True``, the returned samples will be one-hot, otherwise they will
		  be probability distributions that sum to 1 across features
		
		Constraints:
		
		- Currently only work on 2D input :attr:`logits` tensor of shape ``batch_size x num_features``
		
		Based on
		https://github.com/ericjang/gumbel-softmax/blob/3c8584924603869e90ca74ac20a6a03d99a91ef9/Categorical%20VAE.ipynb ,
		(MIT license)
	**/
	static public function gumbel_softmax(logits:Dynamic, ?tau:Dynamic, ?hard:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		hardshrink(input, lambd=0.5) -> Tensor
		
		Applies the hard shrinkage function element-wise
		
		See :class:`~torch.nn.Hardshrink` for more details.
	**/
	static public function hardshrink(input:Dynamic, ?lambd:Dynamic):Dynamic;
	/**
		hardtanh(input, min_val=-1., max_val=1., inplace=False) -> Tensor
		
		Applies the HardTanh function element-wise. See :class:`~torch.nn.Hardtanh` for more
		details.
	**/
	static public function hardtanh(input:Dynamic, ?min_val:Dynamic, ?max_val:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		hardtanh_(input, min_val=-1., max_val=1.) -> Tensor
		
		In-place version of :func:`~hardtanh`.
	**/
	static public function hardtanh_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hinge_embedding_loss(input, target, margin=1.0, size_average=None, reduce=None, reduction='mean') -> Tensor
		
		See :class:`~torch.nn.HingeEmbeddingLoss` for details.
	**/
	static public function hinge_embedding_loss(input:Dynamic, target:Dynamic, ?margin:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Applies Instance Normalization for each channel in each data sample in a
		batch.
		
		See :class:`~torch.nn.InstanceNorm1d`, :class:`~torch.nn.InstanceNorm2d`,
		:class:`~torch.nn.InstanceNorm3d` for details.
	**/
	static public function instance_norm(input:Dynamic, ?running_mean:Dynamic, ?running_var:Dynamic, ?weight:Dynamic, ?bias:Dynamic, ?use_input_stats:Dynamic, ?momentum:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Down/up samples the input to either the given :attr:`size` or the given
		:attr:`scale_factor`
		
		The algorithm used for interpolation is determined by :attr:`mode`.
		
		Currently temporal, spatial and volumetric sampling are supported, i.e.
		expected inputs are 3-D, 4-D or 5-D in shape.
		
		The input dimensions are interpreted in the form:
		`mini-batch x channels x [optional depth] x [optional height] x width`.
		
		The modes available for resizing are: `nearest`, `linear` (3D-only),
		`bilinear` (4D-only), `trilinear` (5D-only), `area`
		
		Args:
		    input (Tensor): the input tensor
		    size (int or Tuple[int] or Tuple[int, int] or Tuple[int, int, int]):
		        output spatial size.
		    scale_factor (float or Tuple[float]): multiplier for spatial size. Has to match input size if it is a tuple.
		    mode (string): algorithm used for upsampling:
		        'nearest' | 'linear' | 'bilinear' | 'trilinear' | 'area'. Default: 'nearest'
		    align_corners (bool, optional): if True, the corner pixels of the input
		        and output tensors are aligned, and thus preserving the values at
		        those pixels. This only has effect when :attr:`mode` is `linear`,
		        `bilinear`, or `trilinear`. Default: False
		
		.. warning::
		    With ``align_corners = True``, the linearly interpolating modes
		    (`linear`, `bilinear`, and `trilinear`) don't proportionally align the
		    output and input pixels, and thus the output values can depend on the
		    input size. This was the default behavior for these modes up to version
		    0.3.1. Since then, the default behavior is ``align_corners = False``.
		    See :class:`~torch.nn.Upsample` for concrete examples on how this
		    affects the outputs.
		
		.. include:: cuda_deterministic_backward.rst
	**/
	static public function interpolate(input:Dynamic, ?size:Dynamic, ?scale_factor:Dynamic, ?mode:Dynamic, ?align_corners:Dynamic):Dynamic;
	/**
		The `Kullback-Leibler divergence`_ Loss.
		
		See :class:`~torch.nn.KLDivLoss` for details.
		
		Args:
		    input: Tensor of arbitrary shape
		    target: Tensor of the same shape as input
		    size_average (bool, optional): Deprecated (see :attr:`reduction`). By default,
		        the losses are averaged over each loss element in the batch. Note that for
		        some losses, there multiple elements per sample. If the field :attr:`size_average`
		        is set to ``False``, the losses are instead summed for each minibatch. Ignored
		        when reduce is ``False``. Default: ``True``
		    reduce (bool, optional): Deprecated (see :attr:`reduction`). By default, the
		        losses are averaged or summed over observations for each minibatch depending
		        on :attr:`size_average`. When :attr:`reduce` is ``False``, returns a loss per
		        batch element instead and ignores :attr:`size_average`. Default: ``True``
		    reduction (string, optional): Specifies the reduction to apply to the output:
		        'none' | 'batchmean' | 'sum' | 'mean'.
		        'none': no reduction will be applied
		        'batchmean': the sum of the output will be divided by the batchsize
		        'sum': the output will be summed
		        'mean': the output will be divided by the number of elements in the output
		        Default: 'mean'
		
		    .. note:: :attr:`size_average` and :attr:`reduce` are in the process of being deprecated,
		        and in the meantime, specifying either of those two args will override :attr:`reduction`.
		
		    .. note:: `reduction='mean'` doesn't return the true kl divergence value, please use
		        `reduction='batchmean'` which aligns with KL math definition.
		        In the next major release, 'mean' will be changed to be the same as 'batchmean'.
	**/
	static public function kl_div(input:Dynamic, target:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		l1_loss(input, target, size_average=None, reduce=None, reduction='mean') -> Tensor
		
		Function that takes the mean element-wise absolute value difference.
		
		See :class:`~torch.nn.L1Loss` for details.
	**/
	static public function l1_loss(input:Dynamic, target:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Applies Layer Normalization for last certain number of dimensions.
		
		See :class:`~torch.nn.LayerNorm` for details.
	**/
	static public function layer_norm(input:Dynamic, normalized_shape:Dynamic, ?weight:Dynamic, ?bias:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		leaky_relu(input, negative_slope=0.01, inplace=False) -> Tensor
		
		Applies element-wise,
		:math:`\text{LeakyReLU}(x) = \max(0, x) + \text{negative\_slope} * \min(0, x)`
		
		See :class:`~torch.nn.LeakyReLU` for more details.
	**/
	static public function leaky_relu(input:Dynamic, ?negative_slope:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		leaky_relu_(input, negative_slope=0.01) -> Tensor
		
		In-place version of :func:`~leaky_relu`.
	**/
	static public function leaky_relu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies a linear transformation to the incoming data: :math:`y = xA^T + b`.
		
		Shape:
		
		    - Input: :math:`(N, *, in\_features)` where `*` means any number of
		      additional dimensions
		    - Weight: :math:`(out\_features, in\_features)`
		    - Bias: :math:`(out\_features)`
		    - Output: :math:`(N, *, out\_features)`
	**/
	static public function linear(input:Dynamic, weight:Dynamic, ?bias:Dynamic):Dynamic;
	/**
		Applies local response normalization over an input signal composed of
		several input planes, where channels occupy the second dimension.
		Applies normalization across channels.
		
		See :class:`~torch.nn.LocalResponseNorm` for details.
	**/
	static public function local_response_norm(input:Dynamic, size:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Applies a softmax followed by a logarithm.
		
		While mathematically equivalent to log(softmax(x)), doing these two
		operations separately is slower, and numerically unstable. This function
		uses an alternative formulation to compute the output and gradient correctly.
		
		See :class:`~torch.nn.LogSoftmax` for more details.
		
		Arguments:
		    input (Tensor): input
		    dim (int): A dimension along which log_softmax will be computed.
		    dtype (:class:`torch.dtype`, optional): the desired data type of returned tensor.
		    If specified, the input tensor is casted to :attr:`dtype` before the operation
		    is performed. This is useful for preventing data type overflows. Default: None.
	**/
	static public function log_softmax(input:Dynamic, ?dim:Dynamic, ?_stacklevel:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		logsigmoid(input) -> Tensor
		
		Applies element-wise :math:`\text{LogSigmoid}(x) = \log \left(\frac{1}{1 + \exp(-x_i)}\right)`
		
		See :class:`~torch.nn.LogSigmoid` for more details.
	**/
	static public function logsigmoid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies a 1D power-average pooling over an input signal composed of
		several input planes. If the sum of all inputs to the power of `p` is
		zero, the gradient is set to zero as well.
		
		See :class:`~torch.nn.LPPool1d` for details.
	**/
	static public function lp_pool1d(input:Dynamic, norm_type:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?ceil_mode:Dynamic):Dynamic;
	/**
		Applies a 2D power-average pooling over an input signal composed of
		several input planes. If the sum of all inputs to the power of `p` is
		zero, the gradient is set to zero as well.
		
		See :class:`~torch.nn.LPPool2d` for details.
	**/
	static public function lp_pool2d(input:Dynamic, norm_type:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?ceil_mode:Dynamic):Dynamic;
	/**
		margin_ranking_loss(input1, input2, target, margin=0, size_average=None, reduce=None, reduction='mean') -> Tensor
		
		See :class:`~torch.nn.MarginRankingLoss` for details.
	**/
	static public function margin_ranking_loss(input1:Dynamic, input2:Dynamic, target:Dynamic, ?margin:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Applies a 1D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool1d` for details.
	**/
	static public function max_pool1d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies a 1D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool1d` for details.
	**/
	static public function max_pool1d_with_indices(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?ceil_mode:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 2D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool2d` for details.
	**/
	static public function max_pool2d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies a 2D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool2d` for details.
	**/
	static public function max_pool2d_with_indices(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?ceil_mode:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 3D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool3d` for details.
	**/
	static public function max_pool3d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies a 3D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool3d` for details.
	**/
	static public function max_pool3d_with_indices(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?ceil_mode:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Computes a partial inverse of :class:`MaxPool1d`.
		
		See :class:`~torch.nn.MaxUnpool1d` for details.
	**/
	static public function max_unpool1d(input:Dynamic, indices:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?output_size:Dynamic):Dynamic;
	/**
		Computes a partial inverse of :class:`MaxPool2d`.
		
		See :class:`~torch.nn.MaxUnpool2d` for details.
	**/
	static public function max_unpool2d(input:Dynamic, indices:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?output_size:Dynamic):Dynamic;
	/**
		Computes a partial inverse of :class:`MaxPool3d`.
		
		See :class:`~torch.nn.MaxUnpool3d` for details.
	**/
	static public function max_unpool3d(input:Dynamic, indices:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?output_size:Dynamic):Dynamic;
	/**
		mse_loss(input, target, size_average=None, reduce=None, reduction='mean') -> Tensor
		
		Measures the element-wise mean squared error.
		
		See :class:`~torch.nn.MSELoss` for details.
	**/
	static public function mse_loss(input:Dynamic, target:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		multi_margin_loss(input, target, p=1, margin=1, weight=None, size_average=None,
		                      reduce=None, reduction='mean') -> Tensor
		
		See :class:`~torch.nn.MultiMarginLoss` for details.
	**/
	static public function multi_margin_loss(input:Dynamic, target:Dynamic, ?p:Dynamic, ?margin:Dynamic, ?weight:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		multilabel_margin_loss(input, target, size_average=None, reduce=None, reduction='mean') -> Tensor
		
		See :class:`~torch.nn.MultiLabelMarginLoss` for details.
	**/
	static public function multilabel_margin_loss(input:Dynamic, target:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		multilabel_soft_margin_loss(input, target, weight=None, size_average=None) -> Tensor
		
		See :class:`~torch.nn.MultiLabelSoftMarginLoss` for details.
	**/
	static public function multilabel_soft_margin_loss(input:Dynamic, target:Dynamic, ?weight:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		The negative log likelihood loss.
		
		See :class:`~torch.nn.NLLLoss` for details.
		
		Args:
		    input: :math:`(N, C)` where `C = number of classes` or :math:`(N, C, H, W)`
		        in case of 2D Loss, or :math:`(N, C, d_1, d_2, ..., d_K)` where :math:`K > 1`
		        in the case of K-dimensional loss.
		    target: :math:`(N)` where each value is :math:`0 \leq \text{targets}[i] \leq C-1`,
		        or :math:`(N, d_1, d_2, ..., d_K)` where :math:`K \geq 1` for
		        K-dimensional loss.
		    weight (Tensor, optional): a manual rescaling weight given to each
		        class. If given, has to be a Tensor of size `C`
		    size_average (bool, optional): Deprecated (see :attr:`reduction`). By default,
		        the losses are averaged over each loss element in the batch. Note that for
		        some losses, there multiple elements per sample. If the field :attr:`size_average`
		        is set to ``False``, the losses are instead summed for each minibatch. Ignored
		        when reduce is ``False``. Default: ``True``
		    ignore_index (int, optional): Specifies a target value that is ignored
		        and does not contribute to the input gradient. When :attr:`size_average` is
		        ``True``, the loss is averaged over non-ignored targets. Default: -100
		    reduce (bool, optional): Deprecated (see :attr:`reduction`). By default, the
		        losses are averaged or summed over observations for each minibatch depending
		        on :attr:`size_average`. When :attr:`reduce` is ``False``, returns a loss per
		        batch element instead and ignores :attr:`size_average`. Default: ``True``
		    reduction (string, optional): Specifies the reduction to apply to the output:
		        'none' | 'mean' | 'sum'. 'none': no reduction will be applied,
		        'mean': the sum of the output will be divided by the number of
		        elements in the output, 'sum': the output will be summed. Note: :attr:`size_average`
		        and :attr:`reduce` are in the process of being deprecated, and in the meantime,
		        specifying either of those two args will override :attr:`reduction`. Default: 'mean'
		
		Example::
		
		    >>> # input is of size N x C = 3 x 5
		    >>> input = torch.randn(3, 5, requires_grad=True)
		    >>> # each element in target has to have 0 <= value < C
		    >>> target = torch.tensor([1, 0, 4])
		    >>> output = F.nll_loss(F.log_softmax(input), target)
		    >>> output.backward()
	**/
	static public function nll_loss(input:Dynamic, target:Dynamic, ?weight:Dynamic, ?size_average:Dynamic, ?ignore_index:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Performs :math:`L_p` normalization of inputs over specified dimension.
		
		For a tensor :attr:`input` of sizes :math:`(n_0, ..., n_{dim}, ..., n_k)`, each
		:math:`n_{dim}` -element vector :math:`v` along dimension :attr:`dim` is transformed as
		
		.. math::
		    v = \frac{v}{\max(\lVert v \rVert_p, \epsilon)}.
		
		With the default arguments it uses the Euclidean norm over vectors along dimension :math:`1` for normalization.
		
		Args:
		    input: input tensor of any shape
		    p (float): the exponent value in the norm formulation. Default: 2
		    dim (int): the dimension to reduce. Default: 1
		    eps (float): small value to avoid division by zero. Default: 1e-12
		    out (Tensor, optional): the output tensor. If :attr:`out` is used, this
		                            operation won't be differentiable.
	**/
	static public function normalize(input:Dynamic, ?p:Dynamic, ?dim:Dynamic, ?eps:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Pads tensor.
		
		Pading size:
		    The number of dimensions to pad is :math:`\left\lfloor\frac{\text{len(pad)}}{2}\right\rfloor`
		    and the dimensions that get padded begins with the last dimension and moves forward.
		    For example, to pad the last dimension of the input tensor, then `pad` has form
		    `(padLeft, padRight)`; to pad the last 2 dimensions of the input tensor, then use
		    `(padLeft, padRight, padTop, padBottom)`; to pad the last 3 dimensions, use
		    `(padLeft, padRight, padTop, padBottom, padFront, padBack)`.
		
		Padding mode:
		    See :class:`torch.nn.ConstantPad2d`, :class:`torch.nn.ReflectionPad2d`, and
		    :class:`torch.nn.ReplicationPad2d` for concrete examples on how each of the
		    padding modes works. Constant padding is implemented for arbitrary dimensions.
		    Replicate padding is implemented for padding the last 3 dimensions of 5D input
		    tensor, or the last 2 dimensions of 4D input tensor, or the last dimension of
		    3D input tensor. Reflect padding is only implemented for padding the last 2
		    dimensions of 4D input tensor, or the last dimension of 3D input tensor.
		
		.. include:: cuda_deterministic_backward.rst
		
		Args:
		    input (Tensor): `Nd` tensor
		    pad (tuple): m-elem tuple, where :math:`\frac{m}{2} \leq` input dimensions and :math:`m` is even.
		    mode: 'constant', 'reflect' or 'replicate'. Default: 'constant'
		    value: fill value for 'constant' padding. Default: 0
		
		Examples::
		
		    >>> t4d = torch.empty(3, 3, 4, 2)
		    >>> p1d = (1, 1) # pad last dim by 1 on each side
		    >>> out = F.pad(t4d, p1d, "constant", 0)  # effectively zero padding
		    >>> print(out.data.size())
		    torch.Size([3, 3, 4, 4])
		    >>> p2d = (1, 1, 2, 2) # pad last dim by (1, 1) and 2nd to last by (2, 2)
		    >>> out = F.pad(t4d, p2d, "constant", 0)
		    >>> print(out.data.size())
		    torch.Size([3, 3, 8, 4])
		    >>> t4d = torch.empty(3, 3, 4, 2)
		    >>> p3d = (0, 1, 2, 1, 3, 3) # pad by (0, 1), (2, 1), and (3, 3)
		    >>> out = F.pad(t4d, p3d, "constant", 0)
		    >>> print(out.data.size())
		    torch.Size([3, 9, 7, 3])
	**/
	static public function pad(input:Dynamic, pad:Dynamic, ?mode:Dynamic, ?value:Dynamic):Dynamic;
	/**
		See :class:`torch.nn.PairwiseDistance` for details
	**/
	static public function pairwise_distance(x1:Dynamic, x2:Dynamic, ?p:Dynamic, ?eps:Dynamic, ?keepdim:Dynamic):Dynamic;
	/**
		pdist(input, p=2) -> Tensor
		
		Computes the p-norm distance between every pair of row vectors in the input.
		This is identical to the upper triangular portion, excluding the diagonal, of
		`torch.norm(input[:, None] - input, dim=2, p=p)`. This function will be faster
		if the rows are contiguous.
		
		If input has shape :math:`N \times M` then the output will have shape
		:math:`\frac{1}{2} N (N - 1)`.
		
		This function is equivalent to `scipy.spatial.distance.pdist(input,
		'minkowski', p=p)` if :math:`p \in (0, \infty)`. When :math:`p = 0` it is
		equivalent to `scipy.spatial.distance.pdist(input, 'hamming') * M`.
		When :math:`p = \infty`, the closest scipy function is
		`scipy.spatial.distance.pdist(xn, lambda x, y: np.abs(x - y).max())`.
		
		Args:
		    input: input tensor of shape :math:`N \times M`.
		    p: p value for the p-norm distance to calculate between each vector pair
		        :math:`\in [0, \infty]`.
	**/
	static public function pdist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Rearranges elements in a tensor of shape :math:`(*, C \times r^2, H, W)` to a
		tensor of shape :math:`(C, H \times r, W \times r)`.
		
		See :class:`~torch.nn.PixelShuffle` for details.
		
		Args:
		    input (Tensor): the input tensor
		    upscale_factor (int): factor to increase spatial resolution by
		
		Examples::
		
		    >>> input = torch.randn(1, 9, 4, 4)
		    >>> output = torch.nn.functional.pixel_shuffle(input, 3)
		    >>> print(output.size())
		    torch.Size([1, 1, 12, 12])
	**/
	static public function pixel_shuffle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Poisson negative log likelihood loss.
		
		See :class:`~torch.nn.PoissonNLLLoss` for details.
		
		Args:
		    input: expectation of underlying Poisson distribution.
		    target: random sample :math:`target \sim \text{Poisson}(input)`.
		    log_input: if ``True`` the loss is computed as
		        :math:`\exp(\text{input}) - \text{target} * \text{input}`, if ``False`` then loss is
		        :math:`\text{input} - \text{target} * \log(\text{input}+\text{eps})`. Default: ``True``
		    full: whether to compute full loss, i. e. to add the Stirling
		        approximation term. Default: ``False``
		        :math:`\text{target} * \log(\text{target}) - \text{target} + 0.5 * \log(2 * \pi * \text{target})`.
		    size_average (bool, optional): Deprecated (see :attr:`reduction`). By default,
		        the losses are averaged over each loss element in the batch. Note that for
		        some losses, there multiple elements per sample. If the field :attr:`size_average`
		        is set to ``False``, the losses are instead summed for each minibatch. Ignored
		        when reduce is ``False``. Default: ``True``
		    eps (float, optional): Small value to avoid evaluation of :math:`\log(0)` when
		        :attr:`log_input`=``False``. Default: 1e-8
		    reduce (bool, optional): Deprecated (see :attr:`reduction`). By default, the
		        losses are averaged or summed over observations for each minibatch depending
		        on :attr:`size_average`. When :attr:`reduce` is ``False``, returns a loss per
		        batch element instead and ignores :attr:`size_average`. Default: ``True``
		    reduction (string, optional): Specifies the reduction to apply to the output:
		        'none' | 'mean' | 'sum'. 'none': no reduction will be applied,
		        'mean': the sum of the output will be divided by the number of
		        elements in the output, 'sum': the output will be summed. Note: :attr:`size_average`
		        and :attr:`reduce` are in the process of being deprecated, and in the meantime,
		        specifying either of those two args will override :attr:`reduction`. Default: 'mean'
	**/
	static public function poisson_nll_loss(input:Dynamic, target:Dynamic, ?log_input:Dynamic, ?full:Dynamic, ?size_average:Dynamic, ?eps:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		prelu(input, weight) -> Tensor
		
		Applies element-wise the function
		:math:`\text{PReLU}(x) = \max(0,x) + \text{weight} * \min(0,x)` where weight is a
		learnable parameter.
		
		See :class:`~torch.nn.PReLU` for more details.
	**/
	static public function prelu(input:Dynamic, weight:Dynamic):Dynamic;
	/**
		relu(input, inplace=False) -> Tensor
		
		Applies the rectified linear unit function element-wise. See
		:class:`~torch.nn.ReLU` for more details.
	**/
	static public function relu(input:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		relu6(input, inplace=False) -> Tensor
		
		Applies the element-wise function :math:`\text{ReLU6}(x) = \min(\max(0,x), 6)`.
		
		See :class:`~torch.nn.ReLU6` for more details.
	**/
	static public function relu6(input:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		relu_(input) -> Tensor
		
		In-place version of :func:`~relu`.
	**/
	static public function relu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rrelu(input, lower=1./8, upper=1./3, training=False, inplace=False) -> Tensor
		
		Randomized leaky ReLU.
		
		See :class:`~torch.nn.RReLU` for more details.
	**/
	static public function rrelu(input:Dynamic, ?lower:Dynamic, ?upper:Dynamic, ?training:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		rrelu_(input, lower=1./8, upper=1./3, training=False) -> Tensor
		
		In-place version of :func:`~rrelu`.
	**/
	static public function rrelu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		selu(input, inplace=False) -> Tensor
		
		Applies element-wise,
		:math:`\text{SELU}(x) = scale * (\max(0,x) + \min(0, \alpha * (\exp(x) - 1)))`,
		with :math:`\alpha=1.6732632423543772848170429916717` and
		:math:`scale=1.0507009873554804934193349852946`.
		
		See :class:`~torch.nn.SELU` for more details.
	**/
	static public function selu(input:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		selu_(input) -> Tensor
		
		In-place version of :func:`~selu`.
	**/
	static public function selu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sigmoid(input) -> Tensor
		
		Applies the element-wise function :math:`\text{Sigmoid}(x) = \frac{1}{1 + \exp(-x)}`
		
		See :class:`~torch.nn.Sigmoid` for more details.
	**/
	static public function sigmoid(input:Dynamic):Dynamic;
	/**
		Function that uses a squared term if the absolute
		element-wise error falls below 1 and an L1 term otherwise.
		
		See :class:`~torch.nn.SmoothL1Loss` for details.
	**/
	static public function smooth_l1_loss(input:Dynamic, target:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		soft_margin_loss(input, target, size_average=None, reduce=None, reduction='mean') -> Tensor
		
		See :class:`~torch.nn.SoftMarginLoss` for details.
	**/
	static public function soft_margin_loss(input:Dynamic, target:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Applies a softmax function.
		
		Softmax is defined as:
		
		:math:`\text{Softmax}(x_{i}) = \frac{exp(x_i)}{\sum_j exp(x_j)}`
		
		It is applied to all slices along dim, and will re-scale them so that the elements
		lie in the range `(0, 1)` and sum to 1.
		
		See :class:`~torch.nn.Softmax` for more details.
		
		Arguments:
		    input (Tensor): input
		    dim (int): A dimension along which softmax will be computed.
		    dtype (:class:`torch.dtype`, optional): the desired data type of returned tensor.
		    If specified, the input tensor is casted to :attr:`dtype` before the operation
		    is performed. This is useful for preventing data type overflows. Default: None.
		
		
		.. note::
		    This function doesn't work directly with NLLLoss,
		    which expects the Log to be computed between the Softmax and itself.
		    Use log_softmax instead (it's faster and has better numerical properties).
	**/
	static public function softmax(input:Dynamic, ?dim:Dynamic, ?_stacklevel:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Applies a softmin function.
		
		Note that :math:`\text{Softmin}(x) = \text{Softmax}(-x)`. See softmax definition for mathematical formula.
		
		See :class:`~torch.nn.Softmin` for more details.
		
		Arguments:
		    input (Tensor): input
		    dim (int): A dimension along which softmin will be computed (so every slice
		        along dim will sum to 1).
		    dtype (:class:`torch.dtype`, optional): the desired data type of returned tensor.
		    If specified, the input tensor is casted to :attr:`dtype` before the operation
		    is performed. This is useful for preventing data type overflows. Default: None.
	**/
	static public function softmin(input:Dynamic, ?dim:Dynamic, ?_stacklevel:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		softplus(input, beta=1, threshold=20) -> Tensor
	**/
	static public function softplus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		softshrink(input, lambd=0.5) -> Tensor
		
		Applies the soft shrinkage function elementwise
		
		See :class:`~torch.nn.Softshrink` for more details.
	**/
	static public function softshrink(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		softsign(input) -> Tensor
		
		Applies element-wise, the function :math:`\text{SoftSign}(x) = \frac{x}{1 + |x|}`
		
		See :class:`~torch.nn.Softsign` for more details.
	**/
	static public function softsign(input:Dynamic):Dynamic;
	/**
		tanh(input) -> Tensor
		
		Applies element-wise,
		:math:`\text{Tanh}(x) = \tanh(x) = \frac{\exp(x) - \exp(-x)}{\exp(x) + \exp(-x)}`
		
		See :class:`~torch.nn.Tanh` for more details.
	**/
	static public function tanh(input:Dynamic):Dynamic;
	/**
		tanhshrink(input) -> Tensor
		
		Applies element-wise, :math:`\text{Tanhshrink}(x) = x - \text{Tanh}(x)`
		
		See :class:`~torch.nn.Tanhshrink` for more details.
	**/
	static public function tanhshrink(input:Dynamic):Dynamic;
	/**
		Thresholds each element of the input Tensor.
		
		See :class:`~torch.nn.Threshold` for more details.
	**/
	static public function threshold(input:Dynamic, threshold:Dynamic, value:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		threshold_(input, threshold, value) -> Tensor
		
		In-place version of :func:`~threshold`.
	**/
	static public function threshold_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		See :class:`~torch.nn.TripletMarginLoss` for details
	**/
	static public function triplet_margin_loss(anchor:Dynamic, positive:Dynamic, negative:Dynamic, ?margin:Dynamic, ?p:Dynamic, ?eps:Dynamic, ?swap:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Extracts sliding local blocks from an batched input tensor.
		
		.. warning::
		    Currently, only 4-D input tensors (batched image-like tensors) are
		    supported.
		
		See :class:`torch.nn.Unfold` for details
	**/
	static public function unfold(input:Dynamic, kernel_size:Dynamic, ?dilation:Dynamic, ?padding:Dynamic, ?stride:Dynamic):Dynamic;
	/**
		Upsamples the input to either the given :attr:`size` or the given
		:attr:`scale_factor`
		
		.. warning::
		    This function is deprecated in favor of :func:`torch.nn.functional.interpolate`.
		    This is equivalent with ``nn.functional.interpolate(...)``.
		
		.. include:: cuda_deterministic_backward.rst
		
		The algorithm used for upsampling is determined by :attr:`mode`.
		
		Currently temporal, spatial and volumetric upsampling are supported, i.e.
		expected inputs are 3-D, 4-D or 5-D in shape.
		
		The input dimensions are interpreted in the form:
		`mini-batch x channels x [optional depth] x [optional height] x width`.
		
		The modes available for upsampling are: `nearest`, `linear` (3D-only),
		`bilinear` (4D-only), `trilinear` (5D-only)
		
		Args:
		    input (Tensor): the input tensor
		    size (int or Tuple[int] or Tuple[int, int] or Tuple[int, int, int]):
		        output spatial size.
		    scale_factor (int): multiplier for spatial size. Has to be an integer.
		    mode (string): algorithm used for upsampling:
		        'nearest' | 'linear' | 'bilinear' | 'trilinear'. Default: 'nearest'
		    align_corners (bool, optional): if True, the corner pixels of the input
		        and output tensors are aligned, and thus preserving the values at
		        those pixels. This only has effect when :attr:`mode` is `linear`,
		        `bilinear`, or `trilinear`. Default: False
		
		.. warning::
		    With ``align_corners = True``, the linearly interpolating modes
		    (`linear`, `bilinear`, and `trilinear`) don't proportionally align the
		    output and input pixels, and thus the output values can depend on the
		    input size. This was the default behavior for these modes up to version
		    0.3.1. Since then, the default behavior is ``align_corners = False``.
		    See :class:`~torch.nn.Upsample` for concrete examples on how this
		    affects the outputs.
	**/
	static public function upsample(input:Dynamic, ?size:Dynamic, ?scale_factor:Dynamic, ?mode:Dynamic, ?align_corners:Dynamic):Dynamic;
	/**
		Upsamples the input, using bilinear upsampling.
		
		.. warning::
		    This function is deprecated in favor of :func:`torch.nn.functional.interpolate`.
		    This is equivalent with
		    ``nn.functional.interpolate(..., mode='bilinear', align_corners=True)``.
		
		Expected inputs are spatial (4 dimensional). Use `upsample_trilinear` fo
		volumetric (5 dimensional) inputs.
		
		Args:
		    input (Tensor): input
		    size (int or Tuple[int, int]): output spatial size.
		    scale_factor (int or Tuple[int, int]): multiplier for spatial size
		
		.. include:: cuda_deterministic_backward.rst
	**/
	static public function upsample_bilinear(input:Dynamic, ?size:Dynamic, ?scale_factor:Dynamic):Dynamic;
	/**
		Upsamples the input, using nearest neighbours' pixel values.
		
		.. warning::
		    This function is deprecated in favor of :func:`torch.nn.functional.interpolate`.
		    This is equivalent with ``nn.functional.interpolate(..., mode='nearest')``.
		
		Currently spatial and volumetric upsampling are supported (i.e. expected
		inputs are 4 or 5 dimensional).
		
		Args:
		    input (Tensor): input
		    size (int or Tuple[int, int] or Tuple[int, int, int]): output spatia
		        size.
		    scale_factor (int): multiplier for spatial size. Has to be an integer.
		
		.. include:: cuda_deterministic_backward.rst
	**/
	static public function upsample_nearest(input:Dynamic, ?size:Dynamic, ?scale_factor:Dynamic):Dynamic;
	/**
		Marks a function as a weak script function. When used in a script function
		or ScriptModule, the weak script function will be lazily compiled and
		inlined in the graph. When not used in a script function, the weak script
		annotation has no effect.
	**/
	static public function weak_script(fn:Dynamic, ?_frames_up:Dynamic):Dynamic;
}