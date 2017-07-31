/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.dataframe.transforms.hashes;
@:pythonImport("tensorflow.contrib.learn.python.learn.dataframe.transforms.hashes", "HashFast") extern class HashFast {
	/**
		Apply this `Transform` to the provided `Series`, producing 'Series'.
		
		Args:
		  input_series: None, a `Series`, or a list of input `Series`, acting as
		     positional arguments.
		
		Returns:
		  A namedtuple of the output `Series`.
		
		Raises:
		  ValueError: `input_series` does not have expected length
	**/
	public function __call__(?input_series:Dynamic):Dynamic;
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
		Initialize `HashFast`.
		
		Args:
		  num_buckets: The number of hash buckets to use.
	**/
	@:native("__init__")
	public function ___init__(num_buckets:Dynamic):Dynamic;
	/**
		Initialize `HashFast`.
		
		Args:
		  num_buckets: The number of hash buckets to use.
	**/
	public function new(num_buckets:Dynamic):Void;
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
		Applies the transformation to the `transform_input`.
		
		Args:
		  input_tensors: a list of Tensors representing the input to
		    the Transform.
		  **kwargs: additional keyword arguments, unused here.
		
		Returns:
		    A namedtuple of Tensors representing the transformed output.
	**/
	public function _apply_transform(input_tensors:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for `build(...)`; verifies the output of `_build_transform`.
		
		Args:
		  output_tensors: value returned by a call to `_build_transform`.
		
		Raises:
		  TypeError: `transform_output` is not a list.
		  ValueError: `transform_output` does not match `output_names`.
	**/
	public function _check_output_tensors(output_tensors:Dynamic):Dynamic;
	/**
		The names of `Series` output by the `Transform`.
		
		This function should depend only on `@parameter`s of this `Transform`.
		
		Returns:
		  Names of outputs provided by this Transform, as a string, tuple, or list.
	**/
	public var _output_names : Dynamic;
	/**
		Apply this `Transform` to the provided `Series`, producing `Series`.
		
		Args:
		  input_series: None, a `Series`, or a list of input `Series`, acting as
		     positional arguments.
		
		Returns:
		  A namedtuple of the output `Series`.
	**/
	public function _produce_output_series(?input_series:Dynamic):Dynamic;
	/**
		Apply this `Transform` to the provided `Series`, producing 'Tensor's.
		
		Args:
		  input_series: None, a `Series`, or a list of input `Series`, acting as
		     positional arguments.
		  cache: a dict from Series reprs to Tensors.
		  **kwargs: Additional keyword arguments, unused here.
		
		Returns:
		  A namedtuple of the output Tensors.
		
		Raises:
		  ValueError: `input_series` does not have expected length
	**/
	public function build_transitive(input_series:Dynamic, ?cache:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The number of `Series` that the `Transform` should expect as input.
		
		`None` indicates that the transform can take a variable number of inputs.
		
		This function should depend only on `@parameter`s of this `Transform`.
		
		Returns:
		  The number of expected inputs.
	**/
	public var input_valency : Dynamic;
	/**
		Name of the transform.
	**/
	public var name : Dynamic;
	/**
		The names of `Series` output by the `Transform`.
		
		This function should depend only on `@parameter`s of this `Transform`.
		
		Returns:
		  A tuple of names of outputs provided by this Transform.
	**/
	public var output_names : Dynamic;
	/**
		A dict of names to values of properties marked with `@parameter`.
	**/
	public function parameters():Dynamic;
	/**
		Provides a namedtuple type which will be used for output.
		
		A Transform generates one or many outputs, named according to
		_output_names.  This method creates (and caches) a namedtuple type using
		those names as the keys.  The Transform output is then generated by
		instantiating an object of this type with corresponding values.
		
		Note this output type is used both for `__call__`, in which case the
		values are `TransformedSeries`, and for `apply_transform`, in which case
		the values are `Tensor`s.
		
		Returns:
		  A namedtuple type fixing the order and names of the outputs of this
		    transform.
	**/
	public var return_type : Dynamic;
}