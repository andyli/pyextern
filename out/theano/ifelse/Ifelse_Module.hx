/* This file is generated, do not edit! */
package theano.ifelse;
@:pythonImport("theano.ifelse") extern class Ifelse_Module {
	static public var __authors__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __contact__ : Dynamic;
	static public var __copyright__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
	static public var absolute_import : Dynamic;
	static public var acceptable_ops : Dynamic;
	/**
		Function that allows replacing subgraphs of a computational graph.
		
		It returns a copy of the initial subgraph with the corresponding
		substitutions.
		
		Parameters
		----------
		output : Theano Variables (or Theano expressions)
		    Theano expression that represents the computational graph.
		replace : dict
		    Dictionary describing which subgraphs should be replaced by what.
		share_inputs : bool
		    If True, use the same inputs (and shared variables) as the original
		    graph. If False, clone them. Note that cloned shared variables still
		    use the same underlying storage, so they will always have the same
		    value.
		copy_inputs
		    Deprecated, use share_inputs.
	**/
	static public function clone(output:Dynamic, ?replace:Dynamic, ?strict:Dynamic, ?share_inputs:Dynamic, ?copy_inputs:Dynamic):Dynamic;
	static public var cond_make_inplace : Dynamic;
	static public var cond_merge_ifs_false : Dynamic;
	static public var cond_merge_ifs_true : Dynamic;
	static public var cond_merge_random_op : Dynamic;
	static public var cond_remove_identical : Dynamic;
	/**
		Deep copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function deepcopy(x:Dynamic, ?memo:Dynamic, ?_nil:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Goes up in the graph and returns True if a node in nodes is found.
	**/
	static public function find_up(l_node:Dynamic, f_node:Dynamic):Dynamic;
	/**
		This function corresponds to an if statement, returning (and evaluating)
		inputs in the ``then_branch`` if ``condition`` evaluates to True or
		inputs in the ``else_branch`` if ``condition`` evalutates to False.
		
		:type condition: scalar like
		:param condition:
		    ``condition`` should be a tensor scalar representing the condition.
		    If it evaluates to 0 it corresponds to False, anything else stands
		    for True.
		
		:type then_branch: list of theano expressions/ theano expression
		:param then_branch:
		    A single theano variable or a list of theano variables that the
		    function should return as the output if ``condition`` evaluates to
		    true. The number of variables should match those in the
		    ``else_branch``, and there should be a one to one correspondance
		    (type wise) with the tensors provided in the else branch
		
		:type else_branch: list of theano expressions/ theano expressions
		:param else_branch:
		    A single theano variable or a list of theano variables that the
		    function should return as the output if ``condition`` evaluates to
		    false. The number of variables should match those in the then branch,
		    and there should be a one to one correspondace (type wise) with the
		    tensors provided in the then branch.
		
		:return:
		    A list of theano variables or a single variable (depending on the
		    nature of the ``then_branch`` and ``else_branch``). More exactly if
		    ``then_branch`` and ``else_branch`` is a tensor, then
		    the return variable will be just a single variable, otherwise a
		    list. The value returns correspond either to the values in the
		    ``then_branch`` or in the ``else_branch`` depending on the value of
		    ``cond``.
	**/
	static public function ifelse(condition:Dynamic, then_branch:Dynamic, else_branch:Dynamic, ?name:Dynamic):Dynamic;
	static public var ifelse_lift_single_if_through_acceptable_ops : Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var optdb : Dynamic;
	static public var print_function : Dynamic;
}