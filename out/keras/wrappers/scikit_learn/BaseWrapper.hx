/* This file is generated, do not edit! */
package keras.wrappers.scikit_learn;
@:pythonImport("keras.wrappers.scikit_learn", "BaseWrapper") extern class BaseWrapper {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?build_fn:Dynamic, ?sk_params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?build_fn:Dynamic, ?sk_params:python.KwArgs<Dynamic>):Void;
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
		Checks for user typos in "params".
		
		# Arguments
		    params: dictionary; the parameters to be checked
		
		# Raises
		    ValueError: if any member of `params` is not a valid argument.
	**/
	public function check_params(params:Dynamic):Dynamic;
	/**
		Filters `sk_params` and return those in `fn`'s arguments.
		
		# Arguments
		    fn : arbitrary function
		    override: dictionary, values to override sk_params
		
		# Returns
		    res : dictionary dictionary containing variables
		        in both sk_params and fn's arguments.
	**/
	public function filter_sk_params(fn:Dynamic, ?_override:Dynamic):Dynamic;
	/**
		Constructs a new model with `build_fn` & fit the model to `(x, y)`.
		
		# Arguments
		    x : array-like, shape `(n_samples, n_features)`
		        Training samples where n_samples in the number of samples
		        and n_features is the number of features.
		    y : array-like, shape `(n_samples,)` or `(n_samples, n_outputs)`
		        True labels for X.
		    **kwargs: dictionary arguments
		        Legal arguments are the arguments of `Sequential.fit`
		
		# Returns
		    history : object
		        details about the training history at each epoch.
	**/
	public function fit(x:Dynamic, y:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Gets parameters for this estimator.
		
		# Arguments
		    **params: ignored (exists for API compatibility).
		
		# Returns
		    Dictionary of parameter names mapped to their values.
	**/
	public function get_params(?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Sets the parameters of this estimator.
		
		# Arguments
		    **params: Dictionary of parameter names mapped to their values.
		
		# Returns
		    self
	**/
	public function set_params(?params:python.KwArgs<Dynamic>):Dynamic;
}