/* This file is generated, do not edit! */
package matplotlib._layoutbox;
@:pythonImport("matplotlib._layoutbox") extern class _Layoutbox_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _layoutboxobjnum : Dynamic;
	static public var _log : Dynamic;
	static public function align(boxes:Dynamic, attr:Dynamic, ?strength:Dynamic):Dynamic;
	static public function get_renderer(fig:Dynamic):Dynamic;
	/**
		Stack LayoutBox instances from left to right.
	**/
	static public function hpack(boxes:Dynamic, ?padding:Dynamic, ?strength:Dynamic):Dynamic;
	/**
		Stack LayoutBox instances from left to right.
		`padding` is in figure-relative units.
	**/
	static public function hstack(boxes:Dynamic, ?padding:Dynamic, ?strength:Dynamic):Dynamic;
	static public function hstackeq(boxes:Dynamic, ?padding:Dynamic, ?width_ratios:Dynamic):Dynamic;
	static public function match_bottom_margins(boxes:Dynamic, ?levels:Dynamic):Dynamic;
	static public function match_height_margins(boxes:Dynamic, ?levels:Dynamic):Dynamic;
	/**
		Stack LayoutBox instances from top to bottom
	**/
	static public function match_heights(boxes:Dynamic, ?height_ratios:Dynamic, ?strength:Dynamic):Dynamic;
	static public function match_left_margins(boxes:Dynamic, ?levels:Dynamic):Dynamic;
	static public function match_margins(boxes:Dynamic, ?levels:Dynamic):Dynamic;
	static public function match_right_margins(boxes:Dynamic, ?levels:Dynamic):Dynamic;
	static public function match_top_margins(boxes:Dynamic, ?levels:Dynamic):Dynamic;
	static public function match_width_margins(boxes:Dynamic, ?levels:Dynamic):Dynamic;
	/**
		Stack LayoutBox instances from top to bottom
	**/
	static public function match_widths(boxes:Dynamic, ?width_ratios:Dynamic, ?strength:Dynamic):Dynamic;
	static public function nonechildren(lb:Dynamic):Dynamic;
	/**
		Make all elements in this tree none...  This signals not to do any more
		layout.
	**/
	static public function nonetree(lb:Dynamic):Dynamic;
	/**
		Simple plotting to show where boxes are
	**/
	static public function plot_children(fig:Dynamic, box:Dynamic, ?level:Dynamic, ?printit:Dynamic):Dynamic;
	/**
		Print the children of the layoutbox
	**/
	static public function print_children(lb:Dynamic):Dynamic;
	/**
		Print the tree of layoutboxes
	**/
	static public function print_tree(lb:Dynamic):Dynamic;
	/**
		Generate a short sequential id for layoutbox objects...
	**/
	static public function seq_id():Dynamic;
	/**
		Stack LayoutBox instances from top to bottom
	**/
	static public function vpack(boxes:Dynamic, ?padding:Dynamic, ?strength:Dynamic):Dynamic;
	/**
		Stack LayoutBox instances from top to bottom
	**/
	static public function vstack(boxes:Dynamic, ?padding:Dynamic, ?strength:Dynamic):Dynamic;
	static public function vstackeq(boxes:Dynamic, ?padding:Dynamic, ?height_ratios:Dynamic):Dynamic;
}