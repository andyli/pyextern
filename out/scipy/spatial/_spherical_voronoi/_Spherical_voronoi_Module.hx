/* This file is generated, do not edit! */
package scipy.spatial._spherical_voronoi;
@:pythonImport("scipy.spatial._spherical_voronoi") extern class _Spherical_voronoi_Module {
	static public var HAS_NUMPY_VEC_DET : Dynamic;
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
		Calculates the cirumcenters of the circumspheres of tetrahedrons.
		
		An implementation based on
		http://mathworld.wolfram.com/Circumsphere.html
		
		Parameters
		----------
		tetrahedrons : an array of shape (N, 4, 3)
		    consisting of N tetrahedrons defined by 4 points in 3D
		
		Returns
		----------
		circumcenters : an array of shape (N, 3)
		    consisting of the N circumcenters of the tetrahedrons in 3D
	**/
	static public function calc_circumcenters(tetrahedrons:Dynamic):Dynamic;
	/**
		Projects the elements of points onto the sphere defined
		by center and radius.
		
		Parameters
		----------
		points : array of floats of shape (npoints, ndim)
		         consisting of the points in a space of dimension ndim
		center : array of floats of shape (ndim,)
		        the center of the sphere to project on
		radius : float
		        the radius of the sphere to project on
		
		returns: array of floats of shape (npoints, ndim)
		        the points projected onto the sphere
	**/
	static public function project_to_sphere(points:Dynamic, center:Dynamic, radius:Dynamic):Dynamic;
}