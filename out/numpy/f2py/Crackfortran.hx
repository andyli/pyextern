/* This file is generated, do not edit! */
package numpy.f2py;
@:pythonImport("numpy.f2py.crackfortran") extern class Crackfortran {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _calc_depend_dict(vars:Dynamic):Dynamic;
	static public function _ensure_exprdict(r:Dynamic):Dynamic;
	static public function _eval_length(length:Dynamic, params:Dynamic):Dynamic;
	static public function _eval_scalar(value:Dynamic, params:Dynamic):Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function _free_f90_start(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	static public function _get_depend_dict(name:Dynamic, vars:Dynamic, deps:Dynamic):Dynamic;
	/**
		Scan through string looking for a match, and return a corresponding match object instance.
		
		Return None if no position in the string matches.
	**/
	static public function _has_f90_header(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	/**
		Scan through string looking for a match, and return a corresponding match object instance.
		
		Return None if no position in the string matches.
	**/
	static public function _has_f_header(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	/**
		Scan through string looking for a match, and return a corresponding match object instance.
		
		Return None if no position in the string matches.
	**/
	static public function _has_fix_header(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	static public var _intentcallbackpattern : Dynamic;
	static public function _is_intent_callback(vdecl:Dynamic):Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function _is_kind_number(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	static public function _kind_func(string:Dynamic):Dynamic;
	static public function _resolvenameargspattern(line:Dynamic):Dynamic;
	static public function _selected_int_kind_func(r:Dynamic):Dynamic;
	static public function _selected_real_kind_func(p:Dynamic, ?r:Dynamic, ?radix:Dynamic):Dynamic;
	static public function _simplifyargs(argsline:Dynamic):Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function _varname_match(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function analyzeargs(block:Dynamic):Dynamic;
	static public var analyzeargs_re_1 : Dynamic;
	static public function analyzebody(block:Dynamic, args:Dynamic, ?tab:Dynamic):Dynamic;
	static public function analyzecommon(block:Dynamic):Dynamic;
	static public function analyzeline(m:Dynamic, _case:Dynamic, line:Dynamic):Dynamic;
	static public function analyzevars(block:Dynamic):Dynamic;
	static public function appenddecl(decl:Dynamic, decl2:Dynamic, ?force:Dynamic):Dynamic;
	static public function appendmultiline(group:Dynamic, context_name:Dynamic, ml:Dynamic):Dynamic;
	static public var badnames : Dynamic;
	static public var beforethisafter : Dynamic;
	static public var beginpattern : Dynamic;
	static public var beginpattern77 : Dynamic;
	static public var beginpattern90 : Dynamic;
	static public function buildimplicitrules(block:Dynamic):Dynamic;
	static public var callfunpattern : Dynamic;
	static public var callnameargspattern : Dynamic;
	static public var callpattern : Dynamic;
	static public var charselector : Dynamic;
	static public function common2fortran(common:Dynamic, ?tab:Dynamic):Dynamic;
	static public var commonpattern : Dynamic;
	static public var containspattern : Dynamic;
	static public function crack2fortran(block:Dynamic):Dynamic;
	static public function crack2fortrangen(block:Dynamic, ?tab:Dynamic, ?as_interface:Dynamic):Dynamic;
	static public function crackfortran(files:Dynamic):Dynamic;
	/**
		reset=-1  --- initialize
		reset=0   --- crack the line
		reset=1   --- final check if mismatch of blocks occured
		
		Cracked data is saved in grouplist[0].
	**/
	static public function crackline(line:Dynamic, ?reset:Dynamic):Dynamic;
	static public var crackline_re_1 : Dynamic;
	static public function cracktypespec(typespec:Dynamic, selector:Dynamic):Dynamic;
	static public function cracktypespec0(typespec:Dynamic, ll:Dynamic):Dynamic;
	static public var currentfilename : Dynamic;
	static public var datapattern : Dynamic;
	static public var debug : Dynamic;
	static public var defaultimplicitrules : Dynamic;
	static public function determineexprtype(expr:Dynamic, vars:Dynamic, ?rules:Dynamic):Dynamic;
	static public var determineexprtype_re_1 : Dynamic;
	static public var determineexprtype_re_2 : Dynamic;
	static public var determineexprtype_re_3 : Dynamic;
	static public var determineexprtype_re_4 : Dynamic;
	static public var determineexprtype_re_5 : Dynamic;
	static public var dimensionpattern : Dynamic;
	static public var division : Dynamic;
	static public var dolowercase : Dynamic;
	static public var endifpattern : Dynamic;
	static public var endifs : Dynamic;
	static public var endpattern : Dynamic;
	static public var entrypattern : Dynamic;
	/**
		Write string to stream.
		Returns the number of characters written (which is always equal to
		the length of the string).
	**/
	static public function errmess(text:Dynamic):Dynamic;
	static public var expectbegin : Dynamic;
	static public function expr2name(a:Dynamic, block:Dynamic, ?args:Dynamic):Dynamic;
	static public var externalpattern : Dynamic;
	static public var f2py_version : Dynamic;
	static public var f2pyenhancementspattern : Dynamic;
	static public var f77modulename : Dynamic;
	static public var f90modulevars : Dynamic;
	static public var filepositiontext : Dynamic;
	static public var formatpattern : Dynamic;
	static public var fortrantypes : Dynamic;
	static public var functionpattern : Dynamic;
	static public function get_parameters(vars:Dynamic, ?global_params:Dynamic):Dynamic;
	/**
		    
	**/
	static public function get_sorted_names(vars:Dynamic):Dynamic;
	static public function get_usedict(block:Dynamic):Dynamic;
	static public function get_useparameters(block:Dynamic, ?param_map:Dynamic):Dynamic;
	static public function getarrlen(dl:Dynamic, args:Dynamic, ?star:Dynamic):Dynamic;
	static public function getblockname(block:Dynamic, ?unknown:Dynamic):Dynamic;
	static public function getextension(name:Dynamic):Dynamic;
	static public function getlincoef(e:Dynamic, xset:Dynamic):Dynamic;
	static public var getlincoef_re_1 : Dynamic;
	static public var gotnextfile : Dynamic;
	static public var groupbegins77 : Dynamic;
	static public var groupbegins90 : Dynamic;
	static public var groupcache : Dynamic;
	static public var groupcounter : Dynamic;
	static public var groupends : Dynamic;
	static public var grouplist : Dynamic;
	static public var groupname : Dynamic;
	static public function hascommon(rout:Dynamic):Dynamic;
	static public var ignorecontains : Dynamic;
	static public var implicitpattern : Dynamic;
	static public var include_paths : Dynamic;
	static public var intentpattern : Dynamic;
	static public var intrisicpattern : Dynamic;
	static public var invbadnames : Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function is_f_file(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	/**
		Check if file is in free format Fortran.
	**/
	static public function is_free_format(file:Dynamic):Dynamic;
	static public function iscomplex(_var:Dynamic):Dynamic;
	static public function isdouble(_var:Dynamic):Dynamic;
	static public function isexternal(_var:Dynamic):Dynamic;
	static public function isinteger(_var:Dynamic):Dynamic;
	static public function isintent_aux(_var:Dynamic):Dynamic;
	static public function isintent_c(_var:Dynamic):Dynamic;
	static public function isintent_callback(_var:Dynamic):Dynamic;
	static public function isintent_in(_var:Dynamic):Dynamic;
	static public function isintent_inout(_var:Dynamic):Dynamic;
	static public function isintent_inplace(_var:Dynamic):Dynamic;
	static public function islogical(_var:Dynamic):Dynamic;
	static public function isoptional(_var:Dynamic):Dynamic;
	static public function isscalar(_var:Dynamic):Dynamic;
	static public function isstring(_var:Dynamic):Dynamic;
	static public function isstringarray(_var:Dynamic):Dynamic;
	static public var kindselector : Dynamic;
	static public function l_or(f:Dynamic):Dynamic;
	static public var lenarraypattern : Dynamic;
	static public var lenkindpattern : Dynamic;
	static public function markinnerspaces(line:Dynamic):Dynamic;
	static public function markoutercomma(line:Dynamic, ?comma:Dynamic):Dynamic;
	static public function markouterparen(line:Dynamic):Dynamic;
	static public var multilinepattern : Dynamic;
	static public function myeval(e:Dynamic, ?g:Dynamic, ?l:Dynamic):Dynamic;
	static public var n : Dynamic;
	static public var nameargspattern : Dynamic;
	static public var namepattern : Dynamic;
	static public var neededmodule : Dynamic;
	static public var onlyfuncs : Dynamic;
	static public var optionalpattern : Dynamic;
	static public function outmess(line:Dynamic, ?flag:Dynamic):Dynamic;
	static public var parameterpattern : Dynamic;
	/**
		TODO:
		      function return values
		      determine expression types if in argument list
	**/
	static public function postcrack(block:Dynamic, ?args:Dynamic, ?tab:Dynamic):Dynamic;
	static public function postcrack2(block:Dynamic, ?tab:Dynamic, ?param_map:Dynamic):Dynamic;
	static public var previous_context : Dynamic;
	static public var print_function : Dynamic;
	static public var privatepattern : Dynamic;
	static public var publicpattern : Dynamic;
	static public var pyffilename : Dynamic;
	static public var quiet : Dynamic;
	/**
		Read fortran codes from files and
		 1) Get rid of comments, line continuations, and empty lines; lower cases.
		 2) Call dowithline(line) on every line.
		 3) Recursively call itself when statement "include '<filename>'" is met.
	**/
	static public function readfortrancode(ffile:Dynamic, ?dowithline:Dynamic, ?istop:Dynamic):Dynamic;
	static public var real16pattern : Dynamic;
	static public var real8pattern : Dynamic;
	static public function removespaces(expr:Dynamic):Dynamic;
	static public var requiredpattern : Dynamic;
	static public function reset_global_f2py_vars():Dynamic;
	static public function rmbadname(names:Dynamic):Dynamic;
	static public function rmbadname1(name:Dynamic):Dynamic;
	static public var selectpattern : Dynamic;
	static public function setattrspec(decl:Dynamic, attr:Dynamic, ?force:Dynamic):Dynamic;
	static public function setcharselector(decl:Dynamic, sel:Dynamic, ?force:Dynamic):Dynamic;
	static public function setkindselector(decl:Dynamic, sel:Dynamic, ?force:Dynamic):Dynamic;
	static public function setmesstext(block:Dynamic):Dynamic;
	/**
		Pretty-print a Python object to a stream [default is sys.stdout].
	**/
	static public function show(object:Dynamic, ?stream:Dynamic, ?indent:Dynamic, ?width:Dynamic, ?depth:Dynamic, ?compact:Dynamic):Dynamic;
	static public var skipblocksuntil : Dynamic;
	static public var skipemptyends : Dynamic;
	static public var skipfuncs : Dynamic;
	static public var skipfunctions : Dynamic;
	static public function sortvarnames(vars:Dynamic):Dynamic;
	static public var sourcecodeform : Dynamic;
	static public var strictf77 : Dynamic;
	static public var subroutinepattern : Dynamic;
	static public var tabchar : Dynamic;
	static public function true_intent_list(_var:Dynamic):Dynamic;
	static public var typespattern : Dynamic;
	static public var typespattern4implicit : Dynamic;
	static public function undo_rmbadname(names:Dynamic):Dynamic;
	static public function undo_rmbadname1(name:Dynamic):Dynamic;
	static public function unmarkouterparen(line:Dynamic):Dynamic;
	static public function updatevars(typespec:Dynamic, selector:Dynamic, attrspec:Dynamic, entitydecl:Dynamic):Dynamic;
	static public function use2fortran(use:Dynamic, ?tab:Dynamic):Dynamic;
	static public var usepattern : Dynamic;
	static public var usermodules : Dynamic;
	/**
		TODO:
		public sub
		...
	**/
	static public function vars2fortran(block:Dynamic, vars:Dynamic, args:Dynamic, ?tab:Dynamic, ?as_interface:Dynamic):Dynamic;
	static public var verbose : Dynamic;
	static public var word_pattern : Dynamic;
}