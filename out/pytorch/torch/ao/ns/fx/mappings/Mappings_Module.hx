/* This file is generated, do not edit! */
package torch.ao.ns.fx.mappings;
@:pythonImport("torch.ao.ns.fx.mappings") extern class Mappings_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function NSNodeTargetType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function add_op_to_sets_of_related_ops(base_name_to_sets_of_related_ops:Dynamic, op:Dynamic, related_op:Dynamic):Dynamic;
	static public function get_base_name_for_op(base_name_to_sets_of_related_ops:Dynamic, op:Dynamic):Dynamic;
	static public function get_base_name_to_sets_of_related_ops():Dynamic;
	static public function get_node_type_to_io_type_map():Dynamic;
	static public function get_unmatchable_types_map():Dynamic;
}