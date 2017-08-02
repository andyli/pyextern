/* This file is generated, do not edit! */
package keras.preprocessing.image;
@:pythonImport("keras.preprocessing.image", "ImageDataGenerator") extern class ImageDataGenerator {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(?featurewise_center:Dynamic, ?samplewise_center:Dynamic, ?featurewise_std_normalization:Dynamic, ?samplewise_std_normalization:Dynamic, ?zca_whitening:Dynamic, ?zca_epsilon:Dynamic, ?rotation_range:Dynamic, ?width_shift_range:Dynamic, ?height_shift_range:Dynamic, ?shear_range:Dynamic, ?zoom_range:Dynamic, ?channel_shift_range:Dynamic, ?fill_mode:Dynamic, ?cval:Dynamic, ?horizontal_flip:Dynamic, ?vertical_flip:Dynamic, ?rescale:Dynamic, ?preprocessing_function:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?featurewise_center:Dynamic, ?samplewise_center:Dynamic, ?featurewise_std_normalization:Dynamic, ?samplewise_std_normalization:Dynamic, ?zca_whitening:Dynamic, ?zca_epsilon:Dynamic, ?rotation_range:Dynamic, ?width_shift_range:Dynamic, ?height_shift_range:Dynamic, ?shear_range:Dynamic, ?zoom_range:Dynamic, ?channel_shift_range:Dynamic, ?fill_mode:Dynamic, ?cval:Dynamic, ?horizontal_flip:Dynamic, ?vertical_flip:Dynamic, ?rescale:Dynamic, ?preprocessing_function:Dynamic, ?data_format:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Fits internal statistics to some sample data.
		
		Required for featurewise_center, featurewise_std_normalization
		and zca_whitening.
		
		# Arguments
		    x: Numpy array, the data to fit on. Should have rank 4.
		        In case of grayscale data,
		        the channels axis should have value 1, and in case
		        of RGB data, it should have value 3.
		    augment: Whether to fit on randomly augmented samples
		    rounds: If `augment`,
		        how many augmentation passes to do over the data
		    seed: random seed.
		
		# Raises
		    ValueError: in case of invalid input `x`.
	**/
	public function fit(x:Dynamic, ?augment:Dynamic, ?rounds:Dynamic, ?seed:Dynamic):Dynamic;
	public function flow(x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?save_to_dir:Dynamic, ?save_prefix:Dynamic, ?save_format:Dynamic):Dynamic;
	public function flow_from_directory(directory:Dynamic, ?target_size:Dynamic, ?color_mode:Dynamic, ?classes:Dynamic, ?class_mode:Dynamic, ?batch_size:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?save_to_dir:Dynamic, ?save_prefix:Dynamic, ?save_format:Dynamic, ?follow_links:Dynamic):Dynamic;
	/**
		Randomly augment a single image tensor.
		
		# Arguments
		    x: 3D tensor, single image.
		    seed: random seed.
		
		# Returns
		    A randomly transformed version of the input (same shape).
	**/
	public function random_transform(x:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Apply the normalization configuration to a batch of inputs.
		
		# Arguments
		    x: batch of inputs to be normalized.
		
		# Returns
		    The inputs, normalized.
	**/
	public function standardize(x:Dynamic):Dynamic;
}