/* This file is generated, do not edit! */
package scipy.cluster._hierarchy;
@:pythonImport("scipy.cluster._hierarchy") extern class _Hierarchy_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Calculate the size of each cluster. The result is the fourth column of
		the linkage matrix.
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix. The fourth column can be empty.
		cs : ndarray
		    The array to store the sizes.
		n : ndarray
		    The number of observations.
	**/
	static public function calculate_cluster_sizes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Form flat clusters by distance criterion.
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix.
		T : ndarray
		    The array to store the cluster numbers. The i'th observation belongs to
		    cluster `T[i]`.
		cutoff : double
		    Clusters are formed when distances are less than or equal to `cutoff`.
		n : int
		    The number of observations.
	**/
	static public function cluster_dist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Form flat clusters by inconsistent criterion.
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix.
		R : ndarray
		    The inconsistent matrix.
		T : ndarray
		    The array to store the cluster numbers. The i'th observation belongs to
		    cluster `T[i]`.
		cutoff : double
		    Clusters are formed when the inconsistent values are less than or
		    or equal to `cutoff`.
		n : int
		    The number of observations.
	**/
	static public function cluster_in(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Form flat clusters by maxclust criterion.
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix.
		T : ndarray
		    The array to store the cluster numbers. The i'th observation belongs to
		    cluster `T[i]`.
		n : int
		    The number of observations.
		mc : int
		    The maximum number of clusters.
	**/
	static public function cluster_maxclust_dist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Form flat clusters by maxclust_monocrit criterion.
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix.
		MC : ndarray
		    The monotonic criterion array.
		T : ndarray
		    The array to store the cluster numbers. The i'th observation belongs to
		    cluster `T[i]`.
		n : int
		    The number of observations.
		max_nc : int
		    The maximum number of clusters.
	**/
	static public function cluster_maxclust_monocrit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Form flat clusters by monocrit criterion.
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix.
		MC : ndarray
		    The monotonic criterion array.
		T : ndarray
		    The array to store the cluster numbers. The i'th observation belongs to
		    cluster `T[i]`.
		cutoff : double
		    Clusters are formed when the MC values are less than or equal to
		    `cutoff`.
		n : int
		    The number of observations.
	**/
	static public function cluster_monocrit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Calculate the cophenetic distances between each observation
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix.
		d : ndarray
		    The condensed matrix to store the cophenetic distances.
		n : int
		    The number of observations.
	**/
	static public function cophenetic_distances(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get the maximum statistic for each non-singleton cluster. For the i'th
		non-singleton cluster, max_rfs[i] = max{R[j, rf] j is a descendent of i}.
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix.
		R : ndarray
		    The R matrix.
		max_rfs : ndarray
		    The array to store the result.
		n : int
		    The number of observations.
		rf : int
		    Indicate which column of `R` is used.
	**/
	static public function get_max_Rfield_for_each_cluster(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get the maximum inconsistency coefficient for each non-singleton cluster.
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix.
		MD : ndarray
		    The array to store the result.
		n : int
		    The number of observations.
	**/
	static public function get_max_dist_for_each_cluster(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Calculate the inconsistency statistics.
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix.
		R : ndarray
		    A (n - 1) x 5 matrix to store the result. The inconsistency statistics
		    `R[i]` are calculated over `d` levels below cluster i. `R[i, 0]` is the
		    mean of distances. `R[i, 1]` is the standard deviation of distances.
		    `R[i, 2]` is the number of clusters included. `R[i, 3]` is the
		    inconsistency coefficient.
		
		    .. math:: \frac{\mathtt{Z[i,2]}-\mathtt{R[i,0]}} {R[i,1]}
		
		n : int
		    The number of observations.
		d : int
		    The number of levels included in calculation below a node.
	**/
	static public function inconsistent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Find the leader (root) of each flat cluster.
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix.
		T : ndarray
		    The flat clusters assignment returned by `fcluster` or `fclusterdata`.
		L : ndarray
		    `L` and `M` store the result. The leader of flat cluster `L[i]` is
		    node `M[i]`.
		M : ndarray
		    `L` and `M` store the result. The leader of flat cluster `L[i]` is
		    node `M[i]`.
		nc : int
		    The number of flat clusters.
		n : int
		    The number of observations.
		
		Returns
		-------
		err_node : int
		    Found that `T` is invalid when examining node `err_node`.
		    `-1` indicates success.
	**/
	static public function leaders(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Perform hierarchy clustering.
		
		Parameters
		----------
		dists : ndarray
		    A condensed matrix stores the pairwise distances of the observations.
		n : int
		    The number of observations.
		method : int
		    The linkage method. 0: single 1: complete 2: average 3: centroid
		    4: median 5: ward 6: weighted
		
		Returns
		-------
		Z : ndarray, shape (n - 1, 4)
		    Computed linkage matrix.
	**/
	static public function linkage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Perform hierarchy clustering using nearest-neighbor chain algorithm.
		
		Parameters
		----------
		dists : ndarray
		    A condensed matrix stores the pairwise distances of the observations.
		n : int
		    The number of observations.
		method : int
		    The linkage method. 0: single 1: complete 2: average 3: centroid
		    4: median 5: ward 6: weighted
		
		Returns
		-------
		Z : ndarray, shape (n - 1, 4)
		    Computed linkage matrix.
	**/
	static public function nn_chain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Perform a pre-order traversal on the linkage tree and get a list of ids
		of the leaves.
		
		Parameters
		----------
		Z : ndarray
		    The linkage matrix.
		members : ndarray
		    The array to store the result.
		n : int
		    The number of observations.
	**/
	static public function prelist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The SLINK algorithm. Single linkage in O(n^2) time complexity.
		
		Parameters
		----------
		dists : ndarray
		    A condensed matrix stores the pairwise distances of the observations.
		n : int
		    The number of observations.
		
		Returns
		-------
		Z : ndarray, shape (n - 1, 4)
		    Compute linkage matrix.
		
		References
		----------
		R. Sibson, "SLINK: An optimally efficient algorithm for the single-link
		cluster method", The Computer Journal 1973 16: 30-34.
	**/
	static public function slink(args:haxe.extern.Rest<Dynamic>):Dynamic;
}