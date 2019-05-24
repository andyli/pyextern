/* This file is generated, do not edit! */
package matplotlib.backends.backend_pdf;
@:pythonImport("matplotlib.backends.backend_pdf") extern class Backend_pdf_Module {
	static public var FIXED_WIDTH : Dynamic;
	static public var ITALIC : Dynamic;
	static public var KERNING_UNFITTED : Dynamic;
	static public var LOAD_NO_HINTING : Dynamic;
	static public var LOAD_NO_SCALE : Dynamic;
	static public var Op : Dynamic;
	static public var UTC : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var _log : Dynamic;
	/**
		Return the PDF operator to paint a path in the following way:
		fill:   fill the path with the fill color
		stroke: stroke the outline of the path with the line color
	**/
	static public function _paint_path(fill:Dynamic, stroke:Dynamic):Dynamic;
	static public var _pdfops : Dynamic;
	static public function _string_escape(match:Dynamic):Dynamic;
	static public var _string_escape_regex : Dynamic;
	static public var backend_version : Dynamic;
	static public function draw_if_interactive():Dynamic;
	/**
		Make one string from sequence of strings, with whitespace
		in between. The whitespace is chosen to form lines of at most
		linelen characters, if possible.
	**/
	static public function fill(strings:Dynamic, ?linelen:Dynamic):Dynamic;
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
	static public function get_font(filename:Dynamic, ?hinting_factor:Dynamic):Dynamic;
	/**
		Return whether the given font is a Postscript Compact Font Format Font
		embedded in an OpenType wrapper.  Used by the PostScript and PDF backends
		that can not subset these fonts.
	**/
	static public function is_opentype_cff_font(filename:Dynamic):Dynamic;
	/**
		Create a new figure manager instance.
		        
	**/
	static public function new_figure_manager(num:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
		        
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	/**
		Map Python objects to PDF syntax.
	**/
	static public function pdfRepr(obj:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	static public var required_interactive_framework : Dynamic;
	/**
		Show all figures.
		
		`show` blocks by calling `mainloop` if *block* is ``True``, or if it
		is ``None`` and we are neither in IPython's ``%pylab`` mode, nor in
		`interactive` mode.
	**/
	static public function show(?block:Dynamic):Dynamic;
	/**
		Class decorator that fills in missing ordering methods
	**/
	static public function total_ordering(cls:Dynamic):Dynamic;
}