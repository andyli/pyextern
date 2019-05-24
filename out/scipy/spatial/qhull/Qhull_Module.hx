/* This file is generated, do not edit! */
package scipy.spatial.qhull;
@:pythonImport("scipy.spatial.qhull") extern class Qhull_Module {
	static public var __all__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function _copy_docstr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute barycentric affine coordinate transformations for given
		simplices.
		
		Returns
		-------
		Tinvs : array, shape (nsimplex, ndim+1, ndim)
		    Barycentric transforms for each simplex.
		
		    Tinvs[i,:ndim,:ndim] contains inverse of the matrix ``T``,
		    and Tinvs[i,ndim,:] contains the vector ``r_n`` (see below).
		
		Notes
		-----
		Barycentric transform from ``x`` to ``c`` is defined by::
		
		    T c = x - r_n
		
		where the ``r_1, ..., r_n`` are the vertices of the simplex.
		The matrix ``T`` is defined by the condition::
		
		    T e_j = r_j - r_n
		
		where ``e_j`` is the unit axis vector, e.g, ``e_2 = [0,1,0,0,...]``
		This implies that ``T_ij = (r_j - r_n)_i``.
		
		For the barycentric transforms, we need to compute the inverse
		matrix ``T^-1`` and store the vectors ``r_n`` for each vertex.
		These are stacked into the `Tinvs` returned.
	**/
	static public function _get_barycentric_transforms(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function asbytes(s:Dynamic):Dynamic;
	/**
		tsearch(tri, xi)
		
		Find simplices containing the given points. This function does the
		same thing as `Delaunay.find_simplex`.
		
		.. versionadded:: 0.9
		
		See Also
		--------
		Delaunay.find_simplex
		
		
		Examples
		--------
		
		>>> import numpy as np
		>>> import matplotlib.pyplot as plt
		>>> from scipy.spatial import Delaunay, delaunay_plot_2d, tsearch
		
		The Delaunay triangulation of a set of random points:
		
		>>> pts = np.random.rand(20, 2)
		>>> tri = Delaunay(pts)
		>>> _ = delaunay_plot_2d(tri)
		
		Find the simplices containing a given set of points:
		
		>>> loc = np.random.uniform(0.2, 0.8, (5, 2))
		>>> s = tsearch(tri, loc)
		>>> plt.triplot(pts[:, 0], pts[:, 1], tri.simplices[s], 'b-', mask=s==-1)
		>>> plt.scatter(loc[:, 0], loc[:, 1], c='r', marker='x')
		>>> plt.show()
	**/
	static public function tsearch(args:haxe.extern.Rest<Dynamic>):Dynamic;
}