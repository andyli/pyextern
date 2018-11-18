/* This file is generated, do not edit! */
package tensorflow.contrib.bigtable.python.ops.bigtable_api;
@:pythonImport("tensorflow.contrib.bigtable.python.ops.bigtable_api") extern class Bigtable_api_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts arguments (columns, and kwargs dict) to C++ representation.
		
		Args:
		  columns: a datastructure containing the column families and qualifier to
		    retrieve. Valid types include (1) None, (2) list of tuples, (3) a tuple of
		    strings.
		  provided_kwargs: a dictionary containing the column families and qualifiers
		    to retrieve
		
		Returns:
		  A list of pairs of column family+qualifier to retrieve.
		
		Raises:
		  ValueError: If there are no cells to retrieve or the columns are in an
		    incorrect format.
	**/
	static public function _normalize_columns(columns:Dynamic, provided_kwargs:Dynamic):Dynamic;
	static public function _normalize_probability(probability:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public var string_types : Dynamic;
}