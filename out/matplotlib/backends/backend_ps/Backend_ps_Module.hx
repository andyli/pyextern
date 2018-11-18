/* This file is generated, do not edit! */
package matplotlib.backends.backend_ps;
@:pythonImport("matplotlib.backends.backend_ps") extern class Backend_ps_Module {
	static public var KERNING_DEFAULT : Dynamic;
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
	static public function _get_papertype(w:Dynamic, h:Dynamic):Dynamic;
	static public var _log : Dynamic;
	/**
		Move the contents of file at *src* to path-or-filelike *dst*.
		
		If *dst* is a path, the metadata of *src* are *not* copied.
	**/
	static public function _move_path_to_path_or_stream(src:Dynamic, dst:Dynamic):Dynamic;
	static public function _num_to_str(val:Dynamic):Dynamic;
	static public function _nums_to_str(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var backend_version : Dynamic;
	static public function checkdep_ghostscript():Dynamic;
	/**
		When we want to use the LaTeX backend with postscript, we write PSFrag tags
		to a temporary postscript file, each one marking a position for LaTeX to
		render some text. convert_psfrags generates a LaTeX document containing the
		commands to convert those tags to text. LaTeX/dvips produces the postscript
		file that includes the actual text.
	**/
	static public function convert_psfrags(tmpfile:Dynamic, psfrags:Dynamic, font_preamble:Dynamic, custom_preamble:Dynamic, paperWidth:Dynamic, paperHeight:Dynamic, orientation:Dynamic):Dynamic;
	/**
		convert_ttf_to_ps(filename, output, fonttype, glyph_ids)
		
		Converts the Truetype font into a Type 3 or Type 42 Postscript font, optionally subsetting the font to only the desired set of characters.
		
		filename is the path to a TTF font file.
		output is a Python file-like object with a write method that the Postscript font data will be written to.
		fonttype may be either 3 or 42.  Type 3 is a "raw Postscript" font. Type 42 is an embedded Truetype font.  Glyph subsetting is not supported for Type 42 fonts.
		glyph_ids (optional) is a list of glyph ids (integers) to keep when subsetting to a Type 3 font.  If glyph_ids is not provided or is None, then all glyphs will be included.  If any of the glyphs specified are composite glyphs, then the component glyphs will also be included.
	**/
	static public function convert_ttf_to_ps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var debugPS : Dynamic;
	static public function draw_if_interactive():Dynamic;
	/**
		Returns `True` if the given writable file-like object requires Unicode
		to be written to it.
	**/
	static public function file_requires_unicode(x:Dynamic):Dynamic;
	static public function findfont(prop:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		.. deprecated:: 3.0
		    The get_bbox function was deprecated in Matplotlib 3.0 and will be removed in 3.2.
		
		Use ghostscript's bbox device to find the center of the bounding box.
		Return an appropriately sized bbox centered around that point. A bit of a
		hack.
	**/
	static public function get_bbox(tmpfile:Dynamic, bbox:Dynamic):Dynamic;
	/**
		return a postscript header stringfor the given bbox lbrt=(l, b, r, t).
		Optionally, return rotate command.
	**/
	static public function get_bbox_header(lbrt:Dynamic, ?rotated:Dynamic):Dynamic;
	static public function get_font(filename:Dynamic, ?hinting_factor:Dynamic):Dynamic;
	static public function get_realpath_and_stat(path:Dynamic):Dynamic;
	/**
		Use ghostscript's pswrite or epswrite device to distill a file.
		This yields smaller files without illegal encapsulated postscript
		operators. The output is low-level, converting text to outlines.
	**/
	static public function gs_distill(tmpfile:Dynamic, ?eps:Dynamic, ?ptype:Dynamic, ?bbox:Dynamic, ?rotated:Dynamic):Dynamic;
	/**
		Returns True if the given font is a Postscript Compact Font Format
		Font embedded in an OpenType wrapper.  Used by the PostScript and
		PDF backends that can not subset these fonts.
	**/
	static public function is_opentype_cff_font(filename:Dynamic):Dynamic;
	/**
		return true if *obj* looks like a file object with a *write* method
	**/
	static public function is_writable_file_like(obj:Dynamic):Dynamic;
	/**
		Create a new figure manager instance.
		        
	**/
	static public function new_figure_manager(num:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
		        
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	static public var papersize : Dynamic;
	static public var psDefs : Dynamic;
	static public var ps_backend_helper : Dynamic;
	/**
		Convert the postscript to encapsulated postscript.  The bbox of
		the eps file will be replaced with the given *bbox* argument. If
		None, original bbox will be used.
	**/
	static public function pstoeps(tmpfile:Dynamic, ?bbox:Dynamic, ?rotated:Dynamic):Dynamic;
	/**
		Quote dangerous characters of S for use in a PostScript string constant.
	**/
	static public function quote_ps_string(s:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	static public var required_interactive_framework : Dynamic;
	/**
		Show all figures.
		
		`show` blocks by calling `mainloop` if *block* is ``True``, or if it
		is ``None`` and we are neither in IPython's ``%pylab`` mode, nor in
		`interactive` mode.
	**/
	static public function show(?block:Dynamic):Dynamic;
	static public var uni2type1 : Dynamic;
	/**
		Use ghostscript's ps2pdf and xpdf's/poppler's pdftops to distill a file.
		This yields smaller files without illegal encapsulated postscript
		operators. This distiller is preferred, generating high-level postscript
		output that treats text as text.
	**/
	static public function xpdf_distill(tmpfile:Dynamic, ?eps:Dynamic, ?ptype:Dynamic, ?bbox:Dynamic, ?rotated:Dynamic):Dynamic;
}