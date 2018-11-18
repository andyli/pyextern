/* This file is generated, do not edit! */
package theano.tensor.nnet.corr3d;
@:pythonImport("theano.tensor.nnet.corr3d") extern class Corr3d_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
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
	static public function blas_header_version():Dynamic;
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
	static public function int64(?name:Dynamic):Dynamic;
	static public var integer_types : Dynamic;
	/**
		Extract a list of compilation flags from config.blas.ldflags.
		
		Depending on the options, different type of flags will be kept.
		It returns a list of libraries against which an Op's object file
		should be linked to benefit from a BLAS implementation.
		
		Parameters
		----------
		libs : bool, optional
		    Extract flags starting with "-l" (the default is True).
		libs_dir : bool, optional
		    Extract flags starting with "-L" (the default is False).
		include_dir : bool, optional
		    Extract flags starting with "-I" (the default is False).
		flags: bool, optional
		    Extract all the other flags (the default is False).
		
		Returns
		-------
		list of strings
		    Extracted flags.
	**/
	static public function ldflags(?libs:Dynamic, ?flags:Dynamic, ?libs_dir:Dynamic, ?include_dir:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}