/* This file is generated, do not edit! */
package tensorflow.python.keras.applications.mobilenet_v3;
@:pythonImport("tensorflow.python.keras.applications.mobilenet_v3") extern class Mobilenet_v3_Module {
	static public var BASE_DOCSTRING : Dynamic;
	static public var BASE_WEIGHT_PATH : Dynamic;
	static public function MobileNetV3(stack_fn:Dynamic, last_point_ch:Dynamic, ?input_shape:Dynamic, ?alpha:Dynamic, ?model_type:Dynamic, ?minimalistic:Dynamic, ?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?classes:Dynamic, ?pooling:Dynamic, ?dropout_rate:Dynamic, ?classifier_activation:Dynamic, ?include_preprocessing:Dynamic):Dynamic;
	/**
		Instantiates the MobileNetV3Large architecture.
		
		Reference:
		- [Searching for MobileNetV3](
		    https://arxiv.org/pdf/1905.02244.pdf) (ICCV 2019)
		
		The following table describes the performance of MobileNets v3:
		------------------------------------------------------------------------
		MACs stands for Multiply Adds
		
		|Classification Checkpoint|MACs(M)|Parameters(M)|Top1 Accuracy|Pixel1 CPU(ms)|
		|---|---|---|---|---|
		| mobilenet_v3_large_1.0_224              | 217 | 5.4 |   75.6   |   51.2  |
		| mobilenet_v3_large_0.75_224             | 155 | 4.0 |   73.3   |   39.8  |
		| mobilenet_v3_large_minimalistic_1.0_224 | 209 | 3.9 |   72.3   |   44.1  |
		| mobilenet_v3_small_1.0_224              | 66  | 2.9 |   68.1   |   15.8  |
		| mobilenet_v3_small_0.75_224             | 44  | 2.4 |   65.4   |   12.8  |
		| mobilenet_v3_small_minimalistic_1.0_224 | 65  | 2.0 |   61.9   |   12.2  |
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For ModelNetV3, by default input preprocessing is included as a part of the
		model (as a `Rescaling` layer), and thus
		`tf.keras.applications.mobilenet_v3.preprocess_input` is actually a
		pass-through function. In this use case, ModelNetV3 models expect their inputs
		to be float tensors of pixels with values in the [0-255] range.
		At the same time, preprocessing as a part of the model (i.e. `Rescaling`
		layer) can be disabled by setting `include_preprocessing` argument to False.
		With preprocessing disabled ModelNetV3 models expect their inputs to be float
		tensors of pixels with values in the [-1, 1] range.
		
		Args:
		  input_shape: Optional shape tuple, to be specified if you would
		    like to use a model with an input image resolution that is not
		    (224, 224, 3).
		    It should have exactly 3 inputs channels (224, 224, 3).
		    You can also omit this option if you would like
		    to infer input_shape from an input_tensor.
		    If you choose to include both input_tensor and input_shape then
		    input_shape will be used if they match, if the shapes
		    do not match then we will throw an error.
		    E.g. `(160, 160, 3)` would be one valid value.
		  alpha: controls the width of the network. This is known as the
		    depth multiplier in the MobileNetV3 paper, but the name is kept for
		    consistency with MobileNetV1 in Keras.
		    - If `alpha` < 1.0, proportionally decreases the number
		        of filters in each layer.
		    - If `alpha` > 1.0, proportionally increases the number
		        of filters in each layer.
		    - If `alpha` = 1, default number of filters from the paper
		        are used at each layer.
		  minimalistic: In addition to large and small models this module also
		    contains so-called minimalistic models, these models have the same
		    per-layer dimensions characteristic as MobilenetV3 however, they don't
		    utilize any of the advanced blocks (squeeze-and-excite units, hard-swish,
		    and 5x5 convolutions). While these models are less efficient on CPU, they
		    are much more performant on GPU/DSP.
		  include_top: Boolean, whether to include the fully-connected
		    layer at the top of the network. Defaults to `True`.
		  weights: String, one of `None` (random initialization),
		    'imagenet' (pre-training on ImageNet),
		    or the path to the weights file to be loaded.
		  input_tensor: Optional Keras tensor (i.e. output of
		    `layers.Input()`)
		    to use as image input for the model.
		  pooling: String, optional pooling mode for feature extraction
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
		  classes: Integer, optional number of classes to classify images
		    into, only to be specified if `include_top` is True, and
		    if no `weights` argument is specified.
		  dropout_rate: fraction of the input units to drop on the last layer.
		  classifier_activation: A `str` or callable. The activation function to use
		    on the "top" layer. Ignored unless `include_top=True`. Set
		    `classifier_activation=None` to return the logits of the "top" layer.
		    When loading pretrained weights, `classifier_activation` can only
		    be `None` or `"softmax"`.
		  include_preprocessing: Boolean, whether to include the preprocessing
		    layer (`Rescaling`) at the bottom of the network. Defaults to `True`.
		
		Call arguments:
		  inputs: A floating point `numpy.array` or a `tf.Tensor`, 4D with 3 color
		    channels, with values in the range [0, 255] if `include_preprocessing`
		    is True and in the range [-1, 1] otherwise.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function MobileNetV3Large(?input_shape:Dynamic, ?alpha:Dynamic, ?minimalistic:Dynamic, ?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?classes:Dynamic, ?pooling:Dynamic, ?dropout_rate:Dynamic, ?classifier_activation:Dynamic, ?include_preprocessing:Dynamic):Dynamic;
	/**
		Instantiates the MobileNetV3Small architecture.
		
		Reference:
		- [Searching for MobileNetV3](
		    https://arxiv.org/pdf/1905.02244.pdf) (ICCV 2019)
		
		The following table describes the performance of MobileNets v3:
		------------------------------------------------------------------------
		MACs stands for Multiply Adds
		
		|Classification Checkpoint|MACs(M)|Parameters(M)|Top1 Accuracy|Pixel1 CPU(ms)|
		|---|---|---|---|---|
		| mobilenet_v3_large_1.0_224              | 217 | 5.4 |   75.6   |   51.2  |
		| mobilenet_v3_large_0.75_224             | 155 | 4.0 |   73.3   |   39.8  |
		| mobilenet_v3_large_minimalistic_1.0_224 | 209 | 3.9 |   72.3   |   44.1  |
		| mobilenet_v3_small_1.0_224              | 66  | 2.9 |   68.1   |   15.8  |
		| mobilenet_v3_small_0.75_224             | 44  | 2.4 |   65.4   |   12.8  |
		| mobilenet_v3_small_minimalistic_1.0_224 | 65  | 2.0 |   61.9   |   12.2  |
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For ModelNetV3, by default input preprocessing is included as a part of the
		model (as a `Rescaling` layer), and thus
		`tf.keras.applications.mobilenet_v3.preprocess_input` is actually a
		pass-through function. In this use case, ModelNetV3 models expect their inputs
		to be float tensors of pixels with values in the [0-255] range.
		At the same time, preprocessing as a part of the model (i.e. `Rescaling`
		layer) can be disabled by setting `include_preprocessing` argument to False.
		With preprocessing disabled ModelNetV3 models expect their inputs to be float
		tensors of pixels with values in the [-1, 1] range.
		
		Args:
		  input_shape: Optional shape tuple, to be specified if you would
		    like to use a model with an input image resolution that is not
		    (224, 224, 3).
		    It should have exactly 3 inputs channels (224, 224, 3).
		    You can also omit this option if you would like
		    to infer input_shape from an input_tensor.
		    If you choose to include both input_tensor and input_shape then
		    input_shape will be used if they match, if the shapes
		    do not match then we will throw an error.
		    E.g. `(160, 160, 3)` would be one valid value.
		  alpha: controls the width of the network. This is known as the
		    depth multiplier in the MobileNetV3 paper, but the name is kept for
		    consistency with MobileNetV1 in Keras.
		    - If `alpha` < 1.0, proportionally decreases the number
		        of filters in each layer.
		    - If `alpha` > 1.0, proportionally increases the number
		        of filters in each layer.
		    - If `alpha` = 1, default number of filters from the paper
		        are used at each layer.
		  minimalistic: In addition to large and small models this module also
		    contains so-called minimalistic models, these models have the same
		    per-layer dimensions characteristic as MobilenetV3 however, they don't
		    utilize any of the advanced blocks (squeeze-and-excite units, hard-swish,
		    and 5x5 convolutions). While these models are less efficient on CPU, they
		    are much more performant on GPU/DSP.
		  include_top: Boolean, whether to include the fully-connected
		    layer at the top of the network. Defaults to `True`.
		  weights: String, one of `None` (random initialization),
		    'imagenet' (pre-training on ImageNet),
		    or the path to the weights file to be loaded.
		  input_tensor: Optional Keras tensor (i.e. output of
		    `layers.Input()`)
		    to use as image input for the model.
		  pooling: String, optional pooling mode for feature extraction
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
		  classes: Integer, optional number of classes to classify images
		    into, only to be specified if `include_top` is True, and
		    if no `weights` argument is specified.
		  dropout_rate: fraction of the input units to drop on the last layer.
		  classifier_activation: A `str` or callable. The activation function to use
		    on the "top" layer. Ignored unless `include_top=True`. Set
		    `classifier_activation=None` to return the logits of the "top" layer.
		    When loading pretrained weights, `classifier_activation` can only
		    be `None` or `"softmax"`.
		  include_preprocessing: Boolean, whether to include the preprocessing
		    layer (`Rescaling`) at the bottom of the network. Defaults to `True`.
		
		Call arguments:
		  inputs: A floating point `numpy.array` or a `tf.Tensor`, 4D with 3 color
		    channels, with values in the range [0, 255] if `include_preprocessing`
		    is True and in the range [-1, 1] otherwise.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function MobileNetV3Small(?input_shape:Dynamic, ?alpha:Dynamic, ?minimalistic:Dynamic, ?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?classes:Dynamic, ?pooling:Dynamic, ?dropout_rate:Dynamic, ?classifier_activation:Dynamic, ?include_preprocessing:Dynamic):Dynamic;
	static public var WEIGHTS_HASHES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _depth(v:Dynamic, ?divisor:Dynamic, ?min_value:Dynamic):Dynamic;
	static public function _inverted_res_block(x:Dynamic, expansion:Dynamic, filters:Dynamic, kernel_size:Dynamic, stride:Dynamic, se_ratio:Dynamic, activation:Dynamic, block_id:Dynamic):Dynamic;
	static public function _se_block(inputs:Dynamic, filters:Dynamic, se_ratio:Dynamic, prefix:Dynamic):Dynamic;
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
	static public function hard_sigmoid(x:Dynamic):Dynamic;
	static public function hard_swish(x:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var layers : Dynamic;
	/**
		A placeholder method for backward compatibility.
		
		The preprocessing logic has been included in the mobilenet_v3 model
		implementation. Users are no longer required to call this method to normalize
		the input data. This method does nothing and only kept as a placeholder to
		align the API surface between old and new version of model.
		
		Args:
		  x: A floating point `numpy.array` or a `tf.Tensor`.
		  data_format: Optional data format of the image tensor/array. Defaults to
		    None, in which case the global setting
		    `tf.keras.backend.image_data_format()` is used (unless you changed it,
		    it defaults to "channels_last").{mode}
		
		Returns:
		  Unchanged `numpy.array` or `tf.Tensor`.
	**/
	static public function preprocess_input(x:Dynamic, ?data_format:Dynamic):Dynamic;
	static public function relu(x:Dynamic):Dynamic;
}