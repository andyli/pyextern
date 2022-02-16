/* This file is generated, do not edit! */
package torch.nn.quantized.functional;
@:pythonImport("torch.nn.quantized.functional") extern class Functional_Module {
	static public var BroadcastingList2 : Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _pair(x:Dynamic):Dynamic;
	static public function _pair_from_first(x:Dynamic):Dynamic;
	static public function _triple(x:Dynamic):Dynamic;
	/**
		Applies a 2D adaptive average pooling over a quantized input signal composed
		of several quantized input planes.
		
		.. note:: The input quantization parameters propagate to the output.
		
		See :class:`~torch.nn.quantized.AdaptiveAvgPool2d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		                 double-integer tuple)
	**/
	static public function adaptive_avg_pool2d(input:Dynamic, output_size:Dynamic):Dynamic;
	/**
		Applies a 3D adaptive average pooling over a quantized input signal composed
		of several quantized input planes.
		
		.. note:: The input quantization parameters propagate to the output.
		
		See :class:`~torch.nn.quantized.AdaptiveAvgPool3d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		                 double-integer tuple)
	**/
	static public function adaptive_avg_pool3d(input:Dynamic, output_size:Dynamic):Dynamic;
	/**
		Applies 2D average-pooling operation in :math:`kH \times kW` regions by step size
		:math:`sH \times sW` steps. The number of output features is equal to the number of
		input planes.
		
		.. note:: The input quantization parameters propagate to the output.
		
		See :class:`~torch.nn.quantized.AvgPool2d` for details and output shape.
		
		Args:
		    input: quantized input tensor :math:`(\text{minibatch} , \text{in\_channels} , iH , iW)`
		    kernel_size: size of the pooling region. Can be a single number or a
		      tuple `(kH, kW)`
		    stride: stride of the pooling operation. Can be a single number or a
		      tuple `(sH, sW)`. Default: :attr:`kernel_size`
		    padding: implicit zero paddings on both sides of the input. Can be a
		      single number or a tuple `(padH, padW)`. Default: 0
		    ceil_mode: when True, will use `ceil` instead of `floor` in the formula
		        to compute the output shape. Default: ``False``
		    count_include_pad: when True, will include the zero-padding in the
		        averaging calculation. Default: ``True``
		    divisor_override: if specified, it will be used as divisor, otherwise
		         size of the pooling region will be used. Default: None
	**/
	static public function avg_pool2d(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?ceil_mode:Dynamic, ?count_include_pad:Dynamic, ?divisor_override:Dynamic):Dynamic;
	/**
		Applies 3D average-pooling operation in :math:`kD \ times kH \times kW` regions by step size
		:math:`sD \times sH \times sW` steps. The number of output features is equal to the number of
		input planes.
		
		.. note:: The input quantization parameters propagate to the output.
		
		Args:
		    input: quantized input tensor :math:`(\text{minibatch} , \text{in\_channels} , iH , iW)`
		    kernel_size: size of the pooling region. Can be a single number or a
		      tuple `(kD, kH, kW)`
		    stride: stride of the pooling operation. Can be a single number or a
		      tuple `(sD, sH, sW)`. Default: :attr:`kernel_size`
		    padding: implicit zero paddings on both sides of the input. Can be a
		      single number or a tuple `(padD, padH, padW)`. Default: 0
		    ceil_mode: when True, will use `ceil` instead of `floor` in the formula
		        to compute the output shape. Default: ``False``
		    count_include_pad: when True, will include the zero-padding in the
		        averaging calculation. Default: ``True``
		    divisor_override: if specified, it will be used as divisor, otherwise
		         size of the pooling region will be used. Default: None
	**/
	static public function avg_pool3d(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?ceil_mode:Dynamic, ?count_include_pad:Dynamic, ?divisor_override:Dynamic):Dynamic;
	/**
		celu(input, scale, zero_point, alpha=1.) -> Tensor
		
		Applies the quantized CELU function element-wise.
		.. math::
		    \text{CELU}(x) = \max(0,x) + \min(0, \alpha * (\exp(x / \alpha) - 1))
		
		Args:
		    input: quantized input
		    alpha: the :math:`\alpha` value for the CELU formulation. Default: 1.0
	**/
	static public function celu(input:Dynamic, scale:Dynamic, zero_point:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		float(input, min_, max_) -> Tensor
		
		Applies the clamp function element-wise.
		See :class:`~torch.nn.quantized.clamp` for more details.
		
		Args:
		    input: quantized input
		    min_: minimum value for clamping
		    max_: maximum value for clamping
	**/
	static public function clamp(input:Dynamic, min_:Dynamic, max_:Dynamic):Dynamic;
	/**
		Applies a 1D convolution over a quantized 1D input composed of several input
		planes.
		
		See :class:`~torch.nn.quantized.Conv1d` for details and output shape.
		
		Args:
		    input: quantized input tensor of shape :math:`(\text{minibatch} , \text{in\_channels} , iW)`
		    weight: quantized filters of shape :math:`(\text{out\_channels} , \frac{\text{in\_channels}}{\text{groups}} , iW)`
		    bias: **non-quantized** bias tensor of shape :math:`(\text{out\_channels})`. The tensor type must be `torch.float`.
		    stride: the stride of the convolving kernel. Can be a single number or a
		      tuple `(sW,)`. Default: 1
		    padding: implicit paddings on both sides of the input. Can be a
		      single number or a tuple `(padW,)`. Default: 0
		    dilation: the spacing between kernel elements. Can be a single number or
		      a tuple `(dW,)`. Default: 1
		    groups: split input into groups, :math:`\text{in\_channels}` should be divisible by the
		      number of groups. Default: 1
		    padding_mode: the padding mode to use. Only "zeros" is supported for quantized convolution at the moment. Default: "zeros"
		    scale: quantization scale for the output. Default: 1.0
		    zero_point: quantization zero_point for the output. Default: 0
		    dtype: quantization data type to use. Default: ``torch.quint8``
		
		Examples::
		
		    >>> from torch.nn.quantized import functional as qF
		    >>> filters = torch.randn(33, 16, 3, dtype=torch.float)
		    >>> inputs = torch.randn(20, 16, 50, dtype=torch.float)
		    >>> bias = torch.randn(33, dtype=torch.float)
		    >>>
		    >>> scale, zero_point = 1.0, 0
		    >>> dtype_inputs = torch.quint8
		    >>> dtype_filters = torch.qint8
		    >>>
		    >>> q_filters = torch.quantize_per_tensor(filters, scale, zero_point, dtype_filters)
		    >>> q_inputs = torch.quantize_per_tensor(inputs, scale, zero_point, dtype_inputs)
		    >>> qF.conv1d(q_inputs, q_filters, bias, padding=1, scale=scale, zero_point=zero_point)
	**/
	static public function conv1d(input:Dynamic, weight:Dynamic, bias:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?groups:Dynamic, ?padding_mode:Dynamic, ?scale:Dynamic, ?zero_point:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Applies a 2D convolution over a quantized 2D input composed of several input
		planes.
		
		See :class:`~torch.nn.quantized.Conv2d` for details and output shape.
		
		Args:
		    input: quantized input tensor of shape :math:`(\text{minibatch} , \text{in\_channels} , iH , iW)`
		    weight: quantized filters of shape :math:`(\text{out\_channels} , \frac{\text{in\_channels}}{\text{groups}} , kH , kW)`
		    bias: **non-quantized** bias tensor of shape :math:`(\text{out\_channels})`. The tensor type must be `torch.float`.
		    stride: the stride of the convolving kernel. Can be a single number or a
		      tuple `(sH, sW)`. Default: 1
		    padding: implicit paddings on both sides of the input. Can be a
		      single number or a tuple `(padH, padW)`. Default: 0
		    dilation: the spacing between kernel elements. Can be a single number or
		      a tuple `(dH, dW)`. Default: 1
		    groups: split input into groups, :math:`\text{in\_channels}` should be divisible by the
		      number of groups. Default: 1
		    padding_mode: the padding mode to use. Only "zeros" is supported for quantized convolution at the moment. Default: "zeros"
		    scale: quantization scale for the output. Default: 1.0
		    zero_point: quantization zero_point for the output. Default: 0
		    dtype: quantization data type to use. Default: ``torch.quint8``
		
		Examples::
		
		    >>> from torch.nn.quantized import functional as qF
		    >>> filters = torch.randn(8, 4, 3, 3, dtype=torch.float)
		    >>> inputs = torch.randn(1, 4, 5, 5, dtype=torch.float)
		    >>> bias = torch.randn(8, dtype=torch.float)
		    >>>
		    >>> scale, zero_point = 1.0, 0
		    >>> dtype_inputs = torch.quint8
		    >>> dtype_filters = torch.qint8
		    >>>
		    >>> q_filters = torch.quantize_per_tensor(filters, scale, zero_point, dtype_filters)
		    >>> q_inputs = torch.quantize_per_tensor(inputs, scale, zero_point, dtype_inputs)
		    >>> qF.conv2d(q_inputs, q_filters, bias, padding=1, scale=scale, zero_point=zero_point)
	**/
	static public function conv2d(input:Dynamic, weight:Dynamic, bias:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?groups:Dynamic, ?padding_mode:Dynamic, ?scale:Dynamic, ?zero_point:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Applies a 3D convolution over a quantized 3D input composed of several input
		planes.
		
		See :class:`~torch.nn.quantized.Conv3d` for details and output shape.
		
		Args:
		    input: quantized input tensor of shape
		      :math:`(\text{minibatch} , \text{in\_channels} , iD , iH , iW)`
		    weight: quantized filters of shape
		      :math:`(\text{out\_channels} , \frac{\text{in\_channels}}{\text{groups}} , kD , kH , kW)`
		    bias: **non-quantized** bias tensor of shape
		      :math:`(\text{out\_channels})`. The tensor type must be `torch.float`.
		    stride: the stride of the convolving kernel. Can be a single number or a
		      tuple `(sD, sH, sW)`. Default: 1
		    padding: implicit paddings on both sides of the input. Can be a
		      single number or a tuple `(padD, padH, padW)`. Default: 0
		    dilation: the spacing between kernel elements. Can be a single number or
		      a tuple `(dD, dH, dW)`. Default: 1
		    groups: split input into groups, :math:`\text{in\_channels}` should be
		      divisible by the number of groups. Default: 1
		    padding_mode: the padding mode to use. Only "zeros" is supported for
		      quantized convolution at the moment. Default: "zeros"
		    scale: quantization scale for the output. Default: 1.0
		    zero_point: quantization zero_point for the output. Default: 0
		    dtype: quantization data type to use. Default: ``torch.quint8``
		
		Examples::
		
		    >>> from torch.nn.quantized import functional as qF
		    >>> filters = torch.randn(8, 4, 3, 3, 3, dtype=torch.float)
		    >>> inputs = torch.randn(1, 4, 5, 5, 5, dtype=torch.float)
		    >>> bias = torch.randn(8, dtype=torch.float)
		    >>>
		    >>> scale, zero_point = 1.0, 0
		    >>> dtype_inputs = torch.quint8
		    >>> dtype_filters = torch.qint8
		    >>>
		    >>> q_filters = torch.quantize_per_tensor(filters, scale, zero_point, dtype_filters)
		    >>> q_inputs = torch.quantize_per_tensor(inputs, scale, zero_point, dtype_inputs)
		    >>> qF.conv3d(q_inputs, q_filters, bias, padding=1, scale=scale, zero_point=zero_point)
	**/
	static public function conv3d(input:Dynamic, weight:Dynamic, bias:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?groups:Dynamic, ?padding_mode:Dynamic, ?scale:Dynamic, ?zero_point:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		This is the quantized version of :func:`~torch.nn.functional.elu`.
		
		Args:
		    input: quantized input
		    scale: quantization scale of the output tensor
		    zero_point: quantization zero point of the output tensor
		    alpha: the alpha constant
	**/
	static public function elu(input:Dynamic, scale:Dynamic, zero_point:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		This is the quantized version of :func:`~torch.nn.functional.hardsigmoid`.
		    
	**/
	static public function hardsigmoid(input:Dynamic):Dynamic;
	/**
		This is the quantized version of :func:`~torch.nn.functional.hardswish`.
		
		Args:
		    input: quantized input
		    scale: quantization scale of the output tensor
		    zero_point: quantization zero point of the output tensor
	**/
	static public function hardswish(input:Dynamic, scale:Dynamic, zero_point:Dynamic):Dynamic;
	/**
		This is the quantized version of :func:`~torch.nn.functional.hardtanh`.
		    
	**/
	static public function hardtanh(input:Dynamic, ?min_val:Dynamic, ?max_val:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Down/up samples the input to either the given :attr:`size` or the given
		:attr:`scale_factor`
		
		See :func:`torch.nn.functional.interpolate` for implementation details.
		
		The input dimensions are interpreted in the form:
		`mini-batch x channels x [optional depth] x [optional height] x width`.
		
		.. note:: The input quantization parameters propagate to the output.
		
		.. note:: Only 2D/3D input is supported for quantized inputs
		
		.. note:: Only the following modes are supported for the quantized inputs:
		
		    - `bilinear`
		    - `nearest`
		
		Args:
		    input (Tensor): the input tensor
		    size (int or Tuple[int] or Tuple[int, int] or Tuple[int, int, int]):
		        output spatial size.
		    scale_factor (float or Tuple[float]): multiplier for spatial size. Has to match input size if it is a tuple.
		    mode (str): algorithm used for upsampling:
		        ``'nearest'`` | ``'bilinear'``
		    align_corners (bool, optional): Geometrically, we consider the pixels of the
		        input and output as squares rather than points.
		        If set to ``True``, the input and output tensors are aligned by the
		        center points of their corner pixels, preserving the values at the corner pixels.
		        If set to ``False``, the input and output tensors are aligned by the corner
		        points of their corner pixels, and the interpolation uses edge value padding
		        for out-of-boundary values, making this operation *independent* of input size
		        when :attr:`scale_factor` is kept the same. This only has an effect when :attr:`mode`
		        is ``'bilinear'``.
		        Default: ``False``
	**/
	static public function interpolate(input:Dynamic, ?size:Dynamic, ?scale_factor:Dynamic, ?mode:Dynamic, ?align_corners:Dynamic):Dynamic;
	/**
		Quantized version of the.
		leaky_relu(input, negative_slope=0.01, inplace=False, scale, zero_point) -> Tensor
		
		Applies element-wise,
		:math:`\text{LeakyReLU}(x) = \max(0, x) + \text{negative\_slope} * \min(0, x)`
		
		Args:
		    input: Quaintized input
		    negative_slope: The slope of the negative input
		    inplace: Inplace modification of the input tensor
		    scale, zero_point: Scale and zero point of the output tensor.
		
		See :class:`~torch.nn.LeakyReLU` for more details.
	**/
	static public function leaky_relu(input:Dynamic, ?negative_slope:Dynamic, ?inplace:Dynamic, ?scale:Dynamic, ?zero_point:Dynamic):Dynamic;
	/**
		Applies a linear transformation to the incoming quantized data:
		:math:`y = xA^T + b`.
		See :class:`~torch.nn.quantized.Linear`
		
		.. note::
		
		  Current implementation packs weights on every call, which has penalty on performance.
		  If you want to avoid the overhead, use :class:`~torch.nn.quantized.Linear`.
		
		Args:
		  input (Tensor): Quantized input of type `torch.quint8`
		  weight (Tensor): Quantized weight of type `torch.qint8`
		  bias (Tensor): None or fp32 bias of type `torch.float`
		  scale (double): output scale. If None, derived from the input scale
		  zero_point (long): output zero point. If None, derived from the input zero_point
		
		Shape:
		    - Input: :math:`(N, *, in\_features)` where `*` means any number of
		      additional dimensions
		    - Weight: :math:`(out\_features, in\_features)`
		    - Bias: :math:`(out\_features)`
		    - Output: :math:`(N, *, out\_features)`
	**/
	static public function linear(input:Dynamic, weight:Dynamic, ?bias:Dynamic, ?scale:Dynamic, ?zero_point:Dynamic):Dynamic;
	/**
		Applies a 1D max pooling over a quantized input signal composed of
		several quantized input planes.
		
		.. note:: The input quantization parameters are propagated to the output.
		
		See :class:`~torch.nn.quantized.MaxPool1d` for details.
	**/
	static public function max_pool1d(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?ceil_mode:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 2D max pooling over a quantized input signal composed of
		several quantized input planes.
		
		.. note:: The input quantization parameters are propagated to the output.
		
		See :class:`~torch.nn.quantized.MaxPool2d` for details.
	**/
	static public function max_pool2d(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?ceil_mode:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies the quantized version of the threshold function element-wise:
		
		.. math::
		    x = \begin{cases}
		            x & \text{if~} x > \text{threshold} \\
		            \text{value} & \text{otherwise}
		        \end{cases}
		
		See :class:`~torch.nn.Threshold` for more details.
	**/
	static public function threshold(input:Dynamic, threshold:Dynamic, value:Dynamic):Dynamic;
	/**
		Upsamples the input to either the given :attr:`size` or the given
		:attr:`scale_factor`
		
		.. warning::
		    This function is deprecated in favor of
		    :func:`torch.nn.quantized.functional.interpolate`.
		    This is equivalent with ``nn.quantized.functional.interpolate(...)``.
		
		See :func:`torch.nn.functional.interpolate` for implementation details.
		
		The input dimensions are interpreted in the form:
		`mini-batch x channels x [optional depth] x [optional height] x width`.
		
		.. note:: The input quantization parameters propagate to the output.
		
		.. note:: Only 2D input is supported for quantized inputs
		
		.. note:: Only the following modes are supported for the quantized inputs:
		
		    - `bilinear`
		    - `nearest`
		
		Args:
		    input (Tensor): quantized input tensor
		    size (int or Tuple[int] or Tuple[int, int] or Tuple[int, int, int]):
		        output spatial size.
		    scale_factor (float or Tuple[float]): multiplier for spatial size. Has to be an integer.
		    mode (string): algorithm used for upsampling:
		        ``'nearest'`` | ``'bilinear'``
		    align_corners (bool, optional): Geometrically, we consider the pixels of the
		        input and output as squares rather than points.
		        If set to ``True``, the input and output tensors are aligned by the
		        center points of their corner pixels, preserving the values at the corner pixels.
		        If set to ``False``, the input and output tensors are aligned by the corner
		        points of their corner pixels, and the interpolation uses edge value padding
		        for out-of-boundary values, making this operation *independent* of input size
		        when :attr:`scale_factor` is kept the same. This only has an effect when :attr:`mode`
		        is ``'bilinear'``.
		        Default: ``False``
		
		.. warning::
		    With ``align_corners = True``, the linearly interpolating modes
		    (`bilinear`) don't proportionally align the
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
		    This function is deprecated in favor of
		    :func:`torch.nn.quantized.functional.interpolate`.
		    This is equivalent with
		    ``nn.quantized.functional.interpolate(..., mode='bilinear', align_corners=True)``.
		
		.. note:: The input quantization parameters propagate to the output.
		
		.. note:: Only 2D inputs are supported
		
		Args:
		    input (Tensor): quantized input
		    size (int or Tuple[int, int]): output spatial size.
		    scale_factor (int or Tuple[int, int]): multiplier for spatial size
	**/
	static public function upsample_bilinear(input:Dynamic, ?size:Dynamic, ?scale_factor:Dynamic):Dynamic;
	/**
		Upsamples the input, using nearest neighbours' pixel values.
		
		.. warning::
		    This function is deprecated in favor of
		    :func:`torch.nn.quantized.functional.interpolate`.
		    This is equivalent with ``nn.quantized.functional.interpolate(..., mode='nearest')``.
		
		.. note:: The input quantization parameters propagate to the output.
		
		.. note:: Only 2D inputs are supported
		
		Args:
		    input (Tensor): quantized input
		    size (int or Tuple[int, int] or Tuple[int, int, int]): output spatial
		        size.
		    scale_factor (int): multiplier for spatial size. Has to be an integer.
	**/
	static public function upsample_nearest(input:Dynamic, ?size:Dynamic, ?scale_factor:Dynamic):Dynamic;
}