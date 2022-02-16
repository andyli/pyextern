/* This file is generated, do not edit! */
package pandas.core.window.numba_;
@:pythonImport("pandas.core.window.numba_") extern class Numba__Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
	static public function generate_manual_numpy_nan_agg_with_axis(nan_func:Dynamic):Dynamic;
	/**
		Generate a numba jitted apply function specified by values from engine_kwargs.
		
		1. jit the user's function
		2. Return a rolling apply function with the jitted function inline
		
		Configurations specified in engine_kwargs apply to both the user's
		function _AND_ the rolling apply function.
		
		Parameters
		----------
		kwargs : dict
		    **kwargs to be passed into the function
		func : function
		    function to be applied to each window and will be JITed
		engine_kwargs : dict
		    dictionary of arguments to be passed into numba.jit
		name: str
		    name of the caller (Rolling/Expanding)
		
		Returns
		-------
		Numba function
	**/
	static public function generate_numba_apply_func(kwargs:Dynamic, func:Dynamic, engine_kwargs:Dynamic, name:Dynamic):Dynamic;
	/**
		Generate a numba jitted ewm mean or sum function specified by values
		from engine_kwargs.
		
		Parameters
		----------
		engine_kwargs : dict
		    dictionary of arguments to be passed into numba.jit
		com : float
		adjust : bool
		ignore_na : bool
		deltas : numpy.ndarray
		normalize : bool
		
		Returns
		-------
		Numba function
	**/
	static public function generate_numba_ewm_func(engine_kwargs:Dynamic, com:Dynamic, adjust:Dynamic, ignore_na:Dynamic, deltas:Dynamic, normalize:Dynamic):Dynamic;
	/**
		Generate a numba jitted ewm mean or sum function applied table wise specified
		by values from engine_kwargs.
		
		Parameters
		----------
		engine_kwargs : dict
		    dictionary of arguments to be passed into numba.jit
		com : float
		adjust : bool
		ignore_na : bool
		deltas : numpy.ndarray
		normalize: bool
		
		Returns
		-------
		Numba function
	**/
	static public function generate_numba_ewm_table_func(engine_kwargs:Dynamic, com:Dynamic, adjust:Dynamic, ignore_na:Dynamic, deltas:Dynamic, normalize:Dynamic):Dynamic;
	/**
		Generate a numba jitted function to apply window calculations table-wise.
		
		Func will be passed a M window size x N number of columns array, and
		must return a 1 x N number of columns array. Func is intended to operate
		row-wise, but the result will be transposed for axis=1.
		
		1. jit the user's function
		2. Return a rolling apply function with the jitted function inline
		
		Parameters
		----------
		kwargs : dict
		    **kwargs to be passed into the function
		func : function
		    function to be applied to each window and will be JITed
		engine_kwargs : dict
		    dictionary of arguments to be passed into numba.jit
		name : str
		    caller (Rolling/Expanding) and original method name for numba cache key
		
		Returns
		-------
		Numba function
	**/
	static public function generate_numba_table_func(kwargs:Dynamic, func:Dynamic, engine_kwargs:Dynamic, name:Dynamic):Dynamic;
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
	/**
		JIT the user's function given the configurable arguments.
		
		Parameters
		----------
		func : function
		    user defined function
		nopython : bool
		    nopython parameter for numba.JIT
		nogil : bool
		    nogil parameter for numba.JIT
		parallel : bool
		    parallel parameter for numba.JIT
		
		Returns
		-------
		function
		    Numba JITed function
	**/
	static public function jit_user_function(func:Dynamic, nopython:Dynamic, nogil:Dynamic, parallel:Dynamic):Dynamic;
}