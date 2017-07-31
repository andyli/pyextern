/* This file is generated, do not edit! */
package tensorflow.contrib.kernel_methods.python.mappers.random_fourier_features;
@:pythonImport("tensorflow.contrib.kernel_methods.python.mappers.random_fourier_features", "RandomFourierFeatureMapper") extern class RandomFourierFeatureMapper {
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
		Constructs a RandomFourierFeatureMapper instance.
		
		Args:
		  input_dim: The dimension (number of features) of the tensors to be mapped.
		  output_dim: The output dimension of the mapping.
		  stddev: The standard deviation of the Gaussian kernel to be approximated.
		    The error of the classifier trained using this approximation is very
		    sensitive to this parameter.
		  seed: An integer used to initialize the parameters (`Omega` and `b`) of
		    the mapper. For repeatable sequences across different invocations of the
		    mapper object (for instance, to ensure consistent mapping both at
		    training and eval/inference if these happen in different invocations),
		    set this to the same integer.
		  name: name for the mapper object.
	**/
	@:native("__init__")
	public function ___init__(input_dim:Dynamic, output_dim:Dynamic, ?stddev:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Constructs a RandomFourierFeatureMapper instance.
		
		Args:
		  input_dim: The dimension (number of features) of the tensors to be mapped.
		  output_dim: The output dimension of the mapping.
		  stddev: The standard deviation of the Gaussian kernel to be approximated.
		    The error of the classifier trained using this approximation is very
		    sensitive to this parameter.
		  seed: An integer used to initialize the parameters (`Omega` and `b`) of
		    the mapper. For repeatable sequences across different invocations of the
		    mapper object (for instance, to ensure consistent mapping both at
		    training and eval/inference if these happen in different invocations),
		    set this to the same integer.
		  name: name for the mapper object.
	**/
	public function new(input_dim:Dynamic, output_dim:Dynamic, ?stddev:Dynamic, ?seed:Dynamic, ?name:Dynamic):Void;
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
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	public var input_dim : Dynamic;
	/**
		Maps each row of input_tensor using random Fourier features.
		
		Args:
		  input_tensor: a `Tensor` containing input features. It's shape is
		  [batch_size, self._input_dim].
		
		Returns:
		  A `Tensor` of shape [batch_size, self._output_dim] containing RFFM-mapped
		  features.
		
		Raises:
		  InvalidShapeError: if the shape of the `input_tensor` is inconsistent with
		    expected input dimension.
	**/
	public function map(input_tensor:Dynamic):Dynamic;
	/**
		Returns a name for the `RandomFourierFeatureMapper` instance.
		
		If the name provided in the constructor is `None`, then the object's unique
		id is returned.
		
		Returns:
		  A name for the `RandomFourierFeatureMapper` instance.
	**/
	public var name : Dynamic;
	/**
		Returns the output dimension of the mapping.
	**/
	public var output_dim : Dynamic;
}