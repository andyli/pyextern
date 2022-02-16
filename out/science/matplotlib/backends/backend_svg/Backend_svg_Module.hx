/* This file is generated, do not edit! */
package matplotlib.backends.backend_svg;
@:pythonImport("matplotlib.backends.backend_svg") extern class Backend_svg_Module {
	static public var UTC : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _capstyle_d : Dynamic;
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
	static public var _escape_xml_comment : Dynamic;
	static public var _log : Dynamic;
	static public function _quote_escape_attrib(s:Dynamic):Dynamic;
	static public var backend_version : Dynamic;
	static public function draw_if_interactive():Dynamic;
	static public function escape_attrib(s:Dynamic):Dynamic;
	static public function escape_cdata(s:Dynamic):Dynamic;
	static public function escape_comment(s:Dynamic):Dynamic;
	static public function generate_css(?attrib:Dynamic):Dynamic;
	static public function generate_transform(?transform_list:Dynamic):Dynamic;
	/**
		Create a new figure manager instance.
	**/
	static public function new_figure_manager(num:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	/**
		Convert *c* to a hex color.
		
		Parameters
		----------
		c : :doc:`color </tutorials/colors/colors>` or `numpy.ma.masked`
		
		keep_alpha: bool, default: False
		  If False, use the ``#rrggbb`` format, otherwise use ``#rrggbbaa``.
		
		Returns
		-------
		str
		  ``#rrggbb`` or ``#rrggbbaa`` hex color string
	**/
	static public function rgb2hex(c:Dynamic, ?keep_alpha:Dynamic):Dynamic;
	/**
		Create a short string representation of a float, which is %f
		formatting with trailing zeros and the decimal point removed.
	**/
	static public function short_float_fmt(x:Dynamic):Dynamic;
	/**
		Show all figures.
		
		`show` blocks by calling `mainloop` if *block* is ``True``, or if it
		is ``None`` and we are neither in IPython's ``%pylab`` mode, nor in
		`interactive` mode.
	**/
	static public function show(?block:Dynamic):Dynamic;
	static public var svgProlog : Dynamic;
}