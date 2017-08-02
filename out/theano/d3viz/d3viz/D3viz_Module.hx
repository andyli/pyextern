/* This file is generated, do not edit! */
package theano.d3viz.d3viz;
@:pythonImport("theano.d3viz.d3viz") extern class D3viz_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Create HTML file with dynamic visualizing of a Theano function graph.
		
		In the HTML file, the whole graph or single nodes can be moved by drag and
		drop. Zooming is possible via the mouse wheel. Detailed information about
		nodes and edges are displayed via mouse-over events. Node labels can be
		edited by selecting Edit from the context menu.
		
		Input nodes are colored in green, output nodes in blue. Apply nodes are
		ellipses, and colored depending on the type of operation they perform. Red
		ellipses are transfers from/to the GPU (ops with names GpuFromHost,
		HostFromGpu).
		
		Edges are black by default. If a node returns a view of an
		input, the input edge will be blue. If it returns a destroyed input, the
		edge will be red.
		
		Parameters
		----------
		fct : theano.compile.function_module.Function
		    A compiled Theano function, variable, apply or a list of variables.
		outfile : str
		    Path to output HTML file.
		copy_deps : bool, optional
		    Copy javascript and CSS dependencies to output directory.
		
		Notes
		-----
		This function accepts extra parameters which will be forwarded to
		:class:`theano.d3viz.formatting.PyDotFormatter`.
	**/
	static public function d3viz(fct:Dynamic, outfile:Dynamic, ?copy_deps:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert Theano graph to pydot graph and write to dot file.
		
		Parameters
		----------
		fct : theano.compile.function_module.Function
		    A compiled Theano function, variable, apply or a list of variables.
		path: str
		    Path to output file
		
		Notes
		-----
		This function accepts extra parameters which will be forwarded to
		:class:`theano.d3viz.formatting.PyDotFormatter`.
	**/
	static public function d3write(fct:Dynamic, path:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Replace `replace` in string `x`.
		
		Parameters
		----------
		s : str
		    String on which function is applied
		replace : dict
		    `key`, `value` pairs where key is a regular expression and `value` a
		    string by which `key` is replaced
	**/
	static public function replace_patterns(x:Dynamic, replace:Dynamic):Dynamic;
	/**
		Encode `obj` to JSON so that it can be embedded safely inside HTML.
		
		Parameters
		----------
		obj : object
		    object to serialize
	**/
	static public function safe_json(obj:Dynamic):Dynamic;
}