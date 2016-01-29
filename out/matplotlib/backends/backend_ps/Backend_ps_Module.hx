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
	static public function _fn_name():Dynamic;
	static public function _get_papertype(w:Dynamic, h:Dynamic):Dynamic;
	static public function _num_to_str(val:Dynamic):Dynamic;
	static public function _nums_to_str(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	static public var backend_version : Dynamic;
	static public function checkdep_ghostscript():Dynamic;
	static public var cmd_split : Dynamic;
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
	static public var division : Dynamic;
	/**
		Returns `True` if the given writable file-like object requires Unicode
		to be written to it.
	**/
	static public function file_requires_unicode(x:Dynamic):Dynamic;
	static public function findfont(prop:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Use ghostscript's bbox device to find the center of the bounding box. Return
		an appropriately sized bbox centered around that point. A bit of a hack.
	**/
	static public function get_bbox(tmpfile:Dynamic, bbox:Dynamic):Dynamic;
	/**
		return a postscript header stringfor the given bbox lbrt=(l, b, r, t).
		Optionally, return rotate command.
	**/
	static public function get_bbox_header(lbrt:Dynamic, ?rotated:Dynamic):Dynamic;
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
		Return True if *obj* looks like a string
	**/
	static public function is_string_like(obj:Dynamic):Dynamic;
	/**
		return true if *obj* looks like a file object with a *write* method
	**/
	static public function is_writable_file_like(obj:Dynamic):Dynamic;
	/**
		Returns a md5 hash object; optionally initialized with a string
	**/
	static public function md5(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		User-callable function to create and return a unique temporary
		file.  The return value is a pair (fd, name) where fd is the
		file descriptor returned by os.open, and name is the filename.
		
		If 'suffix' is not None, the file name will end with that suffix,
		otherwise there will be no suffix.
		
		If 'prefix' is not None, the file name will begin with that prefix,
		otherwise a default prefix is used.
		
		If 'dir' is not None, the file will be created in that directory,
		otherwise a default directory is used.
		
		If 'text' is specified and true, the file is opened in text
		mode.  Else (the default) the file is opened in binary mode.  On
		some operating systems, this makes no difference.
		
		If any of 'suffix', 'prefix' and 'dir' are not None, they must be the
		same type.  If they are bytes, the returned name will be bytes; str
		otherwise.
		
		The file is readable and writable only by the creating user ID.
		If the operating system uses permission bits to indicate whether a
		file is executable, the file is executable by no one. The file
		descriptor is not inherited by children of this process.
		
		Caller is responsible for deleting the file when done with it.
	**/
	static public function mkstemp(?suffix:Dynamic, ?prefix:Dynamic, ?dir:Dynamic, ?text:Dynamic):Dynamic;
	static public function new_figure_manager(num:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	static public var papersize : Dynamic;
	static public var print_function : Dynamic;
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
	/**
		seq1 and seq2 are either None or sequences or arrays
		Return True if both are None or both are seqs with identical
		elements
	**/
	static public function seq_allequal(seq1:Dynamic, seq2:Dynamic):Dynamic;
	static public var uni2type1 : Dynamic;
	static public var unicode_literals : Dynamic;
	static public var verbose : Dynamic;
	/**
		Use ghostscript's ps2pdf and xpdf's/poppler's pdftops to distill a file.
		This yields smaller files without illegal encapsulated postscript
		operators. This distiller is preferred, generating high-level postscript
		output that treats text as text.
	**/
	static public function xpdf_distill(tmpfile:Dynamic, ?eps:Dynamic, ?ptype:Dynamic, ?bbox:Dynamic, ?rotated:Dynamic):Dynamic;
}