/* This file is generated, do not edit! */
package matplotlib.sankey;
@:pythonImport("matplotlib.sankey", "Sankey") extern class Sankey {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Create a new Sankey instance.
		
		Optional keyword arguments:
		
		  ===============   ===================================================
		  Field             Description
		  ===============   ===================================================
		  *ax*              axes onto which the data should be plotted
		                    If *ax* isn't provided, new axes will be created.
		  *scale*           scaling factor for the flows
		                    *scale* sizes the width of the paths in order to
		                    maintain proper layout.  The same scale is applied
		                    to all subdiagrams.  The value should be chosen
		                    such that the product of the scale and the sum of
		                    the inputs is approximately 1.0 (and the product of
		                    the scale and the sum of the outputs is
		                    approximately -1.0).
		  *unit*            string representing the physical unit associated
		                    with the flow quantities
		                    If *unit* is None, then none of the quantities are
		                    labeled.
		  *format*          a Python number formatting string to be used in
		                    labeling the flow as a quantity (i.e., a number
		                    times a unit, where the unit is given)
		  *gap*             space between paths that break in/break away
		                    to/from the top or bottom
		  *radius*          inner radius of the vertical paths
		  *shoulder*        size of the shoulders of output arrowS
		  *offset*          text offset (from the dip or tip of the arrow)
		  *head_angle*      angle of the arrow heads (and negative of the angle
		                    of the tails) [deg]
		  *margin*          minimum space between Sankey outlines and the edge
		                    of the plot area
		  *tolerance*       acceptable maximum of the magnitude of the sum of
		                    flows
		                    The magnitude of the sum of connected flows cannot
		                    be greater than *tolerance*.
		  ===============   ===================================================
		
		The optional arguments listed above are applied to all subdiagrams so
		that there is consistent alignment and formatting.
		
		If :class:`Sankey` is instantiated with any keyword arguments other
		than those explicitly listed above (``**kwargs``), they will be passed
		to :meth:`add`, which will create the first subdiagram.
		
		In order to draw a complex Sankey diagram, create an instance of
		:class:`Sankey` by calling it without any kwargs::
		
		    sankey = Sankey()
		
		Then add simple Sankey sub-diagrams::
		
		    sankey.add() # 1
		    sankey.add() # 2
		    #...
		    sankey.add() # n
		
		Finally, create the full diagram::
		
		    sankey.finish()
		
		Or, instead, simply daisy-chain those calls::
		
		    Sankey().add().add...  .add().finish()
		
		See Also
		--------
		Sankey.add
		Sankey.finish
		
		Examples
		--------
		
		.. plot:: gallery/specialty_plots/sankey_basics.py
	**/
	@:native("__init__")
	public function ___init__(?ax:Dynamic, ?scale:Dynamic, ?unit:Dynamic, ?format:Dynamic, ?gap:Dynamic, ?radius:Dynamic, ?shoulder:Dynamic, ?offset:Dynamic, ?head_angle:Dynamic, ?margin:Dynamic, ?tolerance:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new Sankey instance.
		
		Optional keyword arguments:
		
		  ===============   ===================================================
		  Field             Description
		  ===============   ===================================================
		  *ax*              axes onto which the data should be plotted
		                    If *ax* isn't provided, new axes will be created.
		  *scale*           scaling factor for the flows
		                    *scale* sizes the width of the paths in order to
		                    maintain proper layout.  The same scale is applied
		                    to all subdiagrams.  The value should be chosen
		                    such that the product of the scale and the sum of
		                    the inputs is approximately 1.0 (and the product of
		                    the scale and the sum of the outputs is
		                    approximately -1.0).
		  *unit*            string representing the physical unit associated
		                    with the flow quantities
		                    If *unit* is None, then none of the quantities are
		                    labeled.
		  *format*          a Python number formatting string to be used in
		                    labeling the flow as a quantity (i.e., a number
		                    times a unit, where the unit is given)
		  *gap*             space between paths that break in/break away
		                    to/from the top or bottom
		  *radius*          inner radius of the vertical paths
		  *shoulder*        size of the shoulders of output arrowS
		  *offset*          text offset (from the dip or tip of the arrow)
		  *head_angle*      angle of the arrow heads (and negative of the angle
		                    of the tails) [deg]
		  *margin*          minimum space between Sankey outlines and the edge
		                    of the plot area
		  *tolerance*       acceptable maximum of the magnitude of the sum of
		                    flows
		                    The magnitude of the sum of connected flows cannot
		                    be greater than *tolerance*.
		  ===============   ===================================================
		
		The optional arguments listed above are applied to all subdiagrams so
		that there is consistent alignment and formatting.
		
		If :class:`Sankey` is instantiated with any keyword arguments other
		than those explicitly listed above (``**kwargs``), they will be passed
		to :meth:`add`, which will create the first subdiagram.
		
		In order to draw a complex Sankey diagram, create an instance of
		:class:`Sankey` by calling it without any kwargs::
		
		    sankey = Sankey()
		
		Then add simple Sankey sub-diagrams::
		
		    sankey.add() # 1
		    sankey.add() # 2
		    #...
		    sankey.add() # n
		
		Finally, create the full diagram::
		
		    sankey.finish()
		
		Or, instead, simply daisy-chain those calls::
		
		    Sankey().add().add...  .add().finish()
		
		See Also
		--------
		Sankey.add
		Sankey.finish
		
		Examples
		--------
		
		.. plot:: gallery/specialty_plots/sankey_basics.py
	**/
	public function new(?ax:Dynamic, ?scale:Dynamic, ?unit:Dynamic, ?format:Dynamic, ?gap:Dynamic, ?radius:Dynamic, ?shoulder:Dynamic, ?offset:Dynamic, ?head_angle:Dynamic, ?margin:Dynamic, ?tolerance:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Add an input to a path and return its tip and label locations.
	**/
	public function _add_input(path:Dynamic, angle:Dynamic, flow:Dynamic, length:Dynamic):Dynamic;
	/**
		Append an output to a path and return its tip and label locations.
		
		.. note:: *flow* is negative for an output.
	**/
	public function _add_output(path:Dynamic, angle:Dynamic, flow:Dynamic, length:Dynamic):Dynamic;
	/**
		Return the codes and vertices for a rotated, scaled, and translated
		90 degree arc.
		
		Optional keyword arguments:
		
		  ===============   ==========================================
		  Keyword           Description
		  ===============   ==========================================
		  *quadrant*        uses 0-based indexing (0, 1, 2, or 3)
		  *cw*              if True, clockwise
		  *center*          (x, y) tuple of the arc's center
		  ===============   ==========================================
	**/
	public function _arc(?quadrant:Dynamic, ?cw:Dynamic, ?radius:Dynamic, ?center:Dynamic):Dynamic;
	/**
		A path is not simply reversible by path[::-1] since the code
		specifies an action to take from the **previous** point.
	**/
	public function _revert(path:Dynamic, ?first_action:Dynamic):Dynamic;
	/**
		Add a simple Sankey diagram with flows at the same hierarchical level.
		
		Parameters
		----------
		patchlabel : str
		    Label to be placed at the center of the diagram.
		    Note that *label* (not *patchlabel*) can be passed as keyword
		    argument to create an entry in the legend.
		
		flows : list of float
		    Array of flow values.  By convention, inputs are positive and
		    outputs are negative.
		
		    Flows are placed along the top of the diagram from the inside out
		    in order of their index within *flows*.  They are placed along the
		    sides of the diagram from the top down and along the bottom from
		    the outside in.
		
		    If the sum of the inputs and outputs is
		    nonzero, the discrepancy will appear as a cubic Bezier curve along
		    the top and bottom edges of the trunk.
		
		orientations : list of {-1, 0, 1}
		    List of orientations of the flows (or a single orientation to be
		    used for all flows).  Valid values are 0 (inputs from
		    the left, outputs to the right), 1 (from and to the top) or -1
		    (from and to the bottom).
		
		labels : list of (str or None)
		    List of labels for the flows (or a single label to be used for all
		    flows).  Each label may be *None* (no label), or a labeling string.
		    If an entry is a (possibly empty) string, then the quantity for the
		    corresponding flow will be shown below the string.  However, if
		    the *unit* of the main diagram is None, then quantities are never
		    shown, regardless of the value of this argument.
		
		trunklength : float
		    Length between the bases of the input and output groups (in
		    data-space units).
		
		pathlengths : list of float
		    List of lengths of the vertical arrows before break-in or after
		    break-away.  If a single value is given, then it will be applied to
		    the first (inside) paths on the top and bottom, and the length of
		    all other arrows will be justified accordingly.  The *pathlengths*
		    are not applied to the horizontal inputs and outputs.
		
		prior : int
		    Index of the prior diagram to which this diagram should be
		    connected.
		
		connect : (int, int)
		    A (prior, this) tuple indexing the flow of the prior diagram and
		    the flow of this diagram which should be connected.  If this is the
		    first diagram or *prior* is *None*, *connect* will be ignored.
		
		rotation : float
		    Angle of rotation of the diagram in degrees.  The interpretation of
		    the *orientations* argument will be rotated accordingly (e.g., if
		    *rotation* == 90, an *orientations* entry of 1 means to/from the
		    left).  *rotation* is ignored if this diagram is connected to an
		    existing one (using *prior* and *connect*).
		
		Returns
		-------
		Sankey
		    The current `.Sankey` instance.
		
		Other Parameters
		----------------
		**kwargs
		   Additional keyword arguments set `matplotlib.patches.PathPatch`
		   properties, listed below.  For example, one may want to use
		   ``fill=False`` or ``label="A legend entry"``.
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float or None
		  animated: bool
		  antialiased or aa: unknown
		  capstyle: {'butt', 'round', 'projecting'}
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color: color
		  contains: callable
		  edgecolor or ec: color or None or 'auto'
		  facecolor or fc: color or None
		  figure: `.Figure`
		  fill: bool
		  gid: str
		  hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		  in_layout: bool
		  joinstyle: {'miter', 'round', 'bevel'}
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float or None
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  transform: `.Transform`
		  url: str
		  visible: bool
		  zorder: float
		
		See Also
		--------
		Sankey.finish
	**/
	public function add(?patchlabel:Dynamic, ?flows:Dynamic, ?orientations:Dynamic, ?labels:Dynamic, ?trunklength:Dynamic, ?pathlengths:Dynamic, ?prior:Dynamic, ?connect:Dynamic, ?rotation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Adjust the axes and return a list of information about the Sankey
		subdiagram(s).
		
		Return value is a list of subdiagrams represented with the following
		fields:
		
		  ===============   ===================================================
		  Field             Description
		  ===============   ===================================================
		  *patch*           Sankey outline (an instance of
		                    :class:`~matplotlib.patches.PathPatch`)
		  *flows*           values of the flows (positive for input, negative
		                    for output)
		  *angles*          list of angles of the arrows [deg/90]
		                    For example, if the diagram has not been rotated,
		                    an input to the top side will have an angle of 3
		                    (DOWN), and an output from the top side will have
		                    an angle of 1 (UP).  If a flow has been skipped
		                    (because its magnitude is less than *tolerance*),
		                    then its angle will be *None*.
		  *tips*            array in which each row is an [x, y] pair
		                    indicating the positions of the tips (or "dips") of
		                    the flow paths
		                    If the magnitude of a flow is less the *tolerance*
		                    for the instance of :class:`Sankey`, the flow is
		                    skipped and its tip will be at the center of the
		                    diagram.
		  *text*            :class:`~matplotlib.text.Text` instance for the
		                    label of the diagram
		  *texts*           list of :class:`~matplotlib.text.Text` instances
		                    for the labels of flows
		  ===============   ===================================================
		
		See Also
		--------
		Sankey.add
	**/
	public function finish():Dynamic;
}