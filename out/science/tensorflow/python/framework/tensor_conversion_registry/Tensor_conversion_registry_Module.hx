/* This file is generated, do not edit! */
package tensorflow.python.framework.tensor_conversion_registry;
@:pythonImport("tensorflow.python.framework.tensor_conversion_registry") extern class Tensor_conversion_registry_Module {
	static public var _UNCONVERTIBLE_TYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _default_conversion_function(value:Dynamic, dtype:Dynamic, name:Dynamic, as_ref:Dynamic):Dynamic;
	static public var _tensor_conversion_func_cache : Dynamic;
	static public var _tensor_conversion_func_lock : Dynamic;
	static public var _tensor_conversion_func_registry : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Get conversion function for objects of `cls`.
		
		Args:
		  query: The type to query for.
		
		Returns:
		  A list of conversion functions in increasing order of priority.
	**/
	static public function get(query:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Registers a function for converting objects of `base_type` to `Tensor`.
		
		The conversion function must have the following signature:
		
		```python
		    def conversion_func(value, dtype=None, name=None, as_ref=False):
		      # ...
		```
		
		It must return a `Tensor` with the given `dtype` if specified. If the
		conversion function creates a new `Tensor`, it should use the given
		`name` if specified. All exceptions will be propagated to the caller.
		
		The conversion function may return `NotImplemented` for some
		inputs. In this case, the conversion process will continue to try
		subsequent conversion functions.
		
		If `as_ref` is true, the function must return a `Tensor` reference,
		such as a `Variable`.
		
		NOTE: The conversion functions will execute in order of priority,
		followed by order of registration. To ensure that a conversion function
		`F` runs before another conversion function `G`, ensure that `F` is
		registered with a smaller priority than `G`.
		
		Args:
		  base_type: The base type or tuple of base types for all objects that
		    `conversion_func` accepts.
		  conversion_func: A function that converts instances of `base_type` to
		    `Tensor`.
		  priority: Optional integer that indicates the priority for applying this
		    conversion function. Conversion functions with smaller priority values run
		    earlier than conversion functions with larger priority values. Defaults to
		    100.
		
		Raises:
		  TypeError: If the arguments do not have the appropriate type.
	**/
	static public function register_tensor_conversion_function(base_type:Dynamic, conversion_func:Dynamic, ?priority:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}