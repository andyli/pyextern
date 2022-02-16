/* This file is generated, do not edit! */
package tensorflow.python.keras.applications.mobilenet;
@:pythonImport("tensorflow.python.keras.applications.mobilenet") extern class Mobilenet_Module {
	static public var BASE_WEIGHT_PATH : Dynamic;
	/**
		Instantiates the MobileNet architecture.
		
		Reference:
		- [MobileNets: Efficient Convolutional Neural Networks
		   for Mobile Vision Applications](
		    https://arxiv.org/abs/1704.04861)
		
		This function returns a Keras image classification model,
		optionally loaded with weights pre-trained on ImageNet.
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For MobileNet, call `tf.keras.applications.mobilenet.preprocess_input`
		on your inputs before passing them to the model.
		`mobilenet.preprocess_input` will scale input pixels between -1 and 1.
		
		Args:
		  input_shape: Optional shape tuple, only to be specified if `include_top`
		    is False (otherwise the input shape has to be `(224, 224, 3)` (with
		    `channels_last` data format) or (3, 224, 224) (with `channels_first`
		    data format). It should have exactly 3 inputs channels, and width and
		    height should be no smaller than 32. E.g. `(200, 200, 3)` would be one
		    valid value. Default to `None`.
		    `input_shape` will be ignored if the `input_tensor` is provided.
		  alpha: Controls the width of the network. This is known as the width
		    multiplier in the MobileNet paper. - If `alpha` < 1.0, proportionally
		    decreases the number of filters in each layer. - If `alpha` > 1.0,
		    proportionally increases the number of filters in each layer. - If
		    `alpha` = 1, default number of filters from the paper are used at each
		    layer. Default to 1.0.
		  depth_multiplier: Depth multiplier for depthwise convolution. This is
		    called the resolution multiplier in the MobileNet paper. Default to 1.0.
		  dropout: Dropout rate. Default to 0.001.
		  include_top: Boolean, whether to include the fully-connected layer at the
		    top of the network. Default to `True`.
		  weights: One of `None` (random initialization), 'imagenet' (pre-training
		    on ImageNet), or the path to the weights file to be loaded. Default to
		    `imagenet`.
		  input_tensor: Optional Keras tensor (i.e. output of `layers.Input()`) to
		    use as image input for the model. `input_tensor` is useful for sharing
		    inputs between multiple different networks. Default to None.
		  pooling: Optional pooling mode for feature extraction when `include_top`
		    is `False`.
		    - `None` (default) means that the output of the model will be
		        the 4D tensor output of the last convolutional block.
		    - `avg` means that global average pooling
		        will be applied to the output of the
		        last convolutional block, and thus
		        the output of the model will be a 2D tensor.
		    - `max` means that global max pooling will be applied.
		  classes: Optional number of classes to classify images into, only to be
		    specified if `include_top` is True, and if no `weights` argument is
		    specified. Defaults to 1000.
		  classifier_activation: A `str` or callable. The activation function to use
		    on the "top" layer. Ignored unless `include_top=True`. Set
		    `classifier_activation=None` to return the logits of the "top" layer.
		    When loading pretrained weights, `classifier_activation` can only
		    be `None` or `"softmax"`.
		  **kwargs: For backwards compatibility only.
		Returns:
		  A `keras.Model` instance.
	**/
	static public function MobileNet(?input_shape:Dynamic, ?alpha:Dynamic, ?depth_multiplier:Dynamic, ?dropout:Dynamic, ?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adds an initial convolution layer (with batch normalization and relu6).
		
		Args:
		  inputs: Input tensor of shape `(rows, cols, 3)` (with `channels_last`
		    data format) or (3, rows, cols) (with `channels_first` data format).
		    It should have exactly 3 inputs channels, and width and height should
		    be no smaller than 32. E.g. `(224, 224, 3)` would be one valid value.
		  filters: Integer, the dimensionality of the output space (i.e. the
		    number of output filters in the convolution).
		  alpha: controls the width of the network. - If `alpha` < 1.0,
		    proportionally decreases the number of filters in each layer. - If
		    `alpha` > 1.0, proportionally increases the number of filters in each
		    layer. - If `alpha` = 1, default number of filters from the paper are
		    used at each layer.
		  kernel: An integer or tuple/list of 2 integers, specifying the width and
		    height of the 2D convolution window. Can be a single integer to
		    specify the same value for all spatial dimensions.
		  strides: An integer or tuple/list of 2 integers, specifying the strides
		    of the convolution along the width and height. Can be a single integer
		    to specify the same value for all spatial dimensions. Specifying any
		    stride value != 1 is incompatible with specifying any `dilation_rate`
		    value != 1. # Input shape
		  4D tensor with shape: `(samples, channels, rows, cols)` if
		    data_format='channels_first'
		  or 4D tensor with shape: `(samples, rows, cols, channels)` if
		    data_format='channels_last'. # Output shape
		  4D tensor with shape: `(samples, filters, new_rows, new_cols)` if
		    data_format='channels_first'
		  or 4D tensor with shape: `(samples, new_rows, new_cols, filters)` if
		    data_format='channels_last'. `rows` and `cols` values might have
		    changed due to stride.
		
		Returns:
		  Output tensor of block.
	**/
	static public function _conv_block(inputs:Dynamic, filters:Dynamic, alpha:Dynamic, ?kernel:Dynamic, ?strides:Dynamic):Dynamic;
	/**
		Adds a depthwise convolution block.
		
		A depthwise convolution block consists of a depthwise conv,
		batch normalization, relu6, pointwise convolution,
		batch normalization and relu6 activation.
		
		Args:
		  inputs: Input tensor of shape `(rows, cols, channels)` (with
		    `channels_last` data format) or (channels, rows, cols) (with
		    `channels_first` data format).
		  pointwise_conv_filters: Integer, the dimensionality of the output space
		    (i.e. the number of output filters in the pointwise convolution).
		  alpha: controls the width of the network. - If `alpha` < 1.0,
		    proportionally decreases the number of filters in each layer. - If
		    `alpha` > 1.0, proportionally increases the number of filters in each
		    layer. - If `alpha` = 1, default number of filters from the paper are
		    used at each layer.
		  depth_multiplier: The number of depthwise convolution output channels
		    for each input channel. The total number of depthwise convolution
		    output channels will be equal to `filters_in * depth_multiplier`.
		  strides: An integer or tuple/list of 2 integers, specifying the strides
		    of the convolution along the width and height. Can be a single integer
		    to specify the same value for all spatial dimensions. Specifying any
		    stride value != 1 is incompatible with specifying any `dilation_rate`
		    value != 1.
		  block_id: Integer, a unique identification designating the block number.
		    # Input shape
		  4D tensor with shape: `(batch, channels, rows, cols)` if
		    data_format='channels_first'
		  or 4D tensor with shape: `(batch, rows, cols, channels)` if
		    data_format='channels_last'. # Output shape
		  4D tensor with shape: `(batch, filters, new_rows, new_cols)` if
		    data_format='channels_first'
		  or 4D tensor with shape: `(batch, new_rows, new_cols, filters)` if
		    data_format='channels_last'. `rows` and `cols` values might have
		    changed due to stride.
		
		Returns:
		  Output tensor of block.
	**/
	static public function _depthwise_conv_block(inputs:Dynamic, pointwise_conv_filters:Dynamic, alpha:Dynamic, ?depth_multiplier:Dynamic, ?strides:Dynamic, ?block_id:Dynamic):Dynamic;
	/**
		Decodes the prediction of an ImageNet model.
		
		Args:
		  preds: Numpy array encoding a batch of predictions.
		  top: Integer, how many top-guesses to return. Defaults to 5.
		
		Returns:
		  A list of lists of top class prediction tuples
		  `(class_name, class_description, score)`.
		  One list of tuples per sample in batch input.
		
		Raises:
		  ValueError: In case of invalid shape of the `pred` array
		    (must be 2D).
	**/
	static public function decode_predictions(preds:Dynamic, ?top:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var layers : Dynamic;
	/**
		Preprocesses a tensor or Numpy array encoding a batch of images.
		
		Usage example with `applications.MobileNet`:
		
		```python
		i = tf.keras.layers.Input([None, None, 3], dtype = tf.uint8)
		x = tf.cast(i, tf.float32)
		x = tf.keras.applications.mobilenet.preprocess_input(x)
		core = tf.keras.applications.MobileNet()
		x = core(x)
		model = tf.keras.Model(inputs=[i], outputs=[x])
		
		image = tf.image.decode_png(tf.io.read_file('file.png'))
		result = model(image)
		```
		
		Args:
		  x: A floating point `numpy.array` or a `tf.Tensor`, 3D or 4D with 3 color
		    channels, with values in the range [0, 255].
		    The preprocessed data are written over the input data
		    if the data types are compatible. To avoid this
		    behaviour, `numpy.copy(x)` can be used.
		  data_format: Optional data format of the image tensor/array. Defaults to
		    None, in which case the global setting
		    `tf.keras.backend.image_data_format()` is used (unless you changed it,
		    it defaults to "channels_last").
		
		Returns:
		    Preprocessed `numpy.array` or a `tf.Tensor` with type `float32`.
		    
		    The inputs pixel values are scaled between -1 and 1, sample-wise.
		
		Raises:
		    
		  ValueError: In case of unknown `data_format` argument.
	**/
	static public function preprocess_input(x:Dynamic, ?data_format:Dynamic):Dynamic;
}