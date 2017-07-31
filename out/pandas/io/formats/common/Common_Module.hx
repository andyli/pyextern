/* This file is generated, do not edit! */
package pandas.io.formats.common;
@:pythonImport("pandas.io.formats.common") extern class Common_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		For each index in each level the function returns lengths of indexes.
		
		Parameters
		----------
		levels : list of lists
		    List of values on for level.
		sentinel : string, optional
		    Value which states that no new index starts on there.
		
		Returns
		----------
		Returns list of maps. For each level returns map of indexes (key is index
		in row and value is length of index).
	**/
	static public function get_level_lengths(levels:Dynamic, ?sentinel:Dynamic):Dynamic;
}