/* This file is generated, do not edit! */
package matplotlib.backends.backend_pgf;
@:pythonImport("matplotlib.backends.backend_pgf") extern class Backend_pgf_Module {
	static public var NO_ESCAPE : Dynamic;
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
		Generate a TeX string that renders string *s* with font properties *prop*,
		also applying any required escapes to *s*.
	**/
	static public function _escape_and_apply_props(s:Dynamic, prop:Dynamic):Dynamic;
	static public function _get_image_inclusion_command():Dynamic;
	static public var _log : Dynamic;
	/**
		Convert metadata key/value to a form that hyperref accepts.
	**/
	static public function _metadata_to_str(key:Dynamic, value:Dynamic):Dynamic;
	static public function _replace_escapetext(string:Dynamic, ?count:Dynamic):Dynamic;
	static public function _replace_mathdefault(string:Dynamic, ?count:Dynamic):Dynamic;
	static public var backend_version : Dynamic;
	/**
		Do some necessary and/or useful substitutions for texts to be included in
		LaTeX documents.
		
		This distinguishes text-mode and math-mode by replacing the math separator
		``$`` with ``\(\displaystyle %s\)``. Escaped math separators (``\$``)
		are ignored.
		
		The following characters are escaped in text segments: ``_^$%``
	**/
	static public function common_texification(text:Dynamic):Dynamic;
	static public function draw_if_interactive():Dynamic;
	/**
		Build fontspec preamble from rc.
	**/
	static public function get_fontspec():Dynamic;
	/**
		Get LaTeX preamble from rc.
	**/
	static public function get_preamble():Dynamic;
	static public var latex_in_to_pt : Dynamic;
	static public var latex_pt_to_in : Dynamic;
	/**
		Return a function that converts a pdf file to a png file.
	**/
	static public function make_pdf_to_png_converter():Dynamic;
	static public var mpl_in_to_pt : Dynamic;
	static public var mpl_pt_to_in : Dynamic;
	/**
		Create a new figure manager instance.
	**/
	static public function new_figure_manager(num:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	static public var re_mathsep : Dynamic;
	/**
		Show all figures.
		
		`show` blocks by calling `mainloop` if *block* is ``True``, or if it
		is ``None`` and we are neither in IPython's ``%pylab`` mode, nor in
		`interactive` mode.
	**/
	static public function show(?block:Dynamic):Dynamic;
	static public function writeln(fh:Dynamic, line:Dynamic):Dynamic;
}