/* This file is generated, do not edit! */
package theano.compile.ops;
@:pythonImport("theano.compile.ops") extern class Ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _output_guard(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _shape(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator that converts a function into a basic Theano op that will call
		the supplied function as its implementation.
		
		It takes an optional infer_shape parameter that should be a callable with
		this signature:
		
		    def infer_shape(node, input_shapes):
		        ...
		        return output_shapes
		
		Here `input_shapes` and `output_shapes` are lists of tuples that represent
		the shape of the corresponding inputs/outputs.
		
		This should not be used when performance is a concern since the very basic
		nature of the resulting Op may interfere with certain graph optimizations.
		
		Examples
		--------
		@as_op(itypes=[theano.tensor.fmatrix, theano.tensor.fmatrix],
		       otypes=[theano.tensor.fmatrix])
		def numpy_dot(a, b):
		    return numpy.dot(a, b)
	**/
	static public function as_op(itypes:Dynamic, otypes:Dynamic, ?infer_shape:Dynamic):Dynamic;
	static public function deep_copy_op(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var expandable_types : Dynamic;
	static public var integer_types : Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function load_back(mod:Dynamic, name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Tell DeepCopyOp how to generate C code for a Theano Type.
		
		Parameters
		----------
		typ : Theano type
		    It must be the Theano class itself and not an instance of the class.
		code: C code
		    Deep copies the Theano type 'typ'. Use %(iname)s and %(oname)s for the
		    input and output C variable names respectively.
		version
		    A number indicating the version of the code, for cache.
	**/
	static public function register_deep_copy_op_c_code(typ:Dynamic, code:Dynamic, ?version:Dynamic):Dynamic;
	/**
		Tell Rebroadcast how to generate C code for a Theano Type.
		
		typ : Theano type
		    It must be the Theano class itself and not an instance of the class.
		code : C code
		    That checks if the dimension %(axis)s is of shape 1 for the Theano type
		    'typ'. Use %(iname)s and %(oname)s for the input and output C variable
		    names respectively, and %(axis)s for the axis that we need to check.
		    This code is put in a loop for all axes.
		version
		    A number indicating the version of the code, for cache.
	**/
	static public function register_rebroadcast_c_code(typ:Dynamic, code:Dynamic, ?version:Dynamic):Dynamic;
	/**
		Tell Shape Op how to generate C code for a Theano Type.
		
		Parameters
		----------
		typ : Theano type
		    It must be the Theano class itself and not an instance of the class.
		code : C code
		    Returns a vector representing the shape for the Theano type 'typ'.
		    Use %(iname)s and %(oname)s for the input and output C variable names
		    respectively.
		version
		    A number indicating the version of the code, for cache.
	**/
	static public function register_shape_c_code(type:Dynamic, code:Dynamic, ?version:Dynamic):Dynamic;
	/**
		Tell Shape_i how to generate C code for a Theano Type.
		
		Parameters
		----------
		typ : Theano type
		    It must be the Theano class itself and not an instance of the class.
		code : C code
		    Gets the shape of dimensions %(i)s for the Theano type 'typ'.
		    Use %(iname)s and %(oname)s for the input and output C variable names
		    respectively.
		version
		    A number indicating the version of the code, for cache.
	**/
	static public function register_shape_i_c_code(typ:Dynamic, code:Dynamic, check_input:Dynamic, ?version:Dynamic):Dynamic;
	/**
		Tell SpecifyShape how to generate C code for a Theano Type.
		
		Parameters
		----------
		typ : Theano type
		    It must be the Theano class itself and not an instance of the class.
		code : C code
		    Checks the shape and returns a view for the Theano type 'typ'.
		    Use %(iname)s and %(oname)s for the input and output C variable names
		    respectively. %(shape)s is the vector of shape of %(iname)s.
		    Check that its length is good.
		version
		    A number indicating the version of the code, for cache.
		c_support_code_apply
		    Extra code.
	**/
	static public function register_specify_shape_c_code(typ:Dynamic, code:Dynamic, ?version:Dynamic, ?c_support_code_apply:Dynamic):Dynamic;
	/**
		Tell ViewOp how to generate C code for a Theano Type.
		
		Parameters
		----------
		type : Theano type
		    It must be the Theano class itself and not an instance of the class.
		code : C code
		    Returns a view for the Theano type 'type'. Use %(iname)s and %(oname)s
		    for the input and output C variable names respectively.
		version
		    A number indicating the version of the code, for cache.
	**/
	static public function register_view_op_c_code(type:Dynamic, code:Dynamic, ?version:Dynamic):Dynamic;
	static public function shape(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Equivalent of var.shape[i], but apply if possible the shape feature
		optimization.
		
		This is useful in optimization that need to get the shape. This
		remove the need of the following shape_feature optimization that
		convert it. So this speed up optimization and remove Equilibrium
		max iteration problems.
		
		Parameters
		----------
		var
		    The variable we want to take the shape of.
		i
		    The shape dimensions we want
		fgraph : optional
		    If var.fgraph do not exist, the fgraph that have the shape_feature to
		    introduce var in to get the optimized shape.
	**/
	static public function shape_i(_var:Dynamic, i:Dynamic, ?fgraph:Dynamic):Dynamic;
	static public function shape_i_op(i:Dynamic):Dynamic;
	static public function specify_shape(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function view_op(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}