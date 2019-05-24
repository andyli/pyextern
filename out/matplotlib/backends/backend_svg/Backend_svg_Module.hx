/* This file is generated, do not edit! */
package matplotlib.backends.backend_svg;
@:pythonImport("matplotlib.backends.backend_svg") extern class Backend_svg_Module {
	static public var LOAD_NO_HINTING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var _capstyle_d : Dynamic;
	static public var _escape_xml_comment : Dynamic;
	static public var _log : Dynamic;
	static public var backend_version : Dynamic;
	static public function draw_if_interactive():Dynamic;
	static public function escape_attrib(s:Dynamic):Dynamic;
	static public function escape_cdata(s:Dynamic):Dynamic;
	static public function escape_comment(s:Dynamic):Dynamic;
	/**
		Find a font that most closely matches the given font properties.
		
		Parameters
		----------
		prop : str or `~matplotlib.font_manager.FontProperties`
		    The font properties to search for. This can be either a
		    `.FontProperties` object or a string defining a
		    `fontconfig patterns`_.
		
		fontext : {'ttf', 'afm'}, optional, default: 'ttf'
		    The extension of the font file:
		
		    - 'ttf': TrueType and OpenType fonts (.ttf, .ttc, .otf)
		    - 'afm': Adobe Font Metrics (.afm)
		
		directory : str, optional
		    If given, only search this directory and its subdirectories.
		fallback_to_default : bool
		    If True, will fallback to the default font family (usually
		    "DejaVu Sans" or "Helvetica") if the first lookup hard-fails.
		rebuild_if_missing : bool
		    Whether to rebuild the font cache and search again if no match
		    is found.
		
		Returns
		-------
		fontfile : str
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
	static public function findfont(prop:Dynamic, ?fontext:Dynamic, ?directory:Dynamic, ?fallback_to_default:Dynamic, ?rebuild_if_missing:Dynamic):String;
	static public function generate_css(?attrib:Dynamic):Dynamic;
	static public function generate_transform(?transform_list:Dynamic):Dynamic;
	static public function get_font(filename:Dynamic, ?hinting_factor:Dynamic):Dynamic;
	/**
		Create a new figure manager instance.
		        
	**/
	static public function new_figure_manager(num:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
		        
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	static public var required_interactive_framework : Dynamic;
	/**
		Convert *c* to a hex color.
		
		Uses the ``#rrggbb`` format if *keep_alpha* is False (the default),
		``#rrggbbaa`` otherwise.
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