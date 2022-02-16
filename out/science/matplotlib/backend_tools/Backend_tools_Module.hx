/* This file is generated, do not edit! */
package matplotlib.backend_tools;
@:pythonImport("matplotlib.backend_tools") extern class Backend_tools_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _views_positions : Dynamic;
	/**
		Add multiple tools to the container.
		
		Parameters
		----------
		container : Container
		    `backend_bases.ToolContainerBase` object that will get the tools added.
		tools : list, optional
		    List in the form ``[[group1, [tool1, tool2 ...]], [group2, [...]]]``
		    where the tools ``[tool1, tool2, ...]`` will display in group1.
		    See `add_tool` for details.
	**/
	static public function add_tools_to_container(container:Dynamic, ?tools:Dynamic):Dynamic;
	/**
		Add multiple tools to a `.ToolManager`.
		
		Parameters
		----------
		toolmanager : `.backend_managers.ToolManager`
		    Manager to which the tools are added.
		tools : {str: class_like}, optional
		    The tools to add in a {name: tool} dict, see `add_tool` for more
		    info.
	**/
	static public function add_tools_to_manager(toolmanager:Dynamic, ?tools:Dynamic):Dynamic;
	static public var default_toolbar_tools : Dynamic;
	static public var default_tools : Dynamic;
}