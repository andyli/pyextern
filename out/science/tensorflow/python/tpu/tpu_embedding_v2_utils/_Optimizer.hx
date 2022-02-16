/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_embedding_v2_utils;
@:pythonImport("tensorflow.python.tpu.tpu_embedding_v2_utils", "_Optimizer") extern class _Optimizer {
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
	public function ___init__(learning_rate:Dynamic, use_gradient_accumulation:Dynamic, clip_weight_min:Dynamic, clip_weight_max:Dynamic, weight_decay_factor:Dynamic, multiply_weight_decay_factor_by_learning_rate:Dynamic, ?clipvalue:Dynamic, ?slot_variable_creation_fn:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(learning_rate:Dynamic, use_gradient_accumulation:Dynamic, clip_weight_min:Dynamic, clip_weight_max:Dynamic, weight_decay_factor:Dynamic, multiply_weight_decay_factor_by_learning_rate:Dynamic, ?clipvalue:Dynamic, ?slot_variable_creation_fn:Dynamic):Void;
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
}