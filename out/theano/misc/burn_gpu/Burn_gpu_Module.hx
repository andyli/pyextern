/* This file is generated, do not edit! */
package theano.misc.burn_gpu;
@:pythonImport("theano.misc.burn_gpu") extern class Burn_gpu_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function burn():Dynamic;
	static public var division : Dynamic;
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
	static public var print_function : Dynamic;
}