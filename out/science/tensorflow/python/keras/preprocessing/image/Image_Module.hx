/* This file is generated, do not edit! */
package tensorflow.python.keras.preprocessing.image;
@:pythonImport("tensorflow.python.keras.preprocessing.image") extern class Image_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Applies an affine transformation specified by the parameters given.
		
		# Arguments
		    x: 2D numpy array, single image.
		    theta: Rotation angle in degrees.
		    tx: Width shift.
		    ty: Heigh shift.
		    shear: Shear angle in degrees.
		    zx: Zoom in x direction.
		    zy: Zoom in y direction
		    row_axis: Index of axis for rows in the input image.
		    col_axis: Index of axis for columns in the input image.
		    channel_axis: Index of axis for channels in the input image.
		    fill_mode: Points outside the boundaries of the input
		        are filled according to the given mode
		        (one of `{'constant', 'nearest', 'reflect', 'wrap'}`).
		    cval: Value used for points outside the boundaries
		        of the input if `mode='constant'`.
		    order: int, order of interpolation
		
		# Returns
		    The transformed version of the input.
	**/
	static public function apply_affine_transform(x:Dynamic, ?theta:Dynamic, ?tx:Dynamic, ?ty:Dynamic, ?shear:Dynamic, ?zx:Dynamic, ?zy:Dynamic, ?row_axis:Dynamic, ?col_axis:Dynamic, ?channel_axis:Dynamic, ?fill_mode:Dynamic, ?cval:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Performs a brightness shift.
		
		# Arguments
		    x: Input tensor. Must be 3D.
		    brightness: Float. The new brightness value.
		    channel_axis: Index of axis for channels in the input tensor.
		
		# Returns
		    Numpy image tensor.
		
		# Raises
		    ValueError if `brightness_range` isn't a tuple.
	**/
	static public function apply_brightness_shift(x:Dynamic, brightness:Dynamic):Dynamic;
	/**
		Performs a channel shift.
		
		# Arguments
		    x: Input tensor. Must be 3D.
		    intensity: Transformation intensity.
		    channel_axis: Index of axis for channels in the input tensor.
		
		# Returns
		    Numpy image tensor.
	**/
	static public function apply_channel_shift(x:Dynamic, intensity:Dynamic, ?channel_axis:Dynamic):Dynamic;
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
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Performs a random brightness shift.
		
		# Arguments
		    x: Input tensor. Must be 3D.
		    brightness_range: Tuple of floats; brightness range.
		    channel_axis: Index of axis for channels in the input tensor.
		
		# Returns
		    Numpy image tensor.
		
		# Raises
		    ValueError if `brightness_range` isn't a tuple.
	**/
	static public function random_brightness(x:Dynamic, brightness_range:Dynamic):Dynamic;
	/**
		Performs a random channel shift.
		
		# Arguments
		    x: Input tensor. Must be 3D.
		    intensity_range: Transformation intensity.
		    channel_axis: Index of axis for channels in the input tensor.
		
		# Returns
		    Numpy image tensor.
	**/
	static public function random_channel_shift(x:Dynamic, intensity_range:Dynamic, ?channel_axis:Dynamic):Dynamic;
	/**
		Performs a random rotation of a Numpy image tensor.
		
		# Arguments
		    x: Input tensor. Must be 3D.
		    rg: Rotation range, in degrees.
		    row_axis: Index of axis for rows in the input tensor.
		    col_axis: Index of axis for columns in the input tensor.
		    channel_axis: Index of axis for channels in the input tensor.
		    fill_mode: Points outside the boundaries of the input
		        are filled according to the given mode
		        (one of `{'constant', 'nearest', 'reflect', 'wrap'}`).
		    cval: Value used for points outside the boundaries
		        of the input if `mode='constant'`.
		    interpolation_order: int, order of spline interpolation.
		        see `ndimage.interpolation.affine_transform`
		
		# Returns
		    Rotated Numpy image tensor.
	**/
	static public function random_rotation(x:Dynamic, rg:Dynamic, ?row_axis:Dynamic, ?col_axis:Dynamic, ?channel_axis:Dynamic, ?fill_mode:Dynamic, ?cval:Dynamic, ?interpolation_order:Dynamic):Dynamic;
	/**
		Performs a random spatial shear of a Numpy image tensor.
		
		# Arguments
		    x: Input tensor. Must be 3D.
		    intensity: Transformation intensity in degrees.
		    row_axis: Index of axis for rows in the input tensor.
		    col_axis: Index of axis for columns in the input tensor.
		    channel_axis: Index of axis for channels in the input tensor.
		    fill_mode: Points outside the boundaries of the input
		        are filled according to the given mode
		        (one of `{'constant', 'nearest', 'reflect', 'wrap'}`).
		    cval: Value used for points outside the boundaries
		        of the input if `mode='constant'`.
		    interpolation_order: int, order of spline interpolation.
		        see `ndimage.interpolation.affine_transform`
		
		# Returns
		    Sheared Numpy image tensor.
	**/
	static public function random_shear(x:Dynamic, intensity:Dynamic, ?row_axis:Dynamic, ?col_axis:Dynamic, ?channel_axis:Dynamic, ?fill_mode:Dynamic, ?cval:Dynamic, ?interpolation_order:Dynamic):Dynamic;
	/**
		Performs a random spatial shift of a Numpy image tensor.
		
		# Arguments
		    x: Input tensor. Must be 3D.
		    wrg: Width shift range, as a float fraction of the width.
		    hrg: Height shift range, as a float fraction of the height.
		    row_axis: Index of axis for rows in the input tensor.
		    col_axis: Index of axis for columns in the input tensor.
		    channel_axis: Index of axis for channels in the input tensor.
		    fill_mode: Points outside the boundaries of the input
		        are filled according to the given mode
		        (one of `{'constant', 'nearest', 'reflect', 'wrap'}`).
		    cval: Value used for points outside the boundaries
		        of the input if `mode='constant'`.
		    interpolation_order: int, order of spline interpolation.
		        see `ndimage.interpolation.affine_transform`
		
		# Returns
		    Shifted Numpy image tensor.
	**/
	static public function random_shift(x:Dynamic, wrg:Dynamic, hrg:Dynamic, ?row_axis:Dynamic, ?col_axis:Dynamic, ?channel_axis:Dynamic, ?fill_mode:Dynamic, ?cval:Dynamic, ?interpolation_order:Dynamic):Dynamic;
	/**
		Performs a random spatial zoom of a Numpy image tensor.
		
		# Arguments
		    x: Input tensor. Must be 3D.
		    zoom_range: Tuple of floats; zoom range for width and height.
		    row_axis: Index of axis for rows in the input tensor.
		    col_axis: Index of axis for columns in the input tensor.
		    channel_axis: Index of axis for channels in the input tensor.
		    fill_mode: Points outside the boundaries of the input
		        are filled according to the given mode
		        (one of `{'constant', 'nearest', 'reflect', 'wrap'}`).
		    cval: Value used for points outside the boundaries
		        of the input if `mode='constant'`.
		    interpolation_order: int, order of spline interpolation.
		        see `ndimage.interpolation.affine_transform`
		
		# Returns
		    Zoomed Numpy image tensor.
		
		# Raises
		    ValueError: if `zoom_range` isn't a tuple.
	**/
	static public function random_zoom(x:Dynamic, zoom_range:Dynamic, ?row_axis:Dynamic, ?col_axis:Dynamic, ?channel_axis:Dynamic, ?fill_mode:Dynamic, ?cval:Dynamic, ?interpolation_order:Dynamic):Dynamic;
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
		Resize images to a target size without aspect ratio distortion.
		
		TensorFlow image datasets typically yield images that have each a different
		size. However, these images need to be batched before they can be
		processed by Keras layers. To be batched, images need to share the same height
		and width.
		
		You could simply do:
		
		```python
		size = (200, 200)
		ds = ds.map(lambda img: tf.image.resize(img, size))
		```
		
		However, if you do this, you distort the aspect ratio of your images, since
		in general they do not all have the same aspect ratio as `size`. This is
		fine in many cases, but not always (e.g. for GANs this can be a problem).
		
		Note that passing the argument `preserve_aspect_ratio=True` to `resize`
		will preserve the aspect ratio, but at the cost of no longer respecting the
		provided target size. Because `tf.image.resize` doesn't crop images,
		your output images will still have different sizes.
		
		This calls for:
		
		```python
		size = (200, 200)
		ds = ds.map(lambda img: smart_resize(img, size))
		```
		
		Your output images will actually be `(200, 200)`, and will not be distorted.
		Instead, the parts of the image that do not fit within the target size
		get cropped out.
		
		The resizing process is:
		
		1. Take the largest centered crop of the image that has the same aspect ratio
		as the target size. For instance, if `size=(200, 200)` and the input image has
		size `(340, 500)`, we take a crop of `(340, 340)` centered along the width.
		2. Resize the cropped image to the target size. In the example above,
		we resize the `(340, 340)` crop to `(200, 200)`.
		
		Args:
		  x: Input image or batch of images (as a tensor or NumPy array).
		    Must be in format `(height, width, channels)` or
		    `(batch_size, height, width, channels)`.
		  size: Tuple of `(height, width)` integer. Target size.
		  interpolation: String, interpolation to use for resizing.
		    Defaults to `'bilinear'`. Supports `bilinear`, `nearest`, `bicubic`,
		    `area`, `lanczos3`, `lanczos5`, `gaussian`, `mitchellcubic`.
		
		Returns:
		  Array with shape `(size[0], size[1], channels)`. If the input image was a
		  NumPy array, the output is a NumPy array, and if it was a TF tensor,
		  the output is a TF tensor.
	**/
	static public function smart_resize(x:Dynamic, size:Dynamic, ?interpolation:Dynamic):Dynamic;
}