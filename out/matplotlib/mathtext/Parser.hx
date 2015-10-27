/* This file is generated, do not edit! */
package matplotlib.mathtext;
@:native("matplotlib.mathtext.Parser") extern class Parser {
	public function accent(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function auto_delim(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function binom(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function c_over_c(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function customspace(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function end_group(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function font(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function frac(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	@:native("function")
	public function _function(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function genfrac(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function get_state():Void;
	public function group(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function is_dropsub(nucleus:Dynamic):Void;
	public function is_overunder(nucleus:Dynamic):Void;
	public function is_slanted(nucleus:Dynamic):Void;
	public function main(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function math(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function math_string(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function non_math(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function operatorname(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function overline(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function parse(s:Dynamic, fonts_object:Dynamic, fontsize:Dynamic, dpi:Dynamic):Void;
	public function pop_state():Void;
	public function push_state():Void;
	public function required_group(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function simple_group(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function space(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function sqrt(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function stackrel(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function start_group(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function subsuper(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function symbol(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
	public function unknown_symbol(s:Dynamic, loc:Dynamic, toks:Dynamic):Void;
}