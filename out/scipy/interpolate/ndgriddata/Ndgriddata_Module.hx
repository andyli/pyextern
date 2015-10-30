/* This file is generated, do not edit! */
package scipy.interpolate.ndgriddata;
@:pythonImport("scipy.interpolate.ndgriddata") extern class Ndgriddata_Module {
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
		Convert a tuple of coordinate arrays to a (..., ndim)-shaped array.
	**/
	static public function _ndim_coords_from_arrays(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Interpolate unstructured D-dimensional data.
		
		Parameters
		----------
		points : ndarray of floats, shape (n, D)
		    Data point coordinates. Can either be an array of
		    shape (n, D), or a tuple of `ndim` arrays.
		values : ndarray of float or complex, shape (n,)
		    Data values.
		xi : ndarray of float, shape (M, D)
		    Points at which to interpolate data.
		method : {'linear', 'nearest', 'cubic'}, optional
		    Method of interpolation. One of
		
		    ``nearest``
		      return the value at the data point closest to
		      the point of interpolation.  See `NearestNDInterpolator` for
		      more details.
		
		    ``linear``
		      tesselate the input point set to n-dimensional
		      simplices, and interpolate linearly on each simplex.  See
		      `LinearNDInterpolator` for more details.
		
		    ``cubic`` (1-D)
		      return the value determined from a cubic
		      spline.
		
		    ``cubic`` (2-D)
		      return the value determined from a
		      piecewise cubic, continuously differentiable (C1), and
		      approximately curvature-minimizing polynomial surface. See
		      `CloughTocher2DInterpolator` for more details.
		fill_value : float, optional
		    Value used to fill in for requested points outside of the
		    convex hull of the input points.  If not provided, then the
		    default is ``nan``. This option has no effect for the
		    'nearest' method.
		rescale : bool, optional
		    Rescale points to unit cube before performing interpolation.
		    This is useful if some of the input dimensions have
		    incommensurable units and differ by many orders of magnitude.
		
		    .. versionadded:: 0.14.0
		
		Notes
		-----
		
		.. versionadded:: 0.9
		
		Examples
		--------
		
		Suppose we want to interpolate the 2-D function
		
		>>> def func(x, y):
		...     return x*(1-x)*np.cos(4*np.pi*x) * np.sin(4*np.pi*y**2)**2
		
		on a grid in [0, 1]x[0, 1]
		
		>>> grid_x, grid_y = np.mgrid[0:1:100j, 0:1:200j]
		
		but we only know its values at 1000 data points:
		
		>>> points = np.random.rand(1000, 2)
		>>> values = func(points[:,0], points[:,1])
		
		This can be done with `griddata` -- below we try out all of the
		interpolation methods:
		
		>>> from scipy.interpolate import griddata
		>>> grid_z0 = griddata(points, values, (grid_x, grid_y), method='nearest')
		>>> grid_z1 = griddata(points, values, (grid_x, grid_y), method='linear')
		>>> grid_z2 = griddata(points, values, (grid_x, grid_y), method='cubic')
		
		One can see that the exact result is reproduced by all of the
		methods to some degree, but for this smooth function the piecewise
		cubic interpolant gives the best results:
		
		>>> import matplotlib.pyplot as plt
		>>> plt.subplot(221)
		>>> plt.imshow(func(grid_x, grid_y).T, extent=(0,1,0,1), origin='lower')
		>>> plt.plot(points[:,0], points[:,1], 'k.', ms=1)
		>>> plt.title('Original')
		>>> plt.subplot(222)
		>>> plt.imshow(grid_z0.T, extent=(0,1,0,1), origin='lower')
		>>> plt.title('Nearest')
		>>> plt.subplot(223)
		>>> plt.imshow(grid_z1.T, extent=(0,1,0,1), origin='lower')
		>>> plt.title('Linear')
		>>> plt.subplot(224)
		>>> plt.imshow(grid_z2.T, extent=(0,1,0,1), origin='lower')
		>>> plt.title('Cubic')
		>>> plt.gcf().set_size_inches(6, 6)
		>>> plt.show()
	**/
	static public function griddata(points:Dynamic, values:Dynamic, xi:Dynamic, ?method:Dynamic, ?fill_value:Dynamic, ?rescale:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}