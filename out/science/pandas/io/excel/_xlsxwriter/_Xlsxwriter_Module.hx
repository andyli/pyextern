/* This file is generated, do not edit! */
package pandas.io.excel._xlsxwriter;
@:pythonImport("pandas.io.excel._xlsxwriter") extern class _Xlsxwriter_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function StorageOptions(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Used to combine two sources of kwargs for the backend engine.
		
		Use of kwargs is deprecated, this function is solely for use in 1.3 and should
		be removed in 1.4/2.0. Also _base.ExcelWriter.__new__ ensures either engine_kwargs
		or kwargs must be None or empty respectively.
		
		Parameters
		----------
		engine_kwargs: dict
		    kwargs to be passed through to the engine.
		kwargs: dict
		    kwargs to be psased through to the engine (deprecated)
		
		Returns
		-------
		engine_kwargs combined with kwargs
	**/
	static public function combine_kwargs(engine_kwargs:Dynamic, kwargs:Dynamic):Dynamic;
	static public function validate_freeze_panes(freeze_panes:Dynamic):Dynamic;
}