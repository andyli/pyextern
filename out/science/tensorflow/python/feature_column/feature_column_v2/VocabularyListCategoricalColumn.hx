/* This file is generated, do not edit! */
package tensorflow.python.feature_column.feature_column_v2;
@:pythonImport("tensorflow.python.feature_column.feature_column_v2", "VocabularyListCategoricalColumn") extern class VocabularyListCategoricalColumn {
	/**
		IdWeightPair(id_tensor, weight_tensor)
	**/
	static public function IdWeightPair(id_tensor:Dynamic, weight_tensor:Dynamic):Dynamic;
	static public var __abstractmethods__ : Dynamic;
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
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
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self as a plain tuple.  Used by copy and pickle.
	**/
	public function __getnewargs__():Dynamic;
	/**
		Allows feature columns to be sorted in Python 3 as they are in Python 2.
		
		Feature columns need to occasionally be sortable, for example when used as
		keys in a features dictionary passed to a layer.
		
		`__gt__` is called when the "other" object being compared during the sort
		does not have `__lt__` defined.
		Example:
		```
		# __lt__ only class
		class A():
		  def __lt__(self, other): return str(self) < str(other)
		
		a = A()
		a < "b" # True
		"0" < a # Error
		
		# __lt__ and __gt__ class
		class B():
		  def __lt__(self, other): return str(self) < str(other)
		  def __gt__(self, other): return str(self) > str(other)
		
		b = B()
		b < "c" # True
		"0" < b # True
		```
		
		Args:
		  other: The other object to compare to.
		
		Returns:
		  True if the string representation of this object is lexicographically
		  greater than the string representation of `other`. For FeatureColumn
		  objects, this looks like "<__main__.FeatureColumn object at 0xa>".
	**/
	public function __gt__(other:Dynamic):Dynamic;
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
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Allows feature columns to be sorted in Python 3 as they are in Python 2.
		
		Feature columns need to occasionally be sortable, for example when used as
		keys in a features dictionary passed to a layer.
		
		In CPython, `__lt__` must be defined for all objects in the
		sequence being sorted.
		
		If any objects in the sequence being sorted do not have an `__lt__` method
		compatible with feature column objects (such as strings), then CPython will
		fall back to using the `__gt__` method below.
		https://docs.python.org/3/library/stdtypes.html#list.sort
		
		Args:
		  other: The other object to compare to.
		
		Returns:
		  True if the string representation of this object is lexicographically less
		  than the string representation of `other`. For FeatureColumn objects,
		  this looks like "<__main__.FeatureColumn object at 0xa>".
	**/
	public function __lt__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create new instance of VocabularyListCategoricalColumn(key, vocabulary_list, dtype, default_value, num_oov_buckets)
	**/
	static public function __new__(_cls:Dynamic, key:Dynamic, vocabulary_list:Dynamic, dtype:Dynamic, default_value:Dynamic, num_oov_buckets:Dynamic):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return a nicely formatted representation string
	**/
	public function __repr__():Dynamic;
	/**
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
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
	/**
		Return a new dict which maps field names to their values.
	**/
	public function _asdict():Dynamic;
	static public var _field_defaults : Dynamic;
	static public var _fields : Dynamic;
	static public var _fields_defaults : Dynamic;
	static public function _from_config(config:Dynamic, ?custom_objects:Dynamic, ?columns_by_name:Dynamic):Dynamic;
	public function _get_config():Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		The old _FeatureColumn APIs are being deprecated. Please use the new FeatureColumn APIs instead.
	**/
	public function _get_sparse_tensors(inputs:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Returns whether this FeatureColumn is fully conformant to the new API.
		
		This is needed for composition type cases where an EmbeddingColumn etc.
		might take in old categorical columns as input and then we want to use the
		old API.
	**/
	public var _is_v2_column : Dynamic;
	/**
		Make a new VocabularyListCategoricalColumn object from a sequence or iterable
	**/
	static public function _make(iterable:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		The old _FeatureColumn APIs are being deprecated. Please use the new FeatureColumn APIs instead.
	**/
	public var _num_buckets : Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		The old _FeatureColumn APIs are being deprecated. Please use the new FeatureColumn APIs instead.
	**/
	public var _parse_example_spec : Dynamic;
	/**
		Return a new VocabularyListCategoricalColumn object replacing specified fields with new values
	**/
	public function _replace(?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Resets the configuration in the column.
		
		Some feature columns e.g. embedding or shared embedding columns might
		have some state that is needed to be reset sometimes. Use this method
		in that scenario.
	**/
	public function _reset_config():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		The old _FeatureColumn APIs are being deprecated. Please use the new FeatureColumn APIs instead.
	**/
	public function _transform_feature(inputs:Dynamic):Dynamic;
	/**
		Creates a lookup table for the vocabulary list.
	**/
	public function _transform_input_tensor(input_tensor:Dynamic, ?state_manager:Dynamic):Dynamic;
	/**
		Returns string. Used for variable_scope. Defaults to self.name.
	**/
	public var _var_scope_name : Dynamic;
	/**
		Return number of occurrences of value.
	**/
	public function count(value:Dynamic):Dynamic;
	/**
		Uses the `state_manager` to create state for the FeatureColumn.
		
		Args:
		  state_manager: A `StateManager` to create / access resources such as
		    lookup tables and variables.
	**/
	public function create_state(state_manager:Dynamic):Dynamic;
	/**
		Alias for field number 3
	**/
	public var default_value : Dynamic;
	/**
		Alias for field number 2
	**/
	public var dtype : Dynamic;
	/**
		See 'FeatureColumn` base class.
	**/
	static public function from_config(config:Dynamic, ?custom_objects:Dynamic, ?columns_by_name:Dynamic):Dynamic;
	/**
		See 'FeatureColumn` base class.
	**/
	public function get_config():Dynamic;
	/**
		See `CategoricalColumn` base class.
	**/
	public function get_sparse_tensors(transformation_cache:Dynamic, state_manager:Dynamic):Dynamic;
	/**
		Return first index of value.
		
		Raises ValueError if the value is not present.
	**/
	public function index(value:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		Alias for field number 0
	**/
	public var key : Dynamic;
	/**
		See `FeatureColumn` base class.
	**/
	public var name : Dynamic;
	/**
		Returns number of buckets in this sparse feature.
	**/
	public var num_buckets : Dynamic;
	/**
		Alias for field number 4
	**/
	public var num_oov_buckets : Dynamic;
	/**
		See 'FeatureColumn` base class.
	**/
	public var parents : Dynamic;
	/**
		See `FeatureColumn` base class.
	**/
	public var parse_example_spec : Dynamic;
	/**
		Creates a lookup table for the vocabulary list.
	**/
	public function transform_feature(transformation_cache:Dynamic, state_manager:Dynamic):Dynamic;
	/**
		Alias for field number 1
	**/
	public var vocabulary_list : Dynamic;
}