/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.feature_column;
@:pythonImport("tensorflow.contrib.layers.python.layers.feature_column", "_FeatureColumn") extern class _FeatureColumn {
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Returns None, or a (path,tensor_name) to load a checkpoint from.
	**/
	public function _checkpoint_path():Dynamic;
	/**
		Returns arguments to embedding lookup to build an input layer.
	**/
	public function _deep_embedding_lookup_arguments(input_tensor:Dynamic):Dynamic;
	/**
		Helper method for self.key() that omits particular properties.
	**/
	public function _key_without_properties(properties:Dynamic):Dynamic;
	/**
		Returns a dense tensor representing this column's values.
	**/
	public function _to_dense_tensor(input_tensor:Dynamic):Dynamic;
	/**
		Returns a Tensor as an input to the first layer of neural network.
	**/
	public function _to_dnn_input_layer(input_tensor:Dynamic, ?weight_collection:Dynamic, ?trainable:Dynamic, ?output_rank:Dynamic):Dynamic;
	/**
		Returns arguments to look up embeddings for this column.
	**/
	public function _wide_embedding_lookup_arguments(input_tensor:Dynamic):Dynamic;
	/**
		Returns configuration of the base feature for `tf.parse_example`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-09-25.
		Instructions for updating:
		Should be private.
	**/
	public var config : Dynamic;
	/**
		Apply transformation and inserts it into columns_to_tensors. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-09-25.
		Instructions for updating:
		Should be private.
		
		Args:
		  columns_to_tensors: A mapping from feature columns to tensors. 'string'
		    key means a base feature (not-transformed). It can have _FeatureColumn
		    as a key too. That means that _FeatureColumn is already transformed.
	**/
	public function insert_transformed_feature(columns_to_tensors:Dynamic):Dynamic;
	/**
		Returns a string which will be used as a key when we do sorting. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-09-25.
		Instructions for updating:
		Should be private.
	**/
	public var key : Dynamic;
	/**
		Returns the name of column or transformed column. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-09-25.
		Instructions for updating:
		Should be private.
	**/
	public var name : Dynamic;
}