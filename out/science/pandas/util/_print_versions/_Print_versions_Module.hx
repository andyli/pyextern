/* This file is generated, do not edit! */
package pandas.util._print_versions;
@:pythonImport("pandas.util._print_versions") extern class _Print_versions_Module {
	static public function JSONSerializable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var VERSIONS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Use vendored versioneer code to get git hash, which handles
		git worktree correctly.
	**/
	static public function _get_commit_hash():Dynamic;
	/**
		Returns dependency information as a JSON serializable dictionary.
	**/
	static public function _get_dependency_info():Dynamic;
	/**
		Returns system information as a JSON serializable dictionary.
	**/
	static public function _get_sys_info():Dynamic;
	static public var annotations : Dynamic;
	static public function get_version(module:Dynamic):Dynamic;
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
	static public function main():Dynamic;
	/**
		Provide useful information, important for bug reports.
		
		It comprises info about hosting operation system, pandas version,
		and versions of other installed relative packages.
		
		Parameters
		----------
		as_json : str or bool, default False
		    * If False, outputs info in a human readable form to the console.
		    * If str, it will be considered as a path to a file.
		      Info will be written to that file in JSON format.
		    * If True, outputs info in JSON format to the console.
	**/
	static public function show_versions(?as_json:Dynamic):Dynamic;
}