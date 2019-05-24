/* This file is generated, do not edit! */
package tensorflow.contrib.keras.api.keras.preprocessing.image;
@:pythonImport("tensorflow.contrib.keras.api.keras.preprocessing.image") extern class Image_Module {
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
		
		Arguments:
		    x: Input Numpy array.
		    data_format: Image data format.
		        either "channels_first" or "channels_last".
		    scale: Whether to rescale image values
		        to be within `[0, 255]`.
		    dtype: Dtype to use.
		
		Returns:
		    A PIL Image instance.
		
		Raises:
		    ImportError: if PIL is not available.
		    ValueError: if invalid `x` or `data_format` is passed.
	**/
	static public function array_to_img(x:Dynamic, ?data_format:Dynamic, ?scale:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Converts a PIL Image instance to a Numpy array.
		
		Arguments:
		    img: PIL Image instance.
		    data_format: Image data format,
		        either "channels_first" or "channels_last".
		    dtype: Dtype to use for the returned array.
		
		Returns:
		    A 3D Numpy array.
		
		Raises:
		    ValueError: if invalid `img` or `data_format` is passed.
	**/
	static public function img_to_array(img:Dynamic, ?data_format:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Loads an image into PIL format.
		
		# Arguments
		    path: Path to image file.
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
		
		# Returns
		    A PIL Image instance.
		
		# Raises
		    ImportError: if PIL is not available.
		    ValueError: if interpolation method is not supported.
	**/
	static public function load_img(path:Dynamic, ?grayscale:Dynamic, ?color_mode:Dynamic, ?target_size:Dynamic, ?interpolation:Dynamic):Dynamic;
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
		    interpolation_order int: order of spline interpolation.
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
		    interpolation_order int: order of spline interpolation.
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
		    interpolation_order int: order of spline interpolation.
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
		    interpolation_order int: order of spline interpolation.
		        see `ndimage.interpolation.affine_transform`
		
		# Returns
		    Zoomed Numpy image tensor.
		
		# Raises
		    ValueError: if `zoom_range` isn't a tuple.
	**/
	static public function random_zoom(x:Dynamic, zoom_range:Dynamic, ?row_axis:Dynamic, ?col_axis:Dynamic, ?channel_axis:Dynamic, ?fill_mode:Dynamic, ?cval:Dynamic, ?interpolation_order:Dynamic):Dynamic;
}