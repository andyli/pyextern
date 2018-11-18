/* This file is generated, do not edit! */
package torch.nn.grad;
@:pythonImport("torch.nn.grad") extern class Grad_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _grad_input_padding(grad_output:Dynamic, input_size:Dynamic, stride:Dynamic, padding:Dynamic, kernel_size:Dynamic):Dynamic;
	static public function _pair(x:Dynamic):Dynamic;
	static public function _single(x:Dynamic):Dynamic;
	static public function _triple(x:Dynamic):Dynamic;
	/**
		Computes the gradient of conv1d with respect to the input of the convolution.
		This is same as the 1D transposed convolution operator under the hood but requires
		the shape of the gradient w.r.t. input to be specified explicitly.
		
		Args:
		    input_size : Shape of the input gradient tensor
		    weight: weight tensor (out_channels x in_channels/groups x kW)
		    grad_output : output gradient tensor (minibatch x out_channels x oW)
		    stride (int or tuple, optional): Stride of the convolution. Default: 1
		    padding (int or tuple, optional): Zero-padding added to both sides of the input. Default: 0
		    dilation (int or tuple, optional): Spacing between kernel elements. Default: 1
		    groups (int, optional): Number of blocked connections from input channels to output channels. Default: 1
		    bias: optional bias tensor (out_channels). Default: None
		
		Examples::
		
		    >>> input = torch.randn(1,1,3, requires_grad=True)
		    >>> weight = torch.randn(1,1,1, requires_grad=True)
		    >>> output = F.conv1d(input, weight)
		    >>> grad_output = torch.randn(output.shape)
		    >>> grad_input = torch.autograd.grad(output, input, grad_output)
		    >>> F.grad.conv1d_input(input.shape, weight, grad_output)
	**/
	static public function conv1d_input(input_size:Dynamic, weight:Dynamic, grad_output:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?groups:Dynamic, ?bias:Dynamic):Dynamic;
	/**
		Computes the gradient of conv1d with respect to the weight of the convolution.
		
		Args:
		    input: input tensor of shape (minibatch x in_channels x iW)
		    weight_size : Shape of the weight gradient tensor
		    grad_output : output gradient tensor (minibatch x out_channels x oW)
		    stride (int or tuple, optional): Stride of the convolution. Default: 1
		    padding (int or tuple, optional): Zero-padding added to both sides of the input. Default: 0
		    dilation (int or tuple, optional): Spacing between kernel elements. Default: 1
		    groups (int, optional): Number of blocked connections from input channels to output channels. Default: 1
		    bias: optional bias tensor (out_channels). Default: None
		
		Examples::
		
		    >>> input = torch.randn(1,1,3, requires_grad=True)
		    >>> weight = torch.randn(1,1,1, requires_grad=True)
		    >>> output = F.conv1d(input, weight)
		    >>> grad_output = torch.randn(output.shape)
		    >>> grad_weight = torch.autograd.grad(output, filter, grad_output)
		    >>> F.grad.conv1d_weight(input, weight.shape, grad_output)
	**/
	static public function conv1d_weight(input:Dynamic, weight_size:Dynamic, grad_output:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?groups:Dynamic, ?bias:Dynamic):Dynamic;
	/**
		Computes the gradient of conv2d with respect to the input of the convolution.
		This is same as the 2D transposed convolution operator under the hood but requires
		the shape of the gradient w.r.t. input to be specified explicitly.
		
		Args:
		    input_size : Shape of the input gradient tensor
		    weight: weight tensor (out_channels x in_channels/groups x kH x kW)
		    grad_output : output gradient tensor (minibatch x out_channels x oH x oW)
		    stride (int or tuple, optional): Stride of the convolution. Default: 1
		    padding (int or tuple, optional): Zero-padding added to both sides of the input. Default: 0
		    dilation (int or tuple, optional): Spacing between kernel elements. Default: 1
		    groups (int, optional): Number of blocked connections from input channels to output channels. Default: 1
		    bias: optional bias tensor (out_channels). Default: None
		
		Examples::
		
		    >>> input = torch.randn(1,1,3,3, requires_grad=True)
		    >>> weight = torch.randn(1,1,1,2, requires_grad=True)
		    >>> output = F.conv2d(input, weight)
		    >>> grad_output = torch.randn(output.shape)
		    >>> grad_input = torch.autograd.grad(output, input, grad_output)
		    >>> F.grad.conv2d_input(input.shape, weight, grad_output)
	**/
	static public function conv2d_input(input_size:Dynamic, weight:Dynamic, grad_output:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?groups:Dynamic, ?bias:Dynamic):Dynamic;
	/**
		Computes the gradient of conv2d with respect to the weight of the convolution.
		
		Args:
		    input: input tensor of shape (minibatch x in_channels x iH x iW)
		    weight_size : Shape of the weight gradient tensor
		    grad_output : output gradient tensor (minibatch x out_channels x oH x oW)
		    stride (int or tuple, optional): Stride of the convolution. Default: 1
		    padding (int or tuple, optional): Zero-padding added to both sides of the input. Default: 0
		    dilation (int or tuple, optional): Spacing between kernel elements. Default: 1
		    groups (int, optional): Number of blocked connections from input channels to output channels. Default: 1
		    bias: optional bias tensor (out_channels). Default: None
		
		Examples::
		
		    >>> input = torch.randn(1,1,3,3, requires_grad=True)
		    >>> weight = torch.randn(1,1,1,2, requires_grad=True)
		    >>> output = F.conv2d(input, weight)
		    >>> grad_output = torch.randn(output.shape)
		    >>> grad_weight = torch.autograd.grad(output, filter, grad_output)
		    >>> F.grad.conv2d_weight(input, weight.shape, grad_output)
	**/
	static public function conv2d_weight(input:Dynamic, weight_size:Dynamic, grad_output:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?groups:Dynamic, ?bias:Dynamic):Dynamic;
	/**
		Computes the gradient of conv3d with respect to the input of the convolution.
		This is same as the 3D transposed convolution operator under the hood but requires
		the shape of the gradient w.r.t. input to be specified explicitly.
		
		Args:
		    input_size : Shape of the input gradient tensor
		    weight: weights tensor (out_channels x in_channels/groups x kT x kH x kW)
		    grad_output : output gradient tensor (minibatch x out_channels x oT x oH x oW)
		    stride (int or tuple, optional): Stride of the convolution. Default: 1
		    padding (int or tuple, optional): Zero-padding added to both sides of the input. Default: 0
		    dilation (int or tuple, optional): Spacing between kernel elements. Default: 1
		    groups (int, optional): Number of blocked connections from input channels to output channels. Default: 1
		    bias: optional bias tensor (out_channels). Default: None
		
		Examples::
		
		    >>> input = torch.randn(2, 8, 10, 10, 20, requires_grad=True)
		    >>> weight = torch.randn(4, 8, 2, 3, 3, requires_grad=True)
		    >>> output = F.conv3d(input, weight)
		    >>> grad_output = torch.randn(output.shape)
		    >>> grad_input = torch.autograd.grad(output, input, grad_output)
		    >>> F.grad.conv3d_input(input.shape, weight, grad_output)
	**/
	static public function conv3d_input(input_size:Dynamic, weight:Dynamic, grad_output:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?groups:Dynamic, ?bias:Dynamic):Dynamic;
	/**
		Computes the gradient of conv3d with respect to the weight of the convolution.
		
		Args:
		    input: input tensor of shape (minibatch x in_channels x iT x iH x iW)
		    weight_size : Shape of the weight gradient tensor
		    grad_output : output gradient tensor (minibatch x out_channels x oT x oH x oW)
		    stride (int or tuple, optional): Stride of the convolution. Default: 1
		    padding (int or tuple, optional): Zero-padding added to both sides of the input. Default: 0
		    dilation (int or tuple, optional): Spacing between kernel elements. Default: 1
		    groups (int, optional): Number of blocked connections from input channels to output channels. Default: 1
		    bias: optional bias tensor (out_channels). Default: None
		
		Examples::
		
		    >>> input = torch.randn(2, 8, 10, 10, 20, requires_grad=True)
		    >>> weight = torch.randn(4, 8, 2, 3, 3, requires_grad=True)
		    >>> output = F.conv3d(input, weight)
		    >>> grad_output = torch.randn(output.shape)
		    >>> grad_weight = torch.autograd.grad(output, weight, grad_output)
		    >>> F.grad.conv3d_weight(input, weight.shape, grad_output)
	**/
	static public function conv3d_weight(input:Dynamic, weight_size:Dynamic, grad_output:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?groups:Dynamic, ?bias:Dynamic):Dynamic;
}