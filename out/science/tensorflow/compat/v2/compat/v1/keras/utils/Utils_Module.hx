/* This file is generated, do not edit! */
package tensorflow.compat.v2.compat.v1.keras.utils;
@:pythonImport("tensorflow.compat.v2.compat.v1.keras.utils") extern class Utils_Module {
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
		Converts a 3D Numpy array to a PIL Image instance.
		
		Usage:
		
		```python
		from PIL import Image
		img = np.random.random(size=(100, 100, 3))
		pil_img = tf.keras.preprocessing.image.array_to_img(img)
		```
		
		
		Args:
		    x: Input data, in any form that can be converted to a Numpy array.
		    data_format: Image data format, can be either "channels_first" or
		      "channels_last". Defaults to `None`, in which case the global setting
		      `tf.keras.backend.image_data_format()` is used (unless you changed it,
		      it defaults to "channels_last").
		    scale: Whether to rescale the image such that minimum and maximum values
		      are 0 and 255 respectively. Defaults to `True`.
		    dtype: Dtype to use. Default to `None`, in which case the global setting
		    `tf.keras.backend.floatx()` is used (unless you changed it, it defaults
		    to "float32")
		
		Returns:
		    A PIL Image instance.
		
		Raises:
		    ImportError: if PIL is not available.
		    ValueError: if invalid `x` or `data_format` is passed.
	**/
	static public function array_to_img(x:Dynamic, ?data_format:Dynamic, ?scale:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Turns the serialized form of a Keras object back into an actual object.
		
		This function is for mid-level library implementers rather than end users.
		
		Importantly, this utility requires you to provide the dict of `module_objects`
		to use for looking up the object config; this is not populated by default.
		If you need a deserialization utility that has preexisting knowledge of
		built-in Keras objects, use e.g. `keras.layers.deserialize(config)`,
		`keras.metrics.deserialize(config)`, etc.
		
		Calling `deserialize_keras_object` while underneath the
		`SharedObjectLoadingScope` context manager will cause any already-seen shared
		objects to be returned as-is rather than creating a new object.
		
		Args:
		  identifier: the serialized form of the object.
		  module_objects: A dictionary of built-in objects to look the name up in.
		    Generally, `module_objects` is provided by midlevel library implementers.
		  custom_objects: A dictionary of custom objects to look the name up in.
		    Generally, `custom_objects` is provided by the end user.
		  printable_module_name: A human-readable string representing the type of the
		    object. Printed in case of exception.
		
		Returns:
		  The deserialized object.
		
		Example:
		
		A mid-level library implementer might want to implement a utility for
		retrieving an object from its config, as such:
		
		```python
		def deserialize(config, custom_objects=None):
		   return deserialize_keras_object(
		     identifier,
		     module_objects=globals(),
		     custom_objects=custom_objects,
		     name="MyObjectType",
		   )
		```
		
		This is how e.g. `keras.layers.deserialize()` is implemented.
	**/
	static public function deserialize_keras_object(identifier:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	/**
		Retrieves a live reference to the global dictionary of custom objects.
		
		Updating and clearing custom objects using `custom_object_scope`
		is preferred, but `get_custom_objects` can
		be used to directly access the current collection of custom objects.
		
		Example:
		
		```python
		get_custom_objects().clear()
		get_custom_objects()['MyObject'] = MyObject
		```
		
		Returns:
		    Global dictionary of names to classes (`_GLOBAL_CUSTOM_OBJECTS`).
	**/
	static public function get_custom_objects():Dynamic;
	/**
		Downloads a file from a URL if it not already in the cache.
		
		By default the file at the url `origin` is downloaded to the
		cache_dir `~/.keras`, placed in the cache_subdir `datasets`,
		and given the filename `fname`. The final location of a file
		`example.txt` would therefore be `~/.keras/datasets/example.txt`.
		
		Files in tar, tar.gz, tar.bz, and zip formats can also be extracted.
		Passing a hash will verify the file after download. The command line
		programs `shasum` and `sha256sum` can compute the hash.
		
		Example:
		
		```python
		path_to_downloaded_file = tf.keras.utils.get_file(
		    "flower_photos",
		    "https://storage.googleapis.com/download.tensorflow.org/example_images/flower_photos.tgz",
		    untar=True)
		```
		
		Args:
		    fname: Name of the file. If an absolute path `/path/to/file.txt` is
		        specified the file will be saved at that location. If `None`, the
		        name of the file at `origin` will be used.
		    origin: Original URL of the file.
		    untar: Deprecated in favor of `extract` argument.
		        boolean, whether the file should be decompressed
		    md5_hash: Deprecated in favor of `file_hash` argument.
		        md5 hash of the file for verification
		    file_hash: The expected hash string of the file after download.
		        The sha256 and md5 hash algorithms are both supported.
		    cache_subdir: Subdirectory under the Keras cache dir where the file is
		        saved. If an absolute path `/path/to/folder` is
		        specified the file will be saved at that location.
		    hash_algorithm: Select the hash algorithm to verify the file.
		        options are `'md5'`, `'sha256'`, and `'auto'`.
		        The default 'auto' detects the hash algorithm in use.
		    extract: True tries extracting the file as an Archive, like tar or zip.
		    archive_format: Archive format to try for extracting the file.
		        Options are `'auto'`, `'tar'`, `'zip'`, and `None`.
		        `'tar'` includes tar, tar.gz, and tar.bz files.
		        The default `'auto'` corresponds to `['tar', 'zip']`.
		        None or an empty list will return no matches found.
		    cache_dir: Location to store cached files, when None it
		        defaults to the default directory `~/.keras/`.
		
		Returns:
		    Path to the downloaded file
	**/
	static public function get_file(?fname:Dynamic, ?origin:Dynamic, ?untar:Dynamic, ?md5_hash:Dynamic, ?file_hash:Dynamic, ?cache_subdir:Dynamic, ?hash_algorithm:Dynamic, ?extract:Dynamic, ?archive_format:Dynamic, ?cache_dir:Dynamic):Dynamic;
	/**
		Returns the name registered to an object within the Keras framework.
		
		This function is part of the Keras serialization and deserialization
		framework. It maps objects to the string names associated with those objects
		for serialization/deserialization.
		
		Args:
		  obj: The object to look up.
		
		Returns:
		  The name associated with the object, or the default Python name if the
		    object is not registered.
	**/
	static public function get_registered_name(obj:Dynamic):Dynamic;
	/**
		Returns the class associated with `name` if it is registered with Keras.
		
		This function is part of the Keras serialization and deserialization
		framework. It maps strings to the objects associated with them for
		serialization/deserialization.
		
		Example:
		```
		def from_config(cls, config, custom_objects=None):
		  if 'my_custom_object_name' in config:
		    config['hidden_cls'] = tf.keras.utils.get_registered_object(
		        config['my_custom_object_name'], custom_objects=custom_objects)
		```
		
		Args:
		  name: The name to look up.
		  custom_objects: A dictionary of custom objects to look the name up in.
		    Generally, custom_objects is provided by the user.
		  module_objects: A dictionary of custom objects to look the name up in.
		    Generally, module_objects is provided by midlevel library implementers.
		
		Returns:
		  An instantiable class associated with 'name', or None if no such class
		    exists.
	**/
	static public function get_registered_object(name:Dynamic, ?custom_objects:Dynamic, ?module_objects:Dynamic):Dynamic;
	/**
		Returns the list of input tensors necessary to compute `tensor`.
		
		Output will always be a list of tensors
		(potentially with 1 element).
		
		Args:
		    tensor: The tensor to start from.
		    layer: Origin layer of the tensor. Will be
		        determined via tensor._keras_history if not provided.
		    node_index: Origin node index of the tensor.
		
		Returns:
		    List of input tensors.
	**/
	static public function get_source_inputs(tensor:Dynamic, ?layer:Dynamic, ?node_index:Dynamic):Dynamic;
	/**
		Converts a PIL Image instance to a Numpy array.
		
		Usage:
		
		```python
		from PIL import Image
		img_data = np.random.random(size=(100, 100, 3))
		img = tf.keras.preprocessing.image.array_to_img(img_data)
		array = tf.keras.preprocessing.image.img_to_array(img)
		```
		
		
		Args:
		    img: Input PIL Image instance.
		    data_format: Image data format, can be either "channels_first" or
		      "channels_last". Defaults to `None`, in which case the global setting
		      `tf.keras.backend.image_data_format()` is used (unless you changed it,
		      it defaults to "channels_last").
		    dtype: Dtype to use. Default to `None`, in which case the global setting
		    `tf.keras.backend.floatx()` is used (unless you changed it, it defaults
		    to "float32")
		
		Returns:
		    A 3D Numpy array.
		
		Raises:
		    ValueError: if invalid `img` or `data_format` is passed.
	**/
	static public function img_to_array(img:Dynamic, ?data_format:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Loads an image into PIL format.
		
		Usage:
		
		```
		image = tf.keras.preprocessing.image.load_img(image_path)
		input_arr = tf.keras.preprocessing.image.img_to_array(image)
		input_arr = np.array([input_arr])  # Convert single image to a batch.
		predictions = model.predict(input_arr)
		```
		
		Args:
		    path: Path to image file.
		    grayscale: DEPRECATED use `color_mode="grayscale"`.
		    color_mode: One of "grayscale", "rgb", "rgba". Default: "rgb".
		        The desired image format.
		    target_size: Either `None` (default to original size)
		        or tuple of ints `(img_height, img_width)`.
		    interpolation: Interpolation method used to resample the image if the
		        target size is different from that of the loaded image.
		        Supported methods are "nearest", "bilinear", and "bicubic".
		        If PIL version 1.1.3 or newer is installed, "lanczos" is also
		        supported. If PIL version 3.4.0 or newer is installed, "box" and
		        "hamming" are also supported. By default, "nearest" is used.
		
		Returns:
		    A PIL Image instance.
		
		Raises:
		    ImportError: if PIL is not available.
		    ValueError: if interpolation method is not supported.
	**/
	static public function load_img(path:Dynamic, ?grayscale:Dynamic, ?color_mode:Dynamic, ?target_size:Dynamic, ?interpolation:Dynamic):Dynamic;
	/**
		Convert a Keras model to dot format.
		
		Args:
		  model: A Keras model instance.
		  show_shapes: whether to display shape information.
		  show_dtype: whether to display layer dtypes.
		  show_layer_names: whether to display layer names.
		  rankdir: `rankdir` argument passed to PyDot,
		      a string specifying the format of the plot:
		      'TB' creates a vertical plot;
		      'LR' creates a horizontal plot.
		  expand_nested: whether to expand nested models into clusters.
		  dpi: Dots per inch.
		  subgraph: whether to return a `pydot.Cluster` instance.
		  layer_range: input of `list` containing two `str` items, which is the
		      starting layer name and ending layer name (both inclusive) indicating
		      the range of layers for which the `pydot.Dot` will be generated. It
		      also accepts regex patterns instead of exact name. In such case, start
		      predicate will be the first element it matches to `layer_range[0]`
		      and the end predicate will be the last element it matches to
		      `layer_range[1]`. By default `None` which considers all layers of
		      model. Note that you must pass range such that the resultant subgraph
		      must be complete.
		  show_layer_activations: Display layer activations (only for layers that
		      have an `activation` property).
		
		Returns:
		  A `pydot.Dot` instance representing the Keras model or
		  a `pydot.Cluster` instance representing nested model if
		  `subgraph=True`.
		
		Raises:
		  ValueError: if `model_to_dot` is called before the model is built.
		  ImportError: if graphviz or pydot are not available.
	**/
	static public function model_to_dot(model:Dynamic, ?show_shapes:Dynamic, ?show_dtype:Dynamic, ?show_layer_names:Dynamic, ?rankdir:Dynamic, ?expand_nested:Dynamic, ?dpi:Dynamic, ?subgraph:Dynamic, ?layer_range:Dynamic, ?show_layer_activations:Dynamic):Dynamic;
	/**
		Normalizes a Numpy array.
		
		Args:
		    x: Numpy array to normalize.
		    axis: axis along which to normalize.
		    order: Normalization order (e.g. `order=2` for L2 norm).
		
		Returns:
		    A normalized copy of the array.
	**/
	static public function normalize(x:Dynamic, ?axis:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Converts a Keras model to dot format and save to a file.
		
		Example:
		
		```python
		input = tf.keras.Input(shape=(100,), dtype='int32', name='input')
		x = tf.keras.layers.Embedding(
		    output_dim=512, input_dim=10000, input_length=100)(input)
		x = tf.keras.layers.LSTM(32)(x)
		x = tf.keras.layers.Dense(64, activation='relu')(x)
		x = tf.keras.layers.Dense(64, activation='relu')(x)
		x = tf.keras.layers.Dense(64, activation='relu')(x)
		output = tf.keras.layers.Dense(1, activation='sigmoid', name='output')(x)
		model = tf.keras.Model(inputs=[input], outputs=[output])
		dot_img_file = '/tmp/model_1.png'
		tf.keras.utils.plot_model(model, to_file=dot_img_file, show_shapes=True)
		```
		
		Args:
		  model: A Keras model instance
		  to_file: File name of the plot image.
		  show_shapes: whether to display shape information.
		  show_dtype: whether to display layer dtypes.
		  show_layer_names: whether to display layer names.
		  rankdir: `rankdir` argument passed to PyDot,
		      a string specifying the format of the plot: 'TB' creates a vertical
		        plot; 'LR' creates a horizontal plot.
		  expand_nested: Whether to expand nested models into clusters.
		  dpi: Dots per inch.
		  layer_range: input of `list` containing two `str` items, which is the
		    starting layer name and ending layer name (both inclusive) indicating the
		    range of layers for which the plot will be generated. It also accepts
		    regex patterns instead of exact name. In such case, start predicate will
		    be the first element it matches to `layer_range[0]` and the end predicate
		    will be the last element it matches to `layer_range[1]`. By default `None`
		    which considers all layers of model. Note that you must pass range such
		    that the resultant subgraph must be complete.
		  show_layer_activations: Display layer activations (only for layers that
		    have an `activation` property).
		
		Raises:
		  ValueError: if `plot_model` is called before the model is built.
		
		Returns:
		  A Jupyter notebook Image object if Jupyter is installed.
		  This enables in-line display of the model plots in notebooks.
	**/
	static public function plot_model(model:Dynamic, ?to_file:Dynamic, ?show_shapes:Dynamic, ?show_dtype:Dynamic, ?show_layer_names:Dynamic, ?rankdir:Dynamic, ?expand_nested:Dynamic, ?dpi:Dynamic, ?layer_range:Dynamic, ?show_layer_activations:Dynamic):Dynamic;
	/**
		Registers an object with the Keras serialization framework.
		
		This decorator injects the decorated class or function into the Keras custom
		object dictionary, so that it can be serialized and deserialized without
		needing an entry in the user-provided custom object dict. It also injects a
		function that Keras will call to get the object's serializable string key.
		
		Note that to be serialized and deserialized, classes must implement the
		`get_config()` method. Functions do not have this requirement.
		
		The object will be registered under the key 'package>name' where `name`,
		defaults to the object name if not passed.
		
		Args:
		  package: The package that this class belongs to.
		  name: The name to serialize this class under in this package. If None, the
		    class' name will be used.
		
		Returns:
		  A decorator that registers the decorated class with the passed names.
	**/
	static public function register_keras_serializable(?_package:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Saves an image stored as a Numpy array to a path or file object.
		
		Args:
		    path: Path or file object.
		    x: Numpy array.
		    data_format: Image data format,
		        either "channels_first" or "channels_last".
		    file_format: Optional file format override. If omitted, the
		        format to use is determined from the filename extension.
		        If a file object was used instead of a filename, this
		        parameter should always be used.
		    scale: Whether to rescale image values to be within `[0, 255]`.
		    **kwargs: Additional keyword arguments passed to `PIL.Image.save()`.
	**/
	static public function save_img(path:Dynamic, x:Dynamic, ?data_format:Dynamic, ?file_format:Dynamic, ?scale:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Serialize a Keras object into a JSON-compatible representation.
		
		Calls to `serialize_keras_object` while underneath the
		`SharedObjectSavingScope` context manager will cause any objects re-used
		across multiple layers to be saved with a special shared object ID. This
		allows the network to be re-created properly during deserialization.
		
		Args:
		  instance: The object to serialize.
		
		Returns:
		  A dict-like, JSON-compatible representation of the object's config.
	**/
	static public function serialize_keras_object(instance:Dynamic):Dynamic;
	/**
		Converts a class vector (integers) to binary class matrix.
		
		E.g. for use with `categorical_crossentropy`.
		
		Args:
		    y: Array-like with class values to be converted into a matrix
		        (integers from 0 to `num_classes - 1`).
		    num_classes: Total number of classes. If `None`, this would be inferred
		      as `max(y) + 1`.
		    dtype: The data type expected by the input. Default: `'float32'`.
		
		Returns:
		    A binary matrix representation of the input. The class axis is placed
		    last.
		
		Example:
		
		>>> a = tf.keras.utils.to_categorical([0, 1, 2, 3], num_classes=4)
		>>> a = tf.constant(a, shape=[4, 4])
		>>> print(a)
		tf.Tensor(
		  [[1. 0. 0. 0.]
		   [0. 1. 0. 0.]
		   [0. 0. 1. 0.]
		   [0. 0. 0. 1.]], shape=(4, 4), dtype=float32)
		
		>>> b = tf.constant([.9, .04, .03, .03,
		...                  .3, .45, .15, .13,
		...                  .04, .01, .94, .05,
		...                  .12, .21, .5, .17],
		...                 shape=[4, 4])
		>>> loss = tf.keras.backend.categorical_crossentropy(a, b)
		>>> print(np.around(loss, 5))
		[0.10536 0.82807 0.1011  1.77196]
		
		>>> loss = tf.keras.backend.categorical_crossentropy(a, a)
		>>> print(np.around(loss, 5))
		[0. 0. 0. 0.]
	**/
	static public function to_categorical(y:Dynamic, ?num_classes:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Wrap layer & module methods in this decorator to capture tf1-style weights.
		
		Decorating a `tf.keras.Layer`'s  or `tf.Module`'s methods with this
		decorator will cause the layer/module to track weights created/used
		via `tf.compat.v1.get_variable` (and by extension `tf.compat.v1.layers`)
		inside the decorated method.
		
		In addition to tracking the weights themselves under the standard
		`layer.variable`/`module.variable`/etc. properties, if the method belongs
		to a `tf.keras.Layer` then any regularization losses specified via the
		`get_variable` or `tf.compat.v1.layers` regularizer arguments will get
		tracked by the layer under the standard `layer.losses` property.
		
		This tracking enables using large classes of TF1-style model-forward-pass
		code inside of Keras layers or `tf.Modules` in TF2 with TF2 behaviors enabled.
		
		Example of capturing tf.compat.v1.layer-based modeling code as a Keras layer:
		
		```python
		class WrappedDoubleDenseLayer(tf.keras.layers.Layer):
		
		  def __init__(self, units, *args, **kwargs):
		    super().__init__(*args, **kwargs)
		    self.units = units
		
		  @tf.compat.v1.keras.utils.track_tf1_style_variables
		  def call(self, inputs):
		    with tf.compat.v1.variable_scope("double_dense_layer"):
		      out = tf.compat.v1.layers.dense(
		          inputs, self.units, name="dense_one",
		          kernel_initializer=tf.compat.v1.random_normal_initializer,
		          kernel_regularizer="l2")
		      out = tf.compat.v1.layers.dense(
		          out, self.units, name="dense_two",
		          kernel_initializer=tf.compat.v1.random_normal_initializer(),
		          kernel_regularizer="l2")
		    return out
		
		# Create a layer that can be used as a standard keras layer
		layer = WrappedDoubleDenseLayer(10)
		
		# call the layer on inputs
		layer(...)
		
		# Variables created/used within the scope will be tracked by the layer
		layer.weights
		layer.trainable_variables
		
		# Regularization losses will be captured in layer.losses after a call,
		# just like any other Keras layer
		reg_losses = layer.losses
		```
		
		Example of capturing tf.compat.v1.get_variable-based modeling code as
		a Keras layer:
		
		```python
		class WrappedDoubleDenseLayer(tf.keras.layers.Layer):
		
		  def __init__(self, units, *args, **kwargs):
		    super().__init__(*args, **kwargs)
		    self.units = units
		
		  @tf.compat.v1.keras.utils.track_tf1_style_variables
		  def call(self, inputs):
		    out = inputs
		    with tf.compat.v1.variable_scope("double_dense_layer"):
		      with tf.compat.v1.variable_scope("dense_one"):
		        # The weights are created with a `regularizer`,
		        # so the layer should track their regularization losses
		        kernel = tf.compat.v1.get_variable(
		            shape=[out.shape[-1], self.units],
		            regularizer=regularizers.L2(),
		            initializer=init_ops.ones_initializer(),
		            name="kernel")
		        bias = tf.compat.v1.get_variable(
		            shape=[self.units,],
		            initializer=init_ops.zeros_initializer(),
		            name="bias")
		        out = tf.compat.v1.math.matmul(out, kernel)
		        out = tf.compat.v1.nn.bias_add(out, bias)
		      with tf.compat.v1.variable_scope("dense_two"):
		        kernel = tf.compat.v1.get_variable(
		            shape=[out.shape[-1], self.units],
		            regularizer=regularizers.L2(),
		            initializer=init_ops.ones_initializer(),
		            name="kernel")
		        bias = tf.compat.v1.get_variable(
		            shape=[self.units,],
		            initializer=init_ops.zeros_initializer(),
		            name="bias")
		        out = tf.compat.v1.math.matmul(out, kernel)
		        out = tf.compat.v1.nn.bias_add(out, bias)
		    return out
		
		# Create a layer that can be used as a standard keras layer
		layer = WrappedDoubleDenseLayer(10)
		
		# call the layer on inputs
		layer(...)
		
		# Variables created/used within the scope will be tracked by the layer
		layer.weights
		layer.trainable_variables
		
		# Regularization losses will be captured in layer.losses after a call,
		# just like any other Keras layer
		reg_losses = layer.losses
		```
		
		Regularization losses:
		  Any regularizers specified in the `get_variable` calls or `compat.v1.layer`
		  creations will get captured if they occur in your decorated method
		  and the method belongs to a `tf.keras.Layer`/`tf.keras.Module`.
		  Regularization losses
		  are accessible in `layer.losses` after a call just like in a standard
		  Keras layer, and will be captured by any model that includes this layer.
		  Regularization losses attached to Keras layers/models set as attributes
		  of your layer will also get captured in the standard Keras regularization
		  loss tracking.
		
		  (While Modules have no `losses` property, no-arg callables to compute
		   the regularization losses may be tracked as dict values in a private
		   `module._tf1_style_var_store._regularizers` property, but only for
		   `tf.compat.v1.layers` and `get_variable` weights and not for any other
		   nested Keras layers/tf.Modules)
		
		Variable scope / variable reuse:
		  variable-scope based reuse in your decorated method will be respected,
		  and work like variable-scope based reuse in TF1.
		
		Variable Names/Pre-trained checkpoint loading:
		  Variable naming from get_variable and `compat.v1.layer` layers will match
		  the TF1 names, so you should be able to re-use your old name-based
		  checkpoints. Variable naming for Keras layers/models or for variables
		  created by `tf.Variable` may change when going to eager execution.
		
		Training Arg if you decorate `layer.call`:
		  Keras will pass a `training` arg to this layer if `call` contains
		  a `training` arg or a `**kwargs` varargs in its call signature,
		  similarly to how keras passes `training` to other layers in TF2 that have
		  similar signatures in their `call` implementations.
		  See more details in the docs
		  on `tf.keras.layers.Layer` to understand what will be passed and when.
		  Note: tf.compat.v1.layers are usually not called with `training=None`,
		  so the training arg to `forward_pass` might not feed through to them
		  unless you pass it to their calls explicitly.
		
		Caveats:
		  * TF2 will not prune unused variable updates (or unused outputs). You may
		    need to adjust your forward pass code to avoid computations or variable
		    updates that you don't intend to use.
		  * Avoid Nesting variable creation in tf.function inside of
		    methods decorated with `track_tf1_style_variables`
		    While the method may safely be used from inside a `tf.function`, using
		    a function inside of a decorated method may break the variable scoping.
		  * This decorator only adds implicit tracking for legacy tf1-style
		    get_variable / compat.v1.layers usage.
		    If you would like to use nested Keras layers/models
		    inside the decorated method, you need to
		    assign them as attributes of your layer so that Keras/Module's standard
		    object-oriented weights (and loss tracking for layers) will kick in.
		    See the intro to modules, layers, and models
		    [guide](https://www.tensorflow.org/guide/intro_to_modules) for more info
		
		Args:
		  method: The method to decorate. This should belong to a custom tf.Module,
		  tf.keras.layers.Layer, or tf.keras.Model.
		
		Returns:
		  The decorated method.
	**/
	static public function track_tf1_style_variables(method:Dynamic):Dynamic;
}