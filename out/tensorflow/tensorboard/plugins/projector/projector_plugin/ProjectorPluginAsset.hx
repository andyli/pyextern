/* This file is generated, do not edit! */
package tensorflow.tensorboard.plugins.projector.projector_plugin;
@:pythonImport("tensorflow.tensorboard.plugins.projector.projector_plugin", "ProjectorPluginAsset") extern class ProjectorPluginAsset {
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
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
	static public function __metaclass__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Converts the data associated with embeddings into serializable assets.
	**/
	public function _convert_embedding_to_assets(name:Dynamic, ?values:Dynamic, ?metadata:Dynamic, ?thumbnails:Dynamic, ?thumbnail_dim:Dynamic):Dynamic;
	/**
		Adds an embedding asset to be visualized by the Embedding Projector.
		
		Args:
		  name: Name of the embedding.
		  values: 2D `ndarray` of shape [numPoints, dimensionality]
		      containing the embedding values. The i-th row corresponds to the i-th
		      data point.
		  metadata: Optional. A `Metadata` container mapping column header names to
		      the values of that column.
		  thumbnails: Optional. A 4D `ndarray` or a list of 3D `ndarray`s. Each
		      3D array represents the pixels [height, width, channels] of a single
		      thumbnail. The i-th image corresponds to the i-th row (data point) of
		      the `values` matrix.
		  thumbnail_dim: Required if `thumbnails` is provided. A tuple
		      (height, width) of a single thumbnail in the sprite.
		
		Raises:
		  ValueError: If the name of the embedding was previously used in this
		      object, or `values` is not a 2D array.
	**/
	public function add_embedding(name:Dynamic, values:Dynamic, ?metadata:Dynamic, ?thumbnails:Dynamic, ?thumbnail_dim:Dynamic):Dynamic;
	/**
		Adds metadata for an embedding variable stored in a checkpoint file.
		
		Args:
		  var_name: Name of the embedding variable.
		  metadata: Optional. A `Metadata` container mapping column header names to
		      the values of that column.
		  thumbnails: Optional. A 4D `ndarray` or a list of 3D `ndarray`s. Each
		      3D array represents the pixels [height, width, channels] of a single
		      thumbnail. The i-th image corresponds to the i-th row (data point) of
		      the embedding variable.
		  thumbnail_dim: Required if `thumbnails` is provided. A tuple
		      (height, width) of a single thumbnail in the sprite.
		
		Raises:
		  ValueError: If the name of the variable was previously used in this
		      object, or both `metadata` and `thumbnails` are None.
	**/
	public function add_metadata_for_embedding_variable(var_name:Dynamic, ?metadata:Dynamic, ?thumbnails:Dynamic, ?thumbnail_dim:Dynamic):Dynamic;
	/**
		Provide all of the assets contained by the PluginAsset instance.
		
		The assets method should return a dictionary structured as
		{asset_name: asset_contents}. asset_contents is a string.
		
		This method will be called by the tf.summary.FileWriter when it is time to
		write the assets out to disk.
	**/
	public function assets():Dynamic;
	static public var plugin_name : Dynamic;
}