/* This file is generated, do not edit! */
package tensorflow.compat.v1.compat.v1.keras.applications;
@:pythonImport("tensorflow.compat.v1.compat.v1.keras.applications") extern class Applications_Module {
	/**
		Instantiates the Densenet121 architecture.
		
		Reference:
		- [Densely Connected Convolutional Networks](
		    https://arxiv.org/abs/1608.06993) (CVPR 2017)
		
		Optionally loads weights pre-trained on ImageNet.
		Note that the data format convention used by the model is
		the one specified in your Keras config at `~/.keras/keras.json`.
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For DenseNet, call `tf.keras.applications.densenet.preprocess_input` on your
		inputs before passing them to the model.
		
		Args:
		  include_top: whether to include the fully-connected
		    layer at the top of the network.
		  weights: one of `None` (random initialization),
		    'imagenet' (pre-training on ImageNet),
		    or the path to the weights file to be loaded.
		  input_tensor: optional Keras tensor (i.e. output of `layers.Input()`)
		    to use as image input for the model.
		  input_shape: optional shape tuple, only to be specified
		    if `include_top` is False (otherwise the input shape
		    has to be `(224, 224, 3)` (with `'channels_last'` data format)
		    or `(3, 224, 224)` (with `'channels_first'` data format).
		    It should have exactly 3 inputs channels,
		    and width and height should be no smaller than 32.
		    E.g. `(200, 200, 3)` would be one valid value.
		  pooling: Optional pooling mode for feature extraction
		    when `include_top` is `False`.
		    - `None` means that the output of the model will be
		        the 4D tensor output of the
		        last convolutional block.
		    - `avg` means that global average pooling
		        will be applied to the output of the
		        last convolutional block, and thus
		        the output of the model will be a 2D tensor.
		    - `max` means that global max pooling will
		        be applied.
		  classes: optional number of classes to classify images
		    into, only to be specified if `include_top` is True, and
		    if no `weights` argument is specified.
		
		Returns:
		  A Keras model instance.
	**/
	static public function DenseNet121(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic):Dynamic;
	/**
		Instantiates the Densenet169 architecture.
		
		Reference:
		- [Densely Connected Convolutional Networks](
		    https://arxiv.org/abs/1608.06993) (CVPR 2017)
		
		Optionally loads weights pre-trained on ImageNet.
		Note that the data format convention used by the model is
		the one specified in your Keras config at `~/.keras/keras.json`.
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For DenseNet, call `tf.keras.applications.densenet.preprocess_input` on your
		inputs before passing them to the model.
		
		Args:
		  include_top: whether to include the fully-connected
		    layer at the top of the network.
		  weights: one of `None` (random initialization),
		    'imagenet' (pre-training on ImageNet),
		    or the path to the weights file to be loaded.
		  input_tensor: optional Keras tensor (i.e. output of `layers.Input()`)
		    to use as image input for the model.
		  input_shape: optional shape tuple, only to be specified
		    if `include_top` is False (otherwise the input shape
		    has to be `(224, 224, 3)` (with `'channels_last'` data format)
		    or `(3, 224, 224)` (with `'channels_first'` data format).
		    It should have exactly 3 inputs channels,
		    and width and height should be no smaller than 32.
		    E.g. `(200, 200, 3)` would be one valid value.
		  pooling: Optional pooling mode for feature extraction
		    when `include_top` is `False`.
		    - `None` means that the output of the model will be
		        the 4D tensor output of the
		        last convolutional block.
		    - `avg` means that global average pooling
		        will be applied to the output of the
		        last convolutional block, and thus
		        the output of the model will be a 2D tensor.
		    - `max` means that global max pooling will
		        be applied.
		  classes: optional number of classes to classify images
		    into, only to be specified if `include_top` is True, and
		    if no `weights` argument is specified.
		
		Returns:
		  A Keras model instance.
	**/
	static public function DenseNet169(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic):Dynamic;
	/**
		Instantiates the Densenet201 architecture.
		
		Reference:
		- [Densely Connected Convolutional Networks](
		    https://arxiv.org/abs/1608.06993) (CVPR 2017)
		
		Optionally loads weights pre-trained on ImageNet.
		Note that the data format convention used by the model is
		the one specified in your Keras config at `~/.keras/keras.json`.
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For DenseNet, call `tf.keras.applications.densenet.preprocess_input` on your
		inputs before passing them to the model.
		
		Args:
		  include_top: whether to include the fully-connected
		    layer at the top of the network.
		  weights: one of `None` (random initialization),
		    'imagenet' (pre-training on ImageNet),
		    or the path to the weights file to be loaded.
		  input_tensor: optional Keras tensor (i.e. output of `layers.Input()`)
		    to use as image input for the model.
		  input_shape: optional shape tuple, only to be specified
		    if `include_top` is False (otherwise the input shape
		    has to be `(224, 224, 3)` (with `'channels_last'` data format)
		    or `(3, 224, 224)` (with `'channels_first'` data format).
		    It should have exactly 3 inputs channels,
		    and width and height should be no smaller than 32.
		    E.g. `(200, 200, 3)` would be one valid value.
		  pooling: Optional pooling mode for feature extraction
		    when `include_top` is `False`.
		    - `None` means that the output of the model will be
		        the 4D tensor output of the
		        last convolutional block.
		    - `avg` means that global average pooling
		        will be applied to the output of the
		        last convolutional block, and thus
		        the output of the model will be a 2D tensor.
		    - `max` means that global max pooling will
		        be applied.
		  classes: optional number of classes to classify images
		    into, only to be specified if `include_top` is True, and
		    if no `weights` argument is specified.
		
		Returns:
		  A Keras model instance.
	**/
	static public function DenseNet201(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic):Dynamic;
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
	/**
		Instantiates the Inception-ResNet v2 architecture.
		
		Reference:
		- [Inception-v4, Inception-ResNet and the Impact of
		   Residual Connections on Learning](https://arxiv.org/abs/1602.07261)
		  (AAAI 2017)
		
		This function returns a Keras image classification model,
		optionally loaded with weights pre-trained on ImageNet.
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For InceptionResNetV2, call
		`tf.keras.applications.inception_resnet_v2.preprocess_input`
		on your inputs before passing them to the model.
		`inception_resnet_v2.preprocess_input`
		will scale input pixels between -1 and 1.
		
		Args:
		  include_top: whether to include the fully-connected
		    layer at the top of the network.
		  weights: one of `None` (random initialization),
		    'imagenet' (pre-training on ImageNet),
		    or the path to the weights file to be loaded.
		  input_tensor: optional Keras tensor (i.e. output of `layers.Input()`)
		    to use as image input for the model.
		  input_shape: optional shape tuple, only to be specified
		    if `include_top` is `False` (otherwise the input shape
		    has to be `(299, 299, 3)` (with `'channels_last'` data format)
		    or `(3, 299, 299)` (with `'channels_first'` data format).
		    It should have exactly 3 inputs channels,
		    and width and height should be no smaller than 75.
		    E.g. `(150, 150, 3)` would be one valid value.
		  pooling: Optional pooling mode for feature extraction
		    when `include_top` is `False`.
		    - `None` means that the output of the model will be
		        the 4D tensor output of the last convolutional block.
		    - `'avg'` means that global average pooling
		        will be applied to the output of the
		        last convolutional block, and thus
		        the output of the model will be a 2D tensor.
		    - `'max'` means that global max pooling will be applied.
		  classes: optional number of classes to classify images
		    into, only to be specified if `include_top` is `True`, and
		    if no `weights` argument is specified.
		  classifier_activation: A `str` or callable. The activation function to use
		    on the "top" layer. Ignored unless `include_top=True`. Set
		    `classifier_activation=None` to return the logits of the "top" layer.
		    When loading pretrained weights, `classifier_activation` can only
		    be `None` or `"softmax"`.
		  **kwargs: For backwards compatibility only.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function InceptionResNetV2(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Instantiates the Inception v3 architecture.
		
		Reference:
		- [Rethinking the Inception Architecture for Computer Vision](
		    http://arxiv.org/abs/1512.00567) (CVPR 2016)
		
		This function returns a Keras image classification model,
		optionally loaded with weights pre-trained on ImageNet.
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For `InceptionV3`, call `tf.keras.applications.inception_v3.preprocess_input`
		on your inputs before passing them to the model.
		`inception_v3.preprocess_input` will scale input pixels between -1 and 1.
		
		Args:
		  include_top: Boolean, whether to include the fully-connected
		    layer at the top, as the last layer of the network. Default to `True`.
		  weights: One of `None` (random initialization),
		    `imagenet` (pre-training on ImageNet),
		    or the path to the weights file to be loaded. Default to `imagenet`.
		  input_tensor: Optional Keras tensor (i.e. output of `layers.Input()`)
		    to use as image input for the model. `input_tensor` is useful for sharing
		    inputs between multiple different networks. Default to None.
		  input_shape: Optional shape tuple, only to be specified
		    if `include_top` is False (otherwise the input shape
		    has to be `(299, 299, 3)` (with `channels_last` data format)
		    or `(3, 299, 299)` (with `channels_first` data format).
		    It should have exactly 3 inputs channels,
		    and width and height should be no smaller than 75.
		    E.g. `(150, 150, 3)` would be one valid value.
		    `input_shape` will be ignored if the `input_tensor` is provided.
		  pooling: Optional pooling mode for feature extraction
		    when `include_top` is `False`.
		    - `None` (default) means that the output of the model will be
		        the 4D tensor output of the last convolutional block.
		    - `avg` means that global average pooling
		        will be applied to the output of the
		        last convolutional block, and thus
		        the output of the model will be a 2D tensor.
		    - `max` means that global max pooling will be applied.
		  classes: optional number of classes to classify images
		    into, only to be specified if `include_top` is True, and
		    if no `weights` argument is specified. Default to 1000.
		  classifier_activation: A `str` or callable. The activation function to use
		    on the "top" layer. Ignored unless `include_top=True`. Set
		    `classifier_activation=None` to return the logits of the "top" layer.
		    When loading pretrained weights, `classifier_activation` can only
		    be `None` or `"softmax"`.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function InceptionV3(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic):Dynamic;
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
	/**
		Instantiates the MobileNetV2 architecture.
		
		MobileNetV2 is very similar to the original MobileNet,
		except that it uses inverted residual blocks with
		bottlenecking features. It has a drastically lower
		parameter count than the original MobileNet.
		MobileNets support any input size greater
		than 32 x 32, with larger image sizes
		offering better performance.
		
		Reference:
		- [MobileNetV2: Inverted Residuals and Linear Bottlenecks](
		    https://arxiv.org/abs/1801.04381) (CVPR 2018)
		
		This function returns a Keras image classification model,
		optionally loaded with weights pre-trained on ImageNet.
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For MobileNetV2, call `tf.keras.applications.mobilenet_v2.preprocess_input`
		on your inputs before passing them to the model.
		`mobilenet_v2.preprocess_input` will scale input pixels between -1 and 1.
		
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
		  alpha: Float, larger than zero, controls the width of the network. This is
		    known as the width multiplier in the MobileNetV2 paper, but the name is
		    kept for consistency with `applications.MobileNetV1` model in Keras.
		    - If `alpha` < 1.0, proportionally decreases the number
		        of filters in each layer.
		    - If `alpha` > 1.0, proportionally increases the number
		        of filters in each layer.
		    - If `alpha` = 1.0, default number of filters from the paper
		        are used at each layer.
		  include_top: Boolean, whether to include the fully-connected layer at the
		    top of the network. Defaults to `True`.
		  weights: String, one of `None` (random initialization), 'imagenet'
		    (pre-training on ImageNet), or the path to the weights file to be loaded.
		  input_tensor: Optional Keras tensor (i.e. output of `layers.Input()`)
		    to use as image input for the model.
		  pooling: String, optional pooling mode for feature extraction when
		    `include_top` is `False`.
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
		  classes: Optional integer number of classes to classify images into, only to
		    be specified if `include_top` is True, and if no `weights` argument is
		    specified.
		  classifier_activation: A `str` or callable. The activation function to use
		    on the "top" layer. Ignored unless `include_top=True`. Set
		    `classifier_activation=None` to return the logits of the "top" layer.
		    When loading pretrained weights, `classifier_activation` can only
		    be `None` or `"softmax"`.
		  **kwargs: For backwards compatibility only.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function MobileNetV2(?input_shape:Dynamic, ?alpha:Dynamic, ?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		Instantiates the ResNet101 architecture.
		
		Reference:
		- [Deep Residual Learning for Image Recognition](
		    https://arxiv.org/abs/1512.03385) (CVPR 2015)
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For ResNet, call `tf.keras.applications.resnet.preprocess_input` on your
		inputs before passing them to the model.
		`resnet.preprocess_input` will convert the input images from RGB to BGR,
		then will zero-center each color channel with respect to the ImageNet dataset,
		without scaling.
		
		Args:
		  include_top: whether to include the fully-connected
		    layer at the top of the network.
		  weights: one of `None` (random initialization),
		    'imagenet' (pre-training on ImageNet),
		    or the path to the weights file to be loaded.
		  input_tensor: optional Keras tensor (i.e. output of `layers.Input()`)
		    to use as image input for the model.
		  input_shape: optional shape tuple, only to be specified
		    if `include_top` is False (otherwise the input shape
		    has to be `(224, 224, 3)` (with `'channels_last'` data format)
		    or `(3, 224, 224)` (with `'channels_first'` data format).
		    It should have exactly 3 inputs channels,
		    and width and height should be no smaller than 32.
		    E.g. `(200, 200, 3)` would be one valid value.
		  pooling: Optional pooling mode for feature extraction
		    when `include_top` is `False`.
		    - `None` means that the output of the model will be
		        the 4D tensor output of the
		        last convolutional block.
		    - `avg` means that global average pooling
		        will be applied to the output of the
		        last convolutional block, and thus
		        the output of the model will be a 2D tensor.
		    - `max` means that global max pooling will
		        be applied.
		  classes: optional number of classes to classify images
		    into, only to be specified if `include_top` is True, and
		    if no `weights` argument is specified.
		  classifier_activation: A `str` or callable. The activation function to use
		    on the "top" layer. Ignored unless `include_top=True`. Set
		    `classifier_activation=None` to return the logits of the "top" layer.
		    When loading pretrained weights, `classifier_activation` can only
		    be `None` or `"softmax"`.
		
		Returns:
		  A Keras model instance.
	**/
	static public function ResNet101(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Instantiates the ResNet101V2 architecture.
		
		Reference:
		- [Identity Mappings in Deep Residual Networks]
		  (https://arxiv.org/abs/1603.05027) (CVPR 2016)
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For ResNetV2, call `tf.keras.applications.resnet_v2.preprocess_input` on your
		inputs before passing them to the model.
		`resnet_v2.preprocess_input` will scale input pixels between -1 and 1.
		
		Args:
		  include_top: whether to include the fully-connected
		    layer at the top of the network.
		  weights: one of `None` (random initialization),
		    'imagenet' (pre-training on ImageNet),
		    or the path to the weights file to be loaded.
		  input_tensor: optional Keras tensor (i.e. output of `layers.Input()`)
		    to use as image input for the model.
		  input_shape: optional shape tuple, only to be specified
		    if `include_top` is False (otherwise the input shape
		    has to be `(224, 224, 3)` (with `'channels_last'` data format)
		    or `(3, 224, 224)` (with `'channels_first'` data format).
		    It should have exactly 3 inputs channels,
		    and width and height should be no smaller than 32.
		    E.g. `(200, 200, 3)` would be one valid value.
		  pooling: Optional pooling mode for feature extraction
		    when `include_top` is `False`.
		    - `None` means that the output of the model will be
		        the 4D tensor output of the
		        last convolutional block.
		    - `avg` means that global average pooling
		        will be applied to the output of the
		        last convolutional block, and thus
		        the output of the model will be a 2D tensor.
		    - `max` means that global max pooling will
		        be applied.
		  classes: optional number of classes to classify images
		    into, only to be specified if `include_top` is True, and
		    if no `weights` argument is specified.
		  classifier_activation: A `str` or callable. The activation function to use
		    on the "top" layer. Ignored unless `include_top=True`. Set
		    `classifier_activation=None` to return the logits of the "top" layer.
		    When loading pretrained weights, `classifier_activation` can only
		    be `None` or `"softmax"`.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function ResNet101V2(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic):Dynamic;
	/**
		Instantiates the ResNet152 architecture.
		
		Reference:
		- [Deep Residual Learning for Image Recognition](
		    https://arxiv.org/abs/1512.03385) (CVPR 2015)
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For ResNet, call `tf.keras.applications.resnet.preprocess_input` on your
		inputs before passing them to the model.
		`resnet.preprocess_input` will convert the input images from RGB to BGR,
		then will zero-center each color channel with respect to the ImageNet dataset,
		without scaling.
		
		Args:
		  include_top: whether to include the fully-connected
		    layer at the top of the network.
		  weights: one of `None` (random initialization),
		    'imagenet' (pre-training on ImageNet),
		    or the path to the weights file to be loaded.
		  input_tensor: optional Keras tensor (i.e. output of `layers.Input()`)
		    to use as image input for the model.
		  input_shape: optional shape tuple, only to be specified
		    if `include_top` is False (otherwise the input shape
		    has to be `(224, 224, 3)` (with `'channels_last'` data format)
		    or `(3, 224, 224)` (with `'channels_first'` data format).
		    It should have exactly 3 inputs channels,
		    and width and height should be no smaller than 32.
		    E.g. `(200, 200, 3)` would be one valid value.
		  pooling: Optional pooling mode for feature extraction
		    when `include_top` is `False`.
		    - `None` means that the output of the model will be
		        the 4D tensor output of the
		        last convolutional block.
		    - `avg` means that global average pooling
		        will be applied to the output of the
		        last convolutional block, and thus
		        the output of the model will be a 2D tensor.
		    - `max` means that global max pooling will
		        be applied.
		  classes: optional number of classes to classify images
		    into, only to be specified if `include_top` is True, and
		    if no `weights` argument is specified.
		  classifier_activation: A `str` or callable. The activation function to use
		    on the "top" layer. Ignored unless `include_top=True`. Set
		    `classifier_activation=None` to return the logits of the "top" layer.
		    When loading pretrained weights, `classifier_activation` can only
		    be `None` or `"softmax"`.
		
		Returns:
		  A Keras model instance.
	**/
	static public function ResNet152(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Instantiates the ResNet152V2 architecture.
		
		Reference:
		- [Identity Mappings in Deep Residual Networks]
		  (https://arxiv.org/abs/1603.05027) (CVPR 2016)
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For ResNetV2, call `tf.keras.applications.resnet_v2.preprocess_input` on your
		inputs before passing them to the model.
		`resnet_v2.preprocess_input` will scale input pixels between -1 and 1.
		
		Args:
		  include_top: whether to include the fully-connected
		    layer at the top of the network.
		  weights: one of `None` (random initialization),
		    'imagenet' (pre-training on ImageNet),
		    or the path to the weights file to be loaded.
		  input_tensor: optional Keras tensor (i.e. output of `layers.Input()`)
		    to use as image input for the model.
		  input_shape: optional shape tuple, only to be specified
		    if `include_top` is False (otherwise the input shape
		    has to be `(224, 224, 3)` (with `'channels_last'` data format)
		    or `(3, 224, 224)` (with `'channels_first'` data format).
		    It should have exactly 3 inputs channels,
		    and width and height should be no smaller than 32.
		    E.g. `(200, 200, 3)` would be one valid value.
		  pooling: Optional pooling mode for feature extraction
		    when `include_top` is `False`.
		    - `None` means that the output of the model will be
		        the 4D tensor output of the
		        last convolutional block.
		    - `avg` means that global average pooling
		        will be applied to the output of the
		        last convolutional block, and thus
		        the output of the model will be a 2D tensor.
		    - `max` means that global max pooling will
		        be applied.
		  classes: optional number of classes to classify images
		    into, only to be specified if `include_top` is True, and
		    if no `weights` argument is specified.
		  classifier_activation: A `str` or callable. The activation function to use
		    on the "top" layer. Ignored unless `include_top=True`. Set
		    `classifier_activation=None` to return the logits of the "top" layer.
		    When loading pretrained weights, `classifier_activation` can only
		    be `None` or `"softmax"`.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function ResNet152V2(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic):Dynamic;
	/**
		Instantiates the ResNet50 architecture.
		
		Reference:
		- [Deep Residual Learning for Image Recognition](
		    https://arxiv.org/abs/1512.03385) (CVPR 2015)
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For ResNet, call `tf.keras.applications.resnet.preprocess_input` on your
		inputs before passing them to the model.
		`resnet.preprocess_input` will convert the input images from RGB to BGR,
		then will zero-center each color channel with respect to the ImageNet dataset,
		without scaling.
		
		Args:
		  include_top: whether to include the fully-connected
		    layer at the top of the network.
		  weights: one of `None` (random initialization),
		    'imagenet' (pre-training on ImageNet),
		    or the path to the weights file to be loaded.
		  input_tensor: optional Keras tensor (i.e. output of `layers.Input()`)
		    to use as image input for the model.
		  input_shape: optional shape tuple, only to be specified
		    if `include_top` is False (otherwise the input shape
		    has to be `(224, 224, 3)` (with `'channels_last'` data format)
		    or `(3, 224, 224)` (with `'channels_first'` data format).
		    It should have exactly 3 inputs channels,
		    and width and height should be no smaller than 32.
		    E.g. `(200, 200, 3)` would be one valid value.
		  pooling: Optional pooling mode for feature extraction
		    when `include_top` is `False`.
		    - `None` means that the output of the model will be
		        the 4D tensor output of the
		        last convolutional block.
		    - `avg` means that global average pooling
		        will be applied to the output of the
		        last convolutional block, and thus
		        the output of the model will be a 2D tensor.
		    - `max` means that global max pooling will
		        be applied.
		  classes: optional number of classes to classify images
		    into, only to be specified if `include_top` is True, and
		    if no `weights` argument is specified.
		  classifier_activation: A `str` or callable. The activation function to use
		    on the "top" layer. Ignored unless `include_top=True`. Set
		    `classifier_activation=None` to return the logits of the "top" layer.
		    When loading pretrained weights, `classifier_activation` can only
		    be `None` or `"softmax"`.
		
		Returns:
		  A Keras model instance.
	**/
	static public function ResNet50(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Instantiates the ResNet50V2 architecture.
		
		Reference:
		- [Identity Mappings in Deep Residual Networks]
		  (https://arxiv.org/abs/1603.05027) (CVPR 2016)
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For ResNetV2, call `tf.keras.applications.resnet_v2.preprocess_input` on your
		inputs before passing them to the model.
		`resnet_v2.preprocess_input` will scale input pixels between -1 and 1.
		
		Args:
		  include_top: whether to include the fully-connected
		    layer at the top of the network.
		  weights: one of `None` (random initialization),
		    'imagenet' (pre-training on ImageNet),
		    or the path to the weights file to be loaded.
		  input_tensor: optional Keras tensor (i.e. output of `layers.Input()`)
		    to use as image input for the model.
		  input_shape: optional shape tuple, only to be specified
		    if `include_top` is False (otherwise the input shape
		    has to be `(224, 224, 3)` (with `'channels_last'` data format)
		    or `(3, 224, 224)` (with `'channels_first'` data format).
		    It should have exactly 3 inputs channels,
		    and width and height should be no smaller than 32.
		    E.g. `(200, 200, 3)` would be one valid value.
		  pooling: Optional pooling mode for feature extraction
		    when `include_top` is `False`.
		    - `None` means that the output of the model will be
		        the 4D tensor output of the
		        last convolutional block.
		    - `avg` means that global average pooling
		        will be applied to the output of the
		        last convolutional block, and thus
		        the output of the model will be a 2D tensor.
		    - `max` means that global max pooling will
		        be applied.
		  classes: optional number of classes to classify images
		    into, only to be specified if `include_top` is True, and
		    if no `weights` argument is specified.
		  classifier_activation: A `str` or callable. The activation function to use
		    on the "top" layer. Ignored unless `include_top=True`. Set
		    `classifier_activation=None` to return the logits of the "top" layer.
		    When loading pretrained weights, `classifier_activation` can only
		    be `None` or `"softmax"`.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function ResNet50V2(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic):Dynamic;
	/**
		Instantiates the VGG16 model.
		
		Reference:
		- [Very Deep Convolutional Networks for Large-Scale Image Recognition](
		https://arxiv.org/abs/1409.1556) (ICLR 2015)
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		The default input size for this model is 224x224.
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For VGG16, call `tf.keras.applications.vgg16.preprocess_input` on your
		inputs before passing them to the model.
		`vgg16.preprocess_input` will convert the input images from RGB to BGR,
		then will zero-center each color channel with respect to the ImageNet dataset,
		without scaling.
		
		Args:
		    include_top: whether to include the 3 fully-connected
		        layers at the top of the network.
		    weights: one of `None` (random initialization),
		          'imagenet' (pre-training on ImageNet),
		          or the path to the weights file to be loaded.
		    input_tensor: optional Keras tensor
		        (i.e. output of `layers.Input()`)
		        to use as image input for the model.
		    input_shape: optional shape tuple, only to be specified
		        if `include_top` is False (otherwise the input shape
		        has to be `(224, 224, 3)`
		        (with `channels_last` data format)
		        or `(3, 224, 224)` (with `channels_first` data format).
		        It should have exactly 3 input channels,
		        and width and height should be no smaller than 32.
		        E.g. `(200, 200, 3)` would be one valid value.
		    pooling: Optional pooling mode for feature extraction
		        when `include_top` is `False`.
		        - `None` means that the output of the model will be
		            the 4D tensor output of the
		            last convolutional block.
		        - `avg` means that global average pooling
		            will be applied to the output of the
		            last convolutional block, and thus
		            the output of the model will be a 2D tensor.
		        - `max` means that global max pooling will
		            be applied.
		    classes: optional number of classes to classify images
		        into, only to be specified if `include_top` is True, and
		        if no `weights` argument is specified.
		    classifier_activation: A `str` or callable. The activation function to use
		        on the "top" layer. Ignored unless `include_top=True`. Set
		        `classifier_activation=None` to return the logits of the "top" layer.
		        When loading pretrained weights, `classifier_activation` can only
		        be `None` or `"softmax"`.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function VGG16(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic):Dynamic;
	/**
		Instantiates the VGG19 architecture.
		
		Reference:
		- [Very Deep Convolutional Networks for Large-Scale Image Recognition](
		    https://arxiv.org/abs/1409.1556) (ICLR 2015)
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		The default input size for this model is 224x224.
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For VGG19, call `tf.keras.applications.vgg19.preprocess_input` on your
		inputs before passing them to the model.
		`vgg19.preprocess_input` will convert the input images from RGB to BGR,
		then will zero-center each color channel with respect to the ImageNet dataset,
		without scaling.
		
		Args:
		  include_top: whether to include the 3 fully-connected
		    layers at the top of the network.
		  weights: one of `None` (random initialization),
		      'imagenet' (pre-training on ImageNet),
		      or the path to the weights file to be loaded.
		  input_tensor: optional Keras tensor
		    (i.e. output of `layers.Input()`)
		    to use as image input for the model.
		  input_shape: optional shape tuple, only to be specified
		    if `include_top` is False (otherwise the input shape
		    has to be `(224, 224, 3)`
		    (with `channels_last` data format)
		    or `(3, 224, 224)` (with `channels_first` data format).
		    It should have exactly 3 inputs channels,
		    and width and height should be no smaller than 32.
		    E.g. `(200, 200, 3)` would be one valid value.
		  pooling: Optional pooling mode for feature extraction
		    when `include_top` is `False`.
		    - `None` means that the output of the model will be
		        the 4D tensor output of the
		        last convolutional block.
		    - `avg` means that global average pooling
		        will be applied to the output of the
		        last convolutional block, and thus
		        the output of the model will be a 2D tensor.
		    - `max` means that global max pooling will
		        be applied.
		  classes: optional number of classes to classify images
		    into, only to be specified if `include_top` is True, and
		    if no `weights` argument is specified.
		  classifier_activation: A `str` or callable. The activation function to use
		    on the "top" layer. Ignored unless `include_top=True`. Set
		    `classifier_activation=None` to return the logits of the "top" layer.
		    When loading pretrained weights, `classifier_activation` can only
		    be `None` or `"softmax"`.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function VGG19(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic):Dynamic;
	/**
		Instantiates the Xception architecture.
		
		Reference:
		- [Xception: Deep Learning with Depthwise Separable Convolutions](
		    https://arxiv.org/abs/1610.02357) (CVPR 2017)
		
		For image classification use cases, see
		[this page for detailed examples](
		  https://keras.io/api/applications/#usage-examples-for-image-classification-models).
		
		For transfer learning use cases, make sure to read the
		[guide to transfer learning & fine-tuning](
		  https://keras.io/guides/transfer_learning/).
		
		The default input image size for this model is 299x299.
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For Xception, call `tf.keras.applications.xception.preprocess_input` on your
		inputs before passing them to the model.
		`xception.preprocess_input` will scale input pixels between -1 and 1.
		
		Args:
		  include_top: whether to include the fully-connected
		    layer at the top of the network.
		  weights: one of `None` (random initialization),
		    'imagenet' (pre-training on ImageNet),
		    or the path to the weights file to be loaded.
		  input_tensor: optional Keras tensor
		    (i.e. output of `layers.Input()`)
		    to use as image input for the model.
		  input_shape: optional shape tuple, only to be specified
		    if `include_top` is False (otherwise the input shape
		    has to be `(299, 299, 3)`.
		    It should have exactly 3 inputs channels,
		    and width and height should be no smaller than 71.
		    E.g. `(150, 150, 3)` would be one valid value.
		  pooling: Optional pooling mode for feature extraction
		    when `include_top` is `False`.
		    - `None` means that the output of the model will be
		        the 4D tensor output of the
		        last convolutional block.
		    - `avg` means that global average pooling
		        will be applied to the output of the
		        last convolutional block, and thus
		        the output of the model will be a 2D tensor.
		    - `max` means that global max pooling will
		        be applied.
		  classes: optional number of classes to classify images
		    into, only to be specified if `include_top` is True,
		    and if no `weights` argument is specified.
		  classifier_activation: A `str` or callable. The activation function to use
		    on the "top" layer. Ignored unless `include_top=True`. Set
		    `classifier_activation=None` to return the logits of the "top" layer.
		    When loading pretrained weights, `classifier_activation` can only
		    be `None` or `"softmax"`.
		
		Returns:
		  A `keras.Model` instance.
	**/
	static public function Xception(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic, ?classifier_activation:Dynamic):Dynamic;
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
}