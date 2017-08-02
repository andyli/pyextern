/* This file is generated, do not edit! */
package theano.gof.cc;
@:pythonImport("theano.gof.cc") extern class Cc_Module {
	static public var PY3 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Default checker for DualLinker. This checks that the
		variables contain the same data using ==.
		
		
		Parameters:
		----------
		x,y
		    the variables to compare data
	**/
	static public function _default_checker(x:Dynamic, y:Dynamic):Dynamic;
	static public var _logger : Dynamic;
	static public var _persistent_module_cache : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Apply the list of policies to name.r,sub
		
		Parameters
		----------
		policy
		    List of functions that map a L{Variable} to a string,
		    or a single such function.
		r: L{Variable}
		
		Returns
		-------
		object
		    C{policy[0](r) + policy[1](r) + ...}.
	**/
	static public function apply_policy(policy:Dynamic, r:Dynamic, name:Dynamic, sub:Dynamic):Dynamic;
	/**
		From a list of L{CodeBlock} instances, returns a string
		that executes them all in sequence.
		
		Eg for C{(decl1, task1,
		cleanup1)} and C{(decl2, task2, cleanup2)} the returned string
		will be of the form:
		
		    decl1
		    decl2
		    {
		     task1
		     {
		      task2
		      cleanup2
		     }
		     cleanup1
		    }
		
		Parameters:
		----------
		blocks
		     List of CodeBlock instances such that
		     * declarations, behavior and cleanup are in the run()
		     method of the struct
	**/
	static public function code_gen(blocks:Dynamic):Dynamic;
	static public var config : Dynamic;
	/**
		Shallow copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function copy(x:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Code contained in sub['fail'], usually substituted for %(fail)s.
		
		It sets information about current error, then goto the code
		actually handling the failure, which is defined in struct_gen().
	**/
	static public function failure_code(sub:Dynamic):Dynamic;
	/**
		Code for failure in the struct init.
		
		Parameters:
		----------
		sub
		  Dictionary used to template the struct.
		  * failure_var -> must contain a variable name to use for
		  the failure code.
	**/
	static public function failure_code_init(sub:Dynamic):Dynamic;
	/**
		Wrapper around c_cleanup that decrefs py_name.
	**/
	static public function get_c_cleanup(r:Dynamic, name:Dynamic, sub:Dynamic):Dynamic;
	/**
		Wrapper around c_declare that declares py_name.
	**/
	static public function get_c_declare(r:Dynamic, name:Dynamic, sub:Dynamic):Dynamic;
	/**
		Wrapper around c_extract that initializes py_name from storage.
	**/
	static public function get_c_extract(r:Dynamic, name:Dynamic, sub:Dynamic):Dynamic;
	/**
		Wrapper around c_extract_out that initializes py_name from storage.
	**/
	static public function get_c_extract_out(r:Dynamic, name:Dynamic, sub:Dynamic):Dynamic;
	/**
		Wrapper around c_init that initializes py_name to Py_None.
	**/
	static public function get_c_init(r:Dynamic, name:Dynamic, sub:Dynamic):Dynamic;
	/**
		Wrapper around c_sync that syncs py_name with storage.
	**/
	static public function get_c_sync(r:Dynamic, name:Dynamic, sub:Dynamic):Dynamic;
	/**
		Obtain lock on compilation directory.
		
		Parameters
		----------
		kw
		    Additional arguments to be forwarded to the `lock` function when
		    acquiring the lock.
		
		Notes
		-----
		We can lock only on 1 directory at a time.
	**/
	static public function get_lock(?lock_dir:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		init_args
		    If not None, the (k, v) pairs in this dictionary will be forwarded to
		    the ModuleCache constructor as keyword arguments.
	**/
	static public function get_module_cache(?init_args:Dynamic):Dynamic;
	/**
		WRITEME
	**/
	static public function get_nothing(r:Dynamic, name:Dynamic, sub:Dynamic):Dynamic;
	static public function get_persistent_module_cache():Dynamic;
	static public var print_function : Dynamic;
	/**
		Release lock on compilation directory.
	**/
	static public function release_lock():Dynamic;
	/**
		Reraise an exception.
	**/
	static public function reraise(tp:Dynamic, value:Dynamic, ?tb:Dynamic):Dynamic;
	static public var run_cthunk : Dynamic;
	static public var string_types : Dynamic;
	/**
		Generates a struct conforming to the following specifications:
		
		Parameters
		----------
		 args
		    All of the PyObject* type, stored in the struct
		    they represent the storage and must be length 1 python lists.
		 struct_builders
		    List of L{CodeBlock} instances such that
		    * declarations are in the struct
		    * behavior is in the constructor
		    * cleanup is in the destructor
		 blocks
		    List of CodeBlock instances such that
		    * declarations, behavior and cleanup are in the run()
		    method of the struct
		 sub
		    Dictionary used to template the struct.
		    * failure_var -> must contain a variable name to use for
		    the failure code.
		
		Returns
		-------
		object
		    In a nutshell, this returns code for a struct that represents
		    a function with state. The state's initialization and destruction
		    are handled by struct_builders and the actual behavior of the
		    function is handled by blocks.
	**/
	static public function struct_gen(args:Dynamic, struct_builders:Dynamic, blocks:Dynamic, sub:Dynamic):Dynamic;
	/**
		Update "sub" dict and create two codeblocks with different failure modes
		
		Parameters
		----------
		variable : a Variable
		policies : a pair of tuples
		    (declare_policy, behavior_policy, cleanup_policy) -- at construction.
		    (declare_policy, behavior_policy, cleanup_policy)) -- at execution.
		    The first list will produce an element of the 'struct_builders' argument
		    in struct_gen. The second list will produce an element of the 'blocks'
		    argument in struct_gen.
		id
		    The id assigned to this variable's task in the computation.
		symbol_table
		    A dict that maps variables to variable names. It is not read by this
		    function but a variable name for the variable is computed and added to
		    the table.
		sub
		    Dictionary for use by L{CodeBlock}.
	**/
	static public function struct_variable_codeblocks(variable:Dynamic, policies:Dynamic, id:Dynamic, symbol_table:Dynamic, sub:Dynamic):Dynamic;
}