/* This file is generated, do not edit! */
package theano.sparse.sandbox.sp;
@:pythonImport("theano.sparse.sandbox.sp") extern class Sp_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Remove explicit zeros from a sparse matrix, and re-sort indices.
		
		CSR column indices are not necessarily sorted. Likewise
		for CSC row indices. Use `clean` when sorted
		indices are required (e.g. when passing data to other
		libraries) and to ensure there are no zeros in the data.
		
		Parameters
		----------
		x
		    A sparse matrix.
		
		Returns
		-------
		A sparse matrix
		    The same as `x` with indices sorted and zeros
		    removed.
		
		Notes
		-----
		The grad implemented is regular, i.e. not structured.
	**/
	static public function clean(x:Dynamic):Dynamic;
	/**
		Scale each columns of a sparse matrix by the corresponding element of a
		dense vector.
		
		Parameters
		----------
		x
		    A sparse matrix.
		s
		    A dense vector with length equal to the number of columns of `x`.
		
		Returns
		-------
		A sparse matrix in the same format as `x` which each column had been
		multiply by the corresponding element of `s`.
		
		Notes
		-----
		The grad implemented is structured.
	**/
	static public function col_scale(x:Dynamic, s:Dynamic):Dynamic;
	static public function convolution_indices(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convolution implementation by sparse matrix multiplication.
		
		:note: For best speed, put the matrix which you expect to be
		       smaller as the 'kernel' argument
		
		"images" is assumed to be a matrix of shape batch_size x img_size,
		where the second dimension represents each image in raster order
		
		If flatten is "False", the output feature map will have shape:
		
		.. code-block:: python
		
		    batch_size x number of kernels x output_size
		
		If flatten is "True", the output feature map will have shape:
		
		.. code-block:: python
		
		    batch_size x number of kernels * output_size
		
		.. note::
		
		    IMPORTANT: note that this means that each feature map (image
		    generate by each kernel) is contiguous in memory. The memory
		    layout will therefore be: [ <feature_map_0> <feature_map_1>
		    ... <feature_map_n>], where <feature_map> represents a
		    "feature map" in raster order
		
		kerns is a 2D tensor of shape nkern x N.prod(kshp)
		
		:param kerns: 2D tensor containing kernels which are applied at every pixel
		:param kshp: tuple containing actual dimensions of kernel (not symbolic)
		:param nkern: number of kernels/filters to apply.
		              nkern=1 will apply one common filter to all input pixels
		:param images: tensor containing images on which to apply convolution
		:param imgshp: tuple containing image dimensions
		:param step: determines number of pixels between adjacent receptive fields
		             (tuple containing dx,dy values)
		:param mode: 'full', 'valid' see CSM.evaluate function for details
		:param sumdims: dimensions over which to sum for the tensordot operation.
		                By default ((2,),(1,)) assumes kerns is a nkern x kernsize
		                matrix and images is a batchsize x imgsize matrix
		                containing flattened images in raster order
		:param flatten: flatten the last 2 dimensions of the output. By default,
		                instead of generating a batchsize x outsize x nkern tensor,
		                will flatten to batchsize x outsize*nkern
		
		:return: out1, symbolic result
		:return: out2, logical shape of the output img (nkern,heigt,width)
		
		:TODO: test for 1D and think of how to do n-d convolutions
	**/
	static public function convolve(kerns:Dynamic, kshp:Dynamic, nkern:Dynamic, images:Dynamic, imgshp:Dynamic, ?step:Dynamic, ?bias:Dynamic, ?mode:Dynamic, ?flatten:Dynamic):Dynamic;
	static public function diag(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function ensure_sorted_indices(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implements a max pooling layer
		
		Takes as input a 2D tensor of shape batch_size x img_size and
		performs max pooling.  Max pooling downsamples by taking the max
		value in a given area, here defined by maxpoolshp. Outputs a 2D
		tensor of shape batch_size x output_size.
		
		:param images: 2D tensor containing images on which to apply convolution.
		               Assumed to be of shape batch_size x img_size
		:param imgshp: tuple containing image dimensions
		:param maxpoolshp: tuple containing shape of area to max pool over
		
		:return: out1, symbolic result (2D tensor)
		:return: out2, logical shape of the output
	**/
	static public function max_pool(images:Dynamic, imgshp:Dynamic, maxpoolshp:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function register_specialize(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function remove0(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Scale each row of a sparse matrix by the corresponding element of
		a dense vector.
		
		Parameters
		----------
		x
		    A sparse matrix.
		s
		    A dense vector with length equal to the number of rows of `x`.
		
		Returns
		-------
		A sparse matrix
		    A sparse matrix in the same format as `x` whose each row has been
		    multiplied by the corresponding element of `s`.
		
		Notes
		-----
		The grad implemented is structured.
	**/
	static public function row_scale(x:Dynamic, s:Dynamic):Dynamic;
	/**
		Calculate the sum of a sparse matrix along the specified axis.
		
		It operates a reduction along the specified axis. When `axis` is `None`,
		it is applied along all axes.
		
		Parameters
		----------
		x
		    Sparse matrix.
		axis
		    Axis along which the sum is applied. Integer or `None`.
		sparse_grad : bool
		    `True` to have a structured grad.
		
		Returns
		-------
		object
		    The sum of `x` in a dense format.
		
		Notes
		-----
		The grad implementation is controlled with the `sparse_grad` parameter.
		`True` will provide a structured grad and `False` will provide a regular
		grad. For both choices, the grad returns a sparse matrix having the same
		format as `x`.
		
		This op does not return a sparse matrix, but a dense tensor matrix.
	**/
	static public function sp_sum(x:Dynamic, ?axis:Dynamic, ?sparse_grad:Dynamic):Dynamic;
	static public function square_diagonal(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}