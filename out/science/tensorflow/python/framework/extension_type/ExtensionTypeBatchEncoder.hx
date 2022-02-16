/* This file is generated, do not edit! */
package tensorflow.python.framework.extension_type;
@:pythonImport("tensorflow.python.framework.extension_type", "ExtensionTypeBatchEncoder") extern class ExtensionTypeBatchEncoder {
	static public var __abstractmethods__ : Dynamic;
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
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var _abc_impl : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Returns the TypeSpec representing a batch of values described by `spec`.
		
		The default definition returns a `TypeSpec` that is equal to `spec`, except
		that an outer axis with size `batch_size` is added to every nested
		`TypeSpec` and `TensorShape` field.  Subclasses may override this default
		definition, when necessary.
		
		Args:
		  spec: The `TypeSpec` for an individual value.
		  batch_size: An `int` indicating the number of values that are batched
		    together, or `None` if the batch size is not known.
		
		Returns:
		  A `TypeSpec` for a batch of values.
	**/
	public function batch(spec:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Decodes `value` from a batchable tensor encoding.
		
		See `encode` for a description of the default encoding.  Subclasses may
		override this default definition, when necessary.
		
		Args:
		  spec: The TypeSpec for the result value.  If encoded values with spec `s`
		    were batched, then `spec` should be `s.batch(batch_size)`; or if encoded
		    values with spec `s` were unbatched, then `spec` should be
		    `s.unbatch()`.
		  encoded_value: A nest of values returned by `encode`; or a nest of
		    values that was formed by stacking, unstacking, or concatenating the
		    corresponding elements of values returned by `encode`.
		
		Returns:
		  A value compatible with `type_spec`.
	**/
	public function decode(spec:Dynamic, encoded_value:Dynamic):Dynamic;
	/**
		Encodes `value` as a nest of batchable Tensors or CompositeTensors.
		
		The default definition returns a flat tuple of all the `Tensor`s,
		`CompositeTensor`s, and `ExtensionType`s from a depth-first traversal of
		`value`'s fields. Subclasses may override this default definition, when
		necessary.
		
		Args:
		  spec: The TypeSpec of the value to encode.
		  value: A value compatible with `spec`.
		  minimum_rank: The minimum rank for the returned Tensors, CompositeTensors,
		    and ExtensionType values.  This can be used to ensure that the encoded
		    values can be unbatched this number of times.   If `minimum_rank>0`,
		    then `t.shape[:minimum_rank]` must be compatible for all values `t`
		    returned by `encode`.
		
		Returns:
		  A nest (as defined by `tf.nest`) of `tf.Tensor`s, batchable
		  `tf.CompositeTensor`s, or `tf.ExtensionType`s.  Stacking, unstacking, or
		  concatenating these encoded values and then decoding the result must be
		  equivalent to stacking, unstacking, or concatenating the original values.
	**/
	public function encode(spec:Dynamic, value:Dynamic, ?minimum_rank:Dynamic):Dynamic;
	/**
		Returns a list of `TensorSpec`(s) describing the encoding for `spec`.
		
		See `encode` for a description of the default encoding.  Subclasses may
		override this default definition, when necessary.
		
		Args:
		  spec: The TypeSpec whose encoding should be described.
		
		Returns:
		  A nest (as defined by `tf.nest) of `tf.TypeSpec`, describing the values
		  that are returned by `self.encode(spec, ...)`.  All TypeSpecs in this
		  nest must be batchable.
	**/
	public function encoding_specs(spec:Dynamic):Dynamic;
	/**
		Returns the TypeSpec for a single unbatched element in `spec`.
		
		The default definition returns a `TypeSpec` that is equal to `spec`, except
		that the outermost axis is removed from every nested `TypeSpec`, and
		`TensorShape` field.  Subclasses may override this default definition, when
		necessary.
		
		Args:
		  spec: The `TypeSpec` for a batch of values.
		
		Returns:
		  A `TypeSpec` for an individual value.
	**/
	public function unbatch(spec:Dynamic):Dynamic;
}