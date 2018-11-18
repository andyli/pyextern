/* This file is generated, do not edit! */
package scipy.sparse.generate_sparsetools;
@:pythonImport("scipy.sparse.generate_sparsetools") extern class Generate_sparsetools_Module {
	static public var BSR_ROUTINES : Dynamic;
	static public var COMPILATION_UNITS : Dynamic;
	static public var CSC_ROUTINES : Dynamic;
	static public var CSR_ROUTINES : Dynamic;
	static public var GET_THUNK_CASE_TEMPLATE : Dynamic;
	static public var I_TYPES : Dynamic;
	static public var METHOD_TEMPLATE : Dynamic;
	static public var OTHER_ROUTINES : Dynamic;
	static public var THUNK_TEMPLATE : Dynamic;
	static public var T_TYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get a list containing cartesian product of data types, plus a getter routine.
		
		Returns
		-------
		i_types : list [(j, I_typenum, None, I_type, None), ...]
		     Pairing of index type numbers and the corresponding C++ types,
		     and an unique index `j`. This is for routines that are parameterized
		     only by I but not by T.
		it_types : list [(j, I_typenum, T_typenum, I_type, T_type), ...]
		     Same as `i_types`, but for routines parameterized both by T and I.
		getter_code : str
		     C++ code for a function that takes I_typenum, T_typenum and returns
		     the unique index corresponding to the lists, or -1 if no match was
		     found.
	**/
	static public function get_thunk_type_set():Dynamic;
	static public function main():Dynamic;
	/**
		Return true if 'source' exists and is more recently modified than
		'target', or if 'source' exists and 'target' doesn't.  Return false if
		both exist and 'target' is the same age or younger than 'source'.
		Raise DistutilsFileError if 'source' does not exist.
	**/
	static public function newer(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Generate thunk and method code for a given routine.
		
		Parameters
		----------
		name : str
		    Name of the C++ routine
		args : str
		    Argument list specification (in format explained above)
		types : list
		    List of types to instantiate, as returned `get_thunk_type_set`
	**/
	static public function parse_routine(name:Dynamic, args:Dynamic, types:Dynamic):Dynamic;
	static public function write_autogen_blurb(stream:Dynamic):Dynamic;
}