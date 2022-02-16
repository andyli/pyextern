/* This file is generated, do not edit! */
package pandas.core._numba.executor;
@:pythonImport("pandas.core._numba.executor") extern class Executor_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var NUMBA_FUNC_CACHE : Dynamic;
	static public function Scalar(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var annotations : Dynamic;
	/**
		Generate a Numba function that loops over the columns 2D object and applies
		a 1D numba kernel over each column.
		
		Parameters
		----------
		func : function
		    aggregation function to be applied to each column
		engine_kwargs : dict
		    dictionary of arguments to be passed into numba.jit
		cache_key_str: str
		    string to access the compiled function of the form
		    <caller_type>_<aggregation_type> e.g. rolling_mean, groupby_mean
		
		Returns
		-------
		Numba function
	**/
	static public function generate_shared_aggregator(func:Dynamic, engine_kwargs:Dynamic, cache_key_str:Dynamic):Dynamic;
	/**
		Return arguments to pass to numba.JIT, falling back on pandas default JIT settings.
		
		Parameters
		----------
		engine_kwargs : dict, default None
		    user passed keyword arguments for numba.JIT
		kwargs : dict, default None
		    user passed keyword arguments to pass into the JITed function
		
		Returns
		-------
		(bool, bool, bool)
		    nopython, nogil, parallel
		
		Raises
		------
		NumbaUtilError
	**/
	static public function get_jit_arguments(?engine_kwargs:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Import an optional dependency.
		
		By default, if a dependency is missing an ImportError with a nice
		message will be raised. If a dependency is present, but too old,
		we raise.
		
		Parameters
		----------
		name : str
		    The module name.
		extra : str
		    Additional text to include in the ImportError message.
		errors : str {'raise', 'warn', 'ignore'}
		    What to do when a dependency is not found or its version is too old.
		
		    * raise : Raise an ImportError
		    * warn : Only applicable when a module's version is to old.
		      Warns that the version is too old and returns None
		    * ignore: If the module is not installed, return None, otherwise,
		      return the module, even if the version is too old.
		      It's expected that users validate the version locally when
		      using ``errors="ignore"`` (see. ``io/html.py``)
		min_version : str, default None
		    Specify a minimum version that is different from the global pandas
		    minimum version required.
		Returns
		-------
		maybe_module : Optional[ModuleType]
		    The imported module, when found and the version is correct.
		    None is returned when the package is not found and `errors`
		    is False, or when the package's version is too old and `errors`
		    is ``'warn'``.
	**/
	static public function import_optional_dependency(name:Dynamic, ?extra:Dynamic, ?errors:Dynamic, ?min_version:Dynamic):Dynamic;
}