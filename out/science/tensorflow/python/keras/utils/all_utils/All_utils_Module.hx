/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.all_utils;
@:pythonImport("tensorflow.python.keras.utils.all_utils") extern class All_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		        specified the file will be saved at that location.
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
	static public function get_file(fname:Dynamic, origin:Dynamic, ?untar:Dynamic, ?md5_hash:Dynamic, ?file_hash:Dynamic, ?cache_subdir:Dynamic, ?hash_algorithm:Dynamic, ?extract:Dynamic, ?archive_format:Dynamic, ?cache_dir:Dynamic):Dynamic;
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
		
		Returns:
		  A `pydot.Dot` instance representing the Keras model or
		  a `pydot.Cluster` instance representing nested model if
		  `subgraph=True`.
		
		Raises:
		  ImportError: if graphviz or pydot are not available.
	**/
	static public function model_to_dot(model:Dynamic, ?show_shapes:Dynamic, ?show_dtype:Dynamic, ?show_layer_names:Dynamic, ?rankdir:Dynamic, ?expand_nested:Dynamic, ?dpi:Dynamic, ?subgraph:Dynamic):Dynamic;
	/**
		Replicates a model on different GPUs.
		
		Specifically, this function implements single-machine
		multi-GPU data parallelism. It works in the following way:
		
		- Divide the model's input(s) into multiple sub-batches.
		- Apply a model copy on each sub-batch. Every model copy
		    is executed on a dedicated GPU.
		- Concatenate the results (on CPU) into one big batch.
		
		E.g. if your `batch_size` is 64 and you use `gpus=2`,
		then we will divide the input into 2 sub-batches of 32 samples,
		process each sub-batch on one GPU, then return the full
		batch of 64 processed samples.
		
		This induces quasi-linear speedup on up to 8 GPUs.
		
		This function is only available with the TensorFlow backend
		for the time being.
		
		Args:
		    model: A Keras model instance. To avoid OOM errors,
		        this model could have been built on CPU, for instance
		        (see usage example below).
		    gpus: Integer >= 2, number of on GPUs on which to create
		        model replicas.
		    cpu_merge: A boolean value to identify whether to force
		        merging model weights under the scope of the CPU or not.
		    cpu_relocation: A boolean value to identify whether to
		        create the model's weights under the scope of the CPU.
		        If the model is not defined under any preceding device
		        scope, you can still rescue it by activating this option.
		
		Returns:
		    A Keras `Model` instance which can be used just like the initial
		    `model` argument, but which distributes its workload on multiple GPUs.
		
		Example 1: Training models with weights merge on CPU
		
		```python
		    import tensorflow as tf
		    from keras.applications import Xception
		    from keras.utils import multi_gpu_model
		    import numpy as np
		
		    num_samples = 1000
		    height = 224
		    width = 224
		    num_classes = 1000
		
		    # Instantiate the base model (or "template" model).
		    # We recommend doing this with under a CPU device scope,
		    # so that the model's weights are hosted on CPU memory.
		    # Otherwise they may end up hosted on a GPU, which would
		    # complicate weight sharing.
		    with tf.device('/cpu:0'):
		        model = Xception(weights=None,
		                         input_shape=(height, width, 3),
		                         classes=num_classes)
		
		    # Replicates the model on 8 GPUs.
		    # This assumes that your machine has 8 available GPUs.
		    parallel_model = multi_gpu_model(model, gpus=8)
		    parallel_model.compile(loss='categorical_crossentropy',
		                           optimizer='rmsprop')
		
		    # Generate dummy data.
		    x = np.random.random((num_samples, height, width, 3))
		    y = np.random.random((num_samples, num_classes))
		
		    # This `fit` call will be distributed on 8 GPUs.
		    # Since the batch size is 256, each GPU will process 32 samples.
		    parallel_model.fit(x, y, epochs=20, batch_size=256)
		
		    # Save model via the template model (which shares the same weights):
		    model.save('my_model.h5')
		```
		
		Example 2: Training models with weights merge on CPU using cpu_relocation
		
		```python
		     ..
		     # Not needed to change the device scope for model definition:
		     model = Xception(weights=None, ..)
		
		     try:
		         model = multi_gpu_model(model, cpu_relocation=True)
		         print("Training using multiple GPUs..")
		     except:
		         print("Training using single GPU or CPU..")
		
		     model.compile(..)
		     ..
		```
		
		Example 3: Training models with weights merge on GPU (recommended for NV-link)
		
		```python
		     ..
		     # Not needed to change the device scope for model definition:
		     model = Xception(weights=None, ..)
		
		     try:
		         model = multi_gpu_model(model, cpu_merge=False)
		         print("Training using multiple GPUs..")
		     except:
		         print("Training using single GPU or CPU..")
		     model.compile(..)
		     ..
		```
		
		Raises:
		  ValueError: if the `gpus` argument does not match available devices.
	**/
	static public function multi_gpu_model(model:Dynamic, gpus:Dynamic, ?cpu_merge:Dynamic, ?cpu_relocation:Dynamic):Dynamic;
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
		      a string specifying the format of the plot:
		      'TB' creates a vertical plot;
		      'LR' creates a horizontal plot.
		  expand_nested: Whether to expand nested models into clusters.
		  dpi: Dots per inch.
		
		Returns:
		  A Jupyter notebook Image object if Jupyter is installed.
		  This enables in-line display of the model plots in notebooks.
	**/
	static public function plot_model(model:Dynamic, ?to_file:Dynamic, ?show_shapes:Dynamic, ?show_dtype:Dynamic, ?show_layer_names:Dynamic, ?rankdir:Dynamic, ?expand_nested:Dynamic, ?dpi:Dynamic):Dynamic;
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
		
		E.g. for use with categorical_crossentropy.
		
		Args:
		    y: class vector to be converted into a matrix
		        (integers from 0 to num_classes).
		    num_classes: total number of classes. If `None`, this would be inferred
		      as the (largest number in `y`) + 1.
		    dtype: The data type expected by the input. Default: `'float32'`.
		
		Returns:
		    A binary matrix representation of the input. The classes axis is placed
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
		
		Raises:
		    Value Error: If input contains string value
	**/
	static public function to_categorical(y:Dynamic, ?num_classes:Dynamic, ?dtype:Dynamic):Dynamic;
}