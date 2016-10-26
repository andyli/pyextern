/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.dataframe.transform;
@:pythonImport("tensorflow.contrib.learn.python.learn.dataframe.transform") extern class Transform_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts `x` into a list of `Series` if possible.
		
		Args:
		  x: a `Series`, a list of `Series` or `None`.
		
		Returns:
		  `x` if it is a list of Series, `[x]` if `x` is a `Series`, `[]` if x is
		  `None`.
		
		Raises:
		  TypeError: `x` is not a `Series` a list of `Series` or `None`.
	**/
	static public function _make_list_of_series(x:Dynamic):Dynamic;
	/**
		Converts `x` into a list of `str` if possible.
		
		Args:
		  x: a `str`, a list of `str`, a tuple of `str`, or `None`.
		
		Returns:
		  `x` if it is a tuple of str, `tuple(x)` if it is a list of str,
		  `(x)` if `x` is a `str`, `()` if x is `None`.
		
		Raises:
		  TypeError: `x` is not a `str`, a list or tuple of `str`, or `None`.
	**/
	static public function _make_tuple_of_string(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		A decorator indicating abstract methods.
		
		Requires that the metaclass is ABCMeta or derived from it.  A
		class that has a metaclass derived from ABCMeta cannot be
		instantiated unless all of its abstract methods are overridden.
		The abstract methods can be called using any of the normal
		'super' call mechanisms.
		
		Usage:
		
		    class C(metaclass=ABCMeta):
		        @abstractmethod
		        def my_abstract_method(self, ...):
		            ...
	**/
	static public function abstractmethod(funcobj:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Tag functions annotated with `@parameter` for later retrieval.
		
		Note that all `@parameter`s are automatically `@property`s as well.
		
		Args:
		  func: the getter function to tag and wrap
		
		Returns:
		  A `@property` whose getter function is marked with is_parameter = True
	**/
	static public function parameter(func:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}