/* This file is generated, do not edit! */
package matplotlib.fontconfig_pattern;
@:pythonImport("matplotlib.fontconfig_pattern") extern class Fontconfig_pattern_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Given a string value or a list of string values, run each value through
		the input escape function to make the values into legal font config
		strings.  The result is returned as a string.
	**/
	static public function _escape_val(val:Dynamic, escape_func:Dynamic):Dynamic;
	/**
		Return the string obtained by replacing the leftmost non-overlapping occurrences of pattern in string by the replacement repl.
	**/
	static public function family_escape(repl:Dynamic, string:Dynamic, ?count:Dynamic):Dynamic;
	static public var family_punc : Dynamic;
	/**
		Return the string obtained by replacing the leftmost non-overlapping occurrences of pattern in string by the replacement repl.
	**/
	static public function family_unescape(repl:Dynamic, string:Dynamic, ?count:Dynamic):Dynamic;
	/**
		Given a dictionary of key/value pairs, generates a fontconfig
		pattern string.
	**/
	static public function generate_fontconfig_pattern(d:Dynamic):Dynamic;
	/**
		Least-recently-used cache decorator.
		
		If *maxsize* is set to None, the LRU features are disabled and the cache
		can grow without bound.
		
		If *typed* is True, arguments of different types will be cached separately.
		For example, f(3.0) and f(3) will be treated as distinct calls with
		distinct results.
		
		Arguments to the cached function must be hashable.
		
		View the cache statistics named tuple (hits, misses, maxsize, currsize)
		with f.cache_info().  Clear the cache and statistics with f.cache_clear().
		Access the underlying function with f.__wrapped__.
		
		See:  http://en.wikipedia.org/wiki/Cache_replacement_policies#Least_recently_used_(LRU)
	**/
	static public function lru_cache(?maxsize:Dynamic, ?typed:Dynamic):Dynamic;
	/**
		Parse the given fontconfig *pattern* and return a dictionary
		of key/value pairs useful for initializing a
		`.font_manager.FontProperties` object.
	**/
	static public function parse_fontconfig_pattern(pattern:Dynamic):Dynamic;
	/**
		Return the string obtained by replacing the leftmost non-overlapping occurrences of pattern in string by the replacement repl.
	**/
	static public function value_escape(repl:Dynamic, string:Dynamic, ?count:Dynamic):Dynamic;
	static public var value_punc : Dynamic;
	/**
		Return the string obtained by replacing the leftmost non-overlapping occurrences of pattern in string by the replacement repl.
	**/
	static public function value_unescape(repl:Dynamic, string:Dynamic, ?count:Dynamic):Dynamic;
}