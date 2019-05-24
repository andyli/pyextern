/* This file is generated, do not edit! */
package matplotlib.table;
@:pythonImport("matplotlib.table") extern class Table_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Decorator for Artist.draw method. Provides routines
		that run before and after the draw call. The before and after functions
		are useful for changing artist-dependent renderer attributes or making
		other setup function calls, such as starting and flushing a mixed-mode
		renderer.
	**/
	static public function allow_rasterization(draw:Dynamic):Dynamic;
	/**
		Add a table to an `~.axes.Axes`.
		
		At least one of *cellText* or *cellColours* must be specified. These
		parameters must be 2D lists, in which the outer lists define the rows and
		the inner list define the column values per row. Each row must have the
		same number of elements.
		
		The table can optionally have row and column headers, which are configured
		using *rowLabels*, *rowColours*, *rowLoc* and *colLabels*, *colColours*,
		*colLoc* respectively.
		
		For finer grained control over tables, use the `.Table` class and add it to
		the axes with `.Axes.add_table`.
		
		Parameters
		----------
		cellText : 2D list of str, optional
		    The texts to place into the table cells.
		
		    *Note*: Line breaks in the strings are currently not accounted for and
		    will result in the text exceeding the cell boundaries.
		
		cellColours : 2D list of matplotlib color specs, optional
		    The background colors of the cells.
		
		cellLoc : {'left', 'center', 'right'}, default: 'right'
		    The alignment of the text within the cells.
		
		colWidths : list of float, optional
		    The column widths in units of the axes. If not given, all columns will
		    have a width of *1 / ncols*.
		
		rowLabels : list of str, optional
		    The text of the row header cells.
		
		rowColours : list of matplotlib color specs, optional
		    The colors of the row header cells.
		
		rowLoc : {'left', 'center', 'right'}, optional, default: 'left'
		    The text alignment of the row header cells.
		
		colLabels : list of str, optional
		    The text of the column header cells.
		
		colColours : list of matplotlib color specs, optional
		    The colors of the column header cells.
		
		rowLoc : {'left', 'center', 'right'}, optional, default: 'left'
		    The text alignment of the column header cells.
		
		loc : str, optional
		    The position of the cell with respect to *ax*. This must be one of
		    the `~.Table.codes`.
		
		bbox : `.Bbox`, optional
		    A bounding box to draw the table into. If this is not *None*, this
		    overrides *loc*.
		
		edges : substring of 'BRTL' or {'open', 'closed', 'horizontal', 'vertical'}
		    The cell edges to be drawn with a line. See also
		    `~.CustomCell.visible_edges`.
		
		Other Parameters
		----------------
		**kwargs
		    `.Table` properties.
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  animated: bool
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  contains: callable
		  figure: `.Figure`
		  fontsize: float
		  gid: str
		  in_layout: bool
		  label: object
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  transform: `.Transform`
		  url: str
		  visible: bool
		  zorder: float
		
		Returns
		-------
		table : `~matplotlib.table.Table`
		    The created table.
	**/
	static public function table(ax:Dynamic, ?cellText:Dynamic, ?cellColours:Dynamic, ?cellLoc:Dynamic, ?colWidths:Dynamic, ?rowLabels:Dynamic, ?rowColours:Dynamic, ?rowLoc:Dynamic, ?colLabels:Dynamic, ?colColours:Dynamic, ?colLoc:Dynamic, ?loc:Dynamic, ?bbox:Dynamic, ?edges:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}