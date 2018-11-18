/* This file is generated, do not edit! */
package keras.utils.multi_gpu_utils;
@:pythonImport("keras.utils.multi_gpu_utils") extern class Multi_gpu_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_available_devices():Dynamic;
	static public function _normalize_device_name(name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Clone any `Model` instance.
		
		Model cloning is similar to calling a model on new inputs,
		except that it creates new layers (and thus new weights) instead
		of sharing the weights of the existing layers.
		
		# Arguments
		    model: Instance of `Model`
		        (could be a functional model or a Sequential model).
		    input_tensors: optional list of input tensors
		        to build the model upon. If not provided,
		        placeholders will be created.
		
		# Returns
		    An instance of `Model` reproducing the behavior
		    of the original model, on top of new inputs tensors,
		    using newly instantiated weights.
		
		# Raises
		    ValueError: in case of invalid `model` argument value.
	**/
	static public function clone_model(model:Dynamic, ?input_tensors:Dynamic):Dynamic;
	/**
		Functional interface to the `Concatenate` layer.
		
		# Arguments
		    inputs: A list of input tensors (at least 2).
		    axis: Concatenation axis.
		    **kwargs: Standard layer keyword arguments.
		
		# Returns
		    A tensor, the concatenation of the inputs alongside axis `axis`.
	**/
	static public function concatenate(inputs:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
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
		
		# Arguments
		    model: A Keras model instance. To avoid OOM errors,
		        this model could have been built on CPU, for instance
		        (see usage example below).
		    gpus: Integer >= 2 or list of integers, number of GPUs or
		        list of GPU IDs on which to create model replicas.
		    cpu_merge: A boolean value to identify whether to force
		        merging model weights under the scope of the CPU or not.
		    cpu_relocation: A boolean value to identify whether to
		        create the model's weights under the scope of the CPU.
		        If the model is not defined under any preceding device
		        scope, you can still rescue it by activating this option.
		
		# Returns
		    A Keras `Model` instance which can be used just like the initial
		    `model` argument, but which distributes its workload on multiple GPUs.
		
		# Example 1 - Training models with weights merge on CPU
		
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
		
		# Example 2 - Training models with weights merge on CPU using cpu_relocation
		
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
		
		# Example 3 - Training models with weights merge on GPU (recommended for NV-link)
		
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
		
		# On model saving
		
		To save the multi-gpu model, use `.save(fname)` or `.save_weights(fname)`
		with the template model (the argument you passed to `multi_gpu_model`),
		rather than the model returned by `multi_gpu_model`.
	**/
	static public function multi_gpu_model(model:Dynamic, ?gpus:Dynamic, ?cpu_merge:Dynamic, ?cpu_relocation:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Normalizes a list/tensor into a list.
		
		If a tensor is passed, we return
		a list of size 1 containing the tensor.
		
		# Arguments
		    x: target object to be normalized.
		    allow_tuple: If False and x is a tuple,
		        it will be converted into a list
		        with a single element (the tuple).
		        Else converts the tuple to a list.
		
		# Returns
		    A list.
	**/
	static public function to_list(x:Dynamic, ?allow_tuple:Dynamic):Dynamic;
}