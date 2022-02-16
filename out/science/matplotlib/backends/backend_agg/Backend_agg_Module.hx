/* This file is generated, do not edit! */
package matplotlib.backends.backend_agg;
@:pythonImport("matplotlib.backends.backend_agg") extern class Backend_agg_Module {
	static public var LOAD_DEFAULT : Dynamic;
	static public var LOAD_FORCE_AUTOHINT : Dynamic;
	static public var LOAD_NO_AUTOHINT : Dynamic;
	static public var LOAD_NO_HINTING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Decorator for the final print_* methods that accept keyword arguments.
		
		If any unused keyword arguments are left, this decorator will warn about
		them, and as part of the warning, will attempt to specify the function that
		the user actually called, instead of the backend-specific method. If unable
		to determine which function the user called, it will specify `.savefig`.
		
		For compatibility across backends, this does not warn about keyword
		arguments added by `FigureCanvasBase.print_figure` for use in a subset of
		backends, because the user would not have added them directly.
	**/
	static public function _check_savefig_extra_args(?func:Dynamic, ?extra_kwargs:Dynamic):Dynamic;
	static public var backend_version : Dynamic;
	/**
		Return the cosine of x (measured in radians).
	**/
	static public function cos(x:Dynamic):Dynamic;
	static public function draw_if_interactive():Dynamic;
	/**
		Find a font that most closely matches the given font properties.
		
		Parameters
		----------
		prop : str or `~matplotlib.font_manager.FontProperties`
		    The font properties to search for. This can be either a
		    `.FontProperties` object or a string defining a
		    `fontconfig patterns`_.
		
		fontext : {'ttf', 'afm'}, default: 'ttf'
		    The extension of the font file:
		
		    - 'ttf': TrueType and OpenType fonts (.ttf, .ttc, .otf)
		    - 'afm': Adobe Font Metrics (.afm)
		
		directory : str, optional
		    If given, only search this directory and its subdirectories.
		
		fallback_to_default : bool
		    If True, will fallback to the default font family (usually
		    "DejaVu Sans" or "Helvetica") if the first lookup hard-fails.
		
		rebuild_if_missing : bool
		    Whether to rebuild the font cache and search again if the first
		    match appears to point to a nonexisting font (i.e., the font cache
		    contains outdated entries).
		
		Returns
		-------
		str
		    The filename of the best matching font.
		
		Notes
		-----
		This performs a nearest neighbor search.  Each font is given a
		similarity score to the target font properties.  The first font with
		the highest score is returned.  If no matches below a certain
		threshold are found, the default font (usually DejaVu Sans) is
		returned.
		
		The result is cached, so subsequent lookups don't have to
		perform the O(n) nearest neighbor search.
		
		See the `W3C Cascading Style Sheet, Level 1
		<http://www.w3.org/TR/1998/REC-CSS2-19980512/>`_ documentation
		for a description of the font finding algorithm.
		
		.. _fontconfig patterns:
		   https://www.freedesktop.org/software/fontconfig/fontconfig-user.html
	**/
	static public function findfont(prop:Dynamic, ?fontext:Dynamic, ?directory:Dynamic, ?fallback_to_default:Dynamic, ?rebuild_if_missing:Dynamic):Dynamic;
	static public function get_font(filename:Dynamic, ?hinting_factor:Dynamic):Dynamic;
	static public function get_hinting_flag():Dynamic;
	/**
		Create a new figure manager instance.
	**/
	static public function new_figure_manager(num:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	/**
		Convert angle x from degrees to radians.
	**/
	static public function radians(x:Dynamic):Dynamic;
	/**
		Show all figures.
		
		`show` blocks by calling `mainloop` if *block* is ``True``, or if it
		is ``None`` and we are neither in IPython's ``%pylab`` mode, nor in
		`interactive` mode.
	**/
	static public function show(?block:Dynamic):Dynamic;
	/**
		Return the sine of x (measured in radians).
	**/
	static public function sin(x:Dynamic):Dynamic;
}