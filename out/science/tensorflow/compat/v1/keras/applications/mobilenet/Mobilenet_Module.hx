/* This file is generated, do not edit! */
package tensorflow.compat.v1.keras.applications.mobilenet;
@:pythonImport("tensorflow.compat.v1.keras.applications.mobilenet") extern class Mobilenet_Module {
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
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
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