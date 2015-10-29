/* This file is generated, do not edit! */
package scipy.spatial;
@:pythonImport("scipy.spatial.kdtree") extern class Kdtree {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Compute the distance matrix.
		
		Returns the matrix of all pair-wise distances.
		
		Parameters
		----------
		x : (M, K) array_like
		    TODO: description needed
		y : (N, K) array_like
		    TODO: description needed
		p : float, 1 <= p <= infinity
		    Which Minkowski p-norm to use.
		threshold : positive int
		    If ``M * N * K`` > `threshold`, algorithm uses a Python loop instead
		    of large temporary arrays.
		
		Returns
		-------
		result : (M, N) ndarray
		    Distance matrix.
		
		Examples
		--------
		>>> distance_matrix([[0,0],[0,1]], [[1,0],[1,1]])
		array([[ 1.        ,  1.41421356],
		       [ 1.41421356,  1.        ]])
	**/
	static public function distance_matrix(x:Dynamic, y:Dynamic, ?p:Dynamic, ?threshold:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Pop the smallest item off the heap, maintaining the heap invariant.
	**/
	static public function heappop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		heappush(heap, item) -> None. Push item onto heap, maintaining the heap invariant.
	**/
	static public function heappush(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute the L**p distance between two arrays.
		
		Parameters
		----------
		x : (M, K) array_like
		    Input array.
		y : (N, K) array_like
		    Input array.
		p : float, 1 <= p <= infinity
		    Which Minkowski p-norm to use.
		
		Examples
		--------
		>>> minkowski_distance([[0,0],[0,0]], [[1,1],[0,1]])
		array([ 1.41421356,  1.        ])
	**/
	static public function minkowski_distance(x:Dynamic, y:Dynamic, ?p:Dynamic):Dynamic;
	/**
		Compute the p-th power of the L**p distance between two arrays.
		
		For efficiency, this function computes the L**p distance but does
		not extract the pth root. If `p` is 1 or infinity, this is equal to
		the actual L**p distance.
		
		Parameters
		----------
		x : (M, K) array_like
		    Input array.
		y : (N, K) array_like
		    Input array.
		p : float, 1 <= p <= infinity
		    Which Minkowski p-norm to use.
		
		Examples
		--------
		>>> minkowski_distance_p([[0,0],[0,0]], [[1,1],[0,1]])
		array([2, 1])
	**/
	static public function minkowski_distance_p(x:Dynamic, y:Dynamic, ?p:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}