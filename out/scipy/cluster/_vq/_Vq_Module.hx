/* This file is generated, do not edit! */
package scipy.cluster._vq;
@:pythonImport("scipy.cluster._vq") extern class _Vq_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		The update-step of K-means. Calculate the mean of observations in each
		cluster.
		
		Parameters
		----------
		obs : ndarray
		    The observation matrix. Each row is an observation. Its dtype must be
		    float32 or float64.
		labels : ndarray
		    The label of each observation. Must be an 1d array.
		nc : int
		    The number of centroids.
		
		Returns
		-------
		cb : ndarray
		    The new code book.
		has_members : ndarray
		    A boolean array indicating which clusters have members.
		
		Notes
		-----
		The empty clusters will be set to all zeros and the curresponding elements
		in `has_members` will be `False`. The upper level function should decide
		how to deal with them.
	**/
	static public function update_cluster_means(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vector quantization ndarray wrapper. Only support float32 and float64.
		
		Parameters
		----------
		obs : ndarray
		    The observation matrix. Each row is an observation.
		codes : ndarray
		    The code book matrix.
		
		Notes
		-----
		The observation matrix and code book matrix should have same ndim and
		same number of columns (features). Only 1-dimensional and 2-dimensional
		arrays are supported.
	**/
	static public function vq(args:haxe.extern.Rest<Dynamic>):Dynamic;
}