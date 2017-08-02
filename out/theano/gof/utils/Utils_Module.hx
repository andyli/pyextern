/* This file is generated, do not edit! */
package theano.gof.utils;
@:pythonImport("theano.gof.utils") extern class Utils_Module {
	static public var ABORT : Dynamic;
	static public var ANY_TYPE : Dynamic;
	static public var FAILURE : Dynamic;
	static public var FALL_THROUGH : Dynamic;
	static public var PY3 : Dynamic;
	static public var RETRY : Dynamic;
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
		Add tag.trace to an node or variable.
		
		The argument is returned after being affected (inplace).
		
		Parameters
		----------
		thing
		    The object where we add .tag.trace.
		user_line
		    The max number of user line to keep.
		
		Notes
		-----
		We alse use config.traceback.limit for the maximum number of stack level
		we look.
	**/
	static public function add_tag_trace(thing:Dynamic, ?user_line:Dynamic):Dynamic;
	static public function comm_guard(type1:Dynamic, type2:Dynamic):Dynamic;
	static public var config : Dynamic;
	/**
		Decorator which will print a warning message on the first call.
		
		Use it like this::
		
		  @deprecated('myfile', 'do something different...')
		  def fn_name(...)
		      ...
		
		And it will print::
		
		  WARNING myfile.fn_name deprecated. do something different...
	**/
	static public function deprecated(filename:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Returns all elements in seq1 which are not in seq2: i.e ``seq1\seq2``.
	**/
	static public function difference(seq1:Dynamic, seq2:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Recursively flatten tuple, list and set in a list.
	**/
	static public function flatten(a:Dynamic):Dynamic;
	static public function from_return_values(values:Dynamic):Dynamic;
	static public function get_variable_trace_string(v:Dynamic):Dynamic;
	static public function give_variables_names(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hash_from_code(msg:Dynamic):Dynamic;
	/**
		Return the MD5 hash of a file.
	**/
	static public function hash_from_file(file_path:Dynamic):Dynamic;
	static public function hashtype(self:Dynamic):Dynamic;
	static public function hist(coll:Dynamic):Dynamic;
	static public var integer_types : Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Cache the return value for each tuple of arguments (which must be hashable).
	**/
	static public function memoize(f:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return those items of collection for which predicate(item) is true.
		
		Examples
		--------
		>>> def even(x):
		...     return x % 2 == 0
		>>> remove(even, [1, 2, 3, 4])
		[1, 3]
	**/
	static public function remove(predicate:Dynamic, coll:Dynamic):Dynamic;
	/**
		This is traceback.extract_stack from python 2.7 with this change:
		
		- Comment the update of the cache.
		- Skip internal stack trace level.
		
		The update of the cache call os.stat to verify is the cache is up
		to date.  This take too much time on cluster.
		
		limit - The number of stack level we want to return. If None, mean
		all what we can.
		
		skips - partial path of stack level we don't want to keep and count.
		    When we find one level that isn't skipped, we stop skipping.
	**/
	static public function simple_extract_stack(?f:Dynamic, ?limit:Dynamic, ?skips:Dynamic):Dynamic;
	static public var simple_types : Dynamic;
	static public var string_types : Dynamic;
	static public function to_return_values(values:Dynamic):Dynamic;
	/**
		Sorts prereqs_d.keys() topologically.
		
		prereqs_d[x] contains all the elements that must come before x
		in the ordering.
	**/
	static public function toposort(prereqs_d:Dynamic):Dynamic;
	static public function type_guard(type1:Dynamic):Dynamic;
	static public var undef : Dynamic;
	/**
		Do not use set, this must always return the same value at the same index.
		If we just exchange other values, but keep the same pattern of duplication,
		we must keep the same order.
	**/
	static public function uniq(seq:Dynamic):Dynamic;
	static public function unique(x:Dynamic):Dynamic;
	/**
		Create a base class with a metaclass.
	**/
	static public function with_metaclass(meta:Dynamic, ?bases:python.VarArgs<Dynamic>):Dynamic;
}