/* This file is generated, do not edit! */
package torch.nn.functional;
@:pythonImport("torch.nn.functional") extern class Functional_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _pair(x:Dynamic):Dynamic;
	static public function _single(x:Dynamic):Dynamic;
	static public function _triple(x:Dynamic):Dynamic;
	static public function _unpool_output_size(input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, output_size:Dynamic):Dynamic;
	/**
		Applies a 1D adaptive average pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveAvgPool1d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer)
	**/
	static public function adaptive_avg_pool1d(input:Dynamic, output_size:Dynamic):Dynamic;
	/**
		Applies a 2D adaptive average pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveAvgPool2d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or double-integer tuple)
	**/
	static public function adaptive_avg_pool2d(input:Dynamic, output_size:Dynamic):Dynamic;
	/**
		Applies a 1D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool1d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer)
		    return_indices: whether to return pooling indices
	**/
	static public function adaptive_max_pool1d(input:Dynamic, output_size:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 2D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool2d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or double-integer tuple)
		    return_indices: whether to return pooling indices
	**/
	static public function adaptive_max_pool2d(input:Dynamic, output_size:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 1D average pooling over an input signal composed of several
		input planes.
		
		See :class:`~torch.nn.AvgPool1d` for details and output shape.
		
		Args:
		    kernel_size: the size of the window
		    stride: the stride of the window. Default value is :attr:`kernel_size`
		    padding: implicit zero padding to be added on both sides
		    ceil_mode: when True, will use `ceil` instead of `floor` to compute the output shape
		    count_include_pad: when True, will include the zero-padding in the averaging calculation
		
		Example:
		    >>> # pool of square window of size=3, stride=2
		    >>> input = Variable(torch.Tensor([[[1,2,3,4,5,6,7]]]))
		    >>> F.avg_pool1d(input, kernel_size=3, stride=2)
		    Variable containing:
		    (0 ,.,.) =
		      2  4  6
		    [torch.FloatTensor of size 1x1x3]
	**/
	static public function avg_pool1d(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?ceil_mode:Dynamic, ?count_include_pad:Dynamic):Dynamic;
	/**
		Applies 2D average-pooling operation in kh x kw regions by step size
		dh x dw steps. The number of output features is equal to the number of
		input planes.
		
		See :class:`~torch.nn.AvgPool2d` for details and output shape.
		
		Args:
		    input: input tensor (minibatch x in_channels x iH x iW)
		    kernel_size: size of the pooling region, a single number or a
		      tuple (kh x kw)
		    stride: stride of the pooling operation, a single number or a
		      tuple (sh x sw). Default is equal to kernel size
		    padding: implicit zero padding on the input, a single number or
		      a tuple (padh x padw), Default: 0
		    ceil_mode: operation that defines spatial output shape
		    count_include_pad: divide by the number of elements inside the
		      original non-padded image or kh * kw
	**/
	static public function avg_pool2d(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?ceil_mode:Dynamic, ?count_include_pad:Dynamic):Dynamic;
	/**
		Applies 3D average-pooling operation in kt x kh x kw regions by step
		size kt x dh x dw steps. The number of output features is equal to the
		number of input planes / dt.
	**/
	static public function avg_pool3d(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic):Dynamic;
	static public function batch_norm(input:Dynamic, running_mean:Dynamic, running_var:Dynamic, ?weight:Dynamic, ?bias:Dynamic, ?training:Dynamic, ?momentum:Dynamic, ?eps:Dynamic):Dynamic;
	static public function bilinear(input1:Dynamic, input2:Dynamic, weight:Dynamic, ?bias:Dynamic):Dynamic;
	/**
		Function that measures the Binary Cross Entropy
		between the target and the output:
		
		See :class:`~torch.nn.BCELoss` for details.
		
		Args:
		    input: Variable of arbitrary shape
		    target: Variable of the same shape as input
		    weight (Variable, optional): a manual rescaling weight
		            if provided it's repeated to match input tensor shape
		    size_average (bool, optional): By default, the losses are averaged
		            over observations for each minibatch. However, if the field
		            sizeAverage is set to False, the losses are instead summed
		            for each minibatch.
	**/
	static public function binary_cross_entropy(input:Dynamic, target:Dynamic, ?weight:Dynamic, ?size_average:Dynamic):Dynamic;
	/**
		Applies a 1D convolution over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.Conv1d` for details and output shape.
		
		Args:
		    input: input tensor of shape (minibatch x in_channels x iW)
		    weight: filters of shape (out_channels, in_channels, kW)
		    bias: optional bias of shape (out_channels)
		    stride: the stride of the convolving kernel, default 1
		    padding: implicit zero padding on the input. Can be a single number or
		      a tuple. Default: 0
		    dilation: the spacing between kernel elements. Default: 1
		    groups: split input into groups, in_channels should be divisible by
		      the number of groups
		
		Examples:
		    >>> filters = autograd.Variable(torch.randn(33, 16, 3))
		    >>> inputs = autograd.Variable(torch.randn(20, 16, 50))
		    >>> F.conv1d(inputs, filters)
	**/
	static public function conv1d(input:Dynamic, weight:Dynamic, ?bias:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?groups:Dynamic):Dynamic;
	/**
		Applies a 2D convolution over an input image composed of several input
		planes.
		
		See :class:`~torch.nn.Conv2d` for details and output shape.
		
		Args:
		    input: input tensor (minibatch x in_channels x iH x iW)
		    weight: filters tensor (out_channels, in_channels/groups, kH, kW)
		    bias: optional bias tensor (out_channels)
		    stride: the stride of the convolving kernel. Can be a single number or
		      a tuple (sh x sw). Default: 1
		    padding: implicit zero padding on the input. Can be a single number or
		      a tuple. Default: 0
		    dilation: the spacing between kernel elements. Default: 1
		    groups: split input into groups, in_channels should be divisible by
		      the number of groups
		
		Examples:
		    >>> # With square kernels and equal stride
		    >>> filters = autograd.Variable(torch.randn(8,4,3,3))
		    >>> inputs = autograd.Variable(torch.randn(1,4,5,5))
		    >>> F.conv2d(inputs, filters, padding=1)
	**/
	static public function conv2d(input:Dynamic, weight:Dynamic, ?bias:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?groups:Dynamic):Dynamic;
	/**
		Applies a 3D convolution over an input image composed of several input
		    planes.
		
		See :class:`~torch.nn.Conv3d` for details and output shape.
		
		Args:
		    input: input tensor of shape (minibatch x in_channels x iT x iH x iW)
		    weight: filters tensor of shape (out_channels, in_channels, kT, kH, kW)
		    bias: optional bias tensor of shape (out_channels)
		    stride: the stride of the convolving kernel. Can be a single number or
		      a tuple (st x sh x sw). Default: 1
		    padding: implicit zero padding on the input. Can be a single number or
		      a tuple. Default: 0
		    dilation: the spacing between kernel elements. Default: 1
		    groups: split input into groups, in_channels should be divisible by
		      the number of groups
		
		Examples:
		    >>> filters = autograd.Variable(torch.randn(33, 16, 3, 3, 3))
		    >>> inputs = autograd.Variable(torch.randn(20, 16, 50, 10, 20))
		    >>> F.conv3d(inputs, filters)
	**/
	static public function conv3d(input:Dynamic, weight:Dynamic, ?bias:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?groups:Dynamic):Dynamic;
	static public function conv_transpose1d(input:Dynamic, weight:Dynamic, ?bias:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?output_padding:Dynamic, ?groups:Dynamic, ?dilation:Dynamic):Dynamic;
	/**
		Applies a 2D transposed convolution operator over an input image
		composed of several input planes, sometimes also called "deconvolution".
		
		See :class:`~torch.nn.ConvTranspose2d` for details and output shape.
		
		Args:
		    input: input tensor of shape (minibatch x in_channels x iH x iW)
		    weight: filters of shape (in_channels x out_channels x kH x kW)
		    bias: optional bias of shape (out_channels)
		    stride: the stride of the convolving kernel, a single number or a
		      tuple (sh x sw). Default: 1
		    padding: implicit zero padding on the input, a single number or a
		      tuple (padh x padw). Default: 0
		    groups: split input into groups, in_channels should be divisible by
		      the number of groups
		    output_padding: A zero-padding of 0 <= padding < stride that should be
		      added to the output. Can be a single number or a tuple. Default: 0
		    dilation: the spacing between kernel elements. Default: 1
	**/
	static public function conv_transpose2d(input:Dynamic, weight:Dynamic, ?bias:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?output_padding:Dynamic, ?groups:Dynamic, ?dilation:Dynamic):Dynamic;
	/**
		Applies a 3D transposed convolution operator over an input image
		composed of several input planes, sometimes also called "deconvolution"
		
		See :class:`~torch.nn.ConvTranspose3d` for details and output shape.
		
		Args:
		    input: input tensor of shape (minibatch x in_channels x iT x iH x iW)
		    weight: filters of shape (in_channels x out_channels x kH x kW)
		    bias: optional bias of shape (out_channels)
		    stride: the stride of the convolving kernel, a single number or a
		      tuple (sh x sw). Default: 1
		    padding: implicit zero padding on the input, a single number or a
		      tuple (padh x padw). Default: 0
		    output_padding: A zero-padding of 0 <= padding < stride that should be
		      added to the output. Can be a single number or a tuple. Default: 0
		    groups: split input into groups, in_channels should be divisible by
		      the number of groups
		    dilation: the spacing between kernel elements. Default: 1
	**/
	static public function conv_transpose3d(input:Dynamic, weight:Dynamic, ?bias:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?output_padding:Dynamic, ?groups:Dynamic, ?dilation:Dynamic):Dynamic;
	/**
		This criterion combines `log_softmax` and `nll_loss` in one single class.
		
		See :class:`torch.nn.CrossEntropyLoss` for details.
		
		Args:
		    input: Variable :math:`(N, C)` where `C = number of classes`
		    target: Variable :math:`(N)` where each value is `0 <= targets[i] <= C-1`
		    weight (Tensor, optional): a manual rescaling weight given to each
		            class. If given, has to be a Tensor of size "nclasses"
		    size_average (bool, optional): By default, the losses are averaged
		            over observations for each minibatch. However, if the field
		            sizeAverage is set to False, the losses are instead summed
		            for each minibatch.
	**/
	static public function cross_entropy(input:Dynamic, target:Dynamic, ?weight:Dynamic, ?size_average:Dynamic):Dynamic;
	static public function dropout(input:Dynamic, ?p:Dynamic, ?training:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function elu(input:Dynamic, ?alpha:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function hardshrink(input:Dynamic, ?lambd:Dynamic):Dynamic;
	static public function hardtanh(input:Dynamic, ?min_val:Dynamic, ?max_val:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		The `Kullback-Leibler divergence`_ Loss.
		
		See :class:`~torch.nn.KLDivLoss` for details.
		
		Args:
		    input: Variable of arbitrary shape
		    target: Variable of the same shape as input
		    size_average: if True the output is divided by the number of elements
		      in input tensor
	**/
	static public function kl_div(input:Dynamic, target:Dynamic, ?size_average:Dynamic):Dynamic;
	static public function leaky_relu(input:Dynamic, ?negative_slope:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function linear(input:Dynamic, weight:Dynamic, ?bias:Dynamic):Dynamic;
	static public function log_softmax(input:Dynamic):Dynamic;
	static public function logsigmoid(input:Dynamic):Dynamic;
	static public function lp_pool2d(input:Dynamic, norm_type:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?ceil_mode:Dynamic):Dynamic;
	static public function max_pool1d(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?ceil_mode:Dynamic, ?return_indices:Dynamic):Dynamic;
	static public function max_pool2d(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?ceil_mode:Dynamic, ?return_indices:Dynamic):Dynamic;
	static public function max_pool3d(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?ceil_mode:Dynamic, ?return_indices:Dynamic):Dynamic;
	static public function max_unpool1d(input:Dynamic, indices:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?output_size:Dynamic):Dynamic;
	static public function max_unpool2d(input:Dynamic, indices:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?output_size:Dynamic):Dynamic;
	static public function max_unpool3d(input:Dynamic, indices:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?output_size:Dynamic):Dynamic;
	/**
		The negative log likelihood loss.
		
		See :class:`~torch.nn.NLLLoss` for details.
		
		Args:
		    input: :math:`(N, C)` where `C = number of classes` or `(N, C, H, W)` in case of 2D - Loss
		    target: :math:`(N)` where each value is `0 <= targets[i] <= C-1`
		    weight (Variable, optional): a manual rescaling weight given to each
		            class. If given, has to be a Variable of size "nclasses"
		    size_average (bool, optional): By default, the losses are averaged
		            over observations for each minibatch. However, if the field
		            sizeAverage is set to False, the losses are instead summed
		            for each minibatch.
		
		Attributes:
		    weight: the class-weights given as input to the constructor
		
		Example:
		    >>> # input is of size nBatch x nClasses = 3 x 5
		    >>> input = autograd.Variable(torch.randn(3, 5))
		    >>> # each element in target has to have 0 <= value < nclasses
		    >>> target = autograd.Variable(torch.LongTensor([1, 0, 4]))
		    >>> output = F.nll_loss(F.log_softmax(input), target)
		    >>> output.backward()
	**/
	static public function nll_loss(input:Dynamic, target:Dynamic, ?weight:Dynamic, ?size_average:Dynamic):Dynamic;
	/**
		Pads tensor.
		
		Currently only 2D and 3D padding supported.
		In case of 4D input tensor pad should be in form (pad_l, pad_r, pad_t, pad_b )
		In case of 5D pad should be (pleft, pright, ptop, pbottom, pfront, pback)
		
		Args:
		    input (Variable): 4D or 5D tensor
		    pad (tuple): 4-elem or 6-elem tuple
		    mode: 'constant', 'reflect' or 'replicate'
		    value: fill value for 'constant' padding
	**/
	static public function pad(input:Dynamic, pad:Dynamic, ?mode:Dynamic, ?value:Dynamic):Dynamic;
	/**
		Computes the batchwise pairwise distance between vectors v1,v2:
		
		    .. math ::
		        \Vert x \Vert _p := \left( \sum_{i=1}^n  \vert x_i \vert ^ p \right) ^ {1/p}
		
		    Args:
		        x1: first input tensor
		        x2: second input tensor
		        p: the norm degree. Default: 2
		
		    Shape:
		        - Input: :math:`(N, D)` where `D = vector dimension`
		        - Output: :math:`(N, 1)`
		
		    >>> input1 = autograd.Variable(torch.randn(100, 128))
		    >>> input2 = autograd.Variable(torch.randn(100, 128))
		    >>> output = F.pairwise_distance(input1, input2, p=2)
		    >>> output.backward()
	**/
	static public function pairwise_distance(x1:Dynamic, x2:Dynamic, ?p:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Rearranges elements in a tensor of shape ``[*, C*r^2, H, W]`` to a
		tensor of shape ``[C, H*r, W*r]``.
		
		See :class:`~torch.nn.PixelShuffle` for details.
		
		Args:
		    input (Variable): Input
		    upscale_factor (int): factor to increase spatial resolution by
		
		Examples:
		    >>> ps = nn.PixelShuffle(3)
		    >>> input = autograd.Variable(torch.Tensor(1, 9, 4, 4))
		    >>> output = ps(input)
		    >>> print(output.size())
		    torch.Size([1, 1, 12, 12])
	**/
	static public function pixel_shuffle(input:Dynamic, upscale_factor:Dynamic):Dynamic;
	static public function prelu(input:Dynamic, weight:Dynamic):Dynamic;
	static public function relu(input:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function relu6(input:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function rrelu(input:Dynamic, ?lower:Dynamic, ?upper:Dynamic, ?training:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function sigmoid(input:Dynamic):Dynamic;
	static public function smooth_l1_loss(input:Dynamic, target:Dynamic, ?size_average:Dynamic):Dynamic;
	static public function softmax(input:Dynamic):Dynamic;
	static public function softmin(input:Dynamic):Dynamic;
	static public function softplus(input:Dynamic, ?beta:Dynamic, ?threshold:Dynamic):Dynamic;
	static public function softshrink(input:Dynamic, ?lambd:Dynamic):Dynamic;
	static public function softsign(input:Dynamic):Dynamic;
	static public function tanh(input:Dynamic):Dynamic;
	static public function tanhshrink(input:Dynamic):Dynamic;
	static public function threshold(input:Dynamic, threshold:Dynamic, value:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Creates a criterion that measures the triplet loss given an input tensors x1, x2, x3
		and a margin with a value greater than 0.
		This is used for measuring a relative similarity between samples. A triplet is composed by
		`a`, `p` and `n`: anchor, positive examples and negative example respectively.
		The shape of all input variables should be :math:`(N, D)`.
		
		The distance swap is described in detail in the paper `Learning shallow convolutional feature descriptors with
		triplet losses`_ by V. Balntas, E. Riba et al.
		
		.. math::
		    L(a, p, n) = \frac{1}{N} \left( \sum_{i=1}^N \max \{d(a_i, p_i) - d(a_i, n_i) + {\rm margin}, 0\} \right)
		
		where :math: `d(x_i, y_i) = \| {\bf x}_i - {\bf y}_i \|_2^2`.
		
		Args:
		    anchor: anchor input tensor
		    positive: positive input tensor
		    negative: negative input tensor
		    p: the norm degree. Default: 2
		    eps: small epsilon value to avoid numerical issues
		    swap: compute distance swap
		
		Shape:
		    - Input: :math:`(N, D)` where `D = vector dimension`
		    - Output: :math:`(N, 1)`
		
		    >>> input1 = autograd.Variable(torch.randn(100, 128))
		    >>> input2 = autograd.Variable(torch.randn(100, 128))
		    >>> input3 = autograd.Variable(torch.randn(100, 128))
		    >>> output = F.triplet_margin_loss(input1, input2, input3, p=2)
		    >>> output.backward()
		
		.. _Learning shallow convolutional feature descriptors with triplet losses:
		    http://www.iis.ee.ic.ac.uk/%7Evbalnt/shallow_descr/TFeat_paper.pdf
	**/
	static public function triplet_margin_loss(anchor:Dynamic, positive:Dynamic, negative:Dynamic, ?margin:Dynamic, ?p:Dynamic, ?eps:Dynamic, ?swap:Dynamic):Dynamic;
	/**
		Upscales the input, using the bilinear upsampling.
		
		Currently only spatial upsampling is supported (i.e. expected inputs
		are 4 dimensional).
		
		Args:
		    input (Variable): input
		    size (int or Tuple[int, int]): output spatial size.
		    scale_factor (int): multiplier for spatial size. Has to be an integer.
	**/
	static public function upsample_bilinear(input:Dynamic, ?size:Dynamic, ?scale_factor:Dynamic):Dynamic;
	/**
		Upsamples the input, using nearest neighbours' pixel values.
		
		Currently only spatial upsampling is supported (i.e. expected inputs
		are 4 dimensional).
		
		Args:
		    input (Variable): input
		    size (int or Tuple[int, int]): output spatial size.
		    scale_factor (int): multiplier for spatial size. Has to be an integer.
	**/
	static public function upsample_nearest(input:Dynamic, ?size:Dynamic, ?scale_factor:Dynamic):Dynamic;
}