/* This file is generated, do not edit! */
package tensorflow.compat.v2.keras.preprocessing;
@:pythonImport("tensorflow.compat.v2.keras.preprocessing") extern class Preprocessing_Module {
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
}