/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib.streamplot") extern class Streamplot {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Simple Euler integration step that extends streamline to boundary.
	**/
	static public function _euler_step(xf_traj:Dynamic, yf_traj:Dynamic, dmap:Dynamic, f:Dynamic):Dynamic;
	/**
		Yield starting points for streamlines.
		
		Trying points on the boundary first gives higher quality streamlines.
		This algorithm starts with a point on the mask corner and spirals inward.
		This algorithm is inefficient, but fast compared to rest of streamplot.
	**/
	static public function _gen_starting_points(shape:Dynamic):Dynamic;
	/**
		2nd-order Runge-Kutta algorithm with adaptive step size.
		
		This method is also referred to as the improved Euler's method, or Heun's
		method. This method is favored over higher-order methods because:
		
		1. To get decent looking trajectories and to sample every mask cell
		   on the trajectory we need a small timestep, so a lower order
		   solver doesn't hurt us unless the data is *very* high resolution.
		   In fact, for cases where the user inputs
		   data smaller or of similar grid size to the mask grid, the higher
		   order corrections are negligible because of the very fast linear
		   interpolation used in `interpgrid`.
		
		2. For high resolution input data (i.e. beyond the mask
		   resolution), we must reduce the timestep. Therefore, an adaptive
		   timestep is more suited to the problem as this would be very hard
		   to judge automatically otherwise.
		
		This integrator is about 1.5 - 2x as fast as both the RK4 and RK45
		solvers in most setups on my machine. I would recommend removing the
		other two to keep things simple.
	**/
	static public function _integrate_rk12(x0:Dynamic, y0:Dynamic, dmap:Dynamic, f:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function get_integrator(u:Dynamic, v:Dynamic, dmap:Dynamic, minlength:Dynamic):Dynamic;
	/**
		Fast 2D, linear interpolation on an integer grid
	**/
	static public function interpgrid(a:Dynamic, xi:Dynamic, yi:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Draws streamlines of a vector flow.
		
		*x*, *y* : 1d arrays
		    an *evenly spaced* grid.
		*u*, *v* : 2d arrays
		    x and y-velocities. Number of rows should match length of y, and
		    the number of columns should match x.
		*density* : float or 2-tuple
		    Controls the closeness of streamlines. When `density = 1`, the domain
		    is divided into a 30x30 grid---*density* linearly scales this grid.
		    Each cell in the grid can have, at most, one traversing streamline.
		    For different densities in each direction, use [density_x, density_y].
		*linewidth* : numeric or 2d array
		    vary linewidth when given a 2d array with the same shape as velocities.
		*color* : matplotlib color code, or 2d array
		    Streamline color. When given an array with the same shape as
		    velocities, *color* values are converted to colors using *cmap*.
		*cmap* : :class:`~matplotlib.colors.Colormap`
		    Colormap used to plot streamlines and arrows. Only necessary when using
		    an array input for *color*.
		*norm* : :class:`~matplotlib.colors.Normalize`
		    Normalize object used to scale luminance data to 0, 1. If None, stretch
		    (min, max) to (0, 1). Only necessary when *color* is an array.
		*arrowsize* : float
		    Factor scale arrow size.
		*arrowstyle* : str
		    Arrow style specification.
		    See :class:`~matplotlib.patches.FancyArrowPatch`.
		*minlength* : float
		    Minimum length of streamline in axes coordinates.
		*zorder* : int
		    any number
		
		Returns:
		
		    *stream_container* : StreamplotSet
		        Container object with attributes
		
		            - lines: `matplotlib.collections.LineCollection` of streamlines
		
		            - arrows: collection of `matplotlib.patches.FancyArrowPatch`
		              objects representing arrows half-way along stream
		              lines.
		
		        This container will probably change in the future to allow changes
		        to the colormap, alpha, etc. for both lines and arrows, but these
		        changes should be backward compatible.
	**/
	static public function streamplot(axes:Dynamic, x:Dynamic, y:Dynamic, u:Dynamic, v:Dynamic, ?density:Dynamic, ?linewidth:Dynamic, ?color:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?arrowsize:Dynamic, ?arrowstyle:Dynamic, ?minlength:Dynamic, ?transform:Dynamic, ?zorder:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
}