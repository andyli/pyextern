/* This file is generated, do not edit! */
package tensorflow.contrib.keras.api.keras.applications;
@:pythonImport("tensorflow.contrib.keras.api.keras.applications") extern class Applications_Module {
	/**
		Instantiates the Inception v3 architecture.
		
		Optionally loads weights pre-trained
		on ImageNet. Note that when using TensorFlow,
		for best performance you should set
		`image_data_format="channels_last"` in your Keras config
		at ~/.keras/keras.json.
		The model and the weights are compatible with both
		TensorFlow and Theano. The data format
		convention used by the model is the one
		specified in your Keras config file.
		Note that the default input image size for this model is 299x299.
		
		Arguments:
		    include_top: whether to include the fully-connected
		        layer at the top of the network.
		    weights: one of `None` (random initialization)
		        or "imagenet" (pre-training on ImageNet).
		    input_tensor: optional Keras tensor (i.e. output of `layers.Input()`)
		        to use as image input for the model.
		    input_shape: optional shape tuple, only to be specified
		        if `include_top` is False (otherwise the input shape
		        has to be `(299, 299, 3)` (with `channels_last` data format)
		        or `(3, 299, 299)` (with `channels_first` data format).
		        It should have exactly 3 inputs channels,
		        and width and height should be no smaller than 139.
		        E.g. `(150, 150, 3)` would be one valid value.
		    pooling: Optional pooling mode for feature extraction
		        when `include_top` is `False`.
		        - `None` means that the output of the model will be
		            the 4D tensor output of the
		            last convolutional layer.
		        - `avg` means that global average pooling
		            will be applied to the output of the
		            last convolutional layer, and thus
		            the output of the model will be a 2D tensor.
		        - `max` means that global max pooling will
		            be applied.
		    classes: optional number of classes to classify images
		        into, only to be specified if `include_top` is True, and
		        if no `weights` argument is specified.
		
		Returns:
		    A Keras model instance.
		
		Raises:
		    ValueError: in case of invalid argument for `weights`,
		        or invalid input shape.
	**/
	static public function InceptionV3(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic):Dynamic;
	/**
		Instantiates the ResNet50 architecture.
		
		Optionally loads weights pre-trained
		on ImageNet. Note that when using TensorFlow,
		for best performance you should set
		`image_data_format="channels_last"` in your Keras config
		at ~/.keras/keras.json.
		
		The model and the weights are compatible with both
		TensorFlow and Theano. The data format
		convention used by the model is the one
		specified in your Keras config file.
		
		Arguments:
		    include_top: whether to include the fully-connected
		        layer at the top of the network.
		    weights: one of `None` (random initialization)
		        or "imagenet" (pre-training on ImageNet).
		    input_tensor: optional Keras tensor (i.e. output of `layers.Input()`)
		        to use as image input for the model.
		    input_shape: optional shape tuple, only to be specified
		        if `include_top` is False (otherwise the input shape
		        has to be `(224, 224, 3)` (with `channels_last` data format)
		        or `(3, 224, 244)` (with `channels_first` data format).
		        It should have exactly 3 inputs channels,
		        and width and height should be no smaller than 197.
		        E.g. `(200, 200, 3)` would be one valid value.
		    pooling: Optional pooling mode for feature extraction
		        when `include_top` is `False`.
		        - `None` means that the output of the model will be
		            the 4D tensor output of the
		            last convolutional layer.
		        - `avg` means that global average pooling
		            will be applied to the output of the
		            last convolutional layer, and thus
		            the output of the model will be a 2D tensor.
		        - `max` means that global max pooling will
		            be applied.
		    classes: optional number of classes to classify images
		        into, only to be specified if `include_top` is True, and
		        if no `weights` argument is specified.
		
		Returns:
		    A Keras model instance.
		
		Raises:
		    ValueError: in case of invalid argument for `weights`,
		        or invalid input shape.
	**/
	static public function ResNet50(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic):Dynamic;
	/**
		Instantiates the VGG16 architecture.
		
		Optionally loads weights pre-trained
		on ImageNet. Note that when using TensorFlow,
		for best performance you should set
		`image_data_format="channels_last"` in your Keras config
		at ~/.keras/keras.json.
		
		The model and the weights are compatible with both
		TensorFlow and Theano. The data format
		convention used by the model is the one
		specified in your Keras config file.
		
		Arguments:
		    include_top: whether to include the 3 fully-connected
		        layers at the top of the network.
		    weights: one of `None` (random initialization)
		        or "imagenet" (pre-training on ImageNet).
		    input_tensor: optional Keras tensor (i.e. output of `layers.Input()`)
		        to use as image input for the model.
		    input_shape: optional shape tuple, only to be specified
		        if `include_top` is False (otherwise the input shape
		        has to be `(224, 224, 3)` (with `channels_last` data format)
		        or `(3, 224, 244)` (with `channels_first` data format).
		        It should have exactly 3 inputs channels,
		        and width and height should be no smaller than 48.
		        E.g. `(200, 200, 3)` would be one valid value.
		    pooling: Optional pooling mode for feature extraction
		        when `include_top` is `False`.
		        - `None` means that the output of the model will be
		            the 4D tensor output of the
		            last convolutional layer.
		        - `avg` means that global average pooling
		            will be applied to the output of the
		            last convolutional layer, and thus
		            the output of the model will be a 2D tensor.
		        - `max` means that global max pooling will
		            be applied.
		    classes: optional number of classes to classify images
		        into, only to be specified if `include_top` is True, and
		        if no `weights` argument is specified.
		
		Returns:
		    A Keras model instance.
		
		Raises:
		    ValueError: in case of invalid argument for `weights`,
		        or invalid input shape.
	**/
	static public function VGG16(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic):Dynamic;
	/**
		Instantiates the VGG19 architecture.
		
		Optionally loads weights pre-trained
		on ImageNet. Note that when using TensorFlow,
		for best performance you should set
		`image_data_format="channels_last"` in your Keras config
		at ~/.keras/keras.json.
		
		The model and the weights are compatible with both
		TensorFlow and Theano. The data format
		convention used by the model is the one
		specified in your Keras config file.
		
		Arguments:
		    include_top: whether to include the 3 fully-connected
		        layers at the top of the network.
		    weights: one of `None` (random initialization)
		        or "imagenet" (pre-training on ImageNet).
		    input_tensor: optional Keras tensor (i.e. output of `layers.Input()`)
		        to use as image input for the model.
		    input_shape: optional shape tuple, only to be specified
		        if `include_top` is False (otherwise the input shape
		        has to be `(224, 224, 3)` (with `channels_last` data format)
		        or `(3, 224, 244)` (with `channels_first` data format).
		        It should have exactly 3 inputs channels,
		        and width and height should be no smaller than 48.
		        E.g. `(200, 200, 3)` would be one valid value.
		    pooling: Optional pooling mode for feature extraction
		        when `include_top` is `False`.
		        - `None` means that the output of the model will be
		            the 4D tensor output of the
		            last convolutional layer.
		        - `avg` means that global average pooling
		            will be applied to the output of the
		            last convolutional layer, and thus
		            the output of the model will be a 2D tensor.
		        - `max` means that global max pooling will
		            be applied.
		    classes: optional number of classes to classify images
		        into, only to be specified if `include_top` is True, and
		        if no `weights` argument is specified.
		
		Returns:
		    A Keras model instance.
		
		Raises:
		    ValueError: in case of invalid argument for `weights`,
		        or invalid input shape.
	**/
	static public function VGG19(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic):Dynamic;
	/**
		Instantiates the Xception architecture.
		
		Optionally loads weights pre-trained
		on ImageNet. This model is available for TensorFlow only,
		and can only be used with inputs following the TensorFlow
		data format `(width, height, channels)`.
		You should set `image_data_format="channels_last"` in your Keras config
		located at ~/.keras/keras.json.
		
		Note that the default input image size for this model is 299x299.
		
		Arguments:
		    include_top: whether to include the fully-connected
		        layer at the top of the network.
		    weights: one of `None` (random initialization)
		        or "imagenet" (pre-training on ImageNet).
		    input_tensor: optional Keras tensor (i.e. output of `layers.Input()`)
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
		            last convolutional layer.
		        - `avg` means that global average pooling
		            will be applied to the output of the
		            last convolutional layer, and thus
		            the output of the model will be a 2D tensor.
		        - `max` means that global max pooling will
		            be applied.
		    classes: optional number of classes to classify images
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
	static public function Xception(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic):Dynamic;
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