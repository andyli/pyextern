/* This file is generated, do not edit! */
package docutils.utils.math.latex2mathml;
@:pythonImport("docutils.utils.math.latex2mathml") extern class Latex2mathml_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var accents : Dynamic;
	static public function align_attributes(rows:Dynamic):Dynamic;
	static public var anomalous_chars : Dynamic;
	static public function begin_environment(node:Dynamic, string:Dynamic):Dynamic;
	static public var bigdelimiters : Dynamic;
	static public var delimiter_sizes : Dynamic;
	static public function end_environment(node:Dynamic, string:Dynamic):Dynamic;
	static public var fractions : Dynamic;
	static public var functions : Dynamic;
	static public var greek_capitals : Dynamic;
	/**
		Process LaTeX command `name` followed by `string`.
		
		Append result to `node`.
		If needed, parse `string` for command argument.
		Return new current node and remainder of `string`:
		
		>>> handle_cmd('hbar', math(), r' rac')
		(math(mi('ℏ')), ' \frac')
		>>> handle_cmd('hspace', math(), r'{1ex} (x)')
		(math(mspace(width='1ex')), ' (x)')
	**/
	static public function handle_cmd(name:Dynamic, node:Dynamic, string:Dynamic):Dynamic;
	/**
		Append script or limit element to `node`.
	**/
	static public function handle_script_or_limit(node:Dynamic, c:Dynamic, ?limits:Dynamic):Dynamic;
	static public var layout_styles : Dynamic;
	static public var letters : Dynamic;
	static public var math_alphabets : Dynamic;
	static public var mathbb : Dynamic;
	static public var matrices : Dynamic;
	static public var movablelimits : Dynamic;
	static public var operators : Dynamic;
	static public var over : Dynamic;
	/**
		Append MathML conversion of `string` to `node` and return it.
		
		>>> parse_latex_math(math(), r'lpha')
		math(mi('α'))
		>>> parse_latex_math(mrow(), r'x_{n}')
		mrow(msub(mi('x'), mi('n')))
	**/
	static public function parse_latex_math(node:Dynamic, string:Dynamic):Dynamic;
	static public var small_operators : Dynamic;
	static public var spaces : Dynamic;
	static public var stretchables : Dynamic;
	/**
		Return string with MathML code corresponding to `tex_math`.
		
		Set `inline` to False for displayed math.
	**/
	static public function tex2mathml(tex_math:Dynamic, ?_inline:Dynamic):Dynamic;
	/**
		Return leading TeX command name and remainder of `string`.
		
		>>> tex_cmdname('mymacro2') # up to first non-letter
		('mymacro', '2')
		>>> tex_cmdname('name 2') # strip trailing whitespace
		('name', '2')
		>>> tex_cmdname('_2') # single non-letter character
		('_', '2')
	**/
	static public function tex_cmdname(string:Dynamic):Dynamic;
	static public function tex_equation_columns(rows:Dynamic):Dynamic;
	/**
		Return first TeX group or token and remainder of `string`.
		
		>>> tex_group('{first group} returned without brackets')
		('first group', ' returned without brackets')
	**/
	static public function tex_group(string:Dynamic):Dynamic;
	/**
		Return leading number literal and remainder of `string`.
		
		>>> tex_number('123.4')
		('123.4', '')
	**/
	static public function tex_number(string:Dynamic):Dynamic;
	/**
		Return optional argument and remainder.
		
		>>> tex_optarg('[optional argument] returned without brackets')
		('optional argument', ' returned without brackets')
		>>> tex_optarg('{empty string, if there is no optional arg}')
		('', '{empty string, if there is no optional arg}')
	**/
	static public function tex_optarg(string:Dynamic):Dynamic;
	/**
		Return first simple TeX token and remainder of `string`.
		
		>>> tex_token('\command{without argument}')
		('\command', '{without argument}')
		>>> tex_token('or first character')
		('o', 'r first character')
	**/
	static public function tex_token(string:Dynamic):Dynamic;
	/**
		Return first TeX group or token and remainder of `string`.
		
		>>> tex_token_or_group('\command{without argument}')
		('\command', '{without argument}')
		>>> tex_token_or_group('first character')
		('f', 'irst character')
		>>> tex_token_or_group(' also whitespace')
		(' ', 'also whitespace')
		>>> tex_token_or_group('{first group} keep rest')
		('first group', ' keep rest')
	**/
	static public function tex_token_or_group(string:Dynamic):Dynamic;
	static public var thick_operators : Dynamic;
	/**
		Return string (LaTeX math) `code` with environments stripped out.
	**/
	static public function toplevel_code(code:Dynamic):Dynamic;
	static public var under : Dynamic;
}