/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.data.tfexample_decoder;
@:pythonImport("tensorflow.contrib.slim.python.slim.data.tfexample_decoder", "Image") extern class Image {
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
		Initializes the image.
		
		Args:
		  image_key: the name of the TF-Example feature in which the encoded image
		    is stored.
		  format_key: the name of the TF-Example feature in which the image format
		    is stored.
		  shape: the output shape of the image as 1-D `Tensor`
		    [height, width, channels]. If provided, the image is reshaped
		    accordingly. If left as None, no reshaping is done. A shape should
		    be supplied only if all the stored images have the same shape.
		  channels: the number of channels in the image.
		  dtype: images will be decoded at this bit depth. Different formats
		    support different bit depths.
		      See tf.image.decode_image,
		          tf.decode_raw,
		  repeated: if False, decodes a single image. If True, decodes a
		    variable number of image strings from a 1D tensor of strings.
		  dct_method: An optional string. Defaults to empty string. It only takes
		    effect when image format is jpeg, used to specify a hint about the
		    algorithm used for jpeg decompression. Currently valid values
		    are ['INTEGER_FAST', 'INTEGER_ACCURATE']. The hint may be ignored, for
		    example, the jpeg library does not have that specific option.
	**/
	@:native("__init__")
	public function ___init__(?image_key:Dynamic, ?format_key:Dynamic, ?shape:Dynamic, ?channels:Dynamic, ?dtype:Dynamic, ?repeated:Dynamic, ?dct_method:Dynamic):Dynamic;
	/**
		Initializes the image.
		
		Args:
		  image_key: the name of the TF-Example feature in which the encoded image
		    is stored.
		  format_key: the name of the TF-Example feature in which the image format
		    is stored.
		  shape: the output shape of the image as 1-D `Tensor`
		    [height, width, channels]. If provided, the image is reshaped
		    accordingly. If left as None, no reshaping is done. A shape should
		    be supplied only if all the stored images have the same shape.
		  channels: the number of channels in the image.
		  dtype: images will be decoded at this bit depth. Different formats
		    support different bit depths.
		      See tf.image.decode_image,
		          tf.decode_raw,
		  repeated: if False, decodes a single image. If True, decodes a
		    variable number of image strings from a 1D tensor of strings.
		  dct_method: An optional string. Defaults to empty string. It only takes
		    effect when image format is jpeg, used to specify a hint about the
		    algorithm used for jpeg decompression. Currently valid values
		    are ['INTEGER_FAST', 'INTEGER_ACCURATE']. The hint may be ignored, for
		    example, the jpeg library does not have that specific option.
	**/
	public function new(?image_key:Dynamic, ?format_key:Dynamic, ?shape:Dynamic, ?channels:Dynamic, ?dtype:Dynamic, ?repeated:Dynamic, ?dct_method:Dynamic):Void;
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
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __metaclass__(name:Dynamic, bases:Dynamic, namespace:Dynamic):Dynamic;
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
	/**
		Decodes the image buffer.
		
		Args:
		  image_buffer: The tensor representing the encoded image tensor.
		  image_format: The image format for the image in `image_buffer`. If image
		    format is `raw`, all images are expected to be in this format, otherwise
		    this op can decode a mix of `jpg` and `png` formats.
		
		Returns:
		  A tensor that represents decoded image of self._shape, or
		  (?, ?, self._channels) if self._shape is not specified.
	**/
	public function _decode(image_buffer:Dynamic, image_format:Dynamic):Dynamic;
	public var keys : Dynamic;
	/**
		See base class.
	**/
	public function tensors_to_item(keys_to_tensors:Dynamic):Dynamic;
}