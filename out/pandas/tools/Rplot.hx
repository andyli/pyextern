/* This file is generated, do not edit! */
package pandas.tools;
@:pythonImport("pandas.tools.rplot") extern class Rplot {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		return my values or the object if we are say an ndarray 
	**/
	static public function _values_from_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Adjust the subtplots on matplotlib figure with the
		fact that we have a trellis plot in mind.
		
		Parameters:
		-----------
		fig: matplotlib figure
		axes: a two dimensional grid of matplotlib axes
		trellis: TrellisGrid object
		layers: last grid of layers in the plot
	**/
	static public function adjust_subplots(fig:Dynamic, axes:Dynamic, trellis:Dynamic, layers:Dynamic):Dynamic;
	/**
		Deep copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function deepcopy(x:Dynamic, ?memo:Dynamic, ?_nil:Dynamic):Dynamic;
	/**
		Create the default aesthetics dictionary.
		
		Parameters:
		-----------
		x: string, DataFrame column name
		y: string, DataFrame column name
		
		Returns:
		--------
		a dictionary with aesthetics bindings
	**/
	static public function default_aes(?x:Dynamic, ?y:Dynamic):Dynamic;
	/**
		Take two dictionaries, return dictionary union.
		
		Parameters:
		-----------
		dict1: Python dictionary
		dict2: Python dictionary
		
		Returns:
		--------
		A union of the dictionaries. It assumes that values
		with the same keys are identical.
	**/
	static public function dictionary_union(dict1:Dynamic, dict2:Dynamic):Dynamic;
	/**
		Create an empty aesthetics dictionary.
		
		Parameters:
		-----------
		x: string, DataFrame column name
		y: string, DataFrame column name
		size: function, binding for size attribute of Geoms
		colour: function, binding for colour attribute of Geoms
		shape: function, binding for shape attribute of Geoms
		alpha: function, binding for alpha attribute of Geoms
		
		Returns:
		--------
		a dictionary with aesthetics bindings
	**/
	static public function make_aes(?x:Dynamic, ?y:Dynamic, ?size:Dynamic, ?colour:Dynamic, ?shape:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Merges the aesthetics dictionaries for the two layers.
		Look up sequence_layers function. Which layer is first and which
		one is second is important.
		
		Parameters:
		-----------
		layer1: Layer object
		layer2: Layer object
	**/
	static public function merge_aes(layer1:Dynamic, layer2:Dynamic):Dynamic;
	/**
		Go through the list of layer girds and perform the same thing as sequence_layers.
		
		Parameters:
		-----------
		layer_grids: a list of two dimensional layer grids
	**/
	static public function sequence_grids(layer_grids:Dynamic):Dynamic;
	/**
		Go through the list of layers and fill in the missing bits of information.
		The basic rules are this:
		* If the current layer has data set to None, take the data from previous layer.
		* For each aesthetic mapping, if that mapping is set to None, take it from previous layer.
		
		Parameters:
		-----------
		layers: a list of Layer objects
	**/
	static public function sequence_layers(layers:Dynamic):Dynamic;
	/**
		Take a two dimensional grid, add subplots to a figure for each cell and do layer work.
		
		Parameters:
		-----------
		grid: a two dimensional grid of layers
		fig: matplotlib figure to draw on
		
		Returns:
		--------
		axes: a two dimensional list of matplotlib axes
	**/
	static public function work_grid(grid:Dynamic, fig:Dynamic):Dynamic;
}