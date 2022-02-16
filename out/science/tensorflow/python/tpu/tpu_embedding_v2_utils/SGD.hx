/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_embedding_v2_utils;
@:pythonImport("tensorflow.python.tpu.tpu_embedding_v2_utils", "SGD") extern class SGD {
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
		Optimization parameters for stochastic gradient descent.
		
		Args:
		  learning_rate: The learning rate. It should be a floating point value or a
		    callable taking no arguments for a dynamic learning rate.
		  clip_weight_min: the minimum value to clip by; None means -infinity.
		  clip_weight_max: the maximum value to clip by; None means +infinity.
		  weight_decay_factor: amount of weight decay to apply; None means that the
		    weights are not decayed. Weights are decayed by multiplying the weight
		    by this factor each step.
		  multiply_weight_decay_factor_by_learning_rate: if true,
		    `weight_decay_factor` is multiplied by the current learning rate.
		  clipvalue: Controls clipping of the gradient. Set to either a single
		    positive scalar value to get clipping or a tiple of scalar values (min,
		    max) to set a separate maximum or minimum. If one of the two entries is
		    None, then there will be no clipping that direction. Note if this is
		    set, you may see a decrease in performance as  gradient accumulation
		    will be enabled (it is normally off for SGD as it has no affect on
		    accuracy). See
		    'tensorflow/core/protobuf/tpu/optimization_parameters.proto' for more
		    information on gradient accumulation and its impact on tpu embeddings.
	**/
	@:native("__init__")
	public function ___init__(?learning_rate:Dynamic, ?clip_weight_min:Dynamic, ?clip_weight_max:Dynamic, ?weight_decay_factor:Dynamic, ?multiply_weight_decay_factor_by_learning_rate:Dynamic, ?clipvalue:Dynamic):Dynamic;
	/**
		Optimization parameters for stochastic gradient descent.
		
		Args:
		  learning_rate: The learning rate. It should be a floating point value or a
		    callable taking no arguments for a dynamic learning rate.
		  clip_weight_min: the minimum value to clip by; None means -infinity.
		  clip_weight_max: the maximum value to clip by; None means +infinity.
		  weight_decay_factor: amount of weight decay to apply; None means that the
		    weights are not decayed. Weights are decayed by multiplying the weight
		    by this factor each step.
		  multiply_weight_decay_factor_by_learning_rate: if true,
		    `weight_decay_factor` is multiplied by the current learning rate.
		  clipvalue: Controls clipping of the gradient. Set to either a single
		    positive scalar value to get clipping or a tiple of scalar values (min,
		    max) to set a separate maximum or minimum. If one of the two entries is
		    None, then there will be no clipping that direction. Note if this is
		    set, you may see a decrease in performance as  gradient accumulation
		    will be enabled (it is normally off for SGD as it has no affect on
		    accuracy). See
		    'tensorflow/core/protobuf/tpu/optimization_parameters.proto' for more
		    information on gradient accumulation and its impact on tpu embeddings.
	**/
	public function new(?learning_rate:Dynamic, ?clip_weight_min:Dynamic, ?clip_weight_max:Dynamic, ?weight_decay_factor:Dynamic, ?multiply_weight_decay_factor_by_learning_rate:Dynamic, ?clipvalue:Dynamic):Void;
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
	/**
		Creates slot variables for table.
		
		Args:
		  table: The table variable to create slots for.
		  variable_creator: A function which creates variables. Takes parameters
		    'name', 'initializer'.
		
		Returns:
		  A dict of variables, keyed by self._slot_names().
	**/
	public function _create_slots(table:Dynamic, variable_creator:Dynamic):Dynamic;
	/**
		Returns the load function for the optimizer.
	**/
	public function _load():Dynamic;
	/**
		Returns the retrieve function for the optimizer.
	**/
	public function _retrieve():Dynamic;
	/**
		Sets the optimizer fields in the OptimizationParameters.
	**/
	public function _set_optimization_parameters(parameters:Dynamic):Dynamic;
	/**
		Returns initializers for slot variables.
		
		This returns a parallel list to self._slot_names().
	**/
	public function _slot_initializers():Dynamic;
	/**
		Returns the name of all the slot variables.
		
		This does not include the 'parameters' variable and these names must match
		the names of the slots variables as used in the corresponding
		`tpu_ops.load_tpu_embedding_*` ops.
	**/
	public function _slot_names():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
}