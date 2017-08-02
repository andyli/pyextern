/* This file is generated, do not edit! */
package theano.tensor.signal.conv;
@:pythonImport("theano.tensor.signal.conv") extern class Conv_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		signal.conv.conv2d performs a basic 2D convolution of the input with the
		given filters. The input parameter can be a single 2D image or a 3D tensor,
		containing a set of images. Similarly, filters can be a single 2D filter or
		a 3D tensor, corresponding to a set of 2D filters.
		
		Shape parameters are optional and will result in faster execution.
		
		Parameters
		----------
		input   : Symbolic theano tensor for images to be filtered.
		          Dimensions: ([num_images], image height, image width)
		filters : Symbolic theano tensor for convolution filter(s).
		          Dimensions: ([num_filters], filter height, filter width)
		border_mode: {'valid', 'full'}
		    See scipy.signal.convolve2d.
		subsample
		    Factor by which to subsample output.
		image_shape : tuple of length 2 or 3
		    ([num_images,] image height, image width).
		filter_shape : tuple of length 2 or 3
		    ([num_filters,] filter height, filter width).
		kwargs
		    See theano.tensor.nnet.conv.conv2d.
		
		Returns
		-------
		symbolic 2D,3D or 4D tensor
		    Tensor of filtered images, with shape
		    ([number images,] [number filters,] image height, image width).
	**/
	static public function conv2d(input:Dynamic, filters:Dynamic, ?image_shape:Dynamic, ?filter_shape:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?kargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}