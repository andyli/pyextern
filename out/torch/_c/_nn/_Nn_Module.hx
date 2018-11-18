/* This file is generated, do not edit! */
package torch._c._nn;
@:pythonImport("torch._C._nn") extern class _Nn_Module {
	static public var __doc__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _parse_to(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _sigmoid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _tanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function adaptive_avg_pool2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function adaptive_avg_pool3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function adaptive_max_pool2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function adaptive_max_pool3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		avg_pool2d(input, kernel_size, stride=None, padding=0, ceil_mode=False, count_include_pad=True) -> Tensor
		
		Applies 2D average-pooling operation in :math:`kH \times kW` regions by step size
		:math:`sH \times sW` steps. The number of output features is equal to the number of
		input planes.
		
		See :class:`~torch.nn.AvgPool2d` for details and output shape.
		
		Args:
		    input: input tensor (:math:`minibatch \times in\_channels \times iH \times iW`)
		    kernel_size: size of the pooling region. Can be a single number or a
		      tuple (:math:`kH \times kW`)
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
		    input: input tensor (:math:`minibatch \times in\_channels \times iT \times iH \times iW`)
		    kernel_size: size of the pooling region. Can be a single number or a
		      tuple (:math:`kT \times kH \times kW`)
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
	static public function binary_cross_entropy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function elu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		elu_(input, alpha=1.) -> Tensor
		
		In-place version of :func:`~elu`.
	**/
	static public function elu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function elu_forward_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fractional_max_pool2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function glu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function hardtanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hardtanh_(input, min_val=-1., max_val=1.) -> Tensor
		
		In-place version of :func:`~hardtanh`.
	**/
	static public function hardtanh_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function hardtanh_forward_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function kl_div(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function l1_loss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function leaky_relu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		leaky_relu_(input, negative_slope=0.01) -> Tensor
		
		In-place version of :func:`~leaky_relu`.
	**/
	static public function leaky_relu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function leaky_relu_forward_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logsigmoid(input) -> Tensor
		
		Applies element-wise :math:`\text{LogSigmoid}(x) = \log \left(\frac{1}{1 + \exp(-x_i)}\right)`
		
		See :class:`~torch.nn.LogSigmoid` for more details.
	**/
	static public function log_sigmoid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function max_pool2d_with_indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function max_pool3d_with_indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function max_unpool2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function max_unpool3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function mse_loss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function multi_margin_loss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function multilabel_margin_loss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function nll_loss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function nll_loss2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		prelu(input, weight) -> Tensor
		
		Applies element-wise the function
		:math:`\text{PReLU}(x) = \max(0,x) + \text{weight} * \min(0,x)` where weight is a
		learnable parameter.
		
		See :class:`~torch.nn.PReLU` for more details.
	**/
	static public function prelu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function reflection_pad1d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function reflection_pad2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function replication_pad1d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function replication_pad2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function replication_pad3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function rrelu_with_noise(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function rrelu_with_noise_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function rrelu_with_noise_forward_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function smooth_l1_loss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function soft_margin_loss(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function thnn_batch_norm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function thnn_conv2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function thnn_conv3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function thnn_conv_depthwise2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function thnn_conv_dilated2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function thnn_conv_dilated3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function thnn_conv_transpose2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function thnn_conv_transpose3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function thnn_grid_sampler_bilinear2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function thnn_grid_sampler_bilinear3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function threshold(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		threshold_(input, threshold, value) -> Tensor
		
		In-place version of :func:`~threshold`.
	**/
	static public function threshold_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function threshold_forward_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function upsample_bilinear2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function upsample_linear1d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function upsample_nearest1d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function upsample_nearest2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function upsample_nearest3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function upsample_trilinear3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
}