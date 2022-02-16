/* This file is generated, do not edit! */
package tensorflow.python.keras.preprocessing.image;
@:pythonImport("tensorflow.python.keras.preprocessing.image", "DataFrameIterator") extern class DataFrameIterator {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(idx:Dynamic):Dynamic;
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
	public function ___init__(dataframe:Dynamic, ?directory:Dynamic, ?image_data_generator:Dynamic, ?x_col:Dynamic, ?y_col:Dynamic, ?weight_col:Dynamic, ?target_size:Dynamic, ?color_mode:Dynamic, ?classes:Dynamic, ?class_mode:Dynamic, ?batch_size:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?data_format:Dynamic, ?save_to_dir:Dynamic, ?save_prefix:Dynamic, ?save_format:Dynamic, ?subset:Dynamic, ?interpolation:Dynamic, ?dtype:Dynamic, ?validate_filenames:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(dataframe:Dynamic, ?directory:Dynamic, ?image_data_generator:Dynamic, ?x_col:Dynamic, ?y_col:Dynamic, ?weight_col:Dynamic, ?target_size:Dynamic, ?color_mode:Dynamic, ?classes:Dynamic, ?class_mode:Dynamic, ?batch_size:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?data_format:Dynamic, ?save_to_dir:Dynamic, ?save_prefix:Dynamic, ?save_format:Dynamic, ?subset:Dynamic, ?interpolation:Dynamic, ?dtype:Dynamic, ?validate_filenames:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	public function __len__():Dynamic;
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
	static public function __new__(cls:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __next__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function _check_params(df:Dynamic, x_col:Dynamic, y_col:Dynamic, weight_col:Dynamic, classes:Dynamic):Dynamic;
	static public function _filter_classes(df:Dynamic, y_col:Dynamic, classes:Dynamic):Dynamic;
	/**
		Keep only dataframe rows with valid filenames
		
		# Arguments
		    df: Pandas dataframe containing filenames in a column
		    x_col: string, column in `df` that contains the filenames or filepaths
		
		# Returns
		    absolute paths to image files
	**/
	public function _filter_valid_filepaths(df:Dynamic, x_col:Dynamic):Dynamic;
	public function _flow_index():Dynamic;
	/**
		Gets a batch of transformed samples.
		
		# Arguments
		    index_array: Array of sample indices to include in batch.
		
		# Returns
		    A batch of transformed samples.
	**/
	public function _get_batches_of_transformed_samples(index_array:Dynamic):Dynamic;
	static public var _keras_api_names : Dynamic;
	static public var _keras_api_names_v1 : Dynamic;
	public function _set_index_array():Dynamic;
	static public var allowed_class_modes : Dynamic;
	/**
		List of absolute paths to image files
	**/
	public var filepaths : Dynamic;
	public function get_classes(df:Dynamic, y_col:Dynamic):Dynamic;
	/**
		Class labels of every observation
	**/
	public var labels : Dynamic;
	/**
		For python 2.x.
		
		# Returns
		    The next batch.
	**/
	public function next():Dynamic;
	public function on_epoch_end():Dynamic;
	public function reset():Dynamic;
	public var sample_weight : Dynamic;
	/**
		Sets attributes to use later for processing files into a batch.
		
		# Arguments
		    image_data_generator: Instance of `ImageDataGenerator`
		        to use for random transformations and normalization.
		    target_size: tuple of integers, dimensions to resize input images to.
		    color_mode: One of `"rgb"`, `"rgba"`, `"grayscale"`.
		        Color mode to read images.
		    data_format: String, one of `channels_first`, `channels_last`.
		    save_to_dir: Optional directory where to save the pictures
		        being yielded, in a viewable format. This is useful
		        for visualizing the random transformations being
		        applied, for debugging purposes.
		    save_prefix: String prefix to use for saving sample
		        images (if `save_to_dir` is set).
		    save_format: Format to use for saving sample images
		        (if `save_to_dir` is set).
		    subset: Subset of data (`"training"` or `"validation"`) if
		        validation_split is set in ImageDataGenerator.
		    interpolation: Interpolation method used to resample the image if the
		        target size is different from that of the loaded image.
		        Supported methods are "nearest", "bilinear", and "bicubic".
		        If PIL version 1.1.3 or newer is installed, "lanczos" is also
		        supported. If PIL version 3.4.0 or newer is installed, "box" and
		        "hamming" are also supported. By default, "nearest" is used.
	**/
	public function set_processing_attrs(image_data_generator:Dynamic, target_size:Dynamic, color_mode:Dynamic, data_format:Dynamic, save_to_dir:Dynamic, save_prefix:Dynamic, save_format:Dynamic, subset:Dynamic, interpolation:Dynamic):Dynamic;
	static public var white_list_formats : Dynamic;
}