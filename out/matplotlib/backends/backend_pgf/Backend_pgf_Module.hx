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
	static public var __version__ : Dynamic;
	static public function _cleanup_all():Dynamic;
	static public function _font_properties_str(prop:Dynamic):Dynamic;
	static public var _log : Dynamic;
	static public var backend_version : Dynamic;
	/**
		Do some necessary and/or useful substitutions for texts to be included in
		LaTeX documents.
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
	/**
		.. deprecated:: 3.0
		    The get_texcommand function was deprecated in Matplotlib 3.0 and will be removed in 3.2.
		
		Get chosen TeX system from rc.
	**/
	static public function get_texcommand():Dynamic;
	/**
		return true if *obj* looks like a file object with a *write* method
	**/
	static public function is_writable_file_like(obj:Dynamic):Dynamic;
	static public var latex_in_to_pt : Dynamic;
	static public var latex_pt_to_in : Dynamic;
	/**
		Returns a function that converts a pdf file to a png file.
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
	static public var rcParams : Dynamic;
	static public var re_escapetext : Dynamic;
	static public var re_mathdefault : Dynamic;
	static public var re_mathsep : Dynamic;
	static public function repl_escapetext(m:Dynamic):Dynamic;
	static public function repl_mathdefault(m:Dynamic):Dynamic;
	static public var required_interactive_framework : Dynamic;
	/**
		Show all figures.
		
		`show` blocks by calling `mainloop` if *block* is ``True``, or if it
		is ``None`` and we are neither in IPython's ``%pylab`` mode, nor in
		`interactive` mode.
	**/
	static public function show(?block:Dynamic):Dynamic;
	static public function writeln(fh:Dynamic, line:Dynamic):Dynamic;
}