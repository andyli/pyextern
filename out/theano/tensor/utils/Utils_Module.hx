/* This file is generated, do not edit! */
package theano.tensor.utils;
@:pythonImport("theano.tensor.utils") extern class Utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function hash_from_code(msg:Dynamic):Dynamic;
	/**
		Return a hash from an ndarray.
		
		It takes care of the data, shapes, strides and dtype.
	**/
	static public function hash_from_ndarray(data:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute the numeric shape of all intermediate variables given input shapes.
		
		Parameters
		----------
		fgraph
		    The theano.FunctionGraph in question.
		input_shapes : dict
		    A dict mapping input to shape.
		
		Returns
		-------
		shapes : dict
		    A dict mapping variable to shape
		
		.. warning:: This modifies the fgraph. Not pure.
		
		Examples
		--------
		>>> import theano
		>>> x = theano.tensor.matrix('x')
		>>> y = x[512:]; y.name = 'y'
		>>> fgraph = theano.FunctionGraph([x], [y], clone=False)
		>>> d = shape_of_variables(fgraph, {x: (1024, 1024)})
		>>> d[y]
		(array(512), array(1024))
		>>> d[x]
		(array(1024), array(1024))
	**/
	static public function shape_of_variables(fgraph:Dynamic, input_shapes:Dynamic):python.Dict<Dynamic, Dynamic>;
}