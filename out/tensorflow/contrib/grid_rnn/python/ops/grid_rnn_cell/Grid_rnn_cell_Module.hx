/* This file is generated, do not edit! */
package tensorflow.contrib.grid_rnn.python.ops.grid_rnn_cell;
@:pythonImport("tensorflow.contrib.grid_rnn.python.ops.grid_rnn_cell") extern class Grid_rnn_cell_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _parse_rnn_config(num_dims:Dynamic, ls_input_dims:Dynamic, ls_output_dims:Dynamic, ls_priority_dims:Dynamic, ls_non_recurrent_dims:Dynamic, non_recurrent_fn:Dynamic, tied:Dynamic, num_units:Dynamic):Dynamic;
	/**
		Propagates through all the cells in dim_indices dimensions.
	**/
	static public function _propagate(dim_indices:Dynamic, conf:Dynamic, cell:Dynamic, c_prev:Dynamic, m_prev:Dynamic, new_output:Dynamic, new_state:Dynamic, first_call:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}