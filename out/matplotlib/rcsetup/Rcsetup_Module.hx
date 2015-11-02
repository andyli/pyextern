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
	static public function _listify_validator(scalar_validator:Dynamic, ?allow_stringlist:Dynamic):Dynamic;
	static public var _prop_aliases : Dynamic;
	static public var _prop_validators : Dynamic;
	static public var _seq_err_msg : Dynamic;
	static public var _str_err_msg : Dynamic;
	static public function _validate_standard_backends(s:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var all_backends : Dynamic;
	/**
		Create a new `Cycler` object from a property name and
		iterable of values.
		
		Parameters
		----------
		label : str
		    The property key.
		
		itr : iterable
		    Finite length iterable of the property values.
		
		Returns
		-------
		cycler : Cycler
		    New `Cycler` for the given property
	**/
	static public function ccycler(label:Dynamic, itr:Dynamic):Dynamic;
	/**
		Creates a :class:`cycler.Cycler` object much like :func:`cycler.cycler`,
		but includes input validation.
		
		cyl(arg)
		cyl(label, itr)
		cyl(label1=itr1[, label2=itr2[, ...]])
		
		Form 1 simply copies a given `Cycler` object.
		
		Form 2 creates a `Cycler` from a label and an iterable.
		
		Form 3 composes a `Cycler` as an inner product of the
		pairs of keyword arguments. In other words, all of the
		iterables are cycled simultaneously, as if through zip().
		
		Parameters
		----------
		arg : Cycler
		    Copy constructor for Cycler.
		
		label : name
		    The property key. Must be a valid `Artist` property.
		    For example, 'color' or 'linestyle'. Aliases are allowed,
		    such as 'c' for 'color' and 'lw' for 'linewidth'.
		
		itr : iterable
		    Finite-length iterable of the property values. These values
		    are validated and will raise a ValueError if invalid.
		
		Returns
		-------
		cycler : Cycler
		    New :class:`cycler.Cycler` for the given properties
	**/
	static public function cycler(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var defaultParams : Dynamic;
	static public function deprecate_axes_colorcycle(value:Dynamic):Dynamic;
	static public function deprecate_savefig_extension(value:Dynamic):Dynamic;
	static public function deprecate_svg_embed_char_paths(value:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var interactive_bk : Dynamic;
	/**
		Return *True* if *c* can be converted to *RGB*
	**/
	static public function is_color_like(c:Dynamic):Dynamic;
	static public var non_interactive_bk : Dynamic;
	/**
		Parse the given fontconfig *pattern* and return a dictionary
		of key/value pairs useful for initializing a
		:class:`font_manager.FontProperties` object.
	**/
	static public function parse_fontconfig_pattern(pattern:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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
	static public var unicode_literals : Dynamic;
	static public function update_savefig_format(value:Dynamic):Dynamic;
	static public function validate_any(s:Dynamic):Dynamic;
	static public function validate_anylist(s:Dynamic):Dynamic;
	static public function validate_aspect(s:Dynamic):Dynamic;
	static public function validate_axis_locator(s:Dynamic):Dynamic;
	static public function validate_backend(s:Dynamic):Dynamic;
	static public function validate_bbox(s:Dynamic):Dynamic;
	/**
		Convert b to a boolean or raise
	**/
	static public function validate_bool(b:Dynamic):Dynamic;
	/**
		Convert b to a boolean or raise
	**/
	static public function validate_bool_maybe_none(b:Dynamic):Dynamic;
	static public function validate_capstyle(s:Dynamic):Dynamic;
	static public function validate_capstylelist(s:Dynamic):Dynamic;
	/**
		return a valid color arg
	**/
	static public function validate_color(s:Dynamic):Dynamic;
	/**
		return a valid color arg
	**/
	static public function validate_color_or_inherit(s:Dynamic):Dynamic;
	/**
		return a list of colorspecs
	**/
	static public function validate_colorlist(s:Dynamic):Dynamic;
	static public function validate_corner_mask(s:Dynamic):Dynamic;
	/**
		return a Cycler object from a string repr or the object itself
	**/
	static public function validate_cycler(s:Dynamic):Dynamic;
	/**
		confirm s is string 'figure' or convert s to float or raise
	**/
	static public function validate_dpi(s:Dynamic):Dynamic;
	static public function validate_fillstyle(s:Dynamic):Dynamic;
	static public function validate_fillstylelist(s:Dynamic):Dynamic;
	/**
		convert s to float or raise
	**/
	static public function validate_float(s:Dynamic):Dynamic;
	/**
		convert s to float, None or raise
	**/
	static public function validate_float_or_None(s:Dynamic):Dynamic;
	/**
		convert s to float or raise
	**/
	static public function validate_floatlist(s:Dynamic):Dynamic;
	static public function validate_font_properties(s:Dynamic):Dynamic;
	static public function validate_fontset(s:Dynamic):Dynamic;
	static public function validate_fontsize(s:Dynamic):Dynamic;
	static public function validate_fontsizelist(s:Dynamic):Dynamic;
	/**
		confirm that this is a Postscript of PDF font type that we know how to
		convert to
	**/
	static public function validate_fonttype(s:Dynamic):Dynamic;
	static public function validate_grid_axis(s:Dynamic):Dynamic;
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
	static public function validate_hinting(s:Dynamic):Dynamic;
	/**
		convert s to int or raise
	**/
	static public function validate_int(s:Dynamic):Dynamic;
	/**
		if not None, tries to validate as an int
	**/
	static public function validate_int_or_None(s:Dynamic):Dynamic;
	static public function validate_joinstyle(s:Dynamic):Dynamic;
	static public function validate_joinstylelist(s:Dynamic):Dynamic;
	static public function validate_legend_loc(s:Dynamic):Dynamic;
	static public function validate_maskedarray(v:Dynamic):Dynamic;
	static public function validate_mathtext_default(s:Dynamic):Dynamic;
	static public function validate_movie_frame_fmt(s:Dynamic):Dynamic;
	static public function validate_movie_html_fmt(s:Dynamic):Dynamic;
	static public function validate_movie_writer(s:Dynamic):Dynamic;
	static public function validate_negative_linestyle(s:Dynamic):Dynamic;
	static public function validate_negative_linestyle_legacy(s:Dynamic):Dynamic;
	static public function validate_orientation(s:Dynamic):Dynamic;
	/**
		If s is a path, return s, else False
	**/
	static public function validate_path_exists(s:Dynamic):Dynamic;
	static public function validate_pgf_texsystem(s:Dynamic):Dynamic;
	static public function validate_ps_distiller(s:Dynamic):Dynamic;
	static public function validate_ps_papersize(s:Dynamic):Dynamic;
	static public function validate_qt4(s:Dynamic):Dynamic;
	static public function validate_qt5(s:Dynamic):Dynamic;
	static public function validate_sketch(s:Dynamic):Dynamic;
	/**
		return a list
	**/
	static public function validate_stringlist(s:Dynamic):Dynamic;
	static public function validate_svg_fonttype(s:Dynamic):Dynamic;
	static public function validate_tkpythoninspect(s:Dynamic):Dynamic;
	static public function validate_toolbar(s:Dynamic):Dynamic;
	static public function validate_verbose(s:Dynamic):Dynamic;
	static public function validate_whiskers(s:Dynamic):Dynamic;
}