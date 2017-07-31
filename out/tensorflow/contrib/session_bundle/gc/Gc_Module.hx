/* This file is generated, do not edit! */
package tensorflow.contrib.session_bundle.gc;
@:pythonImport("tensorflow.contrib.session_bundle.gc") extern class Gc_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Gets a list of Paths in a given directory. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-06-30.
		Instructions for updating:
		Please use SavedModel instead.
		
		Args:
		  base_dir: directory.
		  parser: a function which gets the raw Path and can augment it with
		    information such as the export_version, or ignore the path by returning
		    None.  An example parser may extract the export version from a path
		    such as "/tmp/exports/100" an another may extract from a full file
		    name such as "/tmp/checkpoint-99.out".
		
		Returns:
		  A list of Paths contained in the base directory with the parsing function
		  applied.
		  By default the following fields are populated,
		    - Path.path
		  The parsing function is responsible for populating,
		    - Path.export_version
	**/
	static public function get_paths(base_dir:Dynamic, parser:Dynamic):Dynamic;
	/**
		Creates a filter that keeps the largest n export versions. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-06-30.
		Instructions for updating:
		Please use SavedModel instead.
		
		Args:
		  n: number of versions to keep.
		
		Returns:
		  A filter function that keeps the n largest paths.
	**/
	static public function largest_export_versions(n:Dynamic):Dynamic;
	/**
		Creates a filter that keeps every export that is a multiple of n. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-06-30.
		Instructions for updating:
		Please use SavedModel instead.
		
		Args:
		  n: step size.
		
		Returns:
		  A filter function that keeps paths where export_version % n == 0.
	**/
	static public function mod_export_version(n:Dynamic):Dynamic;
	/**
		Negate a filter. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-06-30.
		Instructions for updating:
		Please use SavedModel instead.
		
		Args:
		  f: filter function to invert
		
		Returns:
		  A filter function that returns the negation of f.
	**/
	static public function negation(f:Dynamic):Dynamic;
	/**
		Creates a filter that keeps one of every n export versions. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-06-30.
		Instructions for updating:
		Please use SavedModel instead.
		
		Args:
		  n: interval size.
		
		Returns:
		  A filter function that keeps exactly one path from each interval
		  [0, n], (n, 2n], (2n, 3n], etc...  If more than one path exists in an
		  interval the largest is kept.
	**/
	static public function one_of_every_n_export_versions(n:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a filter that keeps the union of two filters. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-06-30.
		Instructions for updating:
		Please use SavedModel instead.
		
		Args:
		  lf: first filter
		  rf: second filter
		
		Returns:
		  A filter function that keeps the n largest paths.
	**/
	static public function union(lf:Dynamic, rf:Dynamic):Dynamic;
}