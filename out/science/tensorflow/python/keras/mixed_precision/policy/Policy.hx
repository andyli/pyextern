/* This file is generated, do not edit! */
package tensorflow.python.keras.mixed_precision.policy;
@:pythonImport("tensorflow.python.keras.mixed_precision.policy", "Policy") extern class Policy {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(name:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(name:Dynamic):Void;
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
	static public var _keras_api_names : Dynamic;
	static public var _keras_api_names_v1 : Dynamic;
	/**
		Parses a Policy name into a compute and variable dtype.
		
		Args:
		  name: The name of the policy:
		
		Returns:
		  The (compute_dtype, variable_dtype) pair.
	**/
	public function _parse_name(name:Dynamic):Dynamic;
	/**
		The compute dtype of this policy.
		
		This is the dtype layers will do their computations in. Typically layers
		output tensors with the compute dtype as well.
		
		Note that even if the compute dtype is float16 or bfloat16, hardware devices
		may not do individual adds, multiplies, and other fundamental operations in
		float16 or bfloat16, but instead may do some of them in float32 for numeric
		stability. The compute dtype is the dtype of the inputs and outputs of the
		TensorFlow ops that the layer executes. Internally, many TensorFlow ops will
		do certain internal calculations in float32 or some other device-internal
		intermediate format with higher precision than float16/bfloat16, to increase
		numeric stability.
		
		For example, a `tf.keras.layers.Dense` layer, when run on a GPU with a
		float16 compute dtype, will pass float16 inputs to `tf.linalg.matmul`. But,
		`tf.linalg.matmul` will do use float32 intermediate math. The performance
		benefit of float16 is still apparent, due to increased memory bandwidth and
		the fact modern GPUs have specialized hardware for computing matmuls on
		float16 inputs while still keeping intermediate computations in float32.
		
		Returns:
		  The compute dtype of this policy, as a string.
	**/
	public var compute_dtype : Dynamic;
	static public function from_config(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	public function get_config():Dynamic;
	/**
		Returns the name of this policy.
	**/
	public var name : Dynamic;
	/**
		The variable dtype of this policy.
		
		This is the dtype layers will create their variables in, unless a layer
		explicitly chooses a different dtype. If this is different than
		`Policy.compute_dtype`, Layers will cast variables to the compute dtype to
		avoid type errors.
		
		Variable regularizers are run in the variable dtype, not the compute dtype.
		
		Returns:
		  The variable dtype of this policy, as a string.
	**/
	public var variable_dtype : Dynamic;
}