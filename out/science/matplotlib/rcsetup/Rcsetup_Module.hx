/* This file is generated, do not edit! */
package matplotlib.rcsetup;
@:pythonImport("matplotlib.rcsetup") extern class Rcsetup_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _auto_backend_sentinel : Dynamic;
	static public function _convert_validator_spec(key:Dynamic, conv:Dynamic):Dynamic;
	static public var _hardcoded_defaults : Dynamic;
	static public function _listify_validator(scalar_validator:Dynamic, ?allow_stringlist:Dynamic, ?n:Dynamic, ?doc:Dynamic):Dynamic;
	/**
		Return a validator that converts inputs to *cls* or raises (and possibly
		allows ``None`` as well).
	**/
	static public function _make_type_validator(cls:Dynamic, ?allow_none:Dynamic):Dynamic;
	static public var _prop_aliases : Dynamic;
	static public var _prop_validators : Dynamic;
	static public var _range_validators : Dynamic;
	static public function _validate_cmap(s:Dynamic):Dynamic;
	static public function _validate_color_or_linecolor(s:Dynamic):Dynamic;
	static public function _validate_date(s:Dynamic):Dynamic;
	static public function _validate_greaterequal0_lessequal1(s:Dynamic):Dynamic;
	static public function _validate_greaterequal0_lessthan1(s:Dynamic):Dynamic;
	/**
		A validator for all possible line styles, the named ones *and*
		the on-off ink sequences.
	**/
	static public function _validate_linestyle(ls:Dynamic):Dynamic;
	static public function _validate_mathtext_fallback(s:Dynamic):Dynamic;
	static public function _validate_named_linestyle(s:Dynamic):Dynamic;
	static public function _validate_pathlike(s:Dynamic):Dynamic;
	static public function _validate_standard_backends(s:Dynamic):Dynamic;
	static public function _validate_toolbar(s:Dynamic):Dynamic;
	static public var _validators : Dynamic;
	static public var all_backends : Dynamic;
	/**
		Create a new `Cycler` object from a single positional argument,
		a pair of positional arguments, or the combination of keyword arguments.
		
		cycler(arg)
		cycler(label1=itr1[, label2=iter2[, ...]])
		cycler(label, itr)
		
		Form 1 simply copies a given `Cycler` object.
		
		Form 2 composes a `Cycler` as an inner product of the
		pairs of keyword arguments. In other words, all of the
		iterables are cycled simultaneously, as if through zip().
		
		Form 3 creates a `Cycler` from a label and an iterable.
		This is useful for when the label cannot be a keyword argument
		(e.g., an integer or a name that has a space in it).
		
		Parameters
		----------
		arg : Cycler
		    Copy constructor for Cycler (does a shallow copy of iterables).
		label : name
		    The property key. In the 2-arg form of the function,
		    the label can be any hashable object. In the keyword argument
		    form of the function, it must be a valid python identifier.
		itr : iterable
		    Finite length iterable of the property values.
		    Can be a single-property `Cycler` that would
		    be like a key change, but as a shallow copy.
		
		Returns
		-------
		cycler : Cycler
		    New `Cycler` for the given property
	**/
	static public function ccycler(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a `~cycler.Cycler` object much like :func:`cycler.cycler`,
		but includes input validation.
		
		Call signatures::
		
		  cycler(cycler)
		  cycler(label=values[, label2=values2[, ...]])
		  cycler(label, values)
		
		Form 1 copies a given `~cycler.Cycler` object.
		
		Form 2 creates a `~cycler.Cycler` which cycles over one or more
		properties simultaneously. If multiple properties are given, their
		value lists must have the same length.
		
		Form 3 creates a `~cycler.Cycler` for a single property. This form
		exists for compatibility with the original cycler. Its use is
		discouraged in favor of the kwarg form, i.e. ``cycler(label=values)``.
		
		Parameters
		----------
		cycler : Cycler
		    Copy constructor for Cycler.
		
		label : str
		    The property key. Must be a valid `.Artist` property.
		    For example, 'color' or 'linestyle'. Aliases are allowed,
		    such as 'c' for 'color' and 'lw' for 'linewidth'.
		
		values : iterable
		    Finite-length iterable of the property values. These values
		    are validated and will raise a ValueError if invalid.
		
		Returns
		-------
		Cycler
		    A new :class:`~cycler.Cycler` for the given properties.
		
		Examples
		--------
		Creating a cycler for a single property:
		
		>>> c = cycler(color=['red', 'green', 'blue'])
		
		Creating a cycler for simultaneously cycling over multiple properties
		(e.g. red circle, green plus, blue cross):
		
		>>> c = cycler(color=['red', 'green', 'blue'],
		...            marker=['o', '+', 'x'])
	**/
	static public function cycler(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var defaultParams : Dynamic;
	static public var interactive_bk : Dynamic;
	/**
		Return whether *c* can be interpreted as an RGB(A) color.
	**/
	static public function is_color_like(c:Dynamic):Dynamic;
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
	static public var ls_mapper : Dynamic;
	static public var non_interactive_bk : Dynamic;
	/**
		Parse the given fontconfig *pattern* and return a dictionary
		of key/value pairs useful for initializing a
		`.font_manager.FontProperties` object.
	**/
	static public function parse_fontconfig_pattern(pattern:Dynamic):Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function validate_any(s:Dynamic):Dynamic;
	static public function validate_anylist(s:Dynamic):Dynamic;
	static public function validate_aspect(s:Dynamic):Dynamic;
	static public function validate_axisbelow(s:Dynamic):Dynamic;
	static public function validate_backend(s:Dynamic):Dynamic;
	static public function validate_bbox(s:Dynamic):Dynamic;
	/**
		Convert b to ``bool`` or raise.
	**/
	static public function validate_bool(b:Dynamic):Dynamic;
	/**
		Return a valid color arg.
	**/
	static public function validate_color(s:Dynamic):Dynamic;
	static public function validate_color_for_prop_cycle(s:Dynamic):Dynamic;
	static public function validate_color_or_auto(s:Dynamic):Dynamic;
	/**
		Return a valid color arg.
	**/
	static public function validate_color_or_inherit(s:Dynamic):Dynamic;
	/**
		return a list of colorspecs
	**/
	static public function validate_colorlist(s:Dynamic):Dynamic;
	/**
		Return a Cycler object from a string repr or the object itself.
	**/
	static public function validate_cycler(s:Dynamic):Dynamic;
	/**
		return a list of floats
	**/
	static public function validate_dashlist(s:Dynamic):Dynamic;
	/**
		Confirm s is string 'figure' or convert s to float or raise.
	**/
	static public function validate_dpi(s:Dynamic):Dynamic;
	static public function validate_fillstyle(s:Dynamic):Dynamic;
	static public function validate_fillstylelist(s:Dynamic):Dynamic;
	static public function validate_float(s:Dynamic):Dynamic;
	static public function validate_float_or_None(s:Dynamic):Dynamic;
	/**
		return a list of floats
	**/
	static public function validate_floatlist(s:Dynamic):Dynamic;
	static public function validate_font_properties(s:Dynamic):Dynamic;
	static public function validate_fontsize(s:Dynamic):Dynamic;
	static public function validate_fontsize_None(s:Dynamic):Dynamic;
	static public function validate_fontsizelist(s:Dynamic):Dynamic;
	/**
		Confirm that this is a Postscript or PDF font type that we know how to
		convert to.
	**/
	static public function validate_fonttype(s:Dynamic):Dynamic;
	static public function validate_fontweight(s:Dynamic):Dynamic;
	/**
		Validate a hatch pattern.
		A hatch pattern string can have any sequence of the following
		characters: ``\ / | - + * . x o O``.
	**/
	static public function validate_hatch(s:Dynamic):Dynamic;
	/**
		Validate a hatch pattern.
		A hatch pattern string can have any sequence of the following
		characters: ``\ / | - + * . x o O``.
	**/
	static public function validate_hatchlist(s:Dynamic):Dynamic;
	static public function validate_hist_bins(s:Dynamic):Dynamic;
	static public function validate_int(s:Dynamic):Dynamic;
	static public function validate_int_or_None(s:Dynamic):Dynamic;
	/**
		Validate the markevery property of a Line2D object.
		
		Parameters
		----------
		s : None, int, (int, int), slice, float, (float, float), or list[int]
		
		Returns
		-------
		None, int, (int, int), slice, float, (float, float), or list[int]
	**/
	static public function validate_markevery(s:Dynamic):Dynamic;
	/**
		Validate the markevery property of a Line2D object.
		
		Parameters
		----------
		s : None, int, (int, int), slice, float, (float, float), or list[int]
		
		Returns
		-------
		None, int, (int, int), slice, float, (float, float), or list[int]
	**/
	static public function validate_markeverylist(s:Dynamic):Dynamic;
	static public function validate_ps_distiller(s:Dynamic):Dynamic;
	static public function validate_sketch(s:Dynamic):Dynamic;
	static public function validate_string(s:Dynamic):Dynamic;
	static public function validate_string_or_None(s:Dynamic):Dynamic;
	/**
		return a list of strings
	**/
	static public function validate_stringlist(s:Dynamic):Dynamic;
	static public function validate_whiskers(s:Dynamic):Dynamic;
}