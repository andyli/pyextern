/* This file is generated, do not edit! */
package tensorflow.python.keras.applications.nasnet;
@:pythonImport("tensorflow.python.keras.applications.nasnet") extern class Nasnet_Module {
	static public var BASE_WEIGHTS_PATH : Dynamic;
	static public var NASNET_LARGE_WEIGHT_PATH : Dynamic;
	static public var NASNET_LARGE_WEIGHT_PATH_NO_TOP : Dynamic;
	static public var NASNET_MOBILE_WEIGHT_PATH : Dynamic;
	static public var NASNET_MOBILE_WEIGHT_PATH_NO_TOP : Dynamic;
	/**
		Instantiates a NASNet model.
		
		Reference:
		- [Learning Transferable Architectures for Scalable Image Recognition](
		    https://arxiv.org/abs/1707.07012) (CVPR 2018)
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For NasNet, call `tf.keras.applications.nasnet.preprocess_input`
		on your inputs before passing them to the model.
		`nasnet.preprocess_input` will scale input pixels between -1 and 1.
		
		Args:
		  input_shape: Optional shape tuple, the input shape
		    is by default `(331, 331, 3)` for NASNetLarge and
		    `(224, 224, 3)` for NASNetMobile.
		    It should have exactly 3 input channels,
		    and width and height should be no smaller than 32.
		    E.g. `(224, 224, 3)` would be one valid value.
		  penultimate_filters: Number of filters in the penultimate layer.
		    NASNet models use the notation `NASNet (N @ P)`, where:
		        -   N is the number of blocks
		        -   P is the number of penultimate filters
		  num_blocks: Number of repeated blocks of the NASNet model.
		    NASNet models use the notation `NASNet (N @ P)`, where:
		        -   N is the number of blocks
		        -   P is the number of penultimate filters
		  stem_block_filters: Number of filters in the initial stem block
		  skip_reduction: Whether to skip the reduction step at the tail
		    end of the network.
		  filter_multiplier: Controls the width of the network.
		    - If `filter_multiplier` < 1.0, proportionally decreases the number
		        of filters in each layer.
		    - If `filter_multiplier` > 1.0, proportionally increases the number
		        of filters in each layer.
		    - If `filter_multiplier` = 1, default number of filters from the
		         paper are used at each layer.
		  include_top: Whether to include the fully-connected
		    layer at the top of the network.
		  weights: `None` (random initialization) or
		      `imagenet` (ImageNet weights)
		  input_tensor: Optional Keras tensor (i.e. output of
		    `layers.Input()`)
		    to use as image input for the model.
		  pooling: Optional pooling mode for feature extraction
		    when `include_top` is `False`.
		    - `None` means that the output of the model
		        will be the 4D tensor output of the
		        last convolutional block.
		    - `avg` means that global average pooling
		        will be applied to the output of the
		        last convolutional block, and thus
		        the output of the model will be a
		        2D tensor.
		    - `max` means that global max pooling will
		        be applied.
		  classes: Optional number of classes to classify images
		    into, only to be specified if `include_top` is True, and
		    if no `weights` argument is specified.
		  default_size: Specifies the default image size of the model
		  classifier_activation: A `str` or callable. The activation function to use
		    on the "top" layer. Ignored unless `include_top=True`. Set
		    `classifier_activation=None` to return the logits of the "top" layer.
		    When loading pretrained weights, `classifier_activation` can only
		    be `None` or `"softmax"`.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function NASNet(?input_shape:Dynamic, ?penultimate_filters:Dynamic, ?num_blocks:Dynamic, ?stem_block_filters:Dynamic, ?skip_reduction:Dynamic, ?filter_multiplier:Dynamic, ?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?default_size:Dynamic, ?classifier_activation:Dynamic):Dynamic;
	/**
		Instantiates a NASNet model in ImageNet mode.
		
		Reference:
		- [Learning Transferable Architectures for Scalable Image Recognition](
		    https://arxiv.org/abs/1707.07012) (CVPR 2018)
		
		Optionally loads weights pre-trained on ImageNet.
		Note that the data format convention used by the model is
		the one specified in your Keras config at `~/.keras/keras.json`.
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For NASNet, call `tf.keras.applications.nasnet.preprocess_input` on your
		inputs before passing them to the model.
		
		Args:
		    input_shape: Optional shape tuple, only to be specified
		        if `include_top` is False (otherwise the input shape
		        has to be `(331, 331, 3)` for NASNetLarge.
		        It should have exactly 3 inputs channels,
		        and width and height should be no smaller than 32.
		        E.g. `(224, 224, 3)` would be one valid value.
		    include_top: Whether to include the fully-connected
		        layer at the top of the network.
		    weights: `None` (random initialization) or
		        `imagenet` (ImageNet weights)
		        For loading `imagenet` weights, `input_shape` should be (331, 331, 3)
		    input_tensor: Optional Keras tensor (i.e. output of
		        `layers.Input()`)
		        to use as image input for the model.
		    pooling: Optional pooling mode for feature extraction
		        when `include_top` is `False`.
		        - `None` means that the output of the model
		            will be the 4D tensor output of the
		            last convolutional layer.
		        - `avg` means that global average pooling
		            will be applied to the output of the
		            last convolutional layer, and thus
		            the output of the model will be a
		            2D tensor.
		        - `max` means that global max pooling will
		            be applied.
		    classes: Optional number of classes to classify images
		        into, only to be specified if `include_top` is True, and
		        if no `weights` argument is specified.
		
		Returns:
		    A Keras model instance.
		
		Raises:
		    ValueError: in case of invalid argument for `weights`,
		        or invalid input shape.
		    RuntimeError: If attempting to run this model with a
		        backend that does not support separable convolutions.
	**/
	static public function NASNetLarge(?input_shape:Dynamic, ?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?pooling:Dynamic, ?classes:Dynamic):Dynamic;
	/**
		Instantiates a Mobile NASNet model in ImageNet mode.
		
		Reference:
		- [Learning Transferable Architectures for Scalable Image Recognition](
		    https://arxiv.org/abs/1707.07012) (CVPR 2018)
		
		Optionally loads weights pre-trained on ImageNet.
		Note that the data format convention used by the model is
		the one specified in your Keras config at `~/.keras/keras.json`.
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For NASNet, call `tf.keras.applications.nasnet.preprocess_input` on your
		inputs before passing them to the model.
		
		Args:
		    input_shape: Optional shape tuple, only to be specified
		        if `include_top` is False (otherwise the input shape
		        has to be `(224, 224, 3)` for NASNetMobile
		        It should have exactly 3 inputs channels,
		        and width and height should be no smaller than 32.
		        E.g. `(224, 224, 3)` would be one valid value.
		    include_top: Whether to include the fully-connected
		        layer at the top of the network.
		    weights: `None` (random initialization) or
		        `imagenet` (ImageNet weights)
		        For loading `imagenet` weights, `input_shape` should be (224, 224, 3)
		    input_tensor: Optional Keras tensor (i.e. output of
		        `layers.Input()`)
		        to use as image input for the model.
		    pooling: Optional pooling mode for feature extraction
		        when `include_top` is `False`.
		        - `None` means that the output of the model
		            will be the 4D tensor output of the
		            last convolutional layer.
		        - `avg` means that global average pooling
		            will be applied to the output of the
		            last convolutional layer, and thus
		            the output of the model will be a
		            2D tensor.
		        - `max` means that global max pooling will
		            be applied.
		    classes: Optional number of classes to classify images
		        into, only to be specified if `include_top` is True, and
		        if no `weights` argument is specified.
		
		Returns:
		    A Keras model instance.
		
		Raises:
		    ValueError: In case of invalid argument for `weights`,
		        or invalid input shape.
		    RuntimeError: If attempting to run this model with a
		        backend that does not support separable convolutions.
	**/
	static public function NASNetMobile(?input_shape:Dynamic, ?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?pooling:Dynamic, ?classes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adjusts the input `previous path` to match the shape of the `input`.
		
		Used in situations where the output number of filters needs to be changed.
		
		Args:
		    p: Input tensor which needs to be modified
		    ip: Input tensor whose shape needs to be matched
		    filters: Number of output filters to be matched
		    block_id: String block_id
		
		Returns:
		    Adjusted Keras tensor
	**/
	static public function _adjust_block(p:Dynamic, ip:Dynamic, filters:Dynamic, ?block_id:Dynamic):Dynamic;
	/**
		Adds a Normal cell for NASNet-A (Fig. 4 in the paper).
		
		Args:
		    ip: Input tensor `x`
		    p: Input tensor `p`
		    filters: Number of output filters
		    block_id: String block_id
		
		Returns:
		    A Keras tensor
	**/
	static public function _normal_a_cell(ip:Dynamic, p:Dynamic, filters:Dynamic, ?block_id:Dynamic):Dynamic;
	/**
		Adds a Reduction cell for NASNet-A (Fig. 4 in the paper).
		
		Args:
		  ip: Input tensor `x`
		  p: Input tensor `p`
		  filters: Number of output filters
		  block_id: String block_id
		
		Returns:
		  A Keras tensor
	**/
	static public function _reduction_a_cell(ip:Dynamic, p:Dynamic, filters:Dynamic, ?block_id:Dynamic):Dynamic;
	/**
		Adds 2 blocks of [relu-separable conv-batchnorm].
		
		Args:
		    ip: Input tensor
		    filters: Number of output filters per layer
		    kernel_size: Kernel size of separable convolutions
		    strides: Strided convolution for downsampling
		    block_id: String block_id
		
		Returns:
		    A Keras tensor
	**/
	static public function _separable_conv_block(ip:Dynamic, filters:Dynamic, ?kernel_size:Dynamic, ?strides:Dynamic, ?block_id:Dynamic):Dynamic;
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