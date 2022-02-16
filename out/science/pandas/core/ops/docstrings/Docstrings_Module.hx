/* This file is generated, do not edit! */
package pandas.core.ops.docstrings;
@:pythonImport("pandas.core.ops.docstrings") extern class Docstrings_Module {
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _add_example_SERIES : Dynamic;
	static public var _common_examples_algebra_SERIES : Dynamic;
	static public var _common_examples_comparison_SERIES : Dynamic;
	static public var _div_example_SERIES : Dynamic;
	static public var _divmod_example_SERIES : Dynamic;
	static public var _eq_example_SERIES : Dynamic;
	static public var _flex_comp_doc_FRAME : Dynamic;
	static public var _flex_doc_FRAME : Dynamic;
	static public var _flex_doc_SERIES : Dynamic;
	static public var _floordiv_example_SERIES : Dynamic;
	static public var _ge_example_SERIES : Dynamic;
	static public var _gt_example_SERIES : Dynamic;
	static public var _le_example_SERIES : Dynamic;
	static public var _lt_example_SERIES : Dynamic;
	static public var _mod_example_SERIES : Dynamic;
	static public var _mul_example_SERIES : Dynamic;
	static public var _ne_example_SERIES : Dynamic;
	static public var _op_descriptions : Dynamic;
	static public var _op_names : Dynamic;
	static public var _pow_example_SERIES : Dynamic;
	static public var _py_num_ref : Dynamic;
	static public var _returns_series : Dynamic;
	static public var _returns_tuple : Dynamic;
	static public var _see_also_reverse_SERIES : Dynamic;
	static public var _sub_example_SERIES : Dynamic;
	static public var annotations : Dynamic;
	static public var key : Dynamic;
	/**
		Make the appropriate substitutions for the given operation and class-typ
		into either _flex_doc_SERIES or _flex_doc_FRAME to return the docstring
		to attach to a generated method.
		
		Parameters
		----------
		op_name : str {'__add__', '__sub__', ... '__eq__', '__ne__', ...}
		typ : str {series, 'dataframe']}
		
		Returns
		-------
		doc : str
	**/
	static public function make_flex_doc(op_name:Dynamic, typ:Dynamic):String;
	static public var reverse_op : Dynamic;
}