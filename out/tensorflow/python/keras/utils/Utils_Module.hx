/* This file is generated, do not edit! */
package tensorflow.python.keras.utils;
@:pythonImport("tensorflow.python.keras.utils") extern class Utils_Module {
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
		Returns the class name and config for a serialized keras object.
	**/
	static public function class_and_config_for_serialized_keras_object(config:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	/**
		Converts all convolution kernels in a model from Theano to TensorFlow.
		
		Also works from TensorFlow to Theano.
		
		Arguments:
		    model: target model for the conversion.
	**/
	static public function convert_all_kernels_in_model(model:Dynamic):Dynamic;
	/**
		Provides a scope that changes to `_GLOBAL_CUSTOM_OBJECTS` cannot escape.
		
		Convenience wrapper for `CustomObjectScope`.
		Code within a `with` statement will be able to access custom objects
		by name. Changes to global custom objects persist
		within the enclosing `with` statement. At end of the `with` statement,
		global custom objects are reverted to state
		at beginning of the `with` statement.
		
		Example:
		
		Consider a custom object `MyObject`
		
		```python
		    with custom_object_scope({'MyObject':MyObject}):
		        layer = Dense(..., kernel_regularizer='MyObject')
		        # save, load, etc. will recognize custom object by name
		```
		
		Arguments:
		    *args: Variable length list of dictionaries of name,
		        class pairs to add to custom objects.
		
		Returns:
		    Object of type `CustomObjectScope`.
	**/
	static public function custom_object_scope(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function deserialize_keras_object(identifier:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	/**
		Retrieves a live reference to the global dictionary of custom objects.
		
		Updating and clearing custom objects using `custom_object_scope`
		is preferred, but `get_custom_objects` can
		be used to directly access `_GLOBAL_CUSTOM_OBJECTS`.
		
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
		
		Arguments:
		    fname: Name of the file. If an absolute path `/path/to/file.txt` is
		        specified the file will be saved at that location.
		    origin: Original URL of the file.
		    untar: Deprecated in favor of 'extract'.
		        boolean, whether the file should be decompressed
		    md5_hash: Deprecated in favor of 'file_hash'.
		        md5 hash of the file for verification
		    file_hash: The expected hash string of the file after download.
		        The sha256 and md5 hash algorithms are both supported.
		    cache_subdir: Subdirectory under the Keras cache dir where the file is
		        saved. If an absolute path `/path/to/folder` is
		        specified the file will be saved at that location.
		    hash_algorithm: Select the hash algorithm to verify the file.
		        options are 'md5', 'sha256', and 'auto'.
		        The default 'auto' detects the hash algorithm in use.
		    extract: True tries extracting the file as an Archive, like tar or zip.
		    archive_format: Archive format to try for extracting the file.
		        Options are 'auto', 'tar', 'zip', and None.
		        'tar' includes tar, tar.gz, and tar.bz files.
		        The default 'auto' is ['tar', 'zip'].
		        None or an empty list will return no matches found.
		    cache_dir: Location to store cached files, when None it
		        defaults to the [Keras
		          Directory](/faq/#where-is-the-keras-configuration-filed-stored).
		
		Returns:
		    Path to the downloaded file
	**/
	static public function get_file(fname:Dynamic, origin:Dynamic, ?untar:Dynamic, ?md5_hash:Dynamic, ?file_hash:Dynamic, ?cache_subdir:Dynamic, ?hash_algorithm:Dynamic, ?extract:Dynamic, ?archive_format:Dynamic, ?cache_dir:Dynamic):Dynamic;
	/**
		Returns the list of input tensors necessary to compute `tensor`.
		
		Output will always be a list of tensors
		(potentially with 1 element).
		
		Arguments:
		    tensor: The tensor to start from.
		    layer: Origin layer of the tensor. Will be
		        determined via tensor._keras_history if not provided.
		    node_index: Origin node index of the tensor.
		
		Returns:
		    List of input tensors.
	**/
	static public function get_source_inputs(tensor:Dynamic, ?layer:Dynamic, ?node_index:Dynamic):Dynamic;
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
		
		Arguments:
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
		
		Arguments:
		    x: Numpy array to normalize.
		    axis: axis along which to normalize.
		    order: Normalization order (e.g. 2 for L2 norm).
		
		Returns:
		    A normalized copy of the array.
	**/
	static public function normalize(x:Dynamic, ?axis:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Converts a Keras model to dot format and save to a file.
		
		Arguments:
		    model: A Keras model instance
		    to_file: File name of the plot image.
		    show_shapes: whether to display shape information.
		    show_layer_names: whether to display layer names.
		    rankdir: `rankdir` argument passed to PyDot,
		        a string specifying the format of the plot:
		        'TB' creates a vertical plot;
		        'LR' creates a horizontal plot.
	**/
	static public function plot_model(model:Dynamic, ?to_file:Dynamic, ?show_shapes:Dynamic, ?show_layer_names:Dynamic, ?rankdir:Dynamic):Dynamic;
	/**
		Returns the serialization of the class with the given config.
	**/
	static public function serialize_keras_class_and_config(cls_name:Dynamic, cls_config:Dynamic):Dynamic;
	static public function serialize_keras_object(instance:Dynamic):Dynamic;
	/**
		Squeeze or expand last dimension if needed.
		
		1. Squeezes last dim of `y_pred` or `y_true` if their rank differs by 1
		(using `confusion_matrix.remove_squeezable_dimensions`).
		2. Squeezes or expands last dim of `sample_weight` if its rank differs by 1
		from the new rank of `y_pred`.
		If `sample_weight` is scalar, it is kept scalar.
		
		This will use static shape if available. Otherwise, it will add graph
		operations, which could result in a performance hit.
		
		Args:
		  y_pred: Predicted values, a `Tensor` of arbitrary dimensions.
		  y_true: Optional label `Tensor` whose dimensions match `y_pred`.
		  sample_weight: Optional weight scalar or `Tensor` whose dimensions match
		    `y_pred`.
		
		Returns:
		  Tuple of `y_pred`, `y_true` and `sample_weight`. Each of them possibly has
		  the last dimension squeezed,
		  `sample_weight` could be extended by one dimension.
	**/
	static public function squeeze_or_expand_dimensions(y_pred:Dynamic, y_true:Dynamic, sample_weight:Dynamic):Dynamic;
	/**
		Converts a class vector (integers) to binary class matrix.
		
		E.g. for use with categorical_crossentropy.
		
		Arguments:
		    y: class vector to be converted into a matrix
		        (integers from 0 to num_classes).
		    num_classes: total number of classes.
		    dtype: The data type expected by the input. Default: `'float32'`.
		
		Returns:
		    A binary matrix representation of the input. The classes axis is placed
		    last.
	**/
	static public function to_categorical(y:Dynamic, ?num_classes:Dynamic, ?dtype:Dynamic):Dynamic;
}