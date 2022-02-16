/* This file is generated, do not edit! */
package torch.autograd.profiler_util;
@:pythonImport("torch.autograd.profiler_util") extern class Profiler_util_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var MEMORY_EVENT_NAME : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _attr_formatter(name:Dynamic):Dynamic;
	/**
		Prints a summary of events (which can be a list of FunctionEvent or FunctionEventAvg).
	**/
	static public function _build_table(events:Dynamic, ?sort_by:Dynamic, ?header:Dynamic, ?row_limit:Dynamic, ?max_src_column_width:Dynamic, ?with_flops:Dynamic, ?profile_memory:Dynamic, ?top_level_events_only:Dynamic):Dynamic;
	static public function _filter_name(name:Dynamic):Dynamic;
	static public function _filter_stack_entry(entry:Dynamic):Dynamic;
	/**
		Returns a formatted memory size string
	**/
	static public function _format_memory(nbytes:Dynamic):Dynamic;
	/**
		Defines how to format time in FunctionEvent
	**/
	static public function _format_time(time_us:Dynamic):Dynamic;
	/**
		Defines how to format time in FunctionEvent
	**/
	static public function _format_time_share(time_us:Dynamic, total_time_us:Dynamic):Dynamic;
	static public function _rewrite_name(name:Dynamic, ?with_wildcard:Dynamic):Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?rename:Dynamic, ?defaults:Dynamic, ?module:Dynamic):Dynamic;
}