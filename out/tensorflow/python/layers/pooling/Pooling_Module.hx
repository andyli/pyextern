/* This file is generated, do not edit! */
package tensorflow.python.layers.pooling;
@:pythonImport("tensorflow.python.layers.pooling") extern class Pooling_Module {
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
		Average Pooling layer for 1D inputs.
		
		Arguments:
		  inputs: The tensor over which to pool. Must have rank 3.
		  pool_size: An integer or tuple/list of a single integer,
		    representing the size of the pooling window.
		  strides: An integer or tuple/list of a single integer, specifying the
		    strides of the pooling operation.
		  padding: A string. The padding method, either 'valid' or 'same'.
		    Case-insensitive.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, length, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, length)`.
		  name: A string, the name of the layer.
		
		Returns:
		  The output tensor, of rank 3.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function average_pooling1d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Average pooling layer for 2D inputs (e.g. images).
		
		Arguments:
		  inputs: The tensor over which to pool. Must have rank 4.
		  pool_size: An integer or tuple/list of 2 integers: (pool_height, pool_width)
		    specifying the size of the pooling window.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  strides: An integer or tuple/list of 2 integers,
		    specifying the strides of the pooling operation.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: A string. The padding method, either 'valid' or 'same'.
		    Case-insensitive.
		  data_format: A string. The ordering of the dimensions in the inputs.
		    `channels_last` (default) and `channels_first` are supported.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		  name: A string, the name of the layer.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function average_pooling2d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Average pooling layer for 3D inputs (e.g. volumes).
		
		Arguments:
		  inputs: The tensor over which to pool. Must have rank 5.
		  pool_size: An integer or tuple/list of 3 integers:
		    (pool_depth, pool_height, pool_width)
		    specifying the size of the pooling window.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  strides: An integer or tuple/list of 3 integers,
		    specifying the strides of the pooling operation.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: A string. The padding method, either 'valid' or 'same'.
		    Case-insensitive.
		  data_format: A string. The ordering of the dimensions in the inputs.
		    `channels_last` (default) and `channels_first` are supported.
		    `channels_last` corresponds to inputs with shape
		    `(batch, depth, height, width, channels)` while `channels_first`
		    corresponds to inputs with shape
		    `(batch, channels, depth, height, width)`.
		  name: A string, the name of the layer.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function average_pooling3d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Average pooling layer for 2D inputs (e.g. images).
		
		Arguments:
		  inputs: The tensor over which to pool. Must have rank 4.
		  pool_size: An integer or tuple/list of 2 integers: (pool_height, pool_width)
		    specifying the size of the pooling window.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  strides: An integer or tuple/list of 2 integers,
		    specifying the strides of the pooling operation.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: A string. The padding method, either 'valid' or 'same'.
		    Case-insensitive.
		  data_format: A string. The ordering of the dimensions in the inputs.
		    `channels_last` (default) and `channels_first` are supported.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		  name: A string, the name of the layer.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function avg_pool2d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Max pooling layer for 2D inputs (e.g. images).
		
		Arguments:
		  inputs: The tensor over which to pool. Must have rank 4.
		  pool_size: An integer or tuple/list of 2 integers: (pool_height, pool_width)
		    specifying the size of the pooling window.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  strides: An integer or tuple/list of 2 integers,
		    specifying the strides of the pooling operation.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: A string. The padding method, either 'valid' or 'same'.
		    Case-insensitive.
		  data_format: A string. The ordering of the dimensions in the inputs.
		    `channels_last` (default) and `channels_first` are supported.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		  name: A string, the name of the layer.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function max_pool2d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Max Pooling layer for 1D inputs.
		
		Arguments:
		  inputs: The tensor over which to pool. Must have rank 3.
		  pool_size: An integer or tuple/list of a single integer,
		    representing the size of the pooling window.
		  strides: An integer or tuple/list of a single integer, specifying the
		    strides of the pooling operation.
		  padding: A string. The padding method, either 'valid' or 'same'.
		    Case-insensitive.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, length, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, length)`.
		  name: A string, the name of the layer.
		
		Returns:
		  The output tensor, of rank 3.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function max_pooling1d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Max pooling layer for 2D inputs (e.g. images).
		
		Arguments:
		  inputs: The tensor over which to pool. Must have rank 4.
		  pool_size: An integer or tuple/list of 2 integers: (pool_height, pool_width)
		    specifying the size of the pooling window.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  strides: An integer or tuple/list of 2 integers,
		    specifying the strides of the pooling operation.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: A string. The padding method, either 'valid' or 'same'.
		    Case-insensitive.
		  data_format: A string. The ordering of the dimensions in the inputs.
		    `channels_last` (default) and `channels_first` are supported.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		  name: A string, the name of the layer.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function max_pooling2d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Max pooling layer for 3D inputs (e.g. volumes).
		
		Arguments:
		  inputs: The tensor over which to pool. Must have rank 5.
		  pool_size: An integer or tuple/list of 3 integers:
		    (pool_depth, pool_height, pool_width)
		    specifying the size of the pooling window.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  strides: An integer or tuple/list of 3 integers,
		    specifying the strides of the pooling operation.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: A string. The padding method, either 'valid' or 'same'.
		    Case-insensitive.
		  data_format: A string. The ordering of the dimensions in the inputs.
		    `channels_last` (default) and `channels_first` are supported.
		    `channels_last` corresponds to inputs with shape
		    `(batch, depth, height, width, channels)` while `channels_first`
		    corresponds to inputs with shape
		    `(batch, channels, depth, height, width)`.
		  name: A string, the name of the layer.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function max_pooling3d(inputs:Dynamic, pool_size:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}