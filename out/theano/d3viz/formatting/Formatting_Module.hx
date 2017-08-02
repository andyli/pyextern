/* This file is generated, do not edit! */
package theano.d3viz.formatting;
@:pythonImport("theano.d3viz.formatting") extern class Formatting_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return label of apply node.
	**/
	static public function apply_label(node:Dynamic):Dynamic;
	/**
		Return apply profiling informaton.
	**/
	static public function apply_profile(node:Dynamic, profile:Dynamic):Dynamic;
	/**
		Return string representation of broadcastable.
	**/
	static public function broadcastable_to_str(b:Dynamic):Dynamic;
	/**
		Create pydot node from dict.
	**/
	static public function dict_to_pdnode(d:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return character that represents data type.
	**/
	static public function dtype_to_char(dtype:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an iterator over the values of a dictionary.
	**/
	static public function itervalues(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public var pydot_imported : Dynamic;
	static public var pydot_imported_msg : Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str of variable type.
	**/
	static public function type_to_str(t:Dynamic):Dynamic;
	/**
		Return label of variable node.
	**/
	static public function var_label(_var:Dynamic, ?precision:Dynamic):Dynamic;
	/**
		Parse tag attribute of variable node.
	**/
	static public function var_tag(_var:Dynamic):Dynamic;
}