/* This file is generated, do not edit! */
package tensorflow.python.keras.preprocessing.image_dataset;
@:pythonImport("tensorflow.python.keras.preprocessing.image_dataset") extern class Image_dataset_Module {
	static public var ALLOWLIST_FORMATS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
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
		  class_names: Only valid if "labels" is "inferred". This is the explict
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
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Load an image from a path and resize it.
	**/
	static public function load_image(path:Dynamic, image_size:Dynamic, num_channels:Dynamic, interpolation:Dynamic, ?crop_to_aspect_ratio:Dynamic):Dynamic;
	/**
		Constructs a dataset of images and labels.
	**/
	static public function paths_and_labels_to_dataset(image_paths:Dynamic, image_size:Dynamic, num_channels:Dynamic, labels:Dynamic, label_mode:Dynamic, num_classes:Dynamic, interpolation:Dynamic, ?crop_to_aspect_ratio:Dynamic):Dynamic;
}