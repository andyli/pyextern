/* This file is generated, do not edit! */
package pyarrow.compute;
@:pythonImport("pyarrow.compute") extern class Compute_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _decorate_compute_function(wrapper:Dynamic, exposed_name:Dynamic, func:Dynamic, options_class:Dynamic):Dynamic;
	static public function _get_arg_names(func:Dynamic):Dynamic;
	static public function _get_options_class(func:Dynamic):Dynamic;
	/**
		_group_by(args, keys, aggregations)
	**/
	static public function _group_by(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _handle_options(name:Dynamic, options_class:Dynamic, options:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function _make_generic_wrapper(func_name:Dynamic, func:Dynamic, options_class:Dynamic, arity:Dynamic):Dynamic;
	/**
		Make global functions wrapping each compute function.
		
		Note that some of the automatically-generated wrappers may be overriden
		by custom versions below.
	**/
	static public function _make_global_functions():Dynamic;
	static public function _make_signature(arg_names:Dynamic, var_arg_names:Dynamic, options_class:Dynamic):Dynamic;
	static public function _scrape_options_class_doc(options_class:Dynamic):Dynamic;
	static public function _wrap_function(name:Dynamic, func:Dynamic):Dynamic;
	/**
		Calculate the absolute value of the argument element-wise.
		
		Results will wrap around on integer overflow.
		Use function "abs_checked" if you want overflow
		to return an error.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function abs(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Calculate the absolute value of the argument element-wise.
		
		This function returns an error on overflow.  For a variant that
		doesn't fail on overflow, use function "abs".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function abs_checked(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the inverse cosine.
		
		NaN is returned for invalid input values;
		to raise an error instead, see "acos_checked".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function acos(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the inverse cosine.
		
		Invalid input values raise an error;
		to return NaN instead, see "acos".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function acos_checked(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Add the arguments element-wise.
		
		Results will wrap around on integer overflow.
		Use function "add_checked" if you want overflow
		to return an error.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function add(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Add the arguments element-wise.
		
		This function returns an error on overflow.  For a variant that
		doesn't fail on overflow, use function "add".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function add_checked(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Test whether all elements in a boolean array evaluate to true.
		
		Null values are ignored by default.
		If the `skip_nulls` option is set to false, then Kleene logic is used.
		See "kleene_and" for more details on Kleene logic.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		skip_nulls : bool, default True
		    Whether to skip (ignore) nulls in the input.
		    If False, any null in the input forces the output to null.
		min_count : int, default 1
		    Minimum number of non-null values in the input.  If the number
		    of non-null values is below `min_count`, the output is null.
		options : pyarrow.compute.ScalarAggregateOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function all(array:Dynamic, ?skip_nulls:Dynamic, ?min_count:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Logical 'and' boolean values.
		
		When a null is encountered in either input, a null is output.
		For a different null behavior, see function "and_kleene".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function and(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Logical 'and' boolean values.
		
		When a null is encountered in either input, a null is output.
		For a different null behavior, see function "and_kleene".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function and_(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Logical 'and' boolean values (Kleene logic).
		
		This function behaves as follows with nulls:
		
		- true and null = null
		- null and true = null
		- false and null = false
		- null and false = false
		- null and null = null
		
		In other words, in this context a null value really means "unknown",
		and an unknown value 'and' false is always false.
		For a different null behavior, see function "and".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function and_kleene(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Logical 'and not' boolean values.
		
		When a null is encountered in either input, a null is output.
		For a different null behavior, see function "and_not_kleene".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function and_not(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Logical 'and not' boolean values (Kleene logic).
		
		This function behaves as follows with nulls:
		
		- true and null = null
		- null and false = null
		- false and null = false
		- null and true = false
		- null and null = null
		
		In other words, in this context a null value really means "unknown",
		and an unknown value 'and not' true is always false, as is false
		'and not' an unknown value.
		For a different null behavior, see function "and_not".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function and_not_kleene(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Test whether any element in a boolean array evaluates to true.
		
		Null values are ignored by default.
		If the `skip_nulls` option is set to false, then Kleene logic is used.
		See "kleene_or" for more details on Kleene logic.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		skip_nulls : bool, default True
		    Whether to skip (ignore) nulls in the input.
		    If False, any null in the input forces the output to null.
		min_count : int, default 1
		    Minimum number of non-null values in the input.  If the number
		    of non-null values is below `min_count`, the output is null.
		options : pyarrow.compute.ScalarAggregateOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function any(array:Dynamic, ?skip_nulls:Dynamic, ?min_count:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Approximate median of a numeric array with T-Digest algorithm.
		
		Nulls and NaNs are ignored.
		A null scalar is returned if there is no valid data point.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		skip_nulls : bool, default True
		    Whether to skip (ignore) nulls in the input.
		    If False, any null in the input forces the output to null.
		min_count : int, default 1
		    Minimum number of non-null values in the input.  If the number
		    of non-null values is below `min_count`, the output is null.
		options : pyarrow.compute.ScalarAggregateOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function approximate_median(array:Dynamic, ?skip_nulls:Dynamic, ?min_count:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Filter with a boolean selection filter.
		
		The output is populated with values from the input `array` at positions
		where the selection filter is non-zero.  Nulls in the selection filter
		are handled based on FilterOptions.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		selection_filter : Array-like
		    Argument to compute function.
		null_selection_behavior : str, default "drop"
		    How to handle nulls in the selection filter.
		    Accepted values are "drop", "emit_null".
		options : pyarrow.compute.FilterOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function array_filter(array:Dynamic, selection_filter:Dynamic, ?null_selection_behavior:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Return the indices that would sort an array.
		
		This function computes an array of indices that define a stable sort
		of the input array.  By default, Null values are considered greater
		than any other value and are therefore sorted at the end of the array.
		For floating-point types, NaNs are considered greater than any
		other non-null value, but smaller than null values.
		
		The handling of nulls and NaNs can be changed in ArraySortOptions.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		order : str, default "ascending"
		    Which order to sort values in.
		    Accepted values are "ascending", "descending".
		null_placement : str, default "at_end"
		    Where nulls in the input should be sorted.
		    Accepted values are "at_start", "at_end".
		options : pyarrow.compute.ArraySortOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function array_sort_indices(array:Dynamic, ?order:Dynamic, ?null_placement:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Select values from an array based on indices from another array.
		
		The output is populated with values from the input array at positions
		given by `indices`.  Nulls in `indices` emit null in the output.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		indices : Array-like
		    Argument to compute function.
		boundscheck : boolean, default True
		    Whether to check indices are within bounds. If False and an
		    index is out of boundes, behavior is undefined (the process
		    may crash).
		options : pyarrow.compute.TakeOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function array_take(array:Dynamic, indices:Dynamic, ?boundscheck:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Capitalize the first character of ASCII input.
		
		For each string in `strings`, return a capitalized version.
		
		This function assumes the input is fully ASCII.  If it may contain
		non-ASCII characters, use "utf8_capitalize" instead.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_capitalize(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Center strings by padding with a given character.
		
		For each string in `strings`, emit a centered string by padding both sides 
		with the given ASCII character.
		Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		width : int
		    Desired string length.
		padding : str, default " "
		    What to pad the string with. Should be one byte or codepoint.
		options : pyarrow.compute.PadOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_center(strings:Dynamic, width:Dynamic, ?padding:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as ASCII alphanumeric.
		
		For each string in `strings`, emit true iff the string is non-empty
		and consists only of alphanumeric ASCII characters.  Null strings emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_is_alnum(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as ASCII alphabetic.
		
		For each string in `strings`, emit true iff the string is non-empty
		and consists only of alphabetic ASCII characters.  Null strings emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_is_alpha(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as ASCII decimal.
		
		For each string in `strings`, emit true iff the string is non-empty
		and consists only of decimal ASCII characters.  Null strings emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_is_decimal(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as ASCII lowercase.
		
		For each string in `strings`, emit true iff the string is non-empty
		and consists only of lowercase ASCII characters.  Null strings emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_is_lower(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as ASCII printable.
		
		For each string in `strings`, emit true iff the string is non-empty
		and consists only of printable ASCII characters.  Null strings emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_is_printable(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as ASCII whitespace.
		
		For each string in `strings`, emit true iff the string is non-empty
		and consists only of whitespace ASCII characters.  Null strings emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_is_space(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as ASCII titlecase.
		
		For each string in `strings`, emit true iff the string is title-cased,
		i.e. it has at least one cased character, each uppercase character
		follows an uncased character, and each lowercase character follows
		an uppercase character.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_is_title(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as ASCII uppercase.
		
		For each string in `strings`, emit true iff the string is non-empty
		and consists only of uppercase ASCII characters.  Null strings emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_is_upper(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Transform ASCII input to lowercase.
		
		For each string in `strings`, return a lowercase version.
		
		This function assumes the input is fully ASCII.  If it may contain
		non-ASCII characters, use "utf8_lower" instead.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_lower(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Right-align strings by padding with a given character.
		
		For each string in `strings`, emit a right-aligned string by prepending 
		the given ASCII character.
		Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		width : int
		    Desired string length.
		padding : str, default " "
		    What to pad the string with. Should be one byte or codepoint.
		options : pyarrow.compute.PadOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_lpad(strings:Dynamic, width:Dynamic, ?padding:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Trim leading characters.
		
		For each string in `strings`, remove any leading characters
		from the `characters` option (as given in TrimOptions).
		Null values emit null.
		Both the `strings` and the `characters` are interpreted as
		ASCII; to trim non-ASCII characters, use `utf8_ltrim`.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		characters : str
		    Individual characters to be trimmed from the string.
		options : pyarrow.compute.TrimOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_ltrim(strings:Dynamic, characters:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Trim leading ASCII whitespace characters.
		
		For each string in `strings`, emit a string with leading ASCII whitespace
		characters removed.  Use `utf8_ltrim_whitespace` to trim leading Unicode
		whitespace characters. Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_ltrim_whitespace(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Reverse ASCII input.
		
		For each ASCII string in `strings`, return a reversed version.
		
		This function assumes the input is fully ASCII.  If it may contain
		non-ASCII characters, use "utf8_reverse" instead.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_reverse(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Left-align strings by padding with a given character.
		
		For each string in `strings`, emit a left-aligned string by appending 
		the given ASCII character.
		Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		width : int
		    Desired string length.
		padding : str, default " "
		    What to pad the string with. Should be one byte or codepoint.
		options : pyarrow.compute.PadOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_rpad(strings:Dynamic, width:Dynamic, ?padding:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Trim trailing characters.
		
		For each string in `strings`, remove any trailing characters
		from the `characters` option (as given in TrimOptions).
		Null values emit null.
		Both the `strings` and the `characters` are interpreted as
		ASCII; to trim non-ASCII characters, use `utf8_rtrim`.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		characters : str
		    Individual characters to be trimmed from the string.
		options : pyarrow.compute.TrimOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_rtrim(strings:Dynamic, characters:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Trim trailing ASCII whitespace characters.
		
		For each string in `strings`, emit a string with trailing ASCII whitespace
		characters removed. Use `utf8_rtrim_whitespace` to trim trailing Unicode
		whitespace characters. Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_rtrim_whitespace(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Split string according to any ASCII whitespace.
		
		Split each string according any non-zero length sequence of ASCII
		whitespace characters.  The output for each string input is a list
		of strings.
		
		The maximum number of splits and direction of splitting
		(forward, reverse) can optionally be defined in SplitOptions.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		max_splits : int or None, default None
		    Maximum number of splits for each input value (unlimited if None).
		reverse : bool, default False
		    Whether to start splitting from the end of each input value.
		    This only has an effect if `max_splits` is not None.
		options : pyarrow.compute.SplitOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_split_whitespace(strings:Dynamic, ?max_splits:Dynamic, ?reverse:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Transform ASCII input by inverting casing.
		
		For each string in `strings`, return a string with opposite casing.
		
		This function assumes the input is fully ASCII.  If it may contain
		non-ASCII characters, use "utf8_swapcase" instead.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_swapcase(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Titlecase each word of ASCII input.
		
		For each string in `strings`, return a titlecased version.
		Each word in the output will start with an uppercase character and its
		remaining characters will be lowercase.
		
		This function assumes the input is fully ASCII.  If it may contain
		non-ASCII characters, use "utf8_title" instead.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_title(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Trim leading and trailing characters.
		
		For each string in `strings`, remove any leading or trailing characters
		from the `characters` option (as given in TrimOptions).
		Null values emit null.
		Both the `strings` and the `characters` are interpreted as
		ASCII; to trim non-ASCII characters, use `utf8_trim`.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		characters : str
		    Individual characters to be trimmed from the string.
		options : pyarrow.compute.TrimOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_trim(strings:Dynamic, characters:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Trim leading and trailing ASCII whitespace characters.
		
		For each string in `strings`, emit a string with leading and trailing ASCII
		whitespace characters removed. Use `utf8_trim_whitespace` to trim Unicode
		whitespace characters. Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_trim_whitespace(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Transform ASCII input to uppercase.
		
		For each string in `strings`, return an uppercase version.
		
		This function assumes the input is fully ASCII.  It it may contain
		non-ASCII characters, use "utf8_upper" instead.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ascii_upper(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the inverse sine.
		
		NaN is returned for invalid input values;
		to raise an error instead, see "asin_checked".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function asin(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the inverse sine.
		
		Invalid input values raise an error;
		to return NaN instead, see "asin".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function asin_checked(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Convert naive timestamp to timezone-aware timestamp.
		
		Input timestamps are assumed to be relative to the timezone given in the
		`timezone` option. They are converted to UTC-relative timestamps and
		the output type has its timezone set to the value of the `timezone`
		option. Null values emit null.
		This function is meant to be used when an external system produces
		"timezone-naive" timestamps which need to be converted to
		"timezone-aware" timestamps. An error is returned if the timestamps
		already have a defined timezone.
		
		Parameters
		----------
		timestamps : Array-like or scalar-like
		    Argument to compute function.
		timezone : str
		    Timezone to assume for the input.
		ambiguous : str, default "raise"
		    How to handle timestamps that are ambiguous in the assumed timezone.
		    Accepted values are "raise", "earliest", "latest".
		nonexistent : str, default "raise"
		    How to handle timestamps that don't exist in the assumed timezone.
		    Accepted values are "raise", "earliest", "latest".
		options : pyarrow.compute.AssumeTimezoneOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function assume_timezone(timestamps:Dynamic, timezone:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the inverse tangent of x.
		
		The return value is in the range [-pi/2, pi/2];
		for a full return range [-pi, pi], see "atan2".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function atan(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the inverse tangent of y/x.
		
		The return value is in the range [-pi, pi].
		
		Parameters
		----------
		y : Array-like or scalar-like
		    Argument to compute function.
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function atan2(y:Dynamic, x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Join a list of strings together with a separator.
		
		Concatenate the strings in `list`. The `separator` is inserted
		between each given string.
		Any null input and any null `list` element emits a null output.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		separator : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function binary_join(strings:Dynamic, separator:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Join string arguments together, with the last argument as separator.
		
		Concatenate the `strings` except for the last one. The last argument
		in `strings` is inserted between each given string.
		Any null separator element emits a null output. Null elements either
		emit a null (the default), are skipped, or replaced with a given string.
		
		Parameters
		----------
		*strings : Array-like or scalar-like
		    Argument to compute function.
		null_handling : str, default "emit_null"
		    How to handle null values in the inputs.
		    Accepted values are "emit_null", "skip", "replace".
		null_replacement : str, default ""
		    Replacement string to emit for null inputs if `null_handling`
		    is "replace".
		options : pyarrow.compute.JoinOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function binary_join_element_wise(?strings:python.VarArgs<Dynamic>, ?null_handling:Dynamic, ?null_replacement:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute string lengths.
		
		For each string in `strings`, emit its length of bytes.
		Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function binary_length(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Repeat a binary string.
		
		For each binary string in `strings`, return a replicated version.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		num_repeats : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function binary_repeat(strings:Dynamic, num_repeats:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Replace a slice of a binary string.
		
		For each string in `strings`, replace a slice of the string defined by `start`
		and `stop` indices with the given `replacement`. `start` is inclusive
		and `stop` is exclusive, and both are measured in bytes.
		Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		start : int
		    Index to start slicing at (inclusive).
		stop : int
		    Index to stop slicing at (exclusive).
		replacement : str
		    What to replace the slice with.
		options : pyarrow.compute.ReplaceSliceOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function binary_replace_slice(strings:Dynamic, start:Dynamic, stop:Dynamic, replacement:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Reverse binary input.
		
		For each binary string in `strings`, return a reversed version.
		
		This function reverses the binary data at a byte-level.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function binary_reverse(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Bit-wise AND the arguments element-wise.
		
		Null values return null.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function bit_wise_and(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Bit-wise negate the arguments element-wise.
		
		Null values return null.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function bit_wise_not(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Bit-wise OR the arguments element-wise.
		
		Null values return null.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function bit_wise_or(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Bit-wise XOR the arguments element-wise.
		
		Null values return null.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function bit_wise_xor(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Select the indices of the bottom-k ordered elements from
		array- or table-like data.
		
		This is a specialization for :func:`select_k_unstable`. Output is not
		guaranteed to be stable.
		
		Parameters
		----------
		values : Array, ChunkedArray, RecordBatch, or Table
		    Data to sort and get bottom indices from.
		k : int
		    The number of `k` elements to keep.
		sort_keys : List-like
		    Column key names to order by when input is table-like data.
		memory_pool : MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
		
		Returns
		-------
		result : Array of indices
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> import pyarrow.compute as pc
		>>> arr = pa.array(["a", "b", "c", None, "e", "f"])
		>>> pc.bottom_k_unstable(arr, k=3)
		<pyarrow.lib.UInt64Array object at 0x7fdcb19d7fa0>
		[
		  0,
		  1,
		  2
		]
	**/
	static public function bottom_k_unstable(values:Dynamic, k:Dynamic, ?sort_keys:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		call_function(name, args, options=None, memory_pool=None)
		
		Call a named function.
		
		The function is looked up in the global registry
		(as returned by `function_registry()`).
		
		Parameters
		----------
		name : str
		    The name of the function to call.
		args : list
		    The arguments to the function.
		options : optional
		    options provided to the function.
		memory_pool : MemoryPool, optional
		    memory pool to use for allocations during function execution.
	**/
	static public function call_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Choose values based on multiple conditions.
		
		`cond` must be a struct of Boolean values. `cases` can be a mix
		of scalar and array arguments (of any type, but all must be the
		same type or castable to a common type), with either exactly one
		datum per child of `cond`, or one more `cases` than children of
		`cond` (in which case we have an "else" value).
		
		Each row of the output will be the corresponding value of the
		first datum in `cases` for which the corresponding child of `cond`
		is true, or otherwise the "else" value (if given), or null.
		
		Essentially, this implements a switch-case or if-else, if-else... statement.
		
		Parameters
		----------
		cond : Array-like or scalar-like
		    Argument to compute function.
		*cases : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function case_when(cond:Dynamic, ?cases:python.VarArgs<Dynamic>, ?memory_pool:Dynamic):Dynamic;
	/**
		Cast array values to another data type. Can also be invoked as an array
		instance method.
		
		Parameters
		----------
		arr : Array-like
		target_type : DataType or str
		    Type to cast to
		safe : bool, default True
		    Check for overflows or other unsafe conversions
		
		Examples
		--------
		>>> from datetime import datetime
		>>> import pyarrow as pa
		>>> arr = pa.array([datetime(2010, 1, 1), datetime(2015, 1, 1)])
		>>> arr.type
		TimestampType(timestamp[us])
		
		You can use ``pyarrow.DataType`` objects to specify the target type:
		
		>>> cast(arr, pa.timestamp('ms'))
		<pyarrow.lib.TimestampArray object at 0x7fe93c0f6910>
		[
		  2010-01-01 00:00:00.000,
		  2015-01-01 00:00:00.000
		]
		
		>>> cast(arr, pa.timestamp('ms')).type
		TimestampType(timestamp[ms])
		
		Alternatively, it is also supported to use the string aliases for these
		types:
		
		>>> arr.cast('timestamp[ms]')
		<pyarrow.lib.TimestampArray object at 0x10420eb88>
		[
		  1262304000000,
		  1420070400000
		]
		>>> arr.cast('timestamp[ms]').type
		TimestampType(timestamp[ms])
		
		Returns
		-------
		casted : Array
	**/
	@:native("cast")
	static public function _cast(arr:Dynamic, target_type:Dynamic, ?safe:Dynamic):Dynamic;
	/**
		Round up to the nearest integer.
		
		Compute the smallest integer value not less in magnitude than `x`.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ceil(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Round temporal values up to nearest multiple of specified time unit.
		
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		timestamps : Array-like or scalar-like
		    Argument to compute function.
		multiple : int, default 1
		    Number of units to round to.
		unit : str, default "second"
		    The unit in which `multiple` is expressed.
		    Accepted values are "year", "quarter", "month", "week", "day",
		    "hour", "minute", "second", "millisecond", "microsecond",
		    "nanosecond".
		options : pyarrow.compute.RoundTemporalOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ceil_temporal(timestamps:Dynamic, ?multiple:Dynamic, ?unit:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Choose values from several arrays.
		
		For each row, the value of the first argument is used as a 0-based index
		into the list of `values` arrays (i.e. index 0 selects the first of the
		`values` arrays). The output value is the corresponding value of the
		selected argument.
		
		If an index is null, the output will be null.
		
		Parameters
		----------
		indices : Array-like or scalar-like
		    Argument to compute function.
		*values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function choose(indices:Dynamic, ?values:python.VarArgs<Dynamic>, ?memory_pool:Dynamic):Dynamic;
	/**
		Select the first non-null value.
		
		Each row of the output will be the value from the first corresponding input
		for which the value is not null. If all inputs are null in a row, the output
		will be null.
		
		Parameters
		----------
		*values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function coalesce(?values:python.VarArgs<Dynamic>, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the cosine.
		
		NaN is returned for invalid input values;
		to raise an error instead, see "cos_checked".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function cos(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the cosine.
		
		Infinite values raise an error;
		to return NaN instead, see "cos".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function cos_checked(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Count the number of null / non-null values.
		
		By default, only non-null values are counted.
		This can be changed through CountOptions.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		mode : str, default "only_valid"
		    Which values to count in the input.
		    Accepted values are "only_valid", "only_null", "all".
		options : pyarrow.compute.CountOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function count(array:Dynamic, ?mode:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Count the number of unique values.
		
		By default, only non-null values are counted.
		This can be changed through CountOptions.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		mode : str, default "only_valid"
		    Which values to count in the input.
		    Accepted values are "only_valid", "only_null", "all".
		options : pyarrow.compute.CountOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function count_distinct(array:Dynamic, ?mode:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Count occurrences of substring.
		
		For each string in `strings`, emit the number of occurrences of the given
		literal pattern.
		Null inputs emit null. The pattern must be given in MatchSubstringOptions.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		pattern : str
		    Substring pattern to look for inside input values.
		ignore_case : bool, default False
		    Whether to perform a case-insensitive match.
		options : pyarrow.compute.MatchSubstringOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function count_substring(strings:Dynamic, pattern:Dynamic, ?ignore_case:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Count occurrences of substring.
		
		For each string in `strings`, emit the number of occurrences of the given
		regular expression pattern.
		Null inputs emit null. The pattern must be given in MatchSubstringOptions.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		pattern : str
		    Substring pattern to look for inside input values.
		ignore_case : bool, default False
		    Whether to perform a case-insensitive match.
		options : pyarrow.compute.MatchSubstringOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function count_substring_regex(strings:Dynamic, pattern:Dynamic, ?ignore_case:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract day number.
		
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function day(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract day of the week number.
		
		By default, the week starts on Monday represented by 0 and ends on Sunday
		represented by 6.
		`DayOfWeekOptions.week_start` can be used to set another starting day using
		the ISO numbering convention (1=start week on Monday, 7=start week on Sunday).
		Day numbers can start at 0 or 1 based on `DayOfWeekOptions.count_from_zero`.
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		count_from_zero : bool, default True
		    If True, number days from 0, otherwise from 1.
		week_start : int, default 1
		    Which day does the week start with (Monday=1, Sunday=7).
		    How this value is numbered is unaffected by `count_from_zero`.
		options : pyarrow.compute.DayOfWeekOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function day_of_week(values:Dynamic, ?count_from_zero:Dynamic, ?week_start:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract day of year number.
		
		January 1st maps to day number 1, February 1st to 32, etc.
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function day_of_year(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the number of days and milliseconds between two timestamps.
		
		Returns the number of days and milliseconds from `start` to `end`.
		That is, first the difference in days is computed as if both
		timestamps were truncated to the day, then the difference between time times
		of the two timestamps is computed as if both times were truncated to the
		millisecond.
		Null values return null.
		
		Parameters
		----------
		start : Array-like or scalar-like
		    Argument to compute function.
		end : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function day_time_interval_between(start:Dynamic, end:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the number of days between two timestamps.
		
		Returns the number of day boundaries crossed from `start` to `end`.
		That is, the difference is calculated as if the timestamps were
		truncated to the day.
		Null values emit null.
		
		Parameters
		----------
		start : Array-like or scalar-like
		    Argument to compute function.
		end : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function days_between(start:Dynamic, end:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.
		
		Entirely blank lines are normalized to a newline character.
	**/
	static public function dedent(text:Dynamic):Dynamic;
	/**
		Dictionary-encode array.
		
		Return a dictionary-encoded version of the input array.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		null_encoding : str, default "mask"
		    How to encode nulls in the input.
		    Accepted values are "mask" (null inputs emit a null in the indices
		    array), "encode" (null inputs emit a non-null index pointing to
		    a null value in the dictionary array).
		options : pyarrow.compute.DictionaryEncodeOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function dictionary_encode(array:Dynamic, ?null_encoding:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Divide the arguments element-wise.
		
		Integer division by zero returns an error. However, integer overflow
		wraps around, and floating-point division by zero returns an infinite.
		Use function "divide_checked" if you want to get an error
		in all the aforementioned cases.
		
		Parameters
		----------
		dividend : Array-like or scalar-like
		    Argument to compute function.
		divisor : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function divide(dividend:Dynamic, divisor:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Divide the arguments element-wise.
		
		An error is returned when trying to divide by zero, or when
		integer overflow is encountered.
		
		Parameters
		----------
		dividend : Array-like or scalar-like
		    Argument to compute function.
		divisor : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function divide_checked(dividend:Dynamic, divisor:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Drop nulls from the input.
		
		The output is populated with values from the input (Array, ChunkedArray,
		RecordBatch, or Table) without the null values.
		For the RecordBatch and Table cases, `drop_null` drops the full row if
		there is any null.
		
		Parameters
		----------
		input : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function drop_null(input:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Check if strings end with a literal pattern.
		
		For each string in `strings`, emit true iff it ends with a given pattern.
		The pattern must be given in MatchSubstringOptions.
		If ignore_case is set, only simple case folding is performed.
		
		Null inputs emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		pattern : str
		    Substring pattern to look for inside input values.
		ignore_case : bool, default False
		    Whether to perform a case-insensitive match.
		options : pyarrow.compute.MatchSubstringOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ends_with(strings:Dynamic, pattern:Dynamic, ?ignore_case:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compare values for equality (x == y).
		
		A null on either side emits a null comparison result.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function equal(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract substrings captured by a regex pattern.
		
		For each string in `strings`, match the regular expression and, if
		successful, emit a struct with field names and values coming from the
		regular expression's named capture groups. If the input is null or the
		regular expression fails matching, a null output value is emitted.
		
		Regular expression matching is done using the Google RE2 library.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		pattern : str
		    Regular expression with named capture fields.
		options : pyarrow.compute.ExtractRegexOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function extract_regex(strings:Dynamic, pattern:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Reference a named column of the dataset.
		
		Stores only the field's name. Type and other information is known only when
		the expression is bound to a dataset having an explicit scheme.
		
		Parameters
		----------
		name : string
		    The name of the field the expression references to.
		
		Returns
		-------
		field_expr : Expression
	**/
	static public function field(name:Dynamic):Dynamic;
	/**
		Replace each null element in values with fill_value. The fill_value must be
		the same type as values or able to be implicitly casted to the array's
		type.
		
		This is an alias for :func:`coalesce`.
		
		Parameters
		----------
		values : Array, ChunkedArray, or Scalar-like object
		    Each null element is replaced with the corresponding value
		    from fill_value.
		fill_value : Array, ChunkedArray, or Scalar-like object
		    If not same type as data will attempt to cast.
		
		Returns
		-------
		result : depends on inputs
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> arr = pa.array([1, 2, None, 3], type=pa.int8())
		>>> fill_value = pa.scalar(5, type=pa.int8())
		>>> arr.fill_null(fill_value)
		pyarrow.lib.Int8Array object at 0x7f95437f01a0>
		[
		  1,
		  2,
		  5,
		  3
		]
	**/
	static public function fill_null(values:Dynamic, fill_value:Dynamic):Dynamic;
	/**
		Carry non-null values backward to fill null slots.
		
		Given an array, propagate next valid observation backward to previous valid
		or nothing if all next values are null.
		
		Parameters
		----------
		values : Array-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function fill_null_backward(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Carry non-null values forward to fill null slots.
		
		Given an array, propagate last valid observation forward to next valid
		or nothing if all previous values are null.
		
		Parameters
		----------
		values : Array-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function fill_null_forward(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Filter with a boolean selection filter.
		
		The output is populated with values from the input at positions
		where the selection filter is non-zero.  Nulls in the selection filter
		are handled based on FilterOptions.
		
		Parameters
		----------
		input : Array-like or scalar-like
		    Argument to compute function.
		selection_filter : Array-like or scalar-like
		    Argument to compute function.
		null_selection_behavior : str, default "drop"
		    How to handle nulls in the selection filter.
		    Accepted values are "drop", "emit_null".
		options : pyarrow.compute.FilterOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> arr = pa.array(["a", "b", "c", None, "e"])
		>>> mask = pa.array([True, False, None, False, True])
		>>> arr.filter(mask)
		<pyarrow.lib.StringArray object at 0x7fa826df9200>
		[
		  "a",
		  "e"
		]
		>>> arr.filter(mask, null_selection_behavior='emit_null')
		<pyarrow.lib.StringArray object at 0x7fa826df9200>
		[
		  "a",
		  null,
		  "e"
		]
	**/
	static public function filter(input:Dynamic, selection_filter:Dynamic, ?null_selection_behavior:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Find first occurrence of substring.
		
		For each string in `strings`, emit the index in bytes of the first occurrence
		of the given literal pattern, or -1 if not found.
		Null inputs emit null. The pattern must be given in MatchSubstringOptions.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		pattern : str
		    Substring pattern to look for inside input values.
		ignore_case : bool, default False
		    Whether to perform a case-insensitive match.
		options : pyarrow.compute.MatchSubstringOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function find_substring(strings:Dynamic, pattern:Dynamic, ?ignore_case:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Find location of first match of regex pattern.
		
		For each string in `strings`, emit the index in bytes of the first occurrence
		of the given literal pattern, or -1 if not found.
		Null inputs emit null. The pattern must be given in MatchSubstringOptions.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		pattern : str
		    Substring pattern to look for inside input values.
		ignore_case : bool, default False
		    Whether to perform a case-insensitive match.
		options : pyarrow.compute.MatchSubstringOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function find_substring_regex(strings:Dynamic, pattern:Dynamic, ?ignore_case:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Round down to the nearest integer.
		
		Compute the largest integer value not greater in magnitude than `x`.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function floor(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Round temporal values down to nearest multiple of specified time unit.
		
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		timestamps : Array-like or scalar-like
		    Argument to compute function.
		multiple : int, default 1
		    Number of units to round to.
		unit : str, default "second"
		    The unit in which `multiple` is expressed.
		    Accepted values are "year", "quarter", "month", "week", "day",
		    "hour", "minute", "second", "millisecond", "microsecond",
		    "nanosecond".
		options : pyarrow.compute.RoundTemporalOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function floor_temporal(timestamps:Dynamic, ?multiple:Dynamic, ?unit:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		function_registry()
	**/
	static public function function_registry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_function(name)
		
		Get a function by name.
		
		The function is looked up in the global registry
		(as returned by `function_registry()`).
		
		Parameters
		----------
		name : str
		    The name of the function to lookup
	**/
	static public function get_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compare values for ordered inequality (x > y).
		
		A null on either side emits a null comparison result.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function greater(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compare values for ordered inequality (x >= y).
		
		A null on either side emits a null comparison result.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function greater_equal(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract hour value.
		
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function hour(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the number of hours between two timestamps.
		
		Returns the number of hour boundaries crossed from `start` to `end`.
		That is, the difference is calculated as if the timestamps were
		truncated to the hour.
		Null values emit null.
		
		Parameters
		----------
		start : Array-like or scalar-like
		    Argument to compute function.
		end : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function hours_between(start:Dynamic, end:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Choose values based on a condition.
		
		`cond` must be a Boolean scalar/ array. 
		`left` or `right` must be of the same type scalar/ array.
		`null` values in `cond` will be promoted to the output.
		
		Parameters
		----------
		cond : Array-like or scalar-like
		    Argument to compute function.
		left : Array-like or scalar-like
		    Argument to compute function.
		right : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function if_else(cond:Dynamic, left:Dynamic, right:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Find the index of the first occurrence of a given value.
		
		Parameters
		----------
		data : Array-like
		value : Scalar-like object
		    The value to search for.
		start : int, optional
		end : int, optional
		memory_pool : MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
		
		Returns
		-------
		index : int
		    the index, or -1 if not found
	**/
	static public function index(data:Dynamic, value:Dynamic, ?start:Dynamic, ?end:Dynamic, ?memory_pool:Dynamic):Int;
	/**
		Return index of each element in a set of values.
		
		For each element in `values`, return its index in a given set of
		values, or null if it is not found there.
		The set of values to look for must be given in SetLookupOptions.
		By default, nulls are matched against the value set, this can be
		changed in SetLookupOptions.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		value_set : Array
		    Set of values to look for in the input.
		skip_nulls : bool, default False
		    If False, nulls in the input are matched in the value_set just
		    like regular values.
		    If True, nulls in the input always fail matching.
		options : pyarrow.compute.SetLookupOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function index_in(values:Dynamic, value_set:Dynamic, ?skip_nulls:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Return index of each element in a set of values.
		
		For each element in `values`, return its index in the `value_set`,
		or null if it is not found there.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		value_set : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function index_in_meta_binary(values:Dynamic, value_set:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Return the indices of the values in the array that are non-zero.
		
		For each input value, check if it's zero, false or null. Emit the index
		of the value in the array if it's none of the those.
		
		Parameters
		----------
		values : Array-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function indices_nonzero(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Invert boolean values.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function invert(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Return true if value is finite.
		
		For each input value, emit true iff the value is finite
		(i.e. neither NaN, inf, nor -inf).
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function is_finite(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Find each element in a set of values.
		
		For each element in `values`, return true if it is found in a given
		set of values, false otherwise.
		The set of values to look for must be given in SetLookupOptions.
		By default, nulls are matched against the value set, this can be
		changed in SetLookupOptions.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		value_set : Array
		    Set of values to look for in the input.
		skip_nulls : bool, default False
		    If False, nulls in the input are matched in the value_set just
		    like regular values.
		    If True, nulls in the input always fail matching.
		options : pyarrow.compute.SetLookupOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function is_in(values:Dynamic, value_set:Dynamic, ?skip_nulls:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Find each element in a set of values.
		
		For each element in `values`, return true if it is found in `value_set`,
		false otherwise.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		value_set : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function is_in_meta_binary(values:Dynamic, value_set:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Return true if infinity.
		
		For each input value, emit true iff the value is infinite (inf or -inf).
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function is_inf(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Return true if NaN.
		
		For each input value, emit true iff the value is NaN.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function is_nan(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Return true if null (and optionally NaN).
		
		For each input value, emit true iff the value is null.
		True may also be emitted for NaN values by setting the `nan_is_null` flag.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		nan_is_null : bool, default False
		    Whether floating-point NaN values are considered null.
		options : pyarrow.compute.NullOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function is_null(values:Dynamic, ?nan_is_null:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Return true if non-null.
		
		For each input value, emit true iff the value is valid (i.e. non-null).
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function is_valid(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract (ISO year, ISO week, ISO day of week) struct.
		
		ISO week starts on Monday denoted by 1 and ends on Sunday denoted by 7.
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function iso_calendar(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract ISO week of year number.
		
		First ISO week has the majority (4 or more) of its days in January.
		ISO week starts on Monday. The week number starts with 1 and can run
		up to 53.
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function iso_week(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract ISO year number.
		
		First week of an ISO year has the majority (4 or more) of its days in January.
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function iso_year(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compare values for ordered inequality (x < y).
		
		A null on either side emits a null comparison result.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function less(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compare values for ordered inequality (x <= y).
		
		A null on either side emits a null comparison result.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function less_equal(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute elements using of nested list values using an index.
		
		`lists` must have a list-like type.
		For each value in each list of `lists`, the element at `index`
		is emitted. Null values emit a null in the output.
		
		Parameters
		----------
		lists : Array-like or scalar-like
		    Argument to compute function.
		index : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function list_element(lists:Dynamic, index:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Flatten list values.
		
		`lists` must have a list-like type.
		Return an array with the top list level flattened.
		Top-level null values in `lists` do not emit anything in the input.
		
		Parameters
		----------
		lists : Array-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function list_flatten(lists:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		list_functions()
		
		Return all function names in the global registry.
	**/
	static public function list_functions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute parent indices of nested list values.
		
		`lists` must have a list-like type.
		For each value in each list of `lists`, the top-level list index
		is emitted.
		
		Parameters
		----------
		lists : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function list_parent_indices(lists:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute list lengths.
		
		`lists` must have a list-like type.
		For each non-null value in `lists`, its length is emitted.
		Null values emit a null in the output.
		
		Parameters
		----------
		lists : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function list_value_length(lists:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute natural logarithm.
		
		Non-positive values return -inf or NaN. Null values return null.
		Use function "ln_checked" if you want non-positive values to raise an error.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ln(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute natural logarithm.
		
		Non-positive values raise an error. Null values return null.
		Use function "ln" if you want non-positive values to return -inf or NaN.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function ln_checked(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute base 10 logarithm.
		
		Non-positive values return -inf or NaN. Null values return null.
		Use function "log10_checked" if you want non-positive values
		to raise an error.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function log10(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute base 10 logarithm.
		
		Non-positive values raise an error. Null values return null.
		Use function "log10" if you want non-positive values
		to return -inf or NaN.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function log10_checked(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute natural log of (1+x).
		
		Values <= -1 return -inf or NaN. Null values return null.
		This function may be more precise than log(1 + x) for x close to zero.
		Use function "log1p_checked" if you want invalid values to raise an error.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function log1p(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute natural log of (1+x).
		
		Values <= -1 return -inf or NaN. Null values return null.
		This function may be more precise than log(1 + x) for x close to zero.
		Use function "log1p" if you want invalid values to return -inf or NaN.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function log1p_checked(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute base 2 logarithm.
		
		Non-positive values return -inf or NaN. Null values return null.
		Use function "log2_checked" if you want non-positive values
		to raise an error.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function log2(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute base 2 logarithm.
		
		Non-positive values raise an error. Null values return null.
		Use function "log2" if you want non-positive values
		to return -inf or NaN.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function log2_checked(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute base `b` logarithm.
		
		Values <= 0 return -inf or NaN. Null values return null.
		Use function "logb_checked" if you want non-positive values to raise an error.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		b : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function logb(x:Dynamic, b:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute base `b` logarithm.
		
		Values <= 0 return -inf or NaN. Null values return null.
		Use function "logb" if you want non-positive values to return -inf or NaN.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		b : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function logb_checked(x:Dynamic, b:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Wrap Arrays into a StructArray.
		
		Names of the StructArray's fields are
		specified through MakeStructOptions.
		
		Parameters
		----------
		*args : Array-like or scalar-like
		    Argument to compute function.
		field_names : sequence of str
		    Names of the struct fields to create.
		field_nullability : sequence of bool, optional
		    Nullability information for each struct field.
		    If omitted, all fields are nullable.
		field_metadata : sequence of KeyValueMetadata, optional
		    Metadata for each struct field.
		options : pyarrow.compute.MakeStructOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function make_struct(?args:python.VarArgs<Dynamic>, ?field_names:Dynamic, ?field_nullability:Dynamic, ?field_metadata:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Match strings against SQL-style LIKE pattern.
		
		For each string in `strings`, emit true iff it matches a given pattern
		at any position. '%' will match any number of characters, '_' will
		match exactly one character, and any other character matches itself.
		To match a literal '%', '_', or '\', precede the character with a backslash.
		Null inputs emit null.  The pattern must be given in MatchSubstringOptions.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		pattern : str
		    Substring pattern to look for inside input values.
		ignore_case : bool, default False
		    Whether to perform a case-insensitive match.
		options : pyarrow.compute.MatchSubstringOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function match_like(strings:Dynamic, pattern:Dynamic, ?ignore_case:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Match strings against literal pattern.
		
		For each string in `strings`, emit true iff it contains a given pattern.
		Null inputs emit null.
		The pattern must be given in MatchSubstringOptions.
		If ignore_case is set, only simple case folding is performed.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		pattern : str
		    Substring pattern to look for inside input values.
		ignore_case : bool, default False
		    Whether to perform a case-insensitive match.
		options : pyarrow.compute.MatchSubstringOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function match_substring(strings:Dynamic, pattern:Dynamic, ?ignore_case:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Match strings against regex pattern.
		
		For each string in `strings`, emit true iff it matches a given pattern
		at any position. The pattern must be given in MatchSubstringOptions.
		If ignore_case is set, only simple case folding is performed.
		
		Null inputs emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		pattern : str
		    Substring pattern to look for inside input values.
		ignore_case : bool, default False
		    Whether to perform a case-insensitive match.
		options : pyarrow.compute.MatchSubstringOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function match_substring_regex(strings:Dynamic, pattern:Dynamic, ?ignore_case:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the minimum or maximum values of a numeric array.
		
		Null values are ignored by default.
		This can be changed through ScalarAggregateOptions.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		skip_nulls : bool, default True
		    Whether to skip (ignore) nulls in the input.
		    If False, any null in the input forces the output to null.
		min_count : int, default 1
		    Minimum number of non-null values in the input.  If the number
		    of non-null values is below `min_count`, the output is null.
		options : pyarrow.compute.ScalarAggregateOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function max(array:Dynamic, ?skip_nulls:Dynamic, ?min_count:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Find the element-wise maximum value.
		
		Nulls are ignored (by default) or propagated.
		NaN is preferred over null, but not over any valid value.
		
		Parameters
		----------
		*args : Array-like or scalar-like
		    Argument to compute function.
		skip_nulls : bool, default True
		    Whether to skip (ignore) nulls in the input.
		    If False, any null in the input forces the output to null.
		options : pyarrow.compute.ElementWiseAggregateOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function max_element_wise(?args:python.VarArgs<Dynamic>, ?skip_nulls:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the mean of a numeric array.
		
		Null values are ignored by default. Minimum count of non-null
		values can be set and null is returned if too few are present.
		This can be changed through ScalarAggregateOptions.
		The result is a double for integer and floating point arguments,
		and a decimal with the same bit-width/precision/scale for decimal arguments.
		For integers and floats, NaN is returned if min_count = 0 and
		there are no values. For decimals, null is returned instead.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		skip_nulls : bool, default True
		    Whether to skip (ignore) nulls in the input.
		    If False, any null in the input forces the output to null.
		min_count : int, default 1
		    Minimum number of non-null values in the input.  If the number
		    of non-null values is below `min_count`, the output is null.
		options : pyarrow.compute.ScalarAggregateOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function mean(array:Dynamic, ?skip_nulls:Dynamic, ?min_count:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract microsecond values.
		
		Millisecond returns number of microseconds since the last full millisecond.
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function microsecond(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the number of microseconds between two timestamps.
		
		Returns the number of microsecond boundaries crossed from `start` to `end`.
		That is, the difference is calculated as if the timestamps were
		truncated to the microsecond.
		Null values emit null.
		
		Parameters
		----------
		start : Array-like or scalar-like
		    Argument to compute function.
		end : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function microseconds_between(start:Dynamic, end:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract millisecond values.
		
		Millisecond returns number of milliseconds since the last full second.
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function millisecond(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the number of millisecond boundaries between two timestamps.
		
		Returns the number of millisecond boundaries crossed from `start` to `end`.
		That is, the difference is calculated as if the timestamps were
		truncated to the millisecond.
		Null values emit null.
		
		Parameters
		----------
		start : Array-like or scalar-like
		    Argument to compute function.
		end : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function milliseconds_between(start:Dynamic, end:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the minimum or maximum values of a numeric array.
		
		Null values are ignored by default.
		This can be changed through ScalarAggregateOptions.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		skip_nulls : bool, default True
		    Whether to skip (ignore) nulls in the input.
		    If False, any null in the input forces the output to null.
		min_count : int, default 1
		    Minimum number of non-null values in the input.  If the number
		    of non-null values is below `min_count`, the output is null.
		options : pyarrow.compute.ScalarAggregateOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function min(array:Dynamic, ?skip_nulls:Dynamic, ?min_count:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Find the element-wise minimum value.
		
		Nulls are ignored (by default) or propagated.
		NaN is preferred over null, but not over any valid value.
		
		Parameters
		----------
		*args : Array-like or scalar-like
		    Argument to compute function.
		skip_nulls : bool, default True
		    Whether to skip (ignore) nulls in the input.
		    If False, any null in the input forces the output to null.
		options : pyarrow.compute.ElementWiseAggregateOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function min_element_wise(?args:python.VarArgs<Dynamic>, ?skip_nulls:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the minimum and maximum values of a numeric array.
		
		Null values are ignored by default.
		This can be changed through ScalarAggregateOptions.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		skip_nulls : bool, default True
		    Whether to skip (ignore) nulls in the input.
		    If False, any null in the input forces the output to null.
		min_count : int, default 1
		    Minimum number of non-null values in the input.  If the number
		    of non-null values is below `min_count`, the output is null.
		options : pyarrow.compute.ScalarAggregateOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function min_max(array:Dynamic, ?skip_nulls:Dynamic, ?min_count:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract minute values.
		
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function minute(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the number of minute boundaries between two timestamps.
		
		Returns the number of minute boundaries crossed from `start` to `end`.
		That is, the difference is calculated as if the timestamps were
		truncated to the minute.
		Null values emit null.
		
		Parameters
		----------
		start : Array-like or scalar-like
		    Argument to compute function.
		end : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function minutes_between(start:Dynamic, end:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the modal (most common) values of a numeric array.
		
		Compute the n most common values and their respective occurrence counts.
		The output has type `struct<mode: T, count: int64>`, where T is the
		input type.
		The results are ordered by descending `count` first, and ascending `mode`
		when breaking ties.
		Nulls are ignored.  If there are no non-null values in the array,
		an empty array is returned.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		n : int, default 1
		    Number of distinct most-common values to return.
		skip_nulls : bool, default True
		    Whether to skip (ignore) nulls in the input.
		    If False, any null in the input forces the output to null.
		min_count : int, default 0
		    Minimum number of non-null values in the input.  If the number
		    of non-null values is below `min_count`, the output is null.
		options : pyarrow.compute.ModeOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> import pyarrow.compute as pc
		>>> arr = pa.array([1, 1, 2, 2, 3, 2, 2, 2])
		>>> modes = pc.mode(arr, 2)
		>>> modes[0]
		<pyarrow.StructScalar: {'mode': 2, 'count': 5}>
		>>> modes[1]
		<pyarrow.StructScalar: {'mode': 1, 'count': 2}>
	**/
	static public function mode(array:Dynamic, ?n:Dynamic, ?skip_nulls:Dynamic, ?min_count:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract month number.
		
		Month is encoded as January=1, December=12.
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function month(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the number of months, days and nanoseconds between two timestamps.
		
		Returns the number of months, days, and nanoseconds from `start` to `end`.
		That is, first the difference in months is computed as if both timestamps
		were truncated to the months, then the difference between the days
		is computed, and finally the difference between the times of the two
		timestamps is computed as if both times were truncated to the nanosecond.
		Null values return null.
		
		Parameters
		----------
		start : Array-like or scalar-like
		    Argument to compute function.
		end : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function month_day_nano_interval_between(start:Dynamic, end:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the number of months between two timestamps.
		
		Returns the number of month boundaries crossed from `start` to `end`.
		That is, the difference is calculated as if the timestamps were
		truncated to the month.
		Null values emit null.
		
		Parameters
		----------
		start : Array-like or scalar-like
		    Argument to compute function.
		end : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function month_interval_between(start:Dynamic, end:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Multiply the arguments element-wise.
		
		Results will wrap around on integer overflow.
		Use function "multiply_checked" if you want overflow
		to return an error.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function multiply(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Multiply the arguments element-wise.
		
		This function returns an error on overflow.  For a variant that
		doesn't fail on overflow, use function "multiply".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function multiply_checked(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
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
	/**
		Extract nanosecond values.
		
		Nanosecond returns number of nanoseconds since the last full microsecond.
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function nanosecond(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the number of nanoseconds between two timestamps.
		
		Returns the number of nanosecond boundaries crossed from `start` to `end`.
		That is, the difference is calculated as if the timestamps were
		truncated to the nanosecond.
		Null values emit null.
		
		Parameters
		----------
		start : Array-like or scalar-like
		    Argument to compute function.
		end : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function nanoseconds_between(start:Dynamic, end:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Negate the argument element-wise.
		
		Results will wrap around on integer overflow.
		Use function "negate_checked" if you want overflow
		to return an error.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function negate(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Negate the arguments element-wise.
		
		This function returns an error on overflow.  For a variant that
		doesn't fail on overflow, use function "negate".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function negate_checked(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compare values for inequality (x != y).
		
		A null on either side emits a null comparison result.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function not_equal(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Logical 'or' boolean values.
		
		When a null is encountered in either input, a null is output.
		For a different null behavior, see function "or_kleene".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function or(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Logical 'or' boolean values.
		
		When a null is encountered in either input, a null is output.
		For a different null behavior, see function "or_kleene".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function or_(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Logical 'or' boolean values (Kleene logic).
		
		This function behaves as follows with nulls:
		
		- true or null = true
		- null and true = true
		- false and null = null
		- null and false = null
		- null and null = null
		
		In other words, in this context a null value really means "unknown",
		and an unknown value 'or' true is always true.
		For a different null behavior, see function "and".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function or_kleene(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Return the indices that would partition an array around a pivot.
		
		This functions computes an array of indices that define a non-stable
		partial sort of the input array.
		
		The output is such that the `N`'th index points to the `N`'th element
		of the input in sorted order, and all indices before the `N`'th point
		to elements in the input less or equal to elements at or after the `N`'th.
		
		By default, null values are considered greater than any other value
		and are therefore partitioned towards the end of the array.
		For floating-point types, NaNs are considered greater than any
		other non-null value, but smaller than null values.
		
		The pivot index `N` must be given in PartitionNthOptions.
		The handling of nulls and NaNs can also be changed in PartitionNthOptions.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		pivot : int
		    Index into the equivalent sorted array of the pivot element.
		null_placement : str, default "at_end"
		    Where nulls in the input should be partitioned.
		    Accepted values are "at_start", "at_end".
		options : pyarrow.compute.PartitionNthOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function partition_nth_indices(array:Dynamic, pivot:Dynamic, ?null_placement:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Raise arguments to power element-wise.
		
		Integer to negative integer power returns an error. However, integer overflow
		wraps around. If either base or exponent is null the result will be null.
		
		Parameters
		----------
		base : Array-like or scalar-like
		    Argument to compute function.
		exponent : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function power(base:Dynamic, exponent:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Raise arguments to power element-wise.
		
		An error is returned when integer to negative integer power is encountered,
		or integer overflow is encountered.
		
		Parameters
		----------
		base : Array-like or scalar-like
		    Argument to compute function.
		exponent : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function power_checked(base:Dynamic, exponent:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the product of values in a numeric array.
		
		Null values are ignored by default. Minimum count of non-null
		values can be set and null is returned if too few are present.
		This can be changed through ScalarAggregateOptions.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		skip_nulls : bool, default True
		    Whether to skip (ignore) nulls in the input.
		    If False, any null in the input forces the output to null.
		min_count : int, default 1
		    Minimum number of non-null values in the input.  If the number
		    of non-null values is below `min_count`, the output is null.
		options : pyarrow.compute.ScalarAggregateOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function product(array:Dynamic, ?skip_nulls:Dynamic, ?min_count:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute an array of quantiles of a numeric array or chunked array.
		
		By default, 0.5 quantile (median) is returned.
		If quantile lies between two data points, an interpolated value is
		returned based on selected interpolation method.
		Nulls and NaNs are ignored.
		An array of nulls is returned if there is no valid data point.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		q : double or sequence of double, default 0.5
		    Quantiles to compute. All values must be in [0, 1].
		interpolation : str, default "linear"
		    How to break ties between competing data points for a given quantile.
		    Accepted values are:
		    
		    - "linear": compute an interpolation
		    - "lower": always use the smallest of the two data points
		    - "higher": always use the largest of the two data points
		    - "nearest": select the data point that is closest to the quantile
		    - "midpoint": compute the (unweighted) mean of the two data points
		skip_nulls : bool, default True
		    Whether to skip (ignore) nulls in the input.
		    If False, any null in the input forces the output to null.
		min_count : int, default 0
		    Minimum number of non-null values in the input.  If the number
		    of non-null values is below `min_count`, the output is null.
		options : pyarrow.compute.QuantileOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function quantile(array:Dynamic, ?q:Dynamic, ?interpolation:Dynamic, ?skip_nulls:Dynamic, ?min_count:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract quarter of year number.
		
		First quarter maps to 1 and forth quarter maps to 4.
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function quarter(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the number of quarters between two timestamps.
		
		Returns the number of quarter start boundaries crossed from `start` to `end`.
		That is, the difference is calculated as if the timestamps were
		truncated to the quarter.
		Null values emit null.
		
		Parameters
		----------
		start : Array-like or scalar-like
		    Argument to compute function.
		end : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function quarters_between(start:Dynamic, end:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Generate numbers in the range [0, 1).
		
		Generated values are uniformly-distributed, double-precision in range [0, 1).
		Length of generated data, algorithm and seed can be changed via RandomOptions.
		
		Parameters
		----------
		length : int
		    Number of random values to generate.
		initializer : int or str
		    How to initialize the underlying random generator.
		    If an integer is given, it is used as a seed.
		    If "system" is given, the random generator is initialized with
		    a system-specific source of (hopefully true) randomness.
		    Other values are invalid.
		options : pyarrow.compute.RandomOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function random(length:Dynamic, ?initializer:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Replace matching non-overlapping substrings with replacement.
		
		For each string in `strings`, replace non-overlapping substrings that match
		the given literal `pattern` with the given `replacement`.
		If `max_replacements` is given and not equal to -1, it limits the
		maximum amount replacements per input, counted from the left.
		Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		pattern : str
		    Substring pattern to look for inside input values.
		replacement : str
		    What to replace the pattern with.
		max_replacements : int or None, default None
		    The maximum number of strings to replace in each
		    input value (unlimited if None).
		options : pyarrow.compute.ReplaceSubstringOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function replace_substring(strings:Dynamic, pattern:Dynamic, replacement:Dynamic, ?max_replacements:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Replace matching non-overlapping substrings with replacement.
		
		For each string in `strings`, replace non-overlapping substrings that match
		the given regular expression `pattern` with the given `replacement`.
		If `max_replacements` is given and not equal to -1, it limits the
		maximum amount replacements per input, counted from the left.
		Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		pattern : str
		    Substring pattern to look for inside input values.
		replacement : str
		    What to replace the pattern with.
		max_replacements : int or None, default None
		    The maximum number of strings to replace in each
		    input value (unlimited if None).
		options : pyarrow.compute.ReplaceSubstringOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function replace_substring_regex(strings:Dynamic, pattern:Dynamic, replacement:Dynamic, ?max_replacements:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Replace items selected with a mask.
		
		Given an array and a boolean mask (either scalar or of equal length),
		along with replacement values (either scalar or array),
		each element of the array for which the corresponding mask element is
		true will be replaced by the next value from the replacements,
		or with null if the mask is null.
		Hence, for replacement arrays, len(replacements) == sum(mask == true).
		
		Parameters
		----------
		values : Array-like
		    Argument to compute function.
		mask : Array-like
		    Argument to compute function.
		replacements : Array-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function replace_with_mask(values:Dynamic, mask:Dynamic, replacements:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Round to a given precision.
		
		Options are used to control the number of digits and rounding mode.
		Default behavior is to round to the nearest integer and
		use half-to-even rule to break ties.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		ndigits : int, default 0
		    Number of fractional digits to round to.
		round_mode : str, default "half_to_even"
		    Rounding and tie-breaking mode.
		    Accepted values are "down", "up", "towards_zero", "towards_infinity",
		    "half_down", "half_up", "half_towards_zero", "half_towards_infinity",
		    "half_to_even", "half_to_odd".
		options : pyarrow.compute.RoundOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function round(x:Dynamic, ?ndigits:Dynamic, ?round_mode:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Round temporal values to the nearest multiple of specified time unit.
		
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		timestamps : Array-like or scalar-like
		    Argument to compute function.
		multiple : int, default 1
		    Number of units to round to.
		unit : str, default "second"
		    The unit in which `multiple` is expressed.
		    Accepted values are "year", "quarter", "month", "week", "day",
		    "hour", "minute", "second", "millisecond", "microsecond",
		    "nanosecond".
		options : pyarrow.compute.RoundTemporalOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function round_temporal(timestamps:Dynamic, ?multiple:Dynamic, ?unit:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Round to a given multiple.
		
		Options are used to control the rounding multiple and rounding mode.
		Default behavior is to round to the nearest integer and
		use half-to-even rule to break ties.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		multiple : numeric scalar, default 1.0
		    Multiple to round to. Should be a scalar of a type compatible
		    with the argument to be rounded.
		round_mode : str, default "half_to_even"
		    Rounding and tie-breaking mode.
		    Accepted values are "down", "up", "towards_zero", "towards_infinity",
		    "half_down", "half_up", "half_towards_zero", "half_towards_infinity",
		    "half_to_even", "half_to_odd".
		options : pyarrow.compute.RoundToMultipleOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function round_to_multiple(x:Dynamic, ?multiple:Dynamic, ?round_mode:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Expression representing a scalar value.
		
		Parameters
		----------
		value : bool, int, float or string
		    Python value of the scalar. Note that only a subset of types are
		    currently supported.
		
		Returns
		-------
		scalar_expr : Expression
	**/
	static public function scalar(value:Dynamic):Dynamic;
	/**
		Extract second values.
		
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function second(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the number of seconds between two timestamps.
		
		Returns the number of second boundaries crossed from `start` to `end`.
		That is, the difference is calculated as if the timestamps were
		truncated to the second.
		Null values emit null.
		
		Parameters
		----------
		start : Array-like or scalar-like
		    Argument to compute function.
		end : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function seconds_between(start:Dynamic, end:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Select the indices of the first `k` ordered elements from the input.
		
		This function selects an array of indices of the first `k` ordered elements
		from the `input` array, record batch or table specified in the column keys
		(`options.sort_keys`). Output is not guaranteed to be stable.
		Null values are considered greater than any other value and are
		therefore ordered at the end. For floating-point types, NaNs are considered
		greater than any other non-null value, but smaller than null values.
		
		Parameters
		----------
		input : Array-like or scalar-like
		    Argument to compute function.
		k : int
		    Number of leading values to select in sorted order
		    (i.e. the largest values if sort order is "descending",
		    the smallest otherwise).
		sort_keys : sequence of (name, order) tuples
		    Names of field/column keys to sort the input on,
		    along with the order each field/column is sorted in.
		    Accepted values for `order` are "ascending", "descending".
		options : pyarrow.compute.SelectKOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function select_k_unstable(input:Dynamic, k:Dynamic, sort_keys:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Left shift `x` by `y`.
		
		The shift operates as if on the two's complement representation of the number.
		In other words, this is equivalent to multiplying `x` by 2 to the power `y`,
		even if overflow occurs.
		`x` is returned if `y` (the amount to shift by) is (1) negative or
		(2) greater than or equal to the precision of `x`.
		Use function "shift_left_checked" if you want an invalid shift amount
		to return an error.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function shift_left(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Left shift `x` by `y`.
		
		The shift operates as if on the two's complement representation of the number.
		In other words, this is equivalent to multiplying `x` by 2 to the power `y`,
		even if overflow occurs.
		An error is raised if `y` (the amount to shift by) is (1) negative or
		(2) greater than or equal to the precision of `x`.
		See "shift_left" for a variant that doesn't fail for an invalid shift amount.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function shift_left_checked(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Right shift `x` by `y`.
		
		This is equivalent to dividing `x` by 2 to the power `y`.
		`x` is returned if `y` (the amount to shift by) is: (1) negative or
		(2) greater than or equal to the precision of `x`.
		Use function "shift_right_checked" if you want an invalid shift amount
		to return an error.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function shift_right(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Right shift `x` by `y`.
		
		This is equivalent to dividing `x` by 2 to the power `y`.
		An error is raised if `y` (the amount to shift by) is (1) negative or
		(2) greater than or equal to the precision of `x`.
		See "shift_right" for a variant that doesn't fail for an invalid shift amount
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function shift_right_checked(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Get the signedness of the arguments element-wise.
		
		Output is any of (-1,1) for nonzero inputs and 0 for zero input.
		NaN values return NaN.  Integral values return signedness as Int8 and
		floating-point values return it with the same type as the input values.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function sign(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the sine.
		
		NaN is returned for invalid input values;
		to raise an error instead, see "sin_checked".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function sin(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the sine.
		
		Invalid input values raise an error;
		to return NaN instead, see "sin".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function sin_checked(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Return the indices that would sort an array, record batch or table.
		
		This function computes an array of indices that define a stable sort
		of the input array, record batch or table.  By default, nNull values are
		considered greater than any other value and are therefore sorted at the
		end of the input. For floating-point types, NaNs are considered greater
		than any other non-null value, but smaller than null values.
		
		The handling of nulls and NaNs can be changed in SortOptions.
		
		Parameters
		----------
		input : Array-like or scalar-like
		    Argument to compute function.
		sort_keys : sequence of (name, order) tuples
		    Names of field/column keys to sort the input on,
		    along with the order each field/column is sorted in.
		    Accepted values for `order` are "ascending", "descending".
		null_placement : str, default "at_end"
		    Where nulls in input should be sorted, only applying to
		    columns/fields mentioned in `sort_keys`.
		    Accepted values are "at_start", "at_end".
		options : pyarrow.compute.SortOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function sort_indices(input:Dynamic, ?sort_keys:Dynamic, ?null_placement:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Split string according to separator.
		
		Split each string according to the exact `pattern` defined in
		SplitPatternOptions.  The output for each string input is a list
		of strings.
		
		The maximum number of splits and direction of splitting
		(forward, reverse) can optionally be defined in SplitPatternOptions.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		pattern : str
		    String pattern to split on.
		max_splits : int or None, default None
		    Maximum number of splits for each input value (unlimited if None).
		reverse : bool, default False
		    Whether to start splitting from the end of each input value.
		    This only has an effect if `max_splits` is not None.
		options : pyarrow.compute.SplitPatternOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function split_pattern(strings:Dynamic, pattern:Dynamic, ?max_splits:Dynamic, ?reverse:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Split string according to regex pattern.
		
		Split each string according to the regex `pattern` defined in
		SplitPatternOptions.  The output for each string input is a list
		of strings.
		
		The maximum number of splits and direction of splitting
		(forward, reverse) can optionally be defined in SplitPatternOptions.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		pattern : str
		    String pattern to split on.
		max_splits : int or None, default None
		    Maximum number of splits for each input value (unlimited if None).
		reverse : bool, default False
		    Whether to start splitting from the end of each input value.
		    This only has an effect if `max_splits` is not None.
		options : pyarrow.compute.SplitPatternOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function split_pattern_regex(strings:Dynamic, pattern:Dynamic, ?max_splits:Dynamic, ?reverse:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Check if strings start with a literal pattern.
		
		For each string in `strings`, emit true iff it starts with a given pattern.
		The pattern must be given in MatchSubstringOptions.
		If ignore_case is set, only simple case folding is performed.
		
		Null inputs emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		pattern : str
		    Substring pattern to look for inside input values.
		ignore_case : bool, default False
		    Whether to perform a case-insensitive match.
		options : pyarrow.compute.MatchSubstringOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function starts_with(strings:Dynamic, pattern:Dynamic, ?ignore_case:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Calculate the standard deviation of a numeric array.
		
		The number of degrees of freedom can be controlled using VarianceOptions.
		By default (`ddof` = 0), the population standard deviation is calculated.
		Nulls are ignored.  If there are not enough non-null values in the array
		to satisfy `ddof`, null is returned.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		ddof : int, default 0
		    Number of degrees of freedom.
		skip_nulls : bool, default True
		    Whether to skip (ignore) nulls in the input.
		    If False, any null in the input forces the output to null.
		min_count : int, default 0
		    Minimum number of non-null values in the input.  If the number
		    of non-null values is below `min_count`, the output is null.
		options : pyarrow.compute.VarianceOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function stddev(array:Dynamic, ?ddof:Dynamic, ?skip_nulls:Dynamic, ?min_count:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Format temporal values according to a format string.
		
		For each input value, emit a formatted string.
		The time format string and locale can be set using StrftimeOptions.
		The output precision of the "%S" (seconds) format code depends on
		the input time precision: it is an integer for timestamps with
		second precision, a real number with the required number of fractional
		digits for higher precisions.
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database, or if the specified locale
		does not exist on this system.
		
		Parameters
		----------
		timestamps : Array-like or scalar-like
		    Argument to compute function.
		format : str, default "%Y-%m-%dT%H:%M:%S"
		    Pattern for formatting input values.
		locale : str, default "C"
		    Locale to use for locale-specific format specifiers.
		options : pyarrow.compute.StrftimeOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function strftime(timestamps:Dynamic, ?format:Dynamic, ?locale:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as ASCII.
		
		For each string in `strings`, emit true iff the string consists only
		of ASCII characters.  Null strings emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function string_is_ascii(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Parse timestamps.
		
		For each string in `strings`, parse it as a timestamp.
		The timestamp unit and the expected string pattern must be given
		in StrptimeOptions.  Null inputs emit null.  If a non-null string
		fails parsing, an error is returned.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		format : str
		    Pattern for parsing input strings as timestamps, such as "%Y/%m/%d".
		unit : str
		    Timestamp unit of the output.
		    Accepted values are "s", "ms", "us", "ns".
		options : pyarrow.compute.StrptimeOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function strptime(strings:Dynamic, format:Dynamic, unit:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract children of a struct or union by index.
		
		Given a list of indices (passed via StructFieldOptions), extract
		the child array or scalar with the given child index, recursively.
		
		For union inputs, nulls are emitted for union values that reference
		a different child than specified. Also, the indices are always
		in physical order, not logical type codes - for example, the first
		child is always index 0.
		
		An empty list of indices returns the argument unchanged.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		indices : sequence of int
		    List of indices for chained field lookup, for example `[4, 1]`
		    will look up the second nested field in the fifth outer field.
		options : pyarrow.compute.StructFieldOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function struct_field(values:Dynamic, indices:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract subsecond values.
		
		Subsecond returns the fraction of a second since the last full second.
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function subsecond(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Subtract the arguments element-wise.
		
		Results will wrap around on integer overflow.
		Use function "subtract_checked" if you want overflow
		to return an error.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function subtract(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Subtract the arguments element-wise.
		
		This function returns an error on overflow.  For a variant that
		doesn't fail on overflow, use function "subtract".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function subtract_checked(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the sum of a numeric array.
		
		Null values are ignored by default. Minimum count of non-null
		values can be set and null is returned if too few are present.
		This can be changed through ScalarAggregateOptions.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		skip_nulls : bool, default True
		    Whether to skip (ignore) nulls in the input.
		    If False, any null in the input forces the output to null.
		min_count : int, default 1
		    Minimum number of non-null values in the input.  If the number
		    of non-null values is below `min_count`, the output is null.
		options : pyarrow.compute.ScalarAggregateOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function sum(array:Dynamic, ?skip_nulls:Dynamic, ?min_count:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Select values (or records) from array- or table-like data given integer
		selection indices.
		
		The result will be of the same type(s) as the input, with elements taken
		from the input array (or record batch / table fields) at the given
		indices. If an index is null then the corresponding value in the output
		will be null.
		
		Parameters
		----------
		data : Array, ChunkedArray, RecordBatch, or Table
		indices : Array, ChunkedArray
		    Must be of integer type
		boundscheck : boolean, default True
		    Whether to boundscheck the indices. If False and there is an out of
		    bounds index, will likely cause the process to crash.
		memory_pool : MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
		
		Returns
		-------
		result : depends on inputs
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> arr = pa.array(["a", "b", "c", None, "e", "f"])
		>>> indices = pa.array([0, None, 4, 3])
		>>> arr.take(indices)
		<pyarrow.lib.StringArray object at 0x7ffa4fc7d368>
		[
		  "a",
		  null,
		  "e",
		  null
		]
	**/
	static public function take(data:Dynamic, indices:Dynamic, ?boundscheck:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the tangent.
		
		NaN is returned for invalid input values;
		to raise an error instead, see "tan_checked".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function tan(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the tangent.
		
		Infinite values raise an error;
		to return NaN instead, see "tan".
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function tan_checked(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Approximate quantiles of a numeric array with T-Digest algorithm.
		
		By default, 0.5 quantile (median) is returned.
		Nulls and NaNs are ignored.
		An array of nulls is returned if there is no valid data point.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		q : double or sequence of double, default 0.5
		    Quantiles to approximate. All values must be in [0, 1].
		delta : int, default 100
		    Compression parameter for the T-digest algorithm.
		buffer_size : int, default 500
		    Buffer size for the T-digest algorithm.
		skip_nulls : bool, default True
		    Whether to skip (ignore) nulls in the input.
		    If False, any null in the input forces the output to null.
		min_count : int, default 0
		    Minimum number of non-null values in the input.  If the number
		    of non-null values is below `min_count`, the output is null.
		options : pyarrow.compute.TDigestOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function tdigest(array:Dynamic, ?q:Dynamic, ?delta:Dynamic, ?buffer_size:Dynamic, ?skip_nulls:Dynamic, ?min_count:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Select the indices of the top-k ordered elements from array- or table-like
		data.
		
		This is a specialization for :func:`select_k_unstable`. Output is not
		guaranteed to be stable.
		
		Parameters
		----------
		values : Array, ChunkedArray, RecordBatch, or Table
		    Data to sort and get top indices from.
		k : int
		    The number of `k` elements to keep.
		sort_keys : List-like
		    Column key names to order by when input is table-like data.
		memory_pool : MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
		
		Returns
		-------
		result : Array of indices
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> import pyarrow.compute as pc
		>>> arr = pa.array(["a", "b", "c", None, "e", "f"])
		>>> pc.top_k_unstable(arr, k=3)
		<pyarrow.lib.UInt64Array object at 0x7fdcb19d7f30>
		[
		  5,
		  4,
		  2
		]
	**/
	static public function top_k_unstable(values:Dynamic, k:Dynamic, ?sort_keys:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the integral part.
		
		Compute the nearest integer not greater in magnitude than `x`.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function trunc(x:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute unique elements.
		
		Return an array with distinct values.  Nulls in the input are ignored.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function unique(array:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract US week of year number.
		
		First US week has the majority (4 or more) of its days in January.
		US week starts on Monday. The week number starts with 1 and can run
		up to 53.
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function us_week(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Capitalize the first character of input.
		
		For each string in `strings`, return a capitalized version,
		with the first character uppercased and the others lowercased.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_capitalize(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Center strings by padding with a given character.
		
		For each string in `strings`, emit a centered string by padding both sides 
		with the given UTF8 codeunit.
		Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		width : int
		    Desired string length.
		padding : str, default " "
		    What to pad the string with. Should be one byte or codepoint.
		options : pyarrow.compute.PadOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_center(strings:Dynamic, width:Dynamic, ?padding:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as alphanumeric.
		
		For each string in `strings`, emit true iff the string is non-empty
		and consists only of alphanumeric Unicode characters.  Null strings emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_is_alnum(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as alphabetic.
		
		For each string in `strings`, emit true iff the string is non-empty
		and consists only of alphabetic Unicode characters.  Null strings emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_is_alpha(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as decimal.
		
		For each string in `strings`, emit true iff the string is non-empty
		and consists only of decimal Unicode characters.  Null strings emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_is_decimal(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as digits.
		
		For each string in `strings`, emit true iff the string is non-empty
		and consists only of Unicode digits.  Null strings emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_is_digit(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as lowercase.
		
		For each string in `strings`, emit true iff the string is non-empty
		and consists only of lowercase Unicode characters.  Null strings emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_is_lower(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as numeric.
		
		For each string in `strings`, emit true iff the string is non-empty
		and consists only of numeric Unicode characters.  Null strings emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_is_numeric(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as printable.
		
		For each string in `strings`, emit true iff the string is non-empty
		and consists only of printable Unicode characters.  Null strings emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_is_printable(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as whitespace.
		
		For each string in `strings`, emit true iff the string is non-empty
		and consists only of whitespace Unicode characters.  Null strings emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_is_space(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as titlecase.
		
		For each string in `strings`, emit true iff the string is title-cased,
		i.e. it has at least one cased character, each uppercase character
		follows an uncased character, and each lowercase character follows
		an uppercase character.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_is_title(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Classify strings as uppercase.
		
		For each string in `strings`, emit true iff the string is non-empty
		and consists only of uppercase Unicode characters.  Null strings emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_is_upper(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute UTF8 string lengths.
		
		For each string in `strings`, emit its length in UTF8 characters.
		Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_length(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Transform input to lowercase.
		
		For each string in `strings`, return a lowercase version.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_lower(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Right-align strings by padding with a given character.
		
		For each string in `strings`, emit a right-aligned string by prepending 
		the given UTF8 codeunit.
		Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		width : int
		    Desired string length.
		padding : str, default " "
		    What to pad the string with. Should be one byte or codepoint.
		options : pyarrow.compute.PadOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_lpad(strings:Dynamic, width:Dynamic, ?padding:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Trim leading characters.
		
		For each string in `strings`, remove any leading characters
		from the `characters` option (as given in TrimOptions).
		Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		characters : str
		    Individual characters to be trimmed from the string.
		options : pyarrow.compute.TrimOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_ltrim(strings:Dynamic, characters:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Trim leading whitespace characters.
		
		For each string in `strings`, emit a string with leading whitespace
		characters removed, where whitespace characters are defined by the Unicode
		standard.  Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_ltrim_whitespace(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Utf8-normalize input.
		
		For each string in `strings`, return the normal form.
		
		The normalization form must be given in the options.
		Null inputs emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		form : str
		    Unicode normalization form.
		    Accepted values are "NFC", "NFKC", "NFD", NFKD".
		options : pyarrow.compute.Utf8NormalizeOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_normalize(strings:Dynamic, form:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Replace a slice of a string.
		
		For each string in `strings`, replace a slice of the string defined by `start`
		and `stop` indices with the given `replacement`. `start` is inclusive
		and `stop` is exclusive, and both are measured in UTF8 characters.
		Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		start : int
		    Index to start slicing at (inclusive).
		stop : int
		    Index to stop slicing at (exclusive).
		replacement : str
		    What to replace the slice with.
		options : pyarrow.compute.ReplaceSliceOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_replace_slice(strings:Dynamic, start:Dynamic, stop:Dynamic, replacement:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Reverse input.
		
		For each string in `strings`, return a reversed version.
		
		This function operates on Unicode codepoints, not grapheme
		clusters. Hence, it will not correctly reverse grapheme clusters
		composed of multiple codepoints.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_reverse(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Left-align strings by padding with a given character.
		
		For each string in `strings`, emit a left-aligned string by appending 
		the given UTF8 codeunit.
		Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		width : int
		    Desired string length.
		padding : str, default " "
		    What to pad the string with. Should be one byte or codepoint.
		options : pyarrow.compute.PadOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_rpad(strings:Dynamic, width:Dynamic, ?padding:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Trim trailing characters.
		
		For each string in `strings`, remove any trailing characters
		from the `characters` option (as given in TrimOptions).
		Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		characters : str
		    Individual characters to be trimmed from the string.
		options : pyarrow.compute.TrimOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_rtrim(strings:Dynamic, characters:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Trim trailing whitespace characters.
		
		For each string in `strings`, emit a string with trailing whitespace
		characters removed, where whitespace characters are defined by the Unicode
		standard.  Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_rtrim_whitespace(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Slice string.
		
		For each string in `strings`, emit the substring defined by
		(`start`, `stop`, `step`) as given by `SliceOptions` where `start` is
		inclusive and `stop` is exclusive. All three values are measured in
		UTF8 codeunits.
		If `step` is negative, the string will be advanced in reversed order.
		An error is raised if `step` is zero.
		Null inputs emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		start : int
		    Index to start slicing at (inclusive).
		stop : int or None, default None
		    If given, index to stop slicing at (exclusive).
		    If not given, slicing will stop at the end.
		step : int, default 1
		    Slice step.
		options : pyarrow.compute.SliceOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_slice_codeunits(strings:Dynamic, start:Dynamic, ?stop:Dynamic, ?step:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Split string according to any Unicode whitespace.
		
		Split each string according any non-zero length sequence of Unicode
		whitespace characters.  The output for each string input is a list
		of strings.
		
		The maximum number of splits and direction of splitting
		(forward, reverse) can optionally be defined in SplitOptions.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		max_splits : int or None, default None
		    Maximum number of splits for each input value (unlimited if None).
		reverse : bool, default False
		    Whether to start splitting from the end of each input value.
		    This only has an effect if `max_splits` is not None.
		options : pyarrow.compute.SplitOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_split_whitespace(strings:Dynamic, ?max_splits:Dynamic, ?reverse:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Transform input lowercase characters to uppercase and uppercase characters to lowercase.
		
		For each string in `strings`, return an opposite case version.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_swapcase(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Titlecase each word of input.
		
		For each string in `strings`, return a titlecased version.
		Each word in the output will start with an uppercase character and its
		remaining characters will be lowercase.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_title(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Trim leading and trailing characters.
		
		For each string in `strings`, remove any leading or trailing characters
		from the `characters` option (as given in TrimOptions).
		Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		characters : str
		    Individual characters to be trimmed from the string.
		options : pyarrow.compute.TrimOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_trim(strings:Dynamic, characters:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Trim leading and trailing whitespace characters.
		
		For each string in `strings`, emit a string with leading and trailing
		whitespace characters removed, where whitespace characters are defined
		by the Unicode standard.  Null values emit null.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_trim_whitespace(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Transform input to uppercase.
		
		For each string in `strings`, return an uppercase version.
		
		Parameters
		----------
		strings : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function utf8_upper(strings:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute counts of unique elements.
		
		For each distinct value, compute the number of times it occurs in the array.
		The result is returned as an array of `struct<input type, int64>`.
		Nulls in the input are ignored.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function value_counts(array:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Calculate the variance of a numeric array.
		
		The number of degrees of freedom can be controlled using VarianceOptions.
		By default (`ddof` = 0), the population variance is calculated.
		Nulls are ignored.  If there are not enough non-null values in the array
		to satisfy `ddof`, null is returned.
		
		Parameters
		----------
		array : Array-like
		    Argument to compute function.
		ddof : int, default 0
		    Number of degrees of freedom.
		skip_nulls : bool, default True
		    Whether to skip (ignore) nulls in the input.
		    If False, any null in the input forces the output to null.
		min_count : int, default 0
		    Minimum number of non-null values in the input.  If the number
		    of non-null values is below `min_count`, the output is null.
		options : pyarrow.compute.VarianceOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function variance(array:Dynamic, ?ddof:Dynamic, ?skip_nulls:Dynamic, ?min_count:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract week of year number.
		
		First week has the majority (4 or more) of its days in January.
		Year can have 52 or 53 weeks. Week numbering can start with 0 or 1 using
		DayOfWeekOptions.count_from_zero.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		week_starts_monday : bool, default True
		    If True, weeks start on Monday; if False, on Sunday.
		count_from_zero : bool, default False
		    If True, dates at the start of a year that fall into the last week
		    of the previous year emit 0.
		    If False, they emit 52 or 53 (the week number of the last week
		    of the previous year).
		first_week_is_fully_in_year : bool, default False
		    If True, week number 0 is fully in January.
		    If False, a week that begins on December 29, 30 or 31 is considered
		    to be week number 0 of the following year.
		options : pyarrow.compute.WeekOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function week(values:Dynamic, ?week_starts_monday:Dynamic, ?count_from_zero:Dynamic, ?first_week_is_fully_in_year:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the number of weeks between two timestamps.
		
		Returns the number of week boundaries crossed from `start` to `end`.
		That is, the difference is calculated as if the timestamps were
		truncated to the week.
		Null values emit null.
		
		Parameters
		----------
		start : Array-like or scalar-like
		    Argument to compute function.
		end : Array-like or scalar-like
		    Argument to compute function.
		count_from_zero : bool, default True
		    If True, number days from 0, otherwise from 1.
		week_start : int, default 1
		    Which day does the week start with (Monday=1, Sunday=7).
		    How this value is numbered is unaffected by `count_from_zero`.
		options : pyarrow.compute.DayOfWeekOptions, optional
		    Alternative way of passing options.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function weeks_between(start:Dynamic, end:Dynamic, ?count_from_zero:Dynamic, ?week_start:Dynamic, ?options:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Logical 'xor' boolean values.
		
		When a null is encountered in either input, a null is output.
		
		Parameters
		----------
		x : Array-like or scalar-like
		    Argument to compute function.
		y : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function xor(x:Dynamic, y:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract year number.
		
		Null values emit null.
		An error is returned if the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function year(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Extract (year, month, day) struct.
		
		Null values emit null.
		An error is returned in the values have a defined timezone but it
		cannot be found in the timezone database.
		
		Parameters
		----------
		values : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function year_month_day(values:Dynamic, ?memory_pool:Dynamic):Dynamic;
	/**
		Compute the number of years between two timestamps.
		
		Returns the number of year boundaries crossed from `start` to `end`.
		That is, the difference is calculated as if the timestamps were
		truncated to the year.
		Null values emit null.
		
		Parameters
		----------
		start : Array-like or scalar-like
		    Argument to compute function.
		end : Array-like or scalar-like
		    Argument to compute function.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the default memory pool.
	**/
	static public function years_between(start:Dynamic, end:Dynamic, ?memory_pool:Dynamic):Dynamic;
}