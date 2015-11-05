/* This file is generated, do not edit! */
package pandas.compat.openpyxl_compat;
@:pythonImport("pandas.compat.openpyxl_compat") extern class Openpyxl_compat_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Detect whether the installed version of openpyxl is supported
		
		Parameters
		----------
		ver : int
		    1 requests compatibility status among the 1.x.y series
		    2 requests compatibility status of 2.0.0 and later
		Returns
		-------
		compat : bool
		    ``True`` if openpyxl is installed and is a compatible version.
		    ``False`` otherwise.
	**/
	static public function is_compat(?major_ver:Dynamic):Bool;
	static public var start_ver : Dynamic;
	static public var stop_ver : Dynamic;
}