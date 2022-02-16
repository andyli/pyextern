/* This file is generated, do not edit! */
package matplotlib.backends.backend_pdf;
@:pythonImport("matplotlib.backends.backend_pdf") extern class Backend_pdf_Module {
	static public var FIXED_WIDTH : Dynamic;
	static public var ITALIC : Dynamic;
	static public var KERNING_UNFITTED : Dynamic;
	static public var LOAD_NO_HINTING : Dynamic;
	static public var LOAD_NO_SCALE : Dynamic;
	static public var UTC : Dynamic;
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
	/**
		Create a PDF infoDict based on user-supplied metadata.
		
		A default ``Creator``, ``Producer``, and ``CreationDate`` are added, though
		the user metadata may override it. The date may be the current time, or a
		time set by the ``SOURCE_DATE_EPOCH`` environment variable.
		
		Metadata is verified to have the correct keys and their expected types. Any
		unknown keys/types will raise a warning.
		
		Parameters
		----------
		backend : str
		    The name of the backend to use in the Producer value.
		
		metadata : dict[str, Union[str, datetime, Name]]
		    A dictionary of metadata supplied by the user with information
		    following the PDF specification, also defined in
		    `~.backend_pdf.PdfPages` below.
		
		    If any value is *None*, then the key will be removed. This can be used
		    to remove any pre-defined values.
		
		Returns
		-------
		dict[str, Union[str, datetime, Name]]
		    A validated dictionary of metadata.
	**/
	static public function _create_pdf_info_dict(backend:Dynamic, metadata:Dynamic):Dynamic;
	/**
		Convert a datetime to a PDF string representing it.
		
		Used for PDF and PGF.
	**/
	static public function _datetime_to_pdf(d:Dynamic):Dynamic;
	/**
		Returns True if the font is able to provide codepoint *glyph* in a PDF.
		
		For a Type 3 font, this method returns True only for single-byte
		characters. For Type 42 fonts this method return True if the character is
		from the Basic Multilingual Plane.
	**/
	static public function _font_supports_glyph(fonttype:Dynamic, glyph:Dynamic):Dynamic;
	static public function _get_pdf_charprocs(font_path:Dynamic, glyph_ids:Dynamic):Dynamic;
	static public var _log : Dynamic;
	static public function _string_escape(match:Dynamic):Dynamic;
	static public var _string_escape_regex : Dynamic;
	static public var backend_version : Dynamic;
	static public function draw_if_interactive():Dynamic;
	/**
		Make one string from sequence of strings, with whitespace in between.
		
		The whitespace is chosen to form lines of at most *linelen* characters,
		if possible.
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