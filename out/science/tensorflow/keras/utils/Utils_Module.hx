/* This file is generated, do not edit! */
package tensorflow.keras.utils;
@:pythonImport("tensorflow.keras.utils") extern class Utils_Module {
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
		Generates a `tf.data.Dataset` from image files in a directory.
		
		If your directory structure is:
		
		```
		main_directory/
		...class_a/
		......a_image_1.jpg
		......a_image_2.jpg
		...class_b/
		......b_image_1.jpg
		......b_image_2.jpg
		```
		
		Then calling `image_dataset_from_directory(main_directory, labels='inferred')`
		will return a `tf.data.Dataset` that yields batches of images from
		the subdirectories `class_a` and `class_b`, together with labels
		0 and 1 (0 corresponding to `class_a` and 1 corresponding to `class_b`).
		
		Supported image formats: jpeg, png, bmp, gif.
		Animated gifs are truncated to the first frame.
		
		Args:
		  directory: Directory where the data is located.
		      If `labels` is "inferred", it should contain
		      subdirectories, each containing images for a class.
		      Otherwise, the directory structure is ignored.
		  labels: Either "inferred"
		      (labels are generated from the directory structure),
		      None (no labels),
		      or a list/tuple of integer labels of the same size as the number of
		      image files found in the directory. Labels should be sorted according
		      to the alphanumeric order of the image file paths
		      (obtained via `os.walk(directory)` in Python).
		  label_mode:
		      - 'int': means that the labels are encoded as integers
		          (e.g. for `sparse_categorical_crossentropy` loss).
		      - 'categorical' means that the labels are
		          encoded as a categorical vector
		          (e.g. for `categorical_crossentropy` loss).
		      - 'binary' means that the labels (there can be only 2)
		          are encoded as `float32` scalars with values 0 or 1
		          (e.g. for `binary_crossentropy`).
		      - None (no labels).
		  class_names: Only valid if "labels" is "inferred". This is the explicit
		      list of class names (must match names of subdirectories). Used
		      to control the order of the classes
		      (otherwise alphanumerical order is used).
		  color_mode: One of "grayscale", "rgb", "rgba". Default: "rgb".
		      Whether the images will be converted to
		      have 1, 3, or 4 channels.
		  batch_size: Size of the batches of data. Default: 32.
		  image_size: Size to resize images to after they are read from disk.
		      Defaults to `(256, 256)`.
		      Since the pipeline processes batches of images that must all have
		      the same size, this must be provided.
		  shuffle: Whether to shuffle the data. Default: True.
		      If set to False, sorts the data in alphanumeric order.
		  seed: Optional random seed for shuffling and transformations.
		  validation_split: Optional float between 0 and 1,
		      fraction of data to reserve for validation.
		  subset: One of "training" or "validation".
		      Only used if `validation_split` is set.
		  interpolation: String, the interpolation method used when resizing images.
		    Defaults to `bilinear`. Supports `bilinear`, `nearest`, `bicubic`,
		    `area`, `lanczos3`, `lanczos5`, `gaussian`, `mitchellcubic`.
		  follow_links: Whether to visits subdirectories pointed to by symlinks.
		      Defaults to False.
		  crop_to_aspect_ratio: If True, resize the images without aspect
		    ratio distortion. When the original aspect ratio differs from the target
		    aspect ratio, the output image will be cropped so as to return the largest
		    possible window in the image (of size `image_size`) that matches
		    the target aspect ratio. By default (`crop_to_aspect_ratio=False`),
		    aspect ratio may not be preserved.
		  **kwargs: Legacy keyword arguments.
		
		Returns:
		  A `tf.data.Dataset` object.
		    - If `label_mode` is None, it yields `float32` tensors of shape
		      `(batch_size, image_size[0], image_size[1], num_channels)`,
		      encoding images (see below for rules regarding `num_channels`).
		    - Otherwise, it yields a tuple `(images, labels)`, where `images`
		      has shape `(batch_size, image_size[0], image_size[1], num_channels)`,
		      and `labels` follows the format described below.
		
		Rules regarding labels format:
		  - if `label_mode` is `int`, the labels are an `int32` tensor of shape
		    `(batch_size,)`.
		  - if `label_mode` is `binary`, the labels are a `float32` tensor of
		    1s and 0s of shape `(batch_size, 1)`.
		  - if `label_mode` is `categorial`, the labels are a `float32` tensor
		    of shape `(batch_size, num_classes)`, representing a one-hot
		    encoding of the class index.
		
		Rules regarding number of channels in the yielded images:
		  - if `color_mode` is `grayscale`,
		    there's 1 channel in the image tensors.
		  - if `color_mode` is `rgb`,
		    there are 3 channel in the image tensors.
		  - if `color_mode` is `rgba`,
		    there are 4 channel in the image tensors.
	**/
	static public function image_dataset_from_directory(directory:Dynamic, ?labels:Dynamic, ?label_mode:Dynamic, ?class_names:Dynamic, ?color_mode:Dynamic, ?batch_size:Dynamic, ?image_size:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?validation_split:Dynamic, ?subset:Dynamic, ?interpolation:Dynamic, ?follow_links:Dynamic, ?crop_to_aspect_ratio:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Packs user-provided data into a tuple.
		
		This is a convenience utility for packing data into the tuple formats
		that `Model.fit` uses.
		
		Standalone usage:
		
		>>> x = tf.ones((10, 1))
		>>> data = tf.keras.utils.pack_x_y_sample_weight(x)
		>>> isinstance(data, tf.Tensor)
		True
		>>> y = tf.ones((10, 1))
		>>> data = tf.keras.utils.pack_x_y_sample_weight(x, y)
		>>> isinstance(data, tuple)
		True
		>>> x, y = data
		
		Args:
		  x: Features to pass to `Model`.
		  y: Ground-truth targets to pass to `Model`.
		  sample_weight: Sample weight for each element.
		
		Returns:
		  Tuple in the format used in `Model.fit`.
	**/
	static public function pack_x_y_sample_weight(x:Dynamic, ?y:Dynamic, ?sample_weight:Dynamic):Dynamic;
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
		Sets all random seeds for the program (Python, NumPy, and TensorFlow).
		
		You can use this utility to make almost any Keras program fully deterministic.
		Some limitations apply in cases where network communications are involved
		(e.g. parameter server distribution), which creates additional sources of
		randomness, or when certain non-deterministic cuDNN ops are involved.
		
		Calling this utility is equivalent to the following:
		
		```python
		import random
		import numpy as np
		import tensorflow as tf
		random.seed(seed)
		np.random.seed(seed)
		tf.random.set_seed(seed)
		```
		
		Arguments:
		  seed: Integer, the random seed to use.
	**/
	static public function set_random_seed(seed:Dynamic):Dynamic;
	/**
		Generates a `tf.data.Dataset` from text files in a directory.
		
		If your directory structure is:
		
		```
		main_directory/
		...class_a/
		......a_text_1.txt
		......a_text_2.txt
		...class_b/
		......b_text_1.txt
		......b_text_2.txt
		```
		
		Then calling `text_dataset_from_directory(main_directory, labels='inferred')`
		will return a `tf.data.Dataset` that yields batches of texts from
		the subdirectories `class_a` and `class_b`, together with labels
		0 and 1 (0 corresponding to `class_a` and 1 corresponding to `class_b`).
		
		Only `.txt` files are supported at this time.
		
		Args:
		  directory: Directory where the data is located.
		      If `labels` is "inferred", it should contain
		      subdirectories, each containing text files for a class.
		      Otherwise, the directory structure is ignored.
		  labels: Either "inferred"
		      (labels are generated from the directory structure),
		      None (no labels),
		      or a list/tuple of integer labels of the same size as the number of
		      text files found in the directory. Labels should be sorted according
		      to the alphanumeric order of the text file paths
		      (obtained via `os.walk(directory)` in Python).
		  label_mode:
		      - 'int': means that the labels are encoded as integers
		          (e.g. for `sparse_categorical_crossentropy` loss).
		      - 'categorical' means that the labels are
		          encoded as a categorical vector
		          (e.g. for `categorical_crossentropy` loss).
		      - 'binary' means that the labels (there can be only 2)
		          are encoded as `float32` scalars with values 0 or 1
		          (e.g. for `binary_crossentropy`).
		      - None (no labels).
		  class_names: Only valid if "labels" is "inferred". This is the explicit
		      list of class names (must match names of subdirectories). Used
		      to control the order of the classes
		      (otherwise alphanumerical order is used).
		  batch_size: Size of the batches of data. Default: 32.
		  max_length: Maximum size of a text string. Texts longer than this will
		    be truncated to `max_length`.
		  shuffle: Whether to shuffle the data. Default: True.
		      If set to False, sorts the data in alphanumeric order.
		  seed: Optional random seed for shuffling and transformations.
		  validation_split: Optional float between 0 and 1,
		      fraction of data to reserve for validation.
		  subset: One of "training" or "validation".
		      Only used if `validation_split` is set.
		  follow_links: Whether to visits subdirectories pointed to by symlinks.
		      Defaults to False.
		
		Returns:
		  A `tf.data.Dataset` object.
		    - If `label_mode` is None, it yields `string` tensors of shape
		      `(batch_size,)`, containing the contents of a batch of text files.
		    - Otherwise, it yields a tuple `(texts, labels)`, where `texts`
		      has shape `(batch_size,)` and `labels` follows the format described
		      below.
		
		Rules regarding labels format:
		  - if `label_mode` is `int`, the labels are an `int32` tensor of shape
		    `(batch_size,)`.
		  - if `label_mode` is `binary`, the labels are a `float32` tensor of
		    1s and 0s of shape `(batch_size, 1)`.
		  - if `label_mode` is `categorial`, the labels are a `float32` tensor
		    of shape `(batch_size, num_classes)`, representing a one-hot
		    encoding of the class index.
	**/
	static public function text_dataset_from_directory(directory:Dynamic, ?labels:Dynamic, ?label_mode:Dynamic, ?class_names:Dynamic, ?batch_size:Dynamic, ?max_length:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?validation_split:Dynamic, ?subset:Dynamic, ?follow_links:Dynamic):Dynamic;
	/**
		Creates a dataset of sliding windows over a timeseries provided as array.
		
		This function takes in a sequence of data-points gathered at
		equal intervals, along with time series parameters such as
		length of the sequences/windows, spacing between two sequence/windows, etc.,
		to produce batches of timeseries inputs and targets.
		
		Args:
		  data: Numpy array or eager tensor
		    containing consecutive data points (timesteps).
		    Axis 0 is expected to be the time dimension.
		  targets: Targets corresponding to timesteps in `data`.
		    `targets[i]` should be the target
		    corresponding to the window that starts at index `i`
		    (see example 2 below).
		    Pass None if you don't have target data (in this case the dataset will
		    only yield the input data).
		  sequence_length: Length of the output sequences (in number of timesteps).
		  sequence_stride: Period between successive output sequences.
		    For stride `s`, output samples would
		    start at index `data[i]`, `data[i + s]`, `data[i + 2 * s]`, etc.
		  sampling_rate: Period between successive individual timesteps
		    within sequences. For rate `r`, timesteps
		    `data[i], data[i + r], ... data[i + sequence_length]`
		    are used for create a sample sequence.
		  batch_size: Number of timeseries samples in each batch
		    (except maybe the last one).
		  shuffle: Whether to shuffle output samples,
		    or instead draw them in chronological order.
		  seed: Optional int; random seed for shuffling.
		  start_index: Optional int; data points earlier (exclusive)
		    than `start_index` will not be used
		    in the output sequences. This is useful to reserve part of the
		    data for test or validation.
		  end_index: Optional int; data points later (exclusive) than `end_index`
		    will not be used in the output sequences.
		    This is useful to reserve part of the data for test or validation.
		
		Returns:
		  A tf.data.Dataset instance. If `targets` was passed, the dataset yields
		  tuple `(batch_of_sequences, batch_of_targets)`. If not, the dataset yields
		  only `batch_of_sequences`.
		
		Example 1:
		
		Consider indices `[0, 1, ... 99]`.
		With `sequence_length=10,  sampling_rate=2, sequence_stride=3`,
		`shuffle=False`, the dataset will yield batches of sequences
		composed of the following indices:
		
		```
		First sequence:  [0  2  4  6  8 10 12 14 16 18]
		Second sequence: [3  5  7  9 11 13 15 17 19 21]
		Third sequence:  [6  8 10 12 14 16 18 20 22 24]
		...
		Last sequence:   [78 80 82 84 86 88 90 92 94 96]
		```
		
		In this case the last 3 data points are discarded since no full sequence
		can be generated to include them (the next sequence would have started
		at index 81, and thus its last step would have gone over 99).
		
		Example 2: Temporal regression.
		
		Consider an array `data` of scalar values, of shape `(steps,)`.
		To generate a dataset that uses the past 10
		timesteps to predict the next timestep, you would use:
		
		```python
		input_data = data[:-10]
		targets = data[10:]
		dataset = tf.keras.preprocessing.timeseries_dataset_from_array(
		    input_data, targets, sequence_length=10)
		for batch in dataset:
		  inputs, targets = batch
		  assert np.array_equal(inputs[0], data[:10])  # First sequence: steps [0-9]
		  assert np.array_equal(targets[0], data[10])  # Corresponding target: step 10
		  break
		```
		
		Example 3: Temporal regression for many-to-many architectures.
		
		Consider two arrays of scalar values `X` and `Y`,
		both of shape `(100,)`. The resulting dataset should consist samples with
		20 timestamps each. The samples should not overlap.
		To generate a dataset that uses the current timestamp
		to predict the corresponding target timestep, you would use:
		
		```python
		X = np.arange(100)
		Y = X*2
		
		sample_length = 20
		input_dataset = tf.keras.preprocessing.timeseries_dataset_from_array(
		  X, None, sequence_length=sample_length, sequence_stride=sample_length)
		target_dataset = tf.keras.preprocessing.timeseries_dataset_from_array(
		  Y, None, sequence_length=sample_length, sequence_stride=sample_length)
		
		for batch in zip(input_dataset, target_dataset):
		  inputs, targets = batch
		  assert np.array_equal(inputs[0], X[:sample_length])
		
		  # second sample equals output timestamps 20-40
		  assert np.array_equal(targets[1], Y[sample_length:2*sample_length])
		  break
		```
	**/
	static public function timeseries_dataset_from_array(data:Dynamic, targets:Dynamic, sequence_length:Dynamic, ?sequence_stride:Dynamic, ?sampling_rate:Dynamic, ?batch_size:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?start_index:Dynamic, ?end_index:Dynamic):Dynamic;
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
		Unpacks user-provided data tuple.
		
		This is a convenience utility to be used when overriding
		`Model.train_step`, `Model.test_step`, or `Model.predict_step`.
		This utility makes it easy to support data of the form `(x,)`,
		`(x, y)`, or `(x, y, sample_weight)`.
		
		Standalone usage:
		
		>>> features_batch = tf.ones((10, 5))
		>>> labels_batch = tf.zeros((10, 5))
		>>> data = (features_batch, labels_batch)
		>>> # `y` and `sample_weight` will default to `None` if not provided.
		>>> x, y, sample_weight = tf.keras.utils.unpack_x_y_sample_weight(data)
		>>> sample_weight is None
		True
		
		Example in overridden `Model.train_step`:
		
		```python
		class MyModel(tf.keras.Model):
		
		  def train_step(self, data):
		    # If `sample_weight` is not provided, all samples will be weighted
		    # equally.
		    x, y, sample_weight = tf.keras.utils.unpack_x_y_sample_weight(data)
		
		    with tf.GradientTape() as tape:
		      y_pred = self(x, training=True)
		      loss = self.compiled_loss(
		        y, y_pred, sample_weight, regularization_losses=self.losses)
		      trainable_variables = self.trainable_variables
		      gradients = tape.gradient(loss, trainable_variables)
		      self.optimizer.apply_gradients(zip(gradients, trainable_variables))
		
		    self.compiled_metrics.update_state(y, y_pred, sample_weight)
		    return {m.name: m.result() for m in self.metrics}
		```
		
		Args:
		  data: A tuple of the form `(x,)`, `(x, y)`, or `(x, y, sample_weight)`.
		
		Returns:
		  The unpacked tuple, with `None`s for `y` and `sample_weight` if they are not
		  provided.
	**/
	static public function unpack_x_y_sample_weight(data:Dynamic):Dynamic;
}