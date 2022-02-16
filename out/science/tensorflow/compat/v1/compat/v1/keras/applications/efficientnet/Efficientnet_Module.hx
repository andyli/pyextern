/* This file is generated, do not edit! */
package tensorflow.compat.v1.compat.v1.keras.applications.efficientnet;
@:pythonImport("tensorflow.compat.v1.compat.v1.keras.applications.efficientnet") extern class Efficientnet_Module {
	/**
		Instantiates the EfficientNetB0 architecture.
		
		Reference:
		- [EfficientNet: Rethinking Model Scaling for Convolutional Neural Networks](
		    https://arxiv.org/abs/1905.11946) (ICML 2019)
		
		This function returns a Keras image classification model,
		optionally loaded with weights pre-trained on ImageNet.
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For EfficientNet, input preprocessing is included as part of the model
		(as a `Rescaling` layer), and thus
		`tf.keras.applications.efficientnet.preprocess_input` is actually a
		pass-through function. EfficientNet models expect their inputs to be float
		tensors of pixels with values in the [0-255] range.
		
		Args:
		  include_top: Whether to include the fully-connected
		      layer at the top of the network. Defaults to True.
		  weights: One of `None` (random initialization),
		        'imagenet' (pre-training on ImageNet),
		        or the path to the weights file to be loaded. Defaults to 'imagenet'.
		  input_tensor: Optional Keras tensor
		      (i.e. output of `layers.Input()`)
		      to use as image input for the model.
		  input_shape: Optional shape tuple, only to be specified
		      if `include_top` is False.
		      It should have exactly 3 inputs channels.
		  pooling: Optional pooling mode for feature extraction
		      when `include_top` is `False`. Defaults to None.
		      - `None` means that the output of the model will be
		          the 4D tensor output of the
		          last convolutional layer.
		      - `avg` means that global average pooling
		          will be applied to the output of the
		          last convolutional layer, and thus
		          the output of the model will be a 2D tensor.
		      - `max` means that global max pooling will
		          be applied.
		  classes: Optional number of classes to classify images
		      into, only to be specified if `include_top` is True, and
		      if no `weights` argument is specified. Defaults to 1000 (number of
		      ImageNet classes).
		  classifier_activation: A `str` or callable. The activation function to use
		      on the "top" layer. Ignored unless `include_top=True`. Set
		      `classifier_activation=None` to return the logits of the "top" layer.
		      Defaults to 'softmax'.
		      When loading pretrained weights, `classifier_activation` can only
		      be `None` or `"softmax"`.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function EfficientNetB0(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Instantiates the EfficientNetB1 architecture.
		
		Reference:
		- [EfficientNet: Rethinking Model Scaling for Convolutional Neural Networks](
		    https://arxiv.org/abs/1905.11946) (ICML 2019)
		
		This function returns a Keras image classification model,
		optionally loaded with weights pre-trained on ImageNet.
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For EfficientNet, input preprocessing is included as part of the model
		(as a `Rescaling` layer), and thus
		`tf.keras.applications.efficientnet.preprocess_input` is actually a
		pass-through function. EfficientNet models expect their inputs to be float
		tensors of pixels with values in the [0-255] range.
		
		Args:
		  include_top: Whether to include the fully-connected
		      layer at the top of the network. Defaults to True.
		  weights: One of `None` (random initialization),
		        'imagenet' (pre-training on ImageNet),
		        or the path to the weights file to be loaded. Defaults to 'imagenet'.
		  input_tensor: Optional Keras tensor
		      (i.e. output of `layers.Input()`)
		      to use as image input for the model.
		  input_shape: Optional shape tuple, only to be specified
		      if `include_top` is False.
		      It should have exactly 3 inputs channels.
		  pooling: Optional pooling mode for feature extraction
		      when `include_top` is `False`. Defaults to None.
		      - `None` means that the output of the model will be
		          the 4D tensor output of the
		          last convolutional layer.
		      - `avg` means that global average pooling
		          will be applied to the output of the
		          last convolutional layer, and thus
		          the output of the model will be a 2D tensor.
		      - `max` means that global max pooling will
		          be applied.
		  classes: Optional number of classes to classify images
		      into, only to be specified if `include_top` is True, and
		      if no `weights` argument is specified. Defaults to 1000 (number of
		      ImageNet classes).
		  classifier_activation: A `str` or callable. The activation function to use
		      on the "top" layer. Ignored unless `include_top=True`. Set
		      `classifier_activation=None` to return the logits of the "top" layer.
		      Defaults to 'softmax'.
		      When loading pretrained weights, `classifier_activation` can only
		      be `None` or `"softmax"`.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function EfficientNetB1(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Instantiates the EfficientNetB2 architecture.
		
		Reference:
		- [EfficientNet: Rethinking Model Scaling for Convolutional Neural Networks](
		    https://arxiv.org/abs/1905.11946) (ICML 2019)
		
		This function returns a Keras image classification model,
		optionally loaded with weights pre-trained on ImageNet.
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For EfficientNet, input preprocessing is included as part of the model
		(as a `Rescaling` layer), and thus
		`tf.keras.applications.efficientnet.preprocess_input` is actually a
		pass-through function. EfficientNet models expect their inputs to be float
		tensors of pixels with values in the [0-255] range.
		
		Args:
		  include_top: Whether to include the fully-connected
		      layer at the top of the network. Defaults to True.
		  weights: One of `None` (random initialization),
		        'imagenet' (pre-training on ImageNet),
		        or the path to the weights file to be loaded. Defaults to 'imagenet'.
		  input_tensor: Optional Keras tensor
		      (i.e. output of `layers.Input()`)
		      to use as image input for the model.
		  input_shape: Optional shape tuple, only to be specified
		      if `include_top` is False.
		      It should have exactly 3 inputs channels.
		  pooling: Optional pooling mode for feature extraction
		      when `include_top` is `False`. Defaults to None.
		      - `None` means that the output of the model will be
		          the 4D tensor output of the
		          last convolutional layer.
		      - `avg` means that global average pooling
		          will be applied to the output of the
		          last convolutional layer, and thus
		          the output of the model will be a 2D tensor.
		      - `max` means that global max pooling will
		          be applied.
		  classes: Optional number of classes to classify images
		      into, only to be specified if `include_top` is True, and
		      if no `weights` argument is specified. Defaults to 1000 (number of
		      ImageNet classes).
		  classifier_activation: A `str` or callable. The activation function to use
		      on the "top" layer. Ignored unless `include_top=True`. Set
		      `classifier_activation=None` to return the logits of the "top" layer.
		      Defaults to 'softmax'.
		      When loading pretrained weights, `classifier_activation` can only
		      be `None` or `"softmax"`.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function EfficientNetB2(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Instantiates the EfficientNetB3 architecture.
		
		Reference:
		- [EfficientNet: Rethinking Model Scaling for Convolutional Neural Networks](
		    https://arxiv.org/abs/1905.11946) (ICML 2019)
		
		This function returns a Keras image classification model,
		optionally loaded with weights pre-trained on ImageNet.
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For EfficientNet, input preprocessing is included as part of the model
		(as a `Rescaling` layer), and thus
		`tf.keras.applications.efficientnet.preprocess_input` is actually a
		pass-through function. EfficientNet models expect their inputs to be float
		tensors of pixels with values in the [0-255] range.
		
		Args:
		  include_top: Whether to include the fully-connected
		      layer at the top of the network. Defaults to True.
		  weights: One of `None` (random initialization),
		        'imagenet' (pre-training on ImageNet),
		        or the path to the weights file to be loaded. Defaults to 'imagenet'.
		  input_tensor: Optional Keras tensor
		      (i.e. output of `layers.Input()`)
		      to use as image input for the model.
		  input_shape: Optional shape tuple, only to be specified
		      if `include_top` is False.
		      It should have exactly 3 inputs channels.
		  pooling: Optional pooling mode for feature extraction
		      when `include_top` is `False`. Defaults to None.
		      - `None` means that the output of the model will be
		          the 4D tensor output of the
		          last convolutional layer.
		      - `avg` means that global average pooling
		          will be applied to the output of the
		          last convolutional layer, and thus
		          the output of the model will be a 2D tensor.
		      - `max` means that global max pooling will
		          be applied.
		  classes: Optional number of classes to classify images
		      into, only to be specified if `include_top` is True, and
		      if no `weights` argument is specified. Defaults to 1000 (number of
		      ImageNet classes).
		  classifier_activation: A `str` or callable. The activation function to use
		      on the "top" layer. Ignored unless `include_top=True`. Set
		      `classifier_activation=None` to return the logits of the "top" layer.
		      Defaults to 'softmax'.
		      When loading pretrained weights, `classifier_activation` can only
		      be `None` or `"softmax"`.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function EfficientNetB3(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Instantiates the EfficientNetB4 architecture.
		
		Reference:
		- [EfficientNet: Rethinking Model Scaling for Convolutional Neural Networks](
		    https://arxiv.org/abs/1905.11946) (ICML 2019)
		
		This function returns a Keras image classification model,
		optionally loaded with weights pre-trained on ImageNet.
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For EfficientNet, input preprocessing is included as part of the model
		(as a `Rescaling` layer), and thus
		`tf.keras.applications.efficientnet.preprocess_input` is actually a
		pass-through function. EfficientNet models expect their inputs to be float
		tensors of pixels with values in the [0-255] range.
		
		Args:
		  include_top: Whether to include the fully-connected
		      layer at the top of the network. Defaults to True.
		  weights: One of `None` (random initialization),
		        'imagenet' (pre-training on ImageNet),
		        or the path to the weights file to be loaded. Defaults to 'imagenet'.
		  input_tensor: Optional Keras tensor
		      (i.e. output of `layers.Input()`)
		      to use as image input for the model.
		  input_shape: Optional shape tuple, only to be specified
		      if `include_top` is False.
		      It should have exactly 3 inputs channels.
		  pooling: Optional pooling mode for feature extraction
		      when `include_top` is `False`. Defaults to None.
		      - `None` means that the output of the model will be
		          the 4D tensor output of the
		          last convolutional layer.
		      - `avg` means that global average pooling
		          will be applied to the output of the
		          last convolutional layer, and thus
		          the output of the model will be a 2D tensor.
		      - `max` means that global max pooling will
		          be applied.
		  classes: Optional number of classes to classify images
		      into, only to be specified if `include_top` is True, and
		      if no `weights` argument is specified. Defaults to 1000 (number of
		      ImageNet classes).
		  classifier_activation: A `str` or callable. The activation function to use
		      on the "top" layer. Ignored unless `include_top=True`. Set
		      `classifier_activation=None` to return the logits of the "top" layer.
		      Defaults to 'softmax'.
		      When loading pretrained weights, `classifier_activation` can only
		      be `None` or `"softmax"`.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function EfficientNetB4(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Instantiates the EfficientNetB5 architecture.
		
		Reference:
		- [EfficientNet: Rethinking Model Scaling for Convolutional Neural Networks](
		    https://arxiv.org/abs/1905.11946) (ICML 2019)
		
		This function returns a Keras image classification model,
		optionally loaded with weights pre-trained on ImageNet.
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For EfficientNet, input preprocessing is included as part of the model
		(as a `Rescaling` layer), and thus
		`tf.keras.applications.efficientnet.preprocess_input` is actually a
		pass-through function. EfficientNet models expect their inputs to be float
		tensors of pixels with values in the [0-255] range.
		
		Args:
		  include_top: Whether to include the fully-connected
		      layer at the top of the network. Defaults to True.
		  weights: One of `None` (random initialization),
		        'imagenet' (pre-training on ImageNet),
		        or the path to the weights file to be loaded. Defaults to 'imagenet'.
		  input_tensor: Optional Keras tensor
		      (i.e. output of `layers.Input()`)
		      to use as image input for the model.
		  input_shape: Optional shape tuple, only to be specified
		      if `include_top` is False.
		      It should have exactly 3 inputs channels.
		  pooling: Optional pooling mode for feature extraction
		      when `include_top` is `False`. Defaults to None.
		      - `None` means that the output of the model will be
		          the 4D tensor output of the
		          last convolutional layer.
		      - `avg` means that global average pooling
		          will be applied to the output of the
		          last convolutional layer, and thus
		          the output of the model will be a 2D tensor.
		      - `max` means that global max pooling will
		          be applied.
		  classes: Optional number of classes to classify images
		      into, only to be specified if `include_top` is True, and
		      if no `weights` argument is specified. Defaults to 1000 (number of
		      ImageNet classes).
		  classifier_activation: A `str` or callable. The activation function to use
		      on the "top" layer. Ignored unless `include_top=True`. Set
		      `classifier_activation=None` to return the logits of the "top" layer.
		      Defaults to 'softmax'.
		      When loading pretrained weights, `classifier_activation` can only
		      be `None` or `"softmax"`.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function EfficientNetB5(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Instantiates the EfficientNetB6 architecture.
		
		Reference:
		- [EfficientNet: Rethinking Model Scaling for Convolutional Neural Networks](
		    https://arxiv.org/abs/1905.11946) (ICML 2019)
		
		This function returns a Keras image classification model,
		optionally loaded with weights pre-trained on ImageNet.
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For EfficientNet, input preprocessing is included as part of the model
		(as a `Rescaling` layer), and thus
		`tf.keras.applications.efficientnet.preprocess_input` is actually a
		pass-through function. EfficientNet models expect their inputs to be float
		tensors of pixels with values in the [0-255] range.
		
		Args:
		  include_top: Whether to include the fully-connected
		      layer at the top of the network. Defaults to True.
		  weights: One of `None` (random initialization),
		        'imagenet' (pre-training on ImageNet),
		        or the path to the weights file to be loaded. Defaults to 'imagenet'.
		  input_tensor: Optional Keras tensor
		      (i.e. output of `layers.Input()`)
		      to use as image input for the model.
		  input_shape: Optional shape tuple, only to be specified
		      if `include_top` is False.
		      It should have exactly 3 inputs channels.
		  pooling: Optional pooling mode for feature extraction
		      when `include_top` is `False`. Defaults to None.
		      - `None` means that the output of the model will be
		          the 4D tensor output of the
		          last convolutional layer.
		      - `avg` means that global average pooling
		          will be applied to the output of the
		          last convolutional layer, and thus
		          the output of the model will be a 2D tensor.
		      - `max` means that global max pooling will
		          be applied.
		  classes: Optional number of classes to classify images
		      into, only to be specified if `include_top` is True, and
		      if no `weights` argument is specified. Defaults to 1000 (number of
		      ImageNet classes).
		  classifier_activation: A `str` or callable. The activation function to use
		      on the "top" layer. Ignored unless `include_top=True`. Set
		      `classifier_activation=None` to return the logits of the "top" layer.
		      Defaults to 'softmax'.
		      When loading pretrained weights, `classifier_activation` can only
		      be `None` or `"softmax"`.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function EfficientNetB6(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Instantiates the EfficientNetB7 architecture.
		
		Reference:
		- [EfficientNet: Rethinking Model Scaling for Convolutional Neural Networks](
		    https://arxiv.org/abs/1905.11946) (ICML 2019)
		
		This function returns a Keras image classification model,
		optionally loaded with weights pre-trained on ImageNet.
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For EfficientNet, input preprocessing is included as part of the model
		(as a `Rescaling` layer), and thus
		`tf.keras.applications.efficientnet.preprocess_input` is actually a
		pass-through function. EfficientNet models expect their inputs to be float
		tensors of pixels with values in the [0-255] range.
		
		Args:
		  include_top: Whether to include the fully-connected
		      layer at the top of the network. Defaults to True.
		  weights: One of `None` (random initialization),
		        'imagenet' (pre-training on ImageNet),
		        or the path to the weights file to be loaded. Defaults to 'imagenet'.
		  input_tensor: Optional Keras tensor
		      (i.e. output of `layers.Input()`)
		      to use as image input for the model.
		  input_shape: Optional shape tuple, only to be specified
		      if `include_top` is False.
		      It should have exactly 3 inputs channels.
		  pooling: Optional pooling mode for feature extraction
		      when `include_top` is `False`. Defaults to None.
		      - `None` means that the output of the model will be
		          the 4D tensor output of the
		          last convolutional layer.
		      - `avg` means that global average pooling
		          will be applied to the output of the
		          last convolutional layer, and thus
		          the output of the model will be a 2D tensor.
		      - `max` means that global max pooling will
		          be applied.
		  classes: Optional number of classes to classify images
		      into, only to be specified if `include_top` is True, and
		      if no `weights` argument is specified. Defaults to 1000 (number of
		      ImageNet classes).
		  classifier_activation: A `str` or callable. The activation function to use
		      on the "top" layer. Ignored unless `include_top=True`. Set
		      `classifier_activation=None` to return the logits of the "top" layer.
		      Defaults to 'softmax'.
		      When loading pretrained weights, `classifier_activation` can only
		      be `None` or `"softmax"`.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function EfficientNetB7(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		A placeholder method for backward compatibility.
		
		The preprocessing logic has been included in the efficientnet model
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
}