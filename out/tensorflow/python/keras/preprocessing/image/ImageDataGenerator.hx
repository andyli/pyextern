/* This file is generated, do not edit! */
package tensorflow.python.keras.preprocessing.image;
@:pythonImport("tensorflow.python.keras.preprocessing.image", "ImageDataGenerator") extern class ImageDataGenerator {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?featurewise_center:Dynamic, ?samplewise_center:Dynamic, ?featurewise_std_normalization:Dynamic, ?samplewise_std_normalization:Dynamic, ?zca_whitening:Dynamic, ?zca_epsilon:Dynamic, ?rotation_range:Dynamic, ?width_shift_range:Dynamic, ?height_shift_range:Dynamic, ?brightness_range:Dynamic, ?shear_range:Dynamic, ?zoom_range:Dynamic, ?channel_shift_range:Dynamic, ?fill_mode:Dynamic, ?cval:Dynamic, ?horizontal_flip:Dynamic, ?vertical_flip:Dynamic, ?rescale:Dynamic, ?preprocessing_function:Dynamic, ?data_format:Dynamic, ?validation_split:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?featurewise_center:Dynamic, ?samplewise_center:Dynamic, ?featurewise_std_normalization:Dynamic, ?samplewise_std_normalization:Dynamic, ?zca_whitening:Dynamic, ?zca_epsilon:Dynamic, ?rotation_range:Dynamic, ?width_shift_range:Dynamic, ?height_shift_range:Dynamic, ?brightness_range:Dynamic, ?shear_range:Dynamic, ?zoom_range:Dynamic, ?channel_shift_range:Dynamic, ?fill_mode:Dynamic, ?cval:Dynamic, ?horizontal_flip:Dynamic, ?vertical_flip:Dynamic, ?rescale:Dynamic, ?preprocessing_function:Dynamic, ?data_format:Dynamic, ?validation_split:Dynamic, ?dtype:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Applies a transformation to an image according to given parameters.
		
		# Arguments
		    x: 3D tensor, single image.
		    transform_parameters: Dictionary with string - parameter pairs
		        describing the transformation.
		        Currently, the following parameters
		        from the dictionary are used:
		        - `'theta'`: Float. Rotation angle in degrees.
		        - `'tx'`: Float. Shift in the x direction.
		        - `'ty'`: Float. Shift in the y direction.
		        - `'shear'`: Float. Shear angle in degrees.
		        - `'zx'`: Float. Zoom in the x direction.
		        - `'zy'`: Float. Zoom in the y direction.
		        - `'flip_horizontal'`: Boolean. Horizontal flip.
		        - `'flip_vertical'`: Boolean. Vertical flip.
		        - `'channel_shift_intencity'`: Float. Channel shift intensity.
		        - `'brightness'`: Float. Brightness shift intensity.
		
		# Returns
		    A transformed version of the input (same shape).
	**/
	public function apply_transform(x:Dynamic, transform_parameters:Dynamic):Dynamic;
	/**
		Fits the data generator to some sample data.
		
		This computes the internal data stats related to the
		data-dependent transformations, based on an array of sample data.
		
		Only required if `featurewise_center` or
		`featurewise_std_normalization` or `zca_whitening` are set to True.
		
		# Arguments
		    x: Sample data. Should have rank 4.
		     In case of grayscale data,
		     the channels axis should have value 1, in case
		     of RGB data, it should have value 3, and in case
		     of RGBA data, it should have value 4.
		    augment: Boolean (default: False).
		        Whether to fit on randomly augmented samples.
		    rounds: Int (default: 1).
		        If using data augmentation (`augment=True`),
		        this is how many augmentation passes over the data to use.
		    seed: Int (default: None). Random seed.
	**/
	public function fit(x:Dynamic, ?augment:Dynamic, ?rounds:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Takes data & label arrays, generates batches of augmented data.
		
		# Arguments
		    x: Input data. Numpy array of rank 4 or a tuple.
		        If tuple, the first element
		        should contain the images and the second element
		        another numpy array or a list of numpy arrays
		        that gets passed to the output
		        without any modifications.
		        Can be used to feed the model miscellaneous data
		        along with the images.
		        In case of grayscale data, the channels axis of the image array
		        should have value 1, in case
		        of RGB data, it should have value 3, and in case
		        of RGBA data, it should have value 4.
		    y: Labels.
		    batch_size: Int (default: 32).
		    shuffle: Boolean (default: True).
		    sample_weight: Sample weights.
		    seed: Int (default: None).
		    save_to_dir: None or str (default: None).
		        This allows you to optionally specify a directory
		        to which to save the augmented pictures being generated
		        (useful for visualizing what you are doing).
		    save_prefix: Str (default: `''`).
		        Prefix to use for filenames of saved pictures
		        (only relevant if `save_to_dir` is set).
		    save_format: one of "png", "jpeg"
		        (only relevant if `save_to_dir` is set). Default: "png".
		    subset: Subset of data (`"training"` or `"validation"`) if
		        `validation_split` is set in `ImageDataGenerator`.
		
		# Returns
		    An `Iterator` yielding tuples of `(x, y)`
		        where `x` is a numpy array of image data
		        (in the case of a single image input) or a list
		        of numpy arrays (in the case with
		        additional inputs) and `y` is a numpy array
		        of corresponding labels. If 'sample_weight' is not None,
		        the yielded tuples are of the form `(x, y, sample_weight)`.
		        If `y` is None, only the numpy array `x` is returned.
	**/
	public function flow(x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?shuffle:Dynamic, ?sample_weight:Dynamic, ?seed:Dynamic, ?save_to_dir:Dynamic, ?save_prefix:Dynamic, ?save_format:Dynamic, ?subset:Dynamic):Dynamic;
	/**
		Takes the dataframe and the path to a directory
		 and generates batches of augmented/normalized data.
		
		# A simple tutorial can be found at: http://bit.ly/keras_flow_from_dataframe
		
		# Arguments
		        dataframe: Pandas dataframe containing the filenames of the
		                   images in a column and classes in another or column/s
		                   that can be fed as raw target data.
		        directory: string, path to the target directory that contains all
		                   the images mapped in the dataframe.
		        x_col: string, column in the dataframe that contains
		               the filenames of the target images.
		        y_col: string or list of strings,columns in
		               the dataframe that will be the target data.
		        has_ext: bool, True if filenames in dataframe[x_col]
		                has filename extensions,else False.
		        target_size: tuple of integers `(height, width)`,
		                     default: `(256, 256)`.
		                     The dimensions to which all images
		                     found will be resized.
		        color_mode: one of "grayscale", "rbg". Default: "rgb".
		                    Whether the images will be converted to have
		                    1 or 3 color channels.
		        classes: optional list of classes
		        (e.g. `['dogs', 'cats']`). Default: None.
		         If not provided, the list of classes will be automatically
		         inferred from the y_col,
		         which will map to the label indices, will be alphanumeric).
		         The dictionary containing the mapping from class names to class
		         indices can be obtained via the attribute `class_indices`.
		        class_mode: one of "categorical", "binary", "sparse",
		          "input", "other" or None. Default: "categorical".
		         Determines the type of label arrays that are returned:
		         - `"categorical"` will be 2D one-hot encoded labels,
		         - `"binary"` will be 1D binary labels,
		         - `"sparse"` will be 1D integer labels,
		         - `"input"` will be images identical
		         to input images (mainly used to work with autoencoders).
		        - `"other"` will be numpy array of y_col data
		         - None, no labels are returned (the generator will only
		                 yield batches of image data, which is useful to use
		         `model.predict_generator()`, `model.evaluate_generator()`, etc.).
		        batch_size: size of the batches of data (default: 32).
		        shuffle: whether to shuffle the data (default: True)
		        seed: optional random seed for shuffling and transformations.
		        save_to_dir: None or str (default: None).
		                     This allows you to optionally specify a directory
		                     to which to save the augmented pictures being generated
		                     (useful for visualizing what you are doing).
		        save_prefix: str. Prefix to use for filenames of saved pictures
		        (only relevant if `save_to_dir` is set).
		        save_format: one of "png", "jpeg"
		        (only relevant if `save_to_dir` is set). Default: "png".
		        follow_links: whether to follow symlinks inside class subdirectories
		        (default: False).
		        subset: Subset of data (`"training"` or `"validation"`) if
		         `validation_split` is set in `ImageDataGenerator`.
		        interpolation: Interpolation method used to resample the image if the
		         target size is different from that of the loaded image.
		         Supported methods are `"nearest"`, `"bilinear"`, and `"bicubic"`.
		         If PIL version 1.1.3 or newer is installed, `"lanczos"` is also
		         supported. If PIL version 3.4.0 or newer is installed, `"box"` and
		         `"hamming"` are also supported. By default, `"nearest"` is used.
		
		# Returns
		    A DataFrameIterator yielding tuples of `(x, y)`
		    where `x` is a numpy array containing a batch
		    of images with shape `(batch_size, *target_size, channels)`
		     and `y` is a numpy array of corresponding labels.
	**/
	public function flow_from_dataframe(dataframe:Dynamic, directory:Dynamic, ?x_col:Dynamic, ?y_col:Dynamic, ?has_ext:Dynamic, ?target_size:Dynamic, ?color_mode:Dynamic, ?classes:Dynamic, ?class_mode:Dynamic, ?batch_size:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?save_to_dir:Dynamic, ?save_prefix:Dynamic, ?save_format:Dynamic, ?subset:Dynamic, ?interpolation:Dynamic):Dynamic;
	/**
		Takes the path to a directory & generates batches of augmented data.
		
		# Arguments
		    directory: Path to the target directory.
		        It should contain one subdirectory per class.
		        Any PNG, JPG, BMP, PPM or TIF images
		        inside each of the subdirectories directory tree
		        will be included in the generator.
		        See [this script](
		        https://gist.github.com/fchollet/0830affa1f7f19fd47b06d4cf89ed44d)
		        for more details.
		    target_size: Tuple of integers `(height, width)`,
		        default: `(256, 256)`.
		        The dimensions to which all images found will be resized.
		    color_mode: One of "grayscale", "rbg", "rgba". Default: "rgb".
		        Whether the images will be converted to
		        have 1, 3, or 4 channels.
		    classes: Optional list of class subdirectories
		        (e.g. `['dogs', 'cats']`). Default: None.
		        If not provided, the list of classes will be automatically
		        inferred from the subdirectory names/structure
		        under `directory`, where each subdirectory will
		        be treated as a different class
		        (and the order of the classes, which will map to the label
		        indices, will be alphanumeric).
		        The dictionary containing the mapping from class names to class
		        indices can be obtained via the attribute `class_indices`.
		    class_mode: One of "categorical", "binary", "sparse",
		        "input", or None. Default: "categorical".
		        Determines the type of label arrays that are returned:
		        - "categorical" will be 2D one-hot encoded labels,
		        - "binary" will be 1D binary labels,
		            "sparse" will be 1D integer labels,
		        - "input" will be images identical
		            to input images (mainly used to work with autoencoders).
		        - If None, no labels are returned
		          (the generator will only yield batches of image data,
		          which is useful to use with `model.predict_generator()`,
		          `model.evaluate_generator()`, etc.).
		          Please note that in case of class_mode None,
		          the data still needs to reside in a subdirectory
		          of `directory` for it to work correctly.
		    batch_size: Size of the batches of data (default: 32).
		    shuffle: Whether to shuffle the data (default: True)
		    seed: Optional random seed for shuffling and transformations.
		    save_to_dir: None or str (default: None).
		        This allows you to optionally specify
		        a directory to which to save
		        the augmented pictures being generated
		        (useful for visualizing what you are doing).
		    save_prefix: Str. Prefix to use for filenames of saved pictures
		        (only relevant if `save_to_dir` is set).
		    save_format: One of "png", "jpeg"
		        (only relevant if `save_to_dir` is set). Default: "png".
		    follow_links: Whether to follow symlinks inside
		        class subdirectories (default: False).
		    subset: Subset of data (`"training"` or `"validation"`) if
		        `validation_split` is set in `ImageDataGenerator`.
		    interpolation: Interpolation method used to
		        resample the image if the
		        target size is different from that of the loaded image.
		        Supported methods are `"nearest"`, `"bilinear"`,
		        and `"bicubic"`.
		        If PIL version 1.1.3 or newer is installed, `"lanczos"` is also
		        supported. If PIL version 3.4.0 or newer is installed,
		        `"box"` and `"hamming"` are also supported.
		        By default, `"nearest"` is used.
		
		# Returns
		    A `DirectoryIterator` yielding tuples of `(x, y)`
		        where `x` is a numpy array containing a batch
		        of images with shape `(batch_size, *target_size, channels)`
		        and `y` is a numpy array of corresponding labels.
	**/
	public function flow_from_directory(directory:Dynamic, ?target_size:Dynamic, ?color_mode:Dynamic, ?classes:Dynamic, ?class_mode:Dynamic, ?batch_size:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?save_to_dir:Dynamic, ?save_prefix:Dynamic, ?save_format:Dynamic, ?follow_links:Dynamic, ?subset:Dynamic, ?interpolation:Dynamic):Dynamic;
	/**
		Generates random parameters for a transformation.
		
		# Arguments
		    seed: Random seed.
		    img_shape: Tuple of integers.
		        Shape of the image that is transformed.
		
		# Returns
		    A dictionary containing randomly chosen parameters describing the
		    transformation.
	**/
	public function get_random_transform(img_shape:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Applies a random transformation to an image.
		
		# Arguments
		    x: 3D tensor, single image.
		    seed: Random seed.
		
		# Returns
		    A randomly transformed version of the input (same shape).
	**/
	public function random_transform(x:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Applies the normalization configuration to a batch of inputs.
		
		# Arguments
		    x: Batch of inputs to be normalized.
		
		# Returns
		    The inputs, normalized.
	**/
	public function standardize(x:Dynamic):Dynamic;
}