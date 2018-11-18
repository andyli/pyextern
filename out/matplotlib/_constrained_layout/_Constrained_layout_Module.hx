/* This file is generated, do not edit! */
package matplotlib._constrained_layout;
@:pythonImport("matplotlib._constrained_layout") extern class _Constrained_layout_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		- Align right/left and bottom/top spines of appropriate subplots.
		- Compare size of subplotspec including height and width ratios
		   and make sure that the axes spines are at least as large
		   as they should be.
	**/
	static public function _align_spines(fig:Dynamic, gs:Dynamic):Dynamic;
	/**
		arrange the subplotspec children of this gridspec, and then recursively
		do the same of any gridspec children of those gridspecs...
	**/
	static public function _arrange_subplotspecs(gs:Dynamic, ?hspace:Dynamic, ?wspace:Dynamic):Dynamic;
	/**
		helper function to make sure all axes in the
		figure have a finite width and height.  If not, return False
	**/
	static public function _axes_all_finite_sized(fig:Dynamic):Dynamic;
	static public function _getmaxminrowcolumn(axs:Dynamic):Dynamic;
	static public function _in_same_column(colnum0min:Dynamic, colnum0max:Dynamic, colnumCmin:Dynamic, colnumCmax:Dynamic):Dynamic;
	static public function _in_same_row(rownum0min:Dynamic, rownum0max:Dynamic, rownumCmin:Dynamic, rownumCmax:Dynamic):Dynamic;
	static public var _log : Dynamic;
	/**
		Check for unoccupied gridspec slots and make ghost axes for these
		slots...  Do for each gs separately.  This is a pretty big kludge
		but shoudn't have too much ill effect.  The worst is that
		someone querrying the figure will wonder why there are more
		axes than they thought.
	**/
	static public function _make_ghost_gridspec_slots(fig:Dynamic, gs:Dynamic):Dynamic;
	/**
		For each axes, make a margin between the *pos* layoutbox and the
		*axes* layoutbox be a minimum size that can accommodate the
		decorations on the axis.
	**/
	static public function _make_layout_margins(ax:Dynamic, renderer:Dynamic, h_pad:Dynamic, w_pad:Dynamic):Dynamic;
	/**
		Do the constrained_layout.  Called at draw time in
		 ``figure.constrained_layout()``
		
		Parameters
		----------
		
		
		fig: Figure
		  is the ``figure`` instance to do the layout in.
		
		renderer: Renderer
		  the renderer to use.
		
		 h_pad, w_pad : float
		   are in figure-normalized units, and are a padding around the axes
		   elements.
		
		 hspace, wspace : float
		    are in fractions of the subplot sizes.
	**/
	static public function do_constrained_layout(fig:Dynamic, renderer:Dynamic, h_pad:Dynamic, w_pad:Dynamic, ?hspace:Dynamic, ?wspace:Dynamic):Dynamic;
	/**
		Do the layout for a colorbar, to not oeverly pollute colorbar.py
		
		`pad` is in fraction of the original axis size.
	**/
	static public function layoutcolorbargridspec(parents:Dynamic, cax:Dynamic, shrink:Dynamic, aspect:Dynamic, location:Dynamic, ?pad:Dynamic):Dynamic;
	/**
		Do the layout for a colorbar, to not oeverly pollute colorbar.py
		
		`pad` is in fraction of the original axis size.
	**/
	static public function layoutcolorbarsingle(ax:Dynamic, cax:Dynamic, shrink:Dynamic, aspect:Dynamic, location:Dynamic, ?pad:Dynamic):Dynamic;
}