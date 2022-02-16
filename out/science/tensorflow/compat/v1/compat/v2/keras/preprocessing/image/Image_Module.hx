/* This file is generated, do not edit! */
package tensorflow.compat.v1.compat.v2.keras.preprocessing.image;
@:pythonImport("tensorflow.compat.v1.compat.v2.keras.preprocessing.image") extern class Image_Module {
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