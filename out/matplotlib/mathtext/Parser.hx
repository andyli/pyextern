/* This file is generated, do not edit! */
package matplotlib.mathtext;
@:pythonImport("matplotlib.mathtext", "Parser") extern class Parser {
	public function accent(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function auto_delim(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function binom(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function c_over_c(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function customspace(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function end_group(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function font(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function frac(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	@:native("function")
	public function _function(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function genfrac(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_state(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function group(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_dropsub(nucleus:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_overunder(nucleus:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_slanted(nucleus:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function main(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function math(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function math_string(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function non_math(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function operatorname(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function overline(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function parse(s:Dynamic, fonts_object:Dynamic, fontsize:Dynamic, dpi:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function pop_state(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function push_state(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function required_group(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function simple_group(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function space(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function sqrt(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function stackrel(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function start_group(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function subsuper(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function symbol(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function unknown_symbol(s:Dynamic, loc:Dynamic, toks:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}