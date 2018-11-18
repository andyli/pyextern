/* This file is generated, do not edit! */
package tensorflow.python.keras.optimizers;
@:pythonImport("tensorflow.python.keras.optimizers", "Adagrad") extern class Adagrad {
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
	public function ___init__(?lr:Dynamic, ?epsilon:Dynamic, ?decay:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?lr:Dynamic, ?epsilon:Dynamic, ?decay:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	static public function from_config(config:Dynamic):Dynamic;
	public function get_config():Dynamic;
	/**
		Returns gradients of `loss` with respect to `params`.
		
		Arguments:
		    loss: Loss tensor.
		    params: List of variables.
		
		Returns:
		    List of gradient tensors.
		
		Raises:
		    ValueError: In case any gradient cannot be computed (e.g. if gradient
		      function not implemented).
	**/
	public function get_gradients(loss:Dynamic, params:Dynamic):Dynamic;
	public function get_updates(loss:Dynamic, params:Dynamic):Dynamic;
	/**
		Returns the current value of the weights of the optimizer.
		
		Returns:
		    A list of numpy arrays.
	**/
	public function get_weights():Dynamic;
	/**
		Sets the weights of the optimizer, from Numpy arrays.
		
		Should only be called after computing the gradients
		(otherwise the optimizer has no weights).
		
		Arguments:
		    weights: a list of Numpy arrays. The number
		        of arrays and their shape must match
		        number of the dimensions of the weights
		        of the optimizer (i.e. it should match the
		        output of `get_weights`).
		
		Raises:
		    ValueError: in case of incompatible weight shapes.
	**/
	public function set_weights(weights:Dynamic):Dynamic;
}