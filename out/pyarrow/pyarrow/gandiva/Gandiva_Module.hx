/* This file is generated, do not edit! */
package pyarrow.gandiva;
@:pythonImport("pyarrow.gandiva") extern class Gandiva_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	/**
		__pyx_unpickle_TreeExprBuilder(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_TreeExprBuilder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		frombytes(o, *, safe=False)
		
		Decode the given bytestring to unicode.
		
		Parameters
		----------
		o : bytes-like
		    Input object.
		safe : bool, default False
		    If true, raise on encoding errors.
	**/
	static public function frombytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_registered_function_signatures()
		
		Return the function in Gandiva's ExpressionRegistry.
		
		Returns
		-------
		registry: a list of registered function signatures
	**/
	static public function get_registered_function_signatures(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		make_filter(Schema schema, Condition condition)
		
		Contruct a filter based on a condition.
		
		A filter is built for a specific schema and condition. Once the filter is
		built, it can be used to evaluate many row batches.
		
		Parameters
		----------
		schema : pyarrow.Schema
		    Schema for the record batches, and the condition.
		condition : pyarrow.gandiva.Condition
		    Filter condition.
		
		Returns
		-------
		Filter instance
	**/
	static public function make_filter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		make_projector(Schema schema, children, MemoryPool pool, unicode selection_mode=u'NONE')
		
		Construct a projection using expressions.
		
		A projector is built for a specific schema and vector of expressions.
		Once the projector is built, it can be used to evaluate many row batches.
		
		Parameters
		----------
		schema : pyarrow.Schema
		    Schema for the record batches, and the expressions.
		children : list[pyarrow.gandiva.Expression]
		    List of projectable expression objects.
		pool : pyarrow.MemoryPool
		    Memory pool used to allocate output arrays.
		selection_mode : str, default "NONE"
		    Possible values are NONE, UINT16, UINT32, UINT64.
		
		Returns
		-------
		Projector instance
	**/
	static public function make_projector(args:haxe.extern.Rest<Dynamic>):Dynamic;
}