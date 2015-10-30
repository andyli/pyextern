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
	static public function _cleanup_all():Dynamic;
	static public function _font_properties_str(prop:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Run command with arguments and return its output.
		
		If the exit code was non-zero it raises a CalledProcessError.  The
		CalledProcessError object will have the return code in the returncode
		attribute and output in the output attribute.
		
		The arguments are the same as for the Popen constructor.  Example:
		
		>>> check_output(["ls", "-l", "/dev/null"])
		b'crw-rw-rw- 1 root root 1, 3 Oct 18  2007 /dev/null\n'
		
		The stdout argument is not allowed as it is used internally.
		To capture standard error in the result, use stderr=STDOUT.
		
		>>> check_output(["/bin/sh", "-c",
		...               "ls -l non_existent_file ; exit 0"],
		...              stderr=STDOUT)
		b'ls: non_existent_file: No such file or directory\n'
		
		There is an additional optional argument, "input", allowing you to
		pass a string to the subprocess's stdin.  If you use this argument
		you may not also use the Popen constructor's "stdin" argument, as
		it too will be used internally.  Example:
		
		>>> check_output(["sed", "-e", "s/foo/bar/"],
		...              input=b"when in the course of fooman events\n")
		b'when in the course of barman events\n'
		
		If universal_newlines=True is passed, the "input" argument must be a
		string and the return value will be a string rather than bytes.
	**/
	static public function check_output(popenargs:Dynamic, ?timeout:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Do some necessary and/or useful substitutions for texts to be included in
		LaTeX documents.
	**/
	static public function common_texification(text:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function draw_if_interactive():Dynamic;
	static public var fc_list : Dynamic;
	/**
		Build fontspec preamble from rc.
	**/
	static public function get_fontspec():Dynamic;
	/**
		Get LaTeX preamble from rc.
	**/
	static public function get_preamble():Dynamic;
	/**
		Get chosen TeX system from rc.
	**/
	static public function get_texcommand():Dynamic;
	/**
		Return True if *obj* looks like a string
	**/
	static public function is_string_like(obj:Dynamic):Dynamic;
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
		Create a new figure manager instance
	**/
	static public function new_figure_manager(num:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var rcParams : Dynamic;
	static public var re_escapetext : Dynamic;
	static public var re_mathdefault : Dynamic;
	static public var re_mathsep : Dynamic;
	static public function repl_escapetext(m:Dynamic):Dynamic;
	static public function repl_mathdefault(m:Dynamic):Dynamic;
	static public var system_fonts : Dynamic;
	static public var unicode_literals : Dynamic;
	static public function writeln(fh:Dynamic, line:Dynamic):Dynamic;
}