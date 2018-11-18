/* This file is generated, do not edit! */
package theano.tensor.signal.pool;
@:pythonImport("theano.tensor.signal.pool") extern class Pool_Module {
	static public function PoolingMode_t(?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function bool_t(?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Takes as input a 4-D tensor. It sets all non maximum values
		of non-overlapping patches of size (patch_size[0],patch_size[1]) to zero,
		keeping only the maximum values. The output has the same dimensions as
		the input.
		
		Parameters
		----------
		input : 4-D theano tensor of input images
		    Input images. Max pooling will be done over the 2 last dimensions.
		patch_size : tuple of length 2 or theano vector of ints of size 2.
		    Size of the patch (patch height, patch width).
		    (2,2) will retain only one non-zero value per patch of 4 values.
	**/
	static public function max_pool_2d_same_size(input:Dynamic, patch_size:Dynamic):Dynamic;
	/**
		Downscale the input by a specified factor
		
		Takes as input a N-D tensor, where N >= 2. It downscales the input image by
		the specified factor, by keeping only the maximum value of non-overlapping
		patches of size (ws[0],ws[1])
		
		Parameters
		----------
		input : N-D theano tensor of input images
		    Input images. Max pooling will be done over the 2 last dimensions.
		ws : tuple of length 2 or theano vector of ints of size 2.
		    Factor by which to downscale (vertical ws, horizontal ws).
		    (2,2) will halve the image in each dimension.
		ignore_border : bool (default None, will print a warning and set to False)
		    When True, (5,5) input with ws=(2,2) will generate a (2,2) output.
		    (3,3) otherwise.
		stride : tuple of two ints or theano vector of ints of size 2.
		    Stride size, which is the number of shifts over rows/cols to get the
		    next pool region. If stride is None, it is considered equal to ws
		    (no overlap on pooling regions), eg: stride=(1,1) will shifts over
		    one row and one col for every iteration.
		pad : tuple of two ints or theano vector of ints of size 2.
		    (pad_h, pad_w), pad zeros to extend beyond four borders of the
		    images, pad_h is the size of the top and bottom margins, and
		    pad_w is the size of the left and right margins.
		mode : {'max', 'sum', 'average_inc_pad', 'average_exc_pad'}
		    Operation executed on each window. `max` and `sum` always exclude
		    the padding in the computation. `average` gives you the choice to
		    include or exclude it.
		ds
		    *deprecated*, use parameter ws instead.
		st
		    *deprecated*, use parameter stride instead.
		padding
		    *deprecated*, use parameter pad instead.
	**/
	static public function pool_2d(input:Dynamic, ?ws:Dynamic, ?ignore_border:Dynamic, ?stride:Dynamic, ?pad:Dynamic, ?mode:Dynamic, ?ds:Dynamic, ?st:Dynamic, ?padding:Dynamic):Dynamic;
	/**
		Downscale the input by a specified factor
		
		Takes as input a N-D tensor, where N >= 3. It downscales the input image by
		the specified factor, by keeping only the maximum value of non-overlapping
		patches of size (ws[0],ws[1],ws[2])
		
		Parameters
		----------
		input : N-D theano tensor of input images
		    Input images. Max pooling will be done over the 3 last dimensions.
		ws : tuple of length 3 or theano vector of ints of size 3
		    Factor by which to downscale (vertical ws, horizontal ws, depth ws).
		    (2,2,2) will halve the image in each dimension.
		ignore_border : bool (default None, will print a warning and set to False)
		    When True, (5,5,5) input with ws=(2,2,2) will generate a (2,2,2) output.
		    (3,3,3) otherwise.
		st : tuple of three ints or theano vector of ints of size 3
		    Stride size, which is the number of shifts over rows/cols/slices to get
		    the next pool region. If st is None, it is considered equal to ws
		    (no overlap on pooling regions).
		pad : tuple of two ints or theano vector of ints of size 3
		    (pad_h, pad_w, pad_d), pad zeros to extend beyond six borders of the
		    images, pad_h is the size of the top and bottom margins,
		    pad_w is the size of the left and right margins, and pad_d is the size
		    of the front and back margins
		mode : {'max', 'sum', 'average_inc_pad', 'average_exc_pad'}
		    Operation executed on each window. `max` and `sum` always exclude
		    the padding in the computation. `average` gives you the choice to
		    include or exclude it.
		ds
		    *deprecated*, use parameter ws instead.
		st
		    *deprecated*, use parameter st instead.
		padding
		    *deprecated*, use parameter pad instead.
	**/
	static public function pool_3d(input:Dynamic, ?ws:Dynamic, ?ignore_border:Dynamic, ?stride:Dynamic, ?pad:Dynamic, ?mode:Dynamic, ?ds:Dynamic, ?st:Dynamic, ?padding:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}