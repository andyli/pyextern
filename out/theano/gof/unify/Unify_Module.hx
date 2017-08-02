/* This file is generated, do not edit! */
package theano.gof.unify;
@:pythonImport("theano.gof.unify") extern class Unify_Module {
	static public var ANY_TYPE : Dynamic;
	static public var FALL_THROUGH : Dynamic;
	static public function NV(name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function OrV(name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function V(name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Var(name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _all : Dynamic;
	static public var absolute_import : Dynamic;
	static public function comm_guard(type1:Dynamic, type2:Dynamic):Dynamic;
	/**
		Shallow copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function copy(x:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function unify(a:Dynamic, b:Dynamic):Dynamic;
	static public function unify_build(x:Dynamic, U:Dynamic):Dynamic;
	/**
		None
		Variable, <ANY_TYPE>
		
		BoundVariable, <ANY_TYPE>
		
		VariableInList, (list, tuple)
		
		(list, tuple), (list, tuple)
		
		dict, dict
		
		FVar, <ANY_TYPE>
		
		<ANY_TYPE>, <ANY_TYPE>
		
		Variable, <ANY_TYPE>
		
		    This simply checks if the Var has an unification in U and uses it
		    instead of the Var. If the Var is already its tighest unification,
		    falls through.
		
		    
	**/
	static public function unify_merge(arg1:Dynamic, arg2:Dynamic, ?rest:python.VarArgs<Dynamic>):Dynamic;
	/**
		    unify_walk(a, b, U) returns an Unification where a and b are unified,
		    given the unification that already exists in the Unification U. If the
		    unification fails, it returns False.
		
		    There are two ways to expand the functionality of unify_walk. The first way
		    is:
		    @comm_guard(type_of_a, type_of_b)
		    def unify_walk(a, b, U):
		        ...
		    A function defined as such will be executed whenever the types of a and b
		    match the declaration. Note that comm_guard automatically guarantees that
		    your function is commutative: it will try to match the types of a, b or
		    b, a.
		    It is recommended to define unify_walk in that fashion for new types of
		    Variable because different types of Variable interact a lot with each other,
		    e.g. when unifying an OrVariable with a NotVariable, etc. You can return
		    the special marker FALL_THROUGH to indicate that you want to relay execution
		    to the next match of the type signature. The definitions of unify_walk are
		    tried in the reverse order of their declaration.
		
		    Another way is to override __unify_walk__ in an user-defined class.
		
		    Limitations: cannot embed a Variable in another (the functionality could
		    be added if required)
		
		    Here is a list of unification rules with their associated behavior:
		
		    
		FreeVariable, <ANY_TYPE>
		
		    FreeV is unified to BoundVariable(other_object).
		
		    
		BoundVariable, <ANY_TYPE>
		
		    The unification succeed iff BV.value == other_object.
		
		    
		OrVariable, <ANY_TYPE>
		
		    The unification succeeds iff other_object in OrV.options.
		
		    
		NotVariable, <ANY_TYPE>
		
		    The unification succeeds iff other_object not in NV.not_options.
		
		    
		FreeVariable, Variable
		
		    Both variables are unified.
		
		    
		BoundVariable, Variable
		
		    V is unified to BV.value.
		
		    
		OrVariable, OrVariable
		
		    OrV(list1) == OrV(list2) == OrV(intersection(list1, list2))
		
		    
		NotVariable, NotVariable
		
		    NV(list1) == NV(list2) == NV(union(list1, list2))
		
		    
		OrVariable, NotVariable
		
		    OrV(list1) == NV(list2) == OrV(list1 \ list2)
		
		    
		VariableInList, (list, tuple)
		
		    Unifies VIL's inner Variable to OrV(list).
		
		    
		(list, tuple), (list, tuple)
		
		    Tries to unify each corresponding pair of elements from l1 and l2.
		
		    
		dict, dict
		
		    Tries to unify values of corresponding keys.
		
		    
		<ANY_TYPE>, <ANY_TYPE>
		
		    Checks for the existence of the __unify_walk__ method for one of
		    the objects.
		
		    
		Variable, <ANY_TYPE>
		
		    This simply checks if the Var has an unification in U and uses it
		    instead of the Var. If the Var is already its tighest unification,
		    falls through.
		
		    
	**/
	static public function unify_walk(arg1:Dynamic, arg2:Dynamic, ?rest:python.VarArgs<Dynamic>):Dynamic;
	static public function var_lookup(vartype:Dynamic, name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}