/* This file is generated, do not edit! */
package tensorflow.python.layers.convolutional;
@:pythonImport("tensorflow.python.layers.convolutional") extern class Convolutional_Module {
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
		Functional interface for 1D convolution layer (e.g. temporal convolution).
		
		This layer creates a convolution kernel that is convolved
		(actually cross-correlated) with the layer input to produce a tensor of
		outputs. If `use_bias` is True (and a `bias_initializer` is provided),
		a bias vector is created and added to the outputs. Finally, if
		`activation` is not `None`, it is applied to the outputs as well.
		
		Args:
		  inputs: Tensor input.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: An integer or tuple/list of a single integer, specifying the
		    length of the 1D convolution window.
		  strides: An integer or tuple/list of a single integer,
		    specifying the stride length of the convolution.
		    Specifying any stride value != 1 is incompatible with specifying
		    any `dilation_rate` value != 1.
		  padding: One of `"valid"` or `"same"` (case-insensitive).
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, length, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, length)`.
		  dilation_rate: An integer or tuple/list of a single integer, specifying
		    the dilation rate to use for dilated convolution.
		    Currently, specifying any `dilation_rate` value != 1 is
		    incompatible with specifying any `strides` value != 1.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function conv1d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for the 2D convolution layer.
		
		This layer creates a convolution kernel that is convolved
		(actually cross-correlated) with the layer input to produce a tensor of
		outputs. If `use_bias` is True (and a `bias_initializer` is provided),
		a bias vector is created and added to the outputs. Finally, if
		`activation` is not `None`, it is applied to the outputs as well.
		
		Args:
		  inputs: Tensor input.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: An integer or tuple/list of 2 integers, specifying the
		    height and width of the 2D convolution window.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  strides: An integer or tuple/list of 2 integers,
		    specifying the strides of the convolution along the height and width.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Specifying any stride value != 1 is incompatible with specifying
		    any `dilation_rate` value != 1.
		  padding: One of `"valid"` or `"same"` (case-insensitive).
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		
		  dilation_rate: An integer or tuple/list of 2 integers, specifying
		    the dilation rate to use for dilated convolution.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Currently, specifying any `dilation_rate` value != 1 is
		    incompatible with specifying any stride value != 1.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function conv2d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for transposed 2D convolution layer.
		
		The need for transposed convolutions generally arises
		from the desire to use a transformation going in the opposite direction
		of a normal convolution, i.e., from something that has the shape of the
		output of some convolution to something that has the shape of its input
		while maintaining a connectivity pattern that is compatible with
		said convolution.
		
		Args:
		  inputs: Input tensor.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: A tuple or list of 2 positive integers specifying the spatial
		    dimensions of the filters. Can be a single integer to specify the same
		    value for all spatial dimensions.
		  strides: A tuple or list of 2 positive integers specifying the strides
		    of the convolution. Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: one of `"valid"` or `"same"` (case-insensitive).
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		  activation: Activation function. Set it to `None` to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If `None`, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function conv2d_transpose(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for the 3D convolution layer.
		
		This layer creates a convolution kernel that is convolved
		(actually cross-correlated) with the layer input to produce a tensor of
		outputs. If `use_bias` is True (and a `bias_initializer` is provided),
		a bias vector is created and added to the outputs. Finally, if
		`activation` is not `None`, it is applied to the outputs as well.
		
		Args:
		  inputs: Tensor input.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: An integer or tuple/list of 3 integers, specifying the
		    depth, height and width of the 3D convolution window.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  strides: An integer or tuple/list of 3 integers,
		    specifying the strides of the convolution along the depth,
		    height and width.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Specifying any stride value != 1 is incompatible with specifying
		    any `dilation_rate` value != 1.
		  padding: One of `"valid"` or `"same"` (case-insensitive).
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, depth, height, width, channels)` while `channels_first`
		    corresponds to inputs with shape
		    `(batch, channels, depth, height, width)`.
		  dilation_rate: An integer or tuple/list of 3 integers, specifying
		    the dilation rate to use for dilated convolution.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Currently, specifying any `dilation_rate` value != 1 is
		    incompatible with specifying any stride value != 1.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function conv3d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for transposed 3D convolution layer.
		
		Args:
		  inputs: Input tensor.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: A tuple or list of 3 positive integers specifying the spatial
		    dimensions of the filters. Can be a single integer to specify the same
		    value for all spatial dimensions.
		  strides: A tuple or list of 3 positive integers specifying the strides
		    of the convolution. Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: one of `"valid"` or `"same"` (case-insensitive).
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, depth, height, width, channels)` while `channels_first`
		    corresponds to inputs with shape
		    `(batch, channels, depth, height, width)`.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function conv3d_transpose(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for 1D convolution layer (e.g. temporal convolution).
		
		This layer creates a convolution kernel that is convolved
		(actually cross-correlated) with the layer input to produce a tensor of
		outputs. If `use_bias` is True (and a `bias_initializer` is provided),
		a bias vector is created and added to the outputs. Finally, if
		`activation` is not `None`, it is applied to the outputs as well.
		
		Args:
		  inputs: Tensor input.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: An integer or tuple/list of a single integer, specifying the
		    length of the 1D convolution window.
		  strides: An integer or tuple/list of a single integer,
		    specifying the stride length of the convolution.
		    Specifying any stride value != 1 is incompatible with specifying
		    any `dilation_rate` value != 1.
		  padding: One of `"valid"` or `"same"` (case-insensitive).
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, length, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, length)`.
		  dilation_rate: An integer or tuple/list of a single integer, specifying
		    the dilation rate to use for dilated convolution.
		    Currently, specifying any `dilation_rate` value != 1 is
		    incompatible with specifying any `strides` value != 1.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function convolution1d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for the 2D convolution layer.
		
		This layer creates a convolution kernel that is convolved
		(actually cross-correlated) with the layer input to produce a tensor of
		outputs. If `use_bias` is True (and a `bias_initializer` is provided),
		a bias vector is created and added to the outputs. Finally, if
		`activation` is not `None`, it is applied to the outputs as well.
		
		Args:
		  inputs: Tensor input.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: An integer or tuple/list of 2 integers, specifying the
		    height and width of the 2D convolution window.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  strides: An integer or tuple/list of 2 integers,
		    specifying the strides of the convolution along the height and width.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Specifying any stride value != 1 is incompatible with specifying
		    any `dilation_rate` value != 1.
		  padding: One of `"valid"` or `"same"` (case-insensitive).
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		
		  dilation_rate: An integer or tuple/list of 2 integers, specifying
		    the dilation rate to use for dilated convolution.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Currently, specifying any `dilation_rate` value != 1 is
		    incompatible with specifying any stride value != 1.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function convolution2d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for transposed 2D convolution layer.
		
		The need for transposed convolutions generally arises
		from the desire to use a transformation going in the opposite direction
		of a normal convolution, i.e., from something that has the shape of the
		output of some convolution to something that has the shape of its input
		while maintaining a connectivity pattern that is compatible with
		said convolution.
		
		Args:
		  inputs: Input tensor.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: A tuple or list of 2 positive integers specifying the spatial
		    dimensions of the filters. Can be a single integer to specify the same
		    value for all spatial dimensions.
		  strides: A tuple or list of 2 positive integers specifying the strides
		    of the convolution. Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: one of `"valid"` or `"same"` (case-insensitive).
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		  activation: Activation function. Set it to `None` to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If `None`, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function convolution2d_transpose(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for the 3D convolution layer.
		
		This layer creates a convolution kernel that is convolved
		(actually cross-correlated) with the layer input to produce a tensor of
		outputs. If `use_bias` is True (and a `bias_initializer` is provided),
		a bias vector is created and added to the outputs. Finally, if
		`activation` is not `None`, it is applied to the outputs as well.
		
		Args:
		  inputs: Tensor input.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: An integer or tuple/list of 3 integers, specifying the
		    depth, height and width of the 3D convolution window.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		  strides: An integer or tuple/list of 3 integers,
		    specifying the strides of the convolution along the depth,
		    height and width.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Specifying any stride value != 1 is incompatible with specifying
		    any `dilation_rate` value != 1.
		  padding: One of `"valid"` or `"same"` (case-insensitive).
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, depth, height, width, channels)` while `channels_first`
		    corresponds to inputs with shape
		    `(batch, channels, depth, height, width)`.
		  dilation_rate: An integer or tuple/list of 3 integers, specifying
		    the dilation rate to use for dilated convolution.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Currently, specifying any `dilation_rate` value != 1 is
		    incompatible with specifying any stride value != 1.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function convolution3d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for transposed 3D convolution layer.
		
		Args:
		  inputs: Input tensor.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: A tuple or list of 3 positive integers specifying the spatial
		    dimensions of the filters. Can be a single integer to specify the same
		    value for all spatial dimensions.
		  strides: A tuple or list of 3 positive integers specifying the strides
		    of the convolution. Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: one of `"valid"` or `"same"` (case-insensitive).
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, depth, height, width, channels)` while `channels_first`
		    corresponds to inputs with shape
		    `(batch, channels, depth, height, width)`.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function convolution3d_transpose(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for transposed 2D convolution layer.
		
		The need for transposed convolutions generally arises
		from the desire to use a transformation going in the opposite direction
		of a normal convolution, i.e., from something that has the shape of the
		output of some convolution to something that has the shape of its input
		while maintaining a connectivity pattern that is compatible with
		said convolution.
		
		Args:
		  inputs: Input tensor.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: A tuple or list of 2 positive integers specifying the spatial
		    dimensions of the filters. Can be a single integer to specify the same
		    value for all spatial dimensions.
		  strides: A tuple or list of 2 positive integers specifying the strides
		    of the convolution. Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: one of `"valid"` or `"same"` (case-insensitive).
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		  activation: Activation function. Set it to `None` to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If `None`, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function deconv2d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for transposed 3D convolution layer.
		
		Args:
		  inputs: Input tensor.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: A tuple or list of 3 positive integers specifying the spatial
		    dimensions of the filters. Can be a single integer to specify the same
		    value for all spatial dimensions.
		  strides: A tuple or list of 3 positive integers specifying the strides
		    of the convolution. Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: one of `"valid"` or `"same"` (case-insensitive).
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, depth, height, width, channels)` while `channels_first`
		    corresponds to inputs with shape
		    `(batch, channels, depth, height, width)`.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function deconv3d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for transposed 2D convolution layer.
		
		The need for transposed convolutions generally arises
		from the desire to use a transformation going in the opposite direction
		of a normal convolution, i.e., from something that has the shape of the
		output of some convolution to something that has the shape of its input
		while maintaining a connectivity pattern that is compatible with
		said convolution.
		
		Args:
		  inputs: Input tensor.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: A tuple or list of 2 positive integers specifying the spatial
		    dimensions of the filters. Can be a single integer to specify the same
		    value for all spatial dimensions.
		  strides: A tuple or list of 2 positive integers specifying the strides
		    of the convolution. Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: one of `"valid"` or `"same"` (case-insensitive).
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		  activation: Activation function. Set it to `None` to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If `None`, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function deconvolution2d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for transposed 3D convolution layer.
		
		Args:
		  inputs: Input tensor.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: A tuple or list of 3 positive integers specifying the spatial
		    dimensions of the filters. Can be a single integer to specify the same
		    value for all spatial dimensions.
		  strides: A tuple or list of 3 positive integers specifying the strides
		    of the convolution. Can be a single integer to specify the same value for
		    all spatial dimensions.
		  padding: one of `"valid"` or `"same"` (case-insensitive).
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, depth, height, width, channels)` while `channels_first`
		    corresponds to inputs with shape
		    `(batch, channels, depth, height, width)`.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  kernel_initializer: An initializer for the convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  kernel_regularizer: Optional regularizer for the convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  kernel_constraint: Optional projection function to be applied to the
		      kernel after being updated by an `Optimizer` (e.g. used to implement
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function deconvolution3d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?kernel_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Functional interface for the depthwise separable 1D convolution layer.
		
		This layer performs a depthwise convolution that acts separately on
		channels, followed by a pointwise convolution that mixes channels.
		If `use_bias` is True and a bias initializer is provided,
		it adds a bias vector to the output.
		It then optionally applies an activation function to produce the final output.
		
		Args:
		  inputs: Input tensor.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: A single integer specifying the spatial
		    dimensions of the filters.
		  strides: A single integer specifying the strides
		    of the convolution.
		    Specifying any `stride` value != 1 is incompatible with specifying
		    any `dilation_rate` value != 1.
		  padding: One of `"valid"` or `"same"` (case-insensitive).
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, length, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, length)`.
		  dilation_rate: A single integer, specifying
		    the dilation rate to use for dilated convolution.
		    Currently, specifying any `dilation_rate` value != 1 is
		    incompatible with specifying any stride value != 1.
		  depth_multiplier: The number of depthwise convolution output channels for
		    each input channel. The total number of depthwise convolution output
		    channels will be equal to `num_filters_in * depth_multiplier`.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  depthwise_initializer: An initializer for the depthwise convolution kernel.
		  pointwise_initializer: An initializer for the pointwise convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  depthwise_regularizer: Optional regularizer for the depthwise
		    convolution kernel.
		  pointwise_regularizer: Optional regularizer for the pointwise
		    convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  depthwise_constraint: Optional projection function to be applied to the
		      depthwise kernel after being updated by an `Optimizer` (e.g. used for
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  pointwise_constraint: Optional projection function to be applied to the
		      pointwise kernel after being updated by an `Optimizer`.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function separable_conv1d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?depth_multiplier:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?depthwise_initializer:Dynamic, ?pointwise_initializer:Dynamic, ?bias_initializer:Dynamic, ?depthwise_regularizer:Dynamic, ?pointwise_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?depthwise_constraint:Dynamic, ?pointwise_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for the depthwise separable 2D convolution layer.
		
		This layer performs a depthwise convolution that acts separately on
		channels, followed by a pointwise convolution that mixes channels.
		If `use_bias` is True and a bias initializer is provided,
		it adds a bias vector to the output.
		It then optionally applies an activation function to produce the final output.
		
		Args:
		  inputs: Input tensor.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: A tuple or list of 2 integers specifying the spatial
		    dimensions of the filters. Can be a single integer to specify the same
		    value for all spatial dimensions.
		  strides: A tuple or list of 2 positive integers specifying the strides
		    of the convolution. Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Specifying any `stride` value != 1 is incompatible with specifying
		    any `dilation_rate` value != 1.
		  padding: One of `"valid"` or `"same"` (case-insensitive).
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		
		  dilation_rate: An integer or tuple/list of 2 integers, specifying
		    the dilation rate to use for dilated convolution.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Currently, specifying any `dilation_rate` value != 1 is
		    incompatible with specifying any stride value != 1.
		  depth_multiplier: The number of depthwise convolution output channels for
		    each input channel. The total number of depthwise convolution output
		    channels will be equal to `num_filters_in * depth_multiplier`.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  depthwise_initializer: An initializer for the depthwise convolution kernel.
		  pointwise_initializer: An initializer for the pointwise convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  depthwise_regularizer: Optional regularizer for the depthwise
		    convolution kernel.
		  pointwise_regularizer: Optional regularizer for the pointwise
		    convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  depthwise_constraint: Optional projection function to be applied to the
		      depthwise kernel after being updated by an `Optimizer` (e.g. used for
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  pointwise_constraint: Optional projection function to be applied to the
		      pointwise kernel after being updated by an `Optimizer`.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function separable_conv2d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?depth_multiplier:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?depthwise_initializer:Dynamic, ?pointwise_initializer:Dynamic, ?bias_initializer:Dynamic, ?depthwise_regularizer:Dynamic, ?pointwise_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?depthwise_constraint:Dynamic, ?pointwise_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Functional interface for the depthwise separable 2D convolution layer.
		
		This layer performs a depthwise convolution that acts separately on
		channels, followed by a pointwise convolution that mixes channels.
		If `use_bias` is True and a bias initializer is provided,
		it adds a bias vector to the output.
		It then optionally applies an activation function to produce the final output.
		
		Args:
		  inputs: Input tensor.
		  filters: Integer, the dimensionality of the output space (i.e. the number
		    of filters in the convolution).
		  kernel_size: A tuple or list of 2 integers specifying the spatial
		    dimensions of the filters. Can be a single integer to specify the same
		    value for all spatial dimensions.
		  strides: A tuple or list of 2 positive integers specifying the strides
		    of the convolution. Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Specifying any `stride` value != 1 is incompatible with specifying
		    any `dilation_rate` value != 1.
		  padding: One of `"valid"` or `"same"` (case-insensitive).
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input.
		  data_format: A string, one of `channels_last` (default) or `channels_first`.
		    The ordering of the dimensions in the inputs.
		    `channels_last` corresponds to inputs with shape
		    `(batch, height, width, channels)` while `channels_first` corresponds to
		    inputs with shape `(batch, channels, height, width)`.
		
		  dilation_rate: An integer or tuple/list of 2 integers, specifying
		    the dilation rate to use for dilated convolution.
		    Can be a single integer to specify the same value for
		    all spatial dimensions.
		    Currently, specifying any `dilation_rate` value != 1 is
		    incompatible with specifying any stride value != 1.
		  depth_multiplier: The number of depthwise convolution output channels for
		    each input channel. The total number of depthwise convolution output
		    channels will be equal to `num_filters_in * depth_multiplier`.
		  activation: Activation function. Set it to None to maintain a
		    linear activation.
		  use_bias: Boolean, whether the layer uses a bias.
		  depthwise_initializer: An initializer for the depthwise convolution kernel.
		  pointwise_initializer: An initializer for the pointwise convolution kernel.
		  bias_initializer: An initializer for the bias vector. If None, the default
		    initializer will be used.
		  depthwise_regularizer: Optional regularizer for the depthwise
		    convolution kernel.
		  pointwise_regularizer: Optional regularizer for the pointwise
		    convolution kernel.
		  bias_regularizer: Optional regularizer for the bias vector.
		  activity_regularizer: Optional regularizer function for the output.
		  depthwise_constraint: Optional projection function to be applied to the
		      depthwise kernel after being updated by an `Optimizer` (e.g. used for
		      norm constraints or value constraints for layer weights). The function
		      must take as input the unprojected variable and must return the
		      projected variable (which must have the same shape). Constraints are
		      not safe to use when doing asynchronous distributed training.
		  pointwise_constraint: Optional projection function to be applied to the
		      pointwise kernel after being updated by an `Optimizer`.
		  bias_constraint: Optional projection function to be applied to the
		      bias after being updated by an `Optimizer`.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: A string, the name of the layer.
		  reuse: Boolean, whether to reuse the weights of a previous layer
		    by the same name.
		
		Returns:
		  Output tensor.
		
		Raises:
		  ValueError: if eager execution is enabled.
	**/
	static public function separable_convolution2d(inputs:Dynamic, filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?depth_multiplier:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?depthwise_initializer:Dynamic, ?pointwise_initializer:Dynamic, ?bias_initializer:Dynamic, ?depthwise_regularizer:Dynamic, ?pointwise_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?depthwise_constraint:Dynamic, ?pointwise_constraint:Dynamic, ?bias_constraint:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
}