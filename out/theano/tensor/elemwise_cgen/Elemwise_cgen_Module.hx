/* This file is generated, do not edit! */
package theano.tensor.elemwise_cgen;
@:pythonImport("theano.tensor.elemwise_cgen") extern class Elemwise_cgen_Module {
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
	/**
		Generate C code to allocate outputs.
		
		Parameters
		----------
		fortran : str
		    A string included in the generated code. If it
		    evaluate to non-zero, an ndarray in fortran order will be
		    created, otherwise it will be c order.
	**/
	static public function make_alloc(loop_orders:Dynamic, dtype:Dynamic, sub:Dynamic, ?fortran:Dynamic):Dynamic;
	static public function make_checks(loop_orders:Dynamic, dtypes:Dynamic, sub:Dynamic):Dynamic;
	/**
		Produce code to declare all necessary variables.
	**/
	static public function make_declare(loop_orders:Dynamic, dtypes:Dynamic, sub:Dynamic):Dynamic;
	/**
		Make a nested loop over several arrays and associate specific code
		to each level of nesting.
		
		Parameters
		----------
		loop_orders : list of N tuples of length M
		    Each value of each tuple can be either the index of a dimension to
		    loop over or the letter 'x' which means there is no looping to be done
		    over that variable at that point (in other words we broadcast
		    over that dimension). If an entry is an integer, it will become
		    an alias of the entry of that rank.
		loop_tasks : list of M+1 pieces of code
		    The ith loop_task is a pair of strings, the first
		    string is code to be executed before the ith loop starts, the second
		    one contains code to be executed just before going to the next element
		    of the ith dimension.
		    The last element if loop_tasks is a single string, containing code
		    to be executed at the very end.
		sub : dictionary
		    Maps 'lv#' to a suitable variable name.
		    The 'lvi' variable corresponds to the ith element of loop_orders.
	**/
	static public function make_loop(loop_orders:Dynamic, dtypes:Dynamic, loop_tasks:Dynamic, sub:Dynamic, ?openmp:Dynamic):Dynamic;
	/**
		Make a nested loop over several arrays and associate specific code
		to each level of nesting.
		
		Parameters
		----------
		loop_orders : list of N tuples of length M
		    Each value of each tuple can be either the index of a dimension to
		    loop over or the letter 'x' which means there is no looping to be done
		    over that variable at that point (in other words we broadcast
		    over that dimension). If an entry is an integer, it will become
		    an alias of the entry of that rank.
		loop_tasks : list of M+1 pieces of code
		    The ith loop_task is a pair of strings, the first
		    string is code to be executed before the ith loop starts, the second
		    one contains code to be executed just before going to the next element
		    of the ith dimension.
		    The last element if loop_tasks is a single string, containing code
		    to be executed at the very end.
		sub: dictionary
		    Maps 'lv#' to a suitable variable name.
		    The 'lvi' variable corresponds to the ith element of loop_orders.
	**/
	static public function make_loop_careduce(loop_orders:Dynamic, dtypes:Dynamic, loop_tasks:Dynamic, sub:Dynamic):Dynamic;
	/**
		A bit like make_loop, but when only the inner-most loop executes code.
		
		All the loops will be reordered so that the loops over the output tensor
		are executed with memory access as contiguous as possible.
		For instance, if the output tensor is c_contiguous, the inner-most loop
		will be on its rows; if it's f_contiguous, it will be on its columns.
		
		The output tensor's index among the loop variables is indicated by olv_index.
	**/
	static public function make_reordered_loop(init_loop_orders:Dynamic, olv_index:Dynamic, dtypes:Dynamic, inner_task:Dynamic, sub:Dynamic, ?openmp:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}