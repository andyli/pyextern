/* This file is generated, do not edit! */
package matplotlib.sphinxext;
@:pythonImport("matplotlib.sphinxext.plot_directive") extern class Plot_directive {
	static public var TEMPLATE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public function _option_align(arg:Dynamic):Dynamic;
	static public function _option_boolean(arg:Dynamic):Dynamic;
	static public function _option_context(arg:Dynamic):Dynamic;
	static public function _option_format(arg:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function align(argument:Dynamic):Dynamic;
	static public function clear_state(plot_rcparams:Dynamic, ?close:Dynamic):Dynamic;
	static public function contains_doctest(text:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var exception_template : Dynamic;
	static public function format_template(template:Dynamic, kw:Dynamic):Dynamic;
	/**
		To make plots referenceable, we need to move the reference from
		the "htmlonly" (or "latexonly") node to the actual figure node
		itself.
	**/
	static public function mark_plot_labels(app:Dynamic, document:Dynamic):Dynamic;
	/**
		Returns True if derivative is out-of-date wrt original,
		both of which are full file paths.
	**/
	static public function out_of_date(original:Dynamic, derived:Dynamic):Dynamic;
	static public var plot_context : Dynamic;
	/**
		A directive for including a matplotlib plot in a Sphinx document.
		
		By default, in HTML output, `plot` will include a .png file with a
		link to a high-res .png and .pdf.  In LaTeX output, it will include a
		.pdf.
		
		The source code for the plot may be included in one of three ways:
		
		  1. **A path to a source file** as the argument to the directive::
		
		       .. plot:: path/to/plot.py
		
		     When a path to a source file is given, the content of the
		     directive may optionally contain a caption for the plot::
		
		       .. plot:: path/to/plot.py
		
		          This is the caption for the plot
		
		     Additionally, one my specify the name of a function to call (with
		     no arguments) immediately after importing the module::
		
		       .. plot:: path/to/plot.py plot_function1
		
		  2. Included as **inline content** to the directive::
		
		       .. plot::
		
		          import matplotlib.pyplot as plt
		          import matplotlib.image as mpimg
		          import numpy as np
		          img = mpimg.imread('_static/stinkbug.png')
		          imgplot = plt.imshow(img)
		
		  3. Using **doctest** syntax::
		
		       .. plot::
		          A plotting example:
		          >>> import matplotlib.pyplot as plt
		          >>> plt.plot([1,2,3], [4,5,6])
		
		Options
		-------
		
		The ``plot`` directive supports the following options:
		
		    format : {'python', 'doctest'}
		        Specify the format of the input
		
		    include-source : bool
		        Whether to display the source code. The default can be changed
		        using the `plot_include_source` variable in conf.py
		
		    encoding : str
		        If this source file is in a non-UTF8 or non-ASCII encoding,
		        the encoding must be specified using the `:encoding:` option.
		        The encoding will not be inferred using the ``-*- coding -*-``
		        metacomment.
		
		    context : bool or str
		        If provided, the code will be run in the context of all
		        previous plot directives for which the `:context:` option was
		        specified.  This only applies to inline code plot directives,
		        not those run from files. If the ``:context: reset`` is specified,
		        the context is reset for this and future plots.
		
		    nofigs : bool
		        If specified, the code block will be run, but no figures will
		        be inserted.  This is usually useful with the ``:context:``
		        option.
		
		Additionally, this directive supports all of the options of the
		`image` directive, except for `target` (since plot will add its own
		target).  These include `alt`, `height`, `width`, `scale`, `align` and
		`class`.
		
		Configuration options
		---------------------
		
		The plot directive has the following configuration options:
		
		    plot_include_source
		        Default value for the include-source option
		
		    plot_html_show_source_link
		        Whether to show a link to the source in HTML.
		
		    plot_pre_code
		        Code that should be executed before each plot.
		
		    plot_basedir
		        Base directory, to which ``plot::`` file names are relative
		        to.  (If None or empty, file names are relative to the
		        directory where the file containing the directive is.)
		
		    plot_formats
		        File formats to generate. List of tuples or strings::
		
		            [(suffix, dpi), suffix, ...]
		
		        that determine the file format and the DPI. For entries whose
		        DPI was omitted, sensible defaults are chosen.
		
		    plot_html_show_formats
		        Whether to show links to the files in HTML.
		
		    plot_rcparams
		        A dictionary containing any non-standard rcParams that should
		        be applied before each plot.
		
		    plot_apply_rcparams
		        By default, rcParams are applied when `context` option is not used in
		        a plot directive.  This configuration option overrides this behavior
		        and applies rcParams before each plot.
		
		    plot_working_directory
		        By default, the working directory will be changed to the directory of
		        the example, so the code can get at its data files, if any.  Also its
		        path will be added to `sys.path` so it can import any helper modules
		        sitting beside it.  This configuration option can be used to specify
		        a central directory (also added to `sys.path`) where data files and
		        helper modules for all code are located.
		
		    plot_template
		        Provide a customized template for preparing restructured text.
	**/
	static public function plot_directive(name:Dynamic, arguments:Dynamic, options:Dynamic, content:Dynamic, lineno:Dynamic, content_offset:Dynamic, block_text:Dynamic, state:Dynamic, state_machine:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return a relative version of a path
	**/
	static public function relpath(path:Dynamic, ?start:Dynamic):Dynamic;
	/**
		Remove the coding comment, which six.exec_ doesn't like.
	**/
	static public function remove_coding(text:Dynamic):Dynamic;
	/**
		Run a pyplot script and save the low and high res PNGs and a PDF
		in *output_dir*.
		
		Save the images under *output_dir* with file names derived from
		*output_base*
	**/
	static public function render_figures(code:Dynamic, code_path:Dynamic, output_dir:Dynamic, output_base:Dynamic, context:Dynamic, function_name:Dynamic, config:Dynamic, ?context_reset:Dynamic):Dynamic;
	static public function run(arguments:Dynamic, content:Dynamic, options:Dynamic, state_machine:Dynamic, state:Dynamic, lineno:Dynamic):Dynamic;
	/**
		Import a Python module from a path, and run the function given by
		name, if function_name is not None.
	**/
	static public function run_code(code:Dynamic, code_path:Dynamic, ?ns:Dynamic, ?function_name:Dynamic):Dynamic;
	static public function setup(app:Dynamic):Dynamic;
	static public var sphinx_version : Dynamic;
	/**
		Split code at plt.show()
	**/
	static public function split_code_at_show(text:Dynamic):Dynamic;
	/**
		Extract code from a piece of text, which contains either Python code
		or doctests.
	**/
	static public function unescape_doctest(text:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
}