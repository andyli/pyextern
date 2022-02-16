/* This file is generated, do not edit! */
package tensorflow.python.keras.applications.imagenet_utils;
@:pythonImport("tensorflow.python.keras.applications.imagenet_utils") extern class Imagenet_utils_Module {
	static public var CLASS_INDEX : Dynamic;
	static public var CLASS_INDEX_PATH : Dynamic;
	static public var PREPROCESS_INPUT_DEFAULT_ERROR_DOC : Dynamic;
	static public var PREPROCESS_INPUT_DOC : Dynamic;
	static public var PREPROCESS_INPUT_ERROR_DOC : Dynamic;
	static public var PREPROCESS_INPUT_MODE_DOC : Dynamic;
	static public var PREPROCESS_INPUT_RET_DOC_CAFFE : Dynamic;
	static public var PREPROCESS_INPUT_RET_DOC_TF : Dynamic;
	static public var PREPROCESS_INPUT_RET_DOC_TORCH : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Preprocesses a Numpy array encoding a batch of images.
		
		Args:
		  x: Input array, 3D or 4D.
		  data_format: Data format of the image array.
		  mode: One of "caffe", "tf" or "torch".
		    - caffe: will convert the images from RGB to BGR,
		        then will zero-center each color channel with
		        respect to the ImageNet dataset,
		        without scaling.
		    - tf: will scale pixels between -1 and 1,
		        sample-wise.
		    - torch: will scale pixels between 0 and 1 and then
		        will normalize each channel with respect to the
		        ImageNet dataset.
		
		Returns:
		    Preprocessed Numpy array.
	**/
	static public function _preprocess_numpy_input(x:Dynamic, data_format:Dynamic, mode:Dynamic):Dynamic;
	/**
		Preprocesses a tensor encoding a batch of images.
		
		Args:
		  x: Input tensor, 3D or 4D.
		  data_format: Data format of the image tensor.
		  mode: One of "caffe", "tf" or "torch".
		    - caffe: will convert the images from RGB to BGR,
		        then will zero-center each color channel with
		        respect to the ImageNet dataset,
		        without scaling.
		    - tf: will scale pixels between -1 and 1,
		        sample-wise.
		    - torch: will scale pixels between 0 and 1 and then
		        will normalize each channel with respect to the
		        ImageNet dataset.
		
		Returns:
		    Preprocessed tensor.
	**/
	static public function _preprocess_symbolic_input(x:Dynamic, data_format:Dynamic, mode:Dynamic):Dynamic;
	/**
		Returns a tuple for zero-padding for 2D convolution with downsampling.
		
		Args:
		  inputs: Input tensor.
		  kernel_size: An integer or tuple/list of 2 integers.
		
		Returns:
		  A tuple.
	**/
	static public function correct_pad(inputs:Dynamic, kernel_size:Dynamic):Dynamic;
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
	/**
		Internal utility to compute/validate a model's input shape.
		
		Args:
		  input_shape: Either None (will return the default network input shape),
		    or a user-provided shape to be validated.
		  default_size: Default input width/height for the model.
		  min_size: Minimum input width/height accepted by the model.
		  data_format: Image data format to use.
		  require_flatten: Whether the model is expected to
		    be linked to a classifier via a Flatten layer.
		  weights: One of `None` (random initialization)
		    or 'imagenet' (pre-training on ImageNet).
		    If weights='imagenet' input channels must be equal to 3.
		
		Returns:
		  An integer shape tuple (may include None entries).
		
		Raises:
		  ValueError: In case of invalid argument values.
	**/
	static public function obtain_input_shape(input_shape:Dynamic, default_size:Dynamic, min_size:Dynamic, data_format:Dynamic, require_flatten:Dynamic, ?weights:Dynamic):Dynamic;
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
		  mode: One of "caffe", "tf" or "torch". Defaults to "caffe".
		    - caffe: will convert the images from RGB to BGR,
		        then will zero-center each color channel with
		        respect to the ImageNet dataset,
		        without scaling.
		    - tf: will scale pixels between -1 and 1,
		        sample-wise.
		    - torch: will scale pixels between 0 and 1 and then
		        will normalize each channel with respect to the
		        ImageNet dataset.
		
		
		Returns:
		    Preprocessed `numpy.array` or a `tf.Tensor` with type `float32`.
		    
		
		Raises:
		    
		  ValueError: In case of unknown `mode` or `data_format` argument.
	**/
	static public function preprocess_input(x:Dynamic, ?data_format:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		validates that the classifer_activation is compatible with the weights.
		
		Args:
		  classifier_activation: str or callable activation function
		  weights: The pretrained weights to load.
		
		Raises:
		  ValueError: if an activation other than `None` or `softmax` are used with
		    pretrained weights.
	**/
	static public function validate_activation(classifier_activation:Dynamic, weights:Dynamic):Dynamic;
}