/* This file is generated, do not edit! */
package numpy.f2py.symbolic;
@:pythonImport("numpy.f2py.symbolic") extern class Symbolic_Module {
	static public var COUNTER : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _counter():Dynamic;
	static public function _get_parenthesis_kind(s:Dynamic):Dynamic;
	static public function _pairs_add(d:Dynamic, k:Dynamic, v:Dynamic):Dynamic;
	/**
		Return object as APPLY expression (function call, constructor, etc.)
		    
	**/
	static public function as_apply(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return object as ARRAY expression (array constant).
		    
	**/
	static public function as_array(obj:Dynamic):Dynamic;
	/**
		Return object as COMPLEX expression (complex literal constant).
		    
	**/
	static public function as_complex(real:Dynamic, ?imag:Dynamic):Dynamic;
	/**
		Return object as dereferencing expression.
		    
	**/
	static public function as_deref(expr:Dynamic):Dynamic;
	static public function as_eq(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Convert non-Expr objects to Expr objects.
		    
	**/
	static public function as_expr(obj:Dynamic):Dynamic;
	/**
		Return expression as FACTORS expression.
		    
	**/
	static public function as_factors(obj:Dynamic):Dynamic;
	static public function as_ge(left:Dynamic, right:Dynamic):Dynamic;
	static public function as_gt(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Return object as INTEGER constant.
		    
	**/
	static public function as_integer(obj:Dynamic, ?kind:Dynamic):Dynamic;
	static public function as_le(left:Dynamic, right:Dynamic):Dynamic;
	static public function as_lt(left:Dynamic, right:Dynamic):Dynamic;
	static public function as_ne(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Return object as INTEGER or REAL constant.
		    
	**/
	static public function as_number(obj:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		Return expression as numer-denom pair.
		    
	**/
	static public function as_numer_denom(obj:Dynamic):Dynamic;
	/**
		Return object as REAL constant.
		    
	**/
	static public function as_real(obj:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		Return object as referencing expression.
		    
	**/
	static public function as_ref(expr:Dynamic):Dynamic;
	/**
		Return object as STRING expression (string literal constant).
		    
	**/
	static public function as_string(obj:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		Return object as SYMBOL expression (variable or unparsed expression).
		    
	**/
	static public function as_symbol(obj:Dynamic):Dynamic;
	/**
		Return expression as term-coefficient pair.
		    
	**/
	static public function as_term_coeff(obj:Dynamic):Dynamic;
	/**
		Return expression as TERMS expression.
		    
	**/
	static public function as_terms(obj:Dynamic):Dynamic;
	/**
		Return object as TERNARY expression (cond?expr1:expr2).
		    
	**/
	static public function as_ternary(cond:Dynamic, expr1:Dynamic, expr2:Dynamic):Dynamic;
	/**
		Replace quoted substrings of input string.
		
		Return a new string and a mapping of replacements.
	**/
	static public function eliminate_quotes(s:Dynamic):Dynamic;
	static public function ewarn(message:Dynamic):Dynamic;
	/**
		Create an expression from a string.
		
		This is a "lazy" parser, that is, only arithmetic operations are
		resolved, non-arithmetic operations are treated as symbols.
	**/
	static public function fromstring(s:Dynamic, ?language:Dynamic):Dynamic;
	/**
		greatest common divisor of x and y
	**/
	static public function gcd(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Inverse of eliminate_quotes.
		    
	**/
	static public function insert_quotes(s:Dynamic, d:Dynamic):Dynamic;
	static public var integer_types : Dynamic;
	/**
		Normalize Expr and apply basic evaluation methods.
		    
	**/
	static public function normalize(obj:Dynamic):Dynamic;
	static public var number_types : Dynamic;
	/**
		Replace substrings of input that are enclosed in parenthesis.
		
		Return a new string and a mapping of replacements.
	**/
	static public function replace_parenthesis(s:Dynamic):Dynamic;
	/**
		Inverse of replace_parenthesis.
		    
	**/
	static public function unreplace_parenthesis(s:Dynamic, d:Dynamic):Dynamic;
}