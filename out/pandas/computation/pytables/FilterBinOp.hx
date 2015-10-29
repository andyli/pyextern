/* This file is generated, do not edit! */
package pandas.computation.pytables;
@:pythonImport("pandas.computation.pytables", "FilterBinOp") extern class FilterBinOp {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	/**
		Recursively evaluate an expression in Python space.
		
		Parameters
		----------
		env : Scope
		
		Returns
		-------
		object
		    The result of an evaluated expression.
	**/
	public function __call__(env:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(op:Dynamic, lhs:Dynamic, rhs:Dynamic, queryables:Dynamic, encoding:Dynamic):Dynamic;
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Print a generic n-ary operator and its operands using infix
		notation
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	public function _disallow_scalar_only_bool_ops():Dynamic;
	static public var _max_selectors : Dynamic;
	/**
		inplace conform rhs 
	**/
	public function conform(rhs:Dynamic):Dynamic;
	/**
		convert the expression that is in the term to something that is
		accepted by pytables 
	**/
	public function convert_value(v:Dynamic):Dynamic;
	/**
		Convert datetimes to a comparable value in an expression.
		        
	**/
	public function convert_values():Dynamic;
	/**
		Evaluate a binary operation *before* being passed to the engine.
		
		Parameters
		----------
		env : Scope
		engine : str
		parser : str
		term_type : type
		eval_in_python : list
		
		Returns
		-------
		term_type
		    The "pre-evaluated" expression as an instance of ``term_type``
	**/
	public function evaluate():Dynamic;
	/**
		return the actual filter format 
	**/
	public function format():Dynamic;
	/**
		create and return the op string for this TermValue 
	**/
	public function generate(v:Dynamic):Dynamic;
	public function generate_filter_op(?invert:Dynamic):Dynamic;
	static public var has_invalid_return_type : Dynamic;
	/**
		invert the filter 
	**/
	public function invert():Dynamic;
	static public var is_datetime : Dynamic;
	/**
		return True if this is a valid column name for generation (e.g. an
		actual column in the table) 
	**/
	static public var is_in_table : Dynamic;
	/**
		return True if this is a valid field 
	**/
	static public var is_valid : Dynamic;
	static public var isscalar : Dynamic;
	/**
		the kind of my field 
	**/
	static public var kind : Dynamic;
	/**
		the meta of my field 
	**/
	static public var meta : Dynamic;
	/**
		the metadata of my field 
	**/
	static public var metadata : Dynamic;
	static public var operand_types : Dynamic;
	public function prune(klass:Dynamic):Dynamic;
	static public var return_type : Dynamic;
}