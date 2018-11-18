/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.preprocessing.categorical;
@:pythonImport("tensorflow.contrib.learn.python.learn.preprocessing.categorical", "CategoricalProcessor") extern class CategoricalProcessor {
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
		Initializes a CategoricalProcessor instance. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tensorflow/transform or tf.data for sequence processing.
		
		Args:
		  min_frequency: Minimum frequency of categories in the vocabulary.
		  share: Share vocabulary between variables.
		  vocabularies: list of CategoricalVocabulary objects for each variable in
		    the input dataset.
		
		Attributes:
		  vocabularies_: list of CategoricalVocabulary objects.
	**/
	@:native("__init__")
	public function ___init__(?min_frequency:Dynamic, ?share:Dynamic, ?vocabularies:Dynamic):Dynamic;
	/**
		Initializes a CategoricalProcessor instance. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tensorflow/transform or tf.data for sequence processing.
		
		Args:
		  min_frequency: Minimum frequency of categories in the vocabulary.
		  share: Share vocabulary between variables.
		  vocabularies: list of CategoricalVocabulary objects for each variable in
		    the input dataset.
		
		Attributes:
		  vocabularies_: list of CategoricalVocabulary objects.
	**/
	public function new(?min_frequency:Dynamic, ?share:Dynamic, ?vocabularies:Dynamic):Void;
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
	/**
		Learn a vocabulary dictionary of all categories in `x`.
		
		Args:
		  x: numpy matrix or iterable of lists/numpy arrays.
		  unused_y: to match fit format signature of estimators.
		
		Returns:
		  self
	**/
	public function fit(x:Dynamic, ?unused_y:Dynamic):Dynamic;
	/**
		Learn the vocabulary dictionary and return indexies of categories.
		
		Args:
		  x: numpy matrix or iterable of lists/numpy arrays.
		  unused_y: to match fit_transform signature of estimators.
		
		Returns:
		  x: iterable, [n_samples]. Category-id matrix.
	**/
	public function fit_transform(x:Dynamic, ?unused_y:Dynamic):Dynamic;
	/**
		Freeze or unfreeze all vocabularies.
		
		Args:
		  freeze: Boolean, indicate if vocabularies should be frozen.
	**/
	public function freeze(?freeze:Dynamic):Dynamic;
	/**
		Transform documents to category-id matrix.
		
		Converts categories to ids give fitted vocabulary from `fit` or
		one provided in the constructor.
		
		Args:
		  x: numpy matrix or iterable of lists/numpy arrays.
		
		Yields:
		  x: iterable, [n_samples]. Category-id matrix.
	**/
	public function transform(x:Dynamic):Dynamic;
}