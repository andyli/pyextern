/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.feature_column;
@:pythonImport("tensorflow.contrib.layers.python.layers.feature_column", "_WeightedSparseColumn") extern class _WeightedSparseColumn {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self as a plain tuple.  Used by copy and pickle.
	**/
	public function __getnewargs__():Dynamic;
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
		Return self*value.n
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(cls:Dynamic, sparse_id_column:Dynamic, weight_column_name:Dynamic, dtype:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a nicely formatted representation string
	**/
	public function __repr__():Dynamic;
	/**
		Return self*value.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Return a new OrderedDict which maps field names to their values.
	**/
	public function _asdict():Dynamic;
	static public var _fields : Dynamic;
	/**
		Make a new _WeightedSparseColumn object from a sequence or iterable
	**/
	static public function _make(iterable:Dynamic, ?_new:Dynamic, ?len:Dynamic):Dynamic;
	/**
		Return a new _WeightedSparseColumn object replacing specified fields with new values
	**/
	public function _replace(?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _source : Dynamic;
	/**
		Returns configuration of the base feature for `tf.parse_example`.
	**/
	public var config : Dynamic;
	/**
		T.count(value) -> integer -- return number of occurrences of value
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Alias for field number 2
	**/
	public var dtype : Dynamic;
	/**
		Returns the id tensor from the given transformed input_tensor.
	**/
	public function id_tensor(input_tensor:Dynamic):Dynamic;
	/**
		T.index(value, [start, [stop]]) -> integer -- return first index of value.
		Raises ValueError if the value is not present.
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Inserts a tuple with the id and weight tensors.
	**/
	public function insert_transformed_feature(columns_to_tensors:Dynamic):Dynamic;
	/**
		Returns a string which will be used as a key when we do sorting.
	**/
	public var key : Dynamic;
	/**
		Returns id size.
	**/
	public var length : Dynamic;
	/**
		Returns the name of column or transformed column.
	**/
	public var name : Dynamic;
	/**
		Alias for field number 0
	**/
	public var sparse_id_column : Dynamic;
	/**
		Returns a Tensor as an input to the first layer of neural network.
	**/
	public function to_dnn_input_layer(input_tensor:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Returns a Tensor as linear predictions and a list of created Variable.
	**/
	public function to_weighted_sum(input_tensor:Dynamic, ?num_outputs:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Alias for field number 1
	**/
	public var weight_column_name : Dynamic;
	/**
		Returns the weight tensor from the given transformed input_tensor.
	**/
	public function weight_tensor(input_tensor:Dynamic):Dynamic;
}