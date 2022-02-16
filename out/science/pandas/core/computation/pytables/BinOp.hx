/* This file is generated, do not edit! */
package pandas.core.computation.pytables;
@:pythonImport("pandas.core.computation.pytables", "BinOp") extern class BinOp {
	static public var __annotations__ : Dynamic;
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
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(op:Dynamic, lhs:Dynamic, rhs:Dynamic, queryables:Dynamic, encoding:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Print a generic n-ary operator and its operands using infix notation.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
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
	public function evaluate(env:Dynamic, engine:Dynamic, parser:Dynamic, term_type:Dynamic, eval_in_python:Dynamic):Dynamic;
	/**
		create and return the op string for this TermValue
	**/
	public function generate(v:Dynamic):Dynamic;
	public var has_invalid_return_type : Dynamic;
	public var is_datetime : Dynamic;
	/**
		return True if this is a valid column name for generation (e.g. an
		actual column in the table)
	**/
	public var is_in_table : Dynamic;
	public var is_scalar : Dynamic;
	/**
		return True if this is a valid field
	**/
	public var is_valid : Dynamic;
	/**
		the kind of my field
	**/
	public var kind : Dynamic;
	/**
		the meta of my field
	**/
	public var meta : Dynamic;
	/**
		the metadata of my field
	**/
	public var metadata : Dynamic;
	public var operand_types : Dynamic;
	public function prune(klass:Dynamic):Dynamic;
	public var return_type : Dynamic;
}