/* This file is generated, do not edit! */
package numpy.f2py.auxfuncs;
@:pythonImport("numpy.f2py.auxfuncs") extern class Auxfuncs_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _isstring(_var:Dynamic):Dynamic;
	static public function applyrules(rules:Dynamic, d:Dynamic, ?_var:Dynamic):Dynamic;
	static public function containscommon(rout:Dynamic):Dynamic;
	static public function containsmodule(block:Dynamic):Dynamic;
	static public function debugcapi(_var:Dynamic):Dynamic;
	static public var debugoptions : Dynamic;
	static public function dictappend(rd:Dynamic, ar:Dynamic):Dynamic;
	/**
		Write string to stream.
		Returns the number of characters written (which is always equal to
		the length of the string).
	**/
	static public function errmess(text:Dynamic):Dynamic;
	static public var f2py_version : Dynamic;
	static public function flatlist(l:Dynamic):Dynamic;
	static public function gentitle(name:Dynamic):Dynamic;
	static public function get_kind(_var:Dynamic):Dynamic;
	static public function getargs(rout:Dynamic):Dynamic;
	static public function getargs2(rout:Dynamic):Dynamic;
	static public function getcallprotoargument(rout:Dynamic, ?cb_map:Dynamic):Dynamic;
	static public function getcallstatement(rout:Dynamic):Dynamic;
	static public function getfortranname(rout:Dynamic):Dynamic;
	static public function getmultilineblock(rout:Dynamic, blockname:Dynamic, ?comment:Dynamic, ?counter:Dynamic):Dynamic;
	static public function getpymethoddef(rout:Dynamic):Dynamic;
	static public function getrestdoc(rout:Dynamic):Dynamic;
	static public function getusercode(rout:Dynamic):Dynamic;
	static public function getusercode1(rout:Dynamic):Dynamic;
	static public function hasassumedshape(rout:Dynamic):Dynamic;
	static public function hasbody(rout:Dynamic):Dynamic;
	static public function hascallstatement(rout:Dynamic):Dynamic;
	static public function hascommon(rout:Dynamic):Dynamic;
	static public function hasexternals(rout:Dynamic):Dynamic;
	static public function hasinitvalue(_var:Dynamic):Dynamic;
	static public function hasinitvalueasstring(_var:Dynamic):Dynamic;
	static public function hasnote(_var:Dynamic):Dynamic;
	static public function hasresultnote(rout:Dynamic):Dynamic;
	static public function hasvariables(rout:Dynamic):Dynamic;
	static public function isallocatable(_var:Dynamic):Dynamic;
	static public function isarray(_var:Dynamic):Dynamic;
	static public function isarrayofstrings(_var:Dynamic):Dynamic;
	static public function ischaracter(_var:Dynamic):Dynamic;
	static public function iscomplex(_var:Dynamic):Dynamic;
	static public function iscomplexarray(_var:Dynamic):Dynamic;
	static public function iscomplexfunction(rout:Dynamic):Dynamic;
	static public function iscomplexfunction_warn(rout:Dynamic):Dynamic;
	static public function isdouble(_var:Dynamic):Dynamic;
	static public function isdummyroutine(rout:Dynamic):Dynamic;
	static public function isexternal(_var:Dynamic):Dynamic;
	static public function isfalse(_var:Dynamic):Dynamic;
	static public function isfunction(rout:Dynamic):Dynamic;
	static public function isfunction_wrap(rout:Dynamic):Dynamic;
	static public function isint1array(_var:Dynamic):Dynamic;
	static public function isinteger(_var:Dynamic):Dynamic;
	static public function isintent_aligned16(_var:Dynamic):Dynamic;
	static public function isintent_aligned4(_var:Dynamic):Dynamic;
	static public function isintent_aligned8(_var:Dynamic):Dynamic;
	static public function isintent_aux(_var:Dynamic):Dynamic;
	static public function isintent_c(_var:Dynamic):Dynamic;
	static public function isintent_cache(_var:Dynamic):Dynamic;
	static public function isintent_callback(_var:Dynamic):Dynamic;
	static public function isintent_copy(_var:Dynamic):Dynamic;
	static public var isintent_dict : Dynamic;
	static public function isintent_hide(_var:Dynamic):Dynamic;
	static public function isintent_in(_var:Dynamic):Dynamic;
	static public function isintent_inout(_var:Dynamic):Dynamic;
	static public function isintent_inplace(_var:Dynamic):Dynamic;
	static public function isintent_nothide(_var:Dynamic):Dynamic;
	static public function isintent_out(_var:Dynamic):Dynamic;
	static public function isintent_overwrite(_var:Dynamic):Dynamic;
	static public function islogical(_var:Dynamic):Dynamic;
	static public function islogicalfunction(rout:Dynamic):Dynamic;
	static public function islong_complex(_var:Dynamic):Dynamic;
	static public function islong_double(_var:Dynamic):Dynamic;
	static public function islong_doublefunction(rout:Dynamic):Dynamic;
	static public function islong_long(_var:Dynamic):Dynamic;
	static public function islong_longfunction(rout:Dynamic):Dynamic;
	static public function ismodule(rout:Dynamic):Dynamic;
	static public function ismoduleroutine(rout:Dynamic):Dynamic;
	static public function ismutable(_var:Dynamic):Dynamic;
	static public function isoptional(_var:Dynamic):Dynamic;
	static public function isprivate(_var:Dynamic):Dynamic;
	static public function isreal(_var:Dynamic):Dynamic;
	static public function isrequired(_var:Dynamic):Dynamic;
	static public function isroutine(rout:Dynamic):Dynamic;
	static public function isscalar(_var:Dynamic):Dynamic;
	static public function issigned_array(_var:Dynamic):Dynamic;
	static public function issigned_chararray(_var:Dynamic):Dynamic;
	static public function issigned_long_longarray(_var:Dynamic):Dynamic;
	static public function issigned_shortarray(_var:Dynamic):Dynamic;
	static public function isstring(_var:Dynamic):Dynamic;
	static public function isstringarray(_var:Dynamic):Dynamic;
	static public function isstringfunction(rout:Dynamic):Dynamic;
	static public function issubroutine(rout:Dynamic):Dynamic;
	static public function issubroutine_wrap(rout:Dynamic):Dynamic;
	static public function isthreadsafe(rout:Dynamic):Dynamic;
	static public function istrue(_var:Dynamic):Dynamic;
	static public function isunsigned(_var:Dynamic):Dynamic;
	static public function isunsigned_char(_var:Dynamic):Dynamic;
	static public function isunsigned_chararray(_var:Dynamic):Dynamic;
	static public function isunsigned_long_long(_var:Dynamic):Dynamic;
	static public function isunsigned_long_longarray(_var:Dynamic):Dynamic;
	static public function isunsigned_short(_var:Dynamic):Dynamic;
	static public function isunsigned_shortarray(_var:Dynamic):Dynamic;
	static public function isunsignedarray(_var:Dynamic):Dynamic;
	static public function l_and(?f:python.VarArgs<Dynamic>):Dynamic;
	static public function l_not(f:Dynamic):Dynamic;
	static public function l_or(?f:python.VarArgs<Dynamic>):Dynamic;
	static public var options : Dynamic;
	static public function outmess(t:Dynamic):Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function replace(str:Dynamic, d:Dynamic, ?defaultsep:Dynamic):Dynamic;
	static public function requiresf90wrapper(rout:Dynamic):Dynamic;
	/**
		Pretty-print a Python object to a stream [default is sys.stdout].
	**/
	static public function show(object:Dynamic, ?stream:Dynamic, ?indent:Dynamic, ?width:Dynamic, ?depth:Dynamic, ?compact:Dynamic, ?sort_dicts:Dynamic):Dynamic;
	static public function stripcomma(s:Dynamic):Dynamic;
	static public var wrapfuncs : Dynamic;
}