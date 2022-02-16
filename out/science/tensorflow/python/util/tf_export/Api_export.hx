/* This file is generated, do not edit! */
package tensorflow.python.util.tf_export;
@:pythonImport("tensorflow.python.util.tf_export", "api_export") extern class Api_export {
	/**
		Calls this decorator.
		
		Args:
		  func: decorated symbol (function or class).
		
		Returns:
		  The input function with _tf_api_names attribute set.
		
		Raises:
		  SymbolAlreadyExposedError: Raised when a symbol already has API names
		    and kwarg `allow_multiple_exports` not set.
	**/
	public function __call__(func:Dynamic):Dynamic;
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
		Export under the names *args (first one is considered canonical).
		
		Args:
		  *args: API names in dot delimited format.
		  **kwargs: Optional keyed arguments.
		    v1: Names for the TensorFlow V1 API. If not set, we will use V2 API
		      names both for TensorFlow V1 and V2 APIs.
		    overrides: List of symbols that this is overriding
		      (those overrided api exports will be removed). Note: passing overrides
		      has no effect on exporting a constant.
		    api_name: Name of the API you want to generate (e.g. `tensorflow` or
		      `estimator`). Default is `tensorflow`.
		    allow_multiple_exports: Allow symbol to be exported multiple time under
		      different names.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Export under the names *args (first one is considered canonical).
		
		Args:
		  *args: API names in dot delimited format.
		  **kwargs: Optional keyed arguments.
		    v1: Names for the TensorFlow V1 API. If not set, we will use V2 API
		      names both for TensorFlow V1 and V2 APIs.
		    overrides: List of symbols that this is overriding
		      (those overrided api exports will be removed). Note: passing overrides
		      has no effect on exporting a constant.
		    api_name: Name of the API you want to generate (e.g. `tensorflow` or
		      `estimator`). Default is `tensorflow`.
		    allow_multiple_exports: Allow symbol to be exported multiple time under
		      different names.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	/**
		Validate you are exporting symbols under an allowed package.
		
		We need to ensure things exported by tf_export, estimator_export, etc.
		export symbols under disjoint top-level package names.
		
		For TensorFlow, we check that it does not export anything under subpackage
		names used by components (estimator, keras, etc.).
		
		For each component, we check that it exports everything under its own
		subpackage.
		
		Raises:
		  InvalidSymbolNameError: If you try to export symbol under disallowed name.
	**/
	public function _validate_symbol_names():Dynamic;
	/**
		Store export information for constants/string literals.
		
		Export information is stored in the module where constants/string literals
		are defined.
		
		e.g.
		```python
		foo = 1
		bar = 2
		tf_export("consts.foo").export_constant(__name__, 'foo')
		tf_export("consts.bar").export_constant(__name__, 'bar')
		```
		
		Args:
		  module_name: (string) Name of the module to store constant at.
		  name: (string) Current constant name.
	**/
	public function export_constant(module_name:Dynamic, name:Dynamic):Dynamic;
	public function set_attr(func:Dynamic, api_names_attr:Dynamic, names:Dynamic):Dynamic;
}