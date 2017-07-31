/* This file is generated, do not edit! */
package scipy.cluster.vq;
@:pythonImport("scipy.cluster.vq") extern class Vq_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper function for scipy argument validation.
		
		Many scipy linear algebra functions do support arbitrary array-like
		input arguments.  Examples of commonly unsupported inputs include
		matrices containing inf/nan, sparse matrix representations, and
		matrices with complicated elements.
		
		Parameters
		----------
		a : array_like
		    The array-like input.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		sparse_ok : bool, optional
		    True if scipy sparse matrices are allowed.
		objects_ok : bool, optional
		    True if arrays with dype('O') are allowed.
		mask_ok : bool, optional
		    True if masked arrays are allowed.
		as_inexact : bool, optional
		    True to convert the input array to a np.inexact dtype.
		
		Returns
		-------
		ret : ndarray
		    The converted validated array.
	**/
	static public function _asarray_validated(a:Dynamic, ?check_finite:Dynamic, ?sparse_ok:Dynamic, ?objects_ok:Dynamic, ?mask_ok:Dynamic, ?as_inexact:Dynamic):Dynamic;
	/**
		"raw" version of k-means.
		
		Returns
		-------
		code_book
		    the lowest distortion codebook found.
		avg_dist
		    the average distance a observation is from a code in the book.
		    Lower means the code_book matches the data better.
		
		See Also
		--------
		kmeans : wrapper around k-means
		
		Examples
		--------
		Note: not whitened in this example.
		
		>>> from numpy import array
		>>> from scipy.cluster.vq import _kmeans
		>>> features  = array([[ 1.9,2.3],
		...                    [ 1.5,2.5],
		...                    [ 0.8,0.6],
		...                    [ 0.4,1.8],
		...                    [ 1.0,1.0]])
		>>> book = array((features[0],features[2]))
		>>> _kmeans(features,book)
		(array([[ 1.7       ,  2.4       ],
		       [ 0.73333333,  1.13333333]]), 0.40563916697728591)
	**/
	static public function _kmeans(obs:Dynamic, guess:Dynamic, ?thresh:Dynamic):Dynamic;
	/**
		"raw" version of kmeans2. Do not use directly.
		
		Run k-means with a given initial codebook.
	**/
	static public function _kmeans2(data:Dynamic, code:Dynamic, niter:Dynamic, nc:Dynamic, missing:Dynamic):Dynamic;
	/**
		Pick k points at random in data (one row = one observation).
		
		This is done by taking the k first values of a random permutation of 1..N
		where N is the number of observation.
		
		Parameters
		----------
		data : ndarray
		    Expect a rank 1 or 2 array. Rank 1 are assumed to describe one
		    dimensional data, rank 2 multidimensional data, in which case one
		    row is one observation.
		k : int
		    Number of samples to generate.
	**/
	static public function _kpoints(data:Dynamic, k:Dynamic):Dynamic;
	/**
		Returns k samples of a random variable which parameters depend on data.
		
		More precisely, it returns k observations sampled from a Gaussian random
		variable which mean and covariances are the one estimated from data.
		
		Parameters
		----------
		data : ndarray
		    Expect a rank 1 or 2 array. Rank 1 are assumed to describe one
		    dimensional data, rank 2 multidimensional data, in which case one
		    row is one observation.
		k : int
		    Number of samples to generate.
	**/
	static public function _krandinit(data:Dynamic, k:Dynamic):Dynamic;
	/**
		raise a ClusterError when called.
	**/
	static public function _missing_raise():Dynamic;
	/**
		Print a warning when called.
	**/
	static public function _missing_warn():Dynamic;
	/**
		Python version of vq algorithm for rank 1 only.
		
		Parameters
		----------
		obs : ndarray
		    Expects a rank 1 array. Each item is one observation.
		code_book : ndarray
		    Code book to use. Same format than obs. Should rank 1 too.
		
		Returns
		-------
		code : ndarray
		    code[i] gives the label of the ith obversation, that its code is
		    code_book[code[i]].
		mind_dist : ndarray
		    min_dist[i] gives the distance between the ith observation and its
		    corresponding code.
	**/
	static public function _py_vq_1d(obs:Dynamic, code_book:Dynamic):Dynamic;
	static public var _valid_init_meth : Dynamic;
	static public var _valid_miss_meth : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Performs k-means on a set of observation vectors forming k clusters.
		
		The k-means algorithm adjusts the centroids until sufficient
		progress cannot be made, i.e. the change in distortion since
		the last iteration is less than some threshold. This yields
		a code book mapping centroids to codes and vice versa.
		
		Distortion is defined as the sum of the squared differences
		between the observations and the corresponding centroid.
		
		Parameters
		----------
		obs : ndarray
		   Each row of the M by N array is an observation vector. The
		   columns are the features seen during each observation.
		   The features must be whitened first with the `whiten` function.
		
		k_or_guess : int or ndarray
		   The number of centroids to generate. A code is assigned to
		   each centroid, which is also the row index of the centroid
		   in the code_book matrix generated.
		
		   The initial k centroids are chosen by randomly selecting
		   observations from the observation matrix. Alternatively,
		   passing a k by N array specifies the initial k centroids.
		
		iter : int, optional
		   The number of times to run k-means, returning the codebook
		   with the lowest distortion. This argument is ignored if
		   initial centroids are specified with an array for the
		   ``k_or_guess`` parameter. This parameter does not represent the
		   number of iterations of the k-means algorithm.
		
		thresh : float, optional
		   Terminates the k-means algorithm if the change in
		   distortion since the last k-means iteration is less than
		   or equal to thresh.
		
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		
		Returns
		-------
		codebook : ndarray
		   A k by N array of k centroids. The i'th centroid
		   codebook[i] is represented with the code i. The centroids
		   and codes generated represent the lowest distortion seen,
		   not necessarily the globally minimal distortion.
		
		distortion : float
		   The distortion between the observations passed and the
		   centroids generated.
		
		See Also
		--------
		kmeans2 : a different implementation of k-means clustering
		   with more methods for generating initial centroids but without
		   using a distortion change threshold as a stopping criterion.
		
		whiten : must be called prior to passing an observation matrix
		   to kmeans.
		
		Examples
		--------
		>>> from numpy import array
		>>> from scipy.cluster.vq import vq, kmeans, whiten
		>>> features  = array([[ 1.9,2.3],
		...                    [ 1.5,2.5],
		...                    [ 0.8,0.6],
		...                    [ 0.4,1.8],
		...                    [ 0.1,0.1],
		...                    [ 0.2,1.8],
		...                    [ 2.0,0.5],
		...                    [ 0.3,1.5],
		...                    [ 1.0,1.0]])
		>>> whitened = whiten(features)
		>>> book = np.array((whitened[0],whitened[2]))
		>>> kmeans(whitened,book)
		(array([[ 2.3110306 ,  2.86287398],    # random
		       [ 0.93218041,  1.24398691]]), 0.85684700941625547)
		
		>>> from numpy import random
		>>> random.seed((1000,2000))
		>>> codes = 3
		>>> kmeans(whitened,codes)
		(array([[ 2.3110306 ,  2.86287398],    # random
		       [ 1.32544402,  0.65607529],
		       [ 0.40782893,  2.02786907]]), 0.5196582527686241)
	**/
	static public function kmeans(obs:Dynamic, k_or_guess:Dynamic, ?iter:Dynamic, ?thresh:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Classify a set of observations into k clusters using the k-means algorithm.
		
		The algorithm attempts to minimize the Euclidian distance between
		observations and centroids. Several initialization methods are
		included.
		
		Parameters
		----------
		data : ndarray
		    A 'M' by 'N' array of 'M' observations in 'N' dimensions or a length
		    'M' array of 'M' one-dimensional observations.
		k : int or ndarray
		    The number of clusters to form as well as the number of
		    centroids to generate. If `minit` initialization string is
		    'matrix', or if a ndarray is given instead, it is
		    interpreted as initial cluster to use instead.
		iter : int, optional
		    Number of iterations of the k-means algrithm to run. Note
		    that this differs in meaning from the iters parameter to
		    the kmeans function.
		thresh : float, optional
		    (not used yet)
		minit : str, optional
		    Method for initialization. Available methods are 'random',
		    'points', and 'matrix':
		
		    'random': generate k centroids from a Gaussian with mean and
		    variance estimated from the data.
		
		    'points': choose k observations (rows) at random from data for
		    the initial centroids.
		
		    'matrix': interpret the k parameter as a k by M (or length k
		    array for one-dimensional data) array of initial centroids.
		missing : str, optional
		    Method to deal with empty clusters. Available methods are
		    'warn' and 'raise':
		
		    'warn': give a warning and continue.
		
		    'raise': raise an ClusterError and terminate the algorithm.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		
		Returns
		-------
		centroid : ndarray
		    A 'k' by 'N' array of centroids found at the last iteration of
		    k-means.
		label : ndarray
		    label[i] is the code or index of the centroid the
		    i'th observation is closest to.
	**/
	static public function kmeans2(data:Dynamic, k:Dynamic, ?iter:Dynamic, ?thresh:Dynamic, ?minit:Dynamic, ?missing:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Python version of vq algorithm.
		
		The algorithm computes the euclidian distance between each
		observation and every frame in the code_book.
		
		Parameters
		----------
		obs : ndarray
		    Expects a rank 2 array. Each row is one observation.
		code_book : ndarray
		    Code book to use. Same format than obs. Should have same number of
		    features (eg columns) than obs.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		
		Returns
		-------
		code : ndarray
		    code[i] gives the label of the ith obversation, that its code is
		    code_book[code[i]].
		mind_dist : ndarray
		    min_dist[i] gives the distance between the ith observation and its
		    corresponding code.
		
		Notes
		-----
		This function is slower than the C version but works for
		all input types.  If the inputs have the wrong types for the
		C versions of the function, this one is called as a last resort.
		
		It is about 20 times slower than the C version.
	**/
	static public function py_vq(obs:Dynamic, code_book:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		2nd Python version of vq algorithm.
		
		The algorithm simply computes the euclidian distance between each
		observation and every frame in the code_book/
		
		Parameters
		----------
		obs : ndarray
		    Expect a rank 2 array. Each row is one observation.
		code_book : ndarray
		    Code book to use. Same format than obs. Should have same number of
		    features (eg columns) than obs.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		
		Returns
		-------
		code : ndarray
		    code[i] gives the label of the ith obversation, that its code is
		    code_book[code[i]].
		mind_dist : ndarray
		    min_dist[i] gives the distance between the ith observation and its
		    corresponding code.
		
		Notes
		-----
		This could be faster when number of codebooks is small, but it
		becomes a real memory hog when codebook is large. It requires
		N by M by O storage where N=number of obs, M = number of
		features, and O = number of codes.
	**/
	static public function py_vq2(obs:Dynamic, code_book:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Assign codes from a code book to observations.
		
		Assigns a code from a code book to each observation. Each
		observation vector in the 'M' by 'N' `obs` array is compared with the
		centroids in the code book and assigned the code of the closest
		centroid.
		
		The features in `obs` should have unit variance, which can be
		achieved by passing them through the whiten function.  The code
		book can be created with the k-means algorithm or a different
		encoding algorithm.
		
		Parameters
		----------
		obs : ndarray
		    Each row of the 'M' x 'N' array is an observation.  The columns are
		    the "features" seen during each observation. The features must be
		    whitened first using the whiten function or something equivalent.
		code_book : ndarray
		    The code book is usually generated using the k-means algorithm.
		    Each row of the array holds a different code, and the columns are
		    the features of the code.
		
		     >>> #              f0    f1    f2   f3
		     >>> code_book = [
		     ...             [  1.,   2.,   3.,   4.],  #c0
		     ...             [  1.,   2.,   3.,   4.],  #c1
		     ...             [  1.,   2.,   3.,   4.]]  #c2
		
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		
		Returns
		-------
		code : ndarray
		    A length M array holding the code book index for each observation.
		dist : ndarray
		    The distortion (distance) between the observation and its nearest
		    code.
		
		Examples
		--------
		>>> from numpy import array
		>>> from scipy.cluster.vq import vq
		>>> code_book = array([[1.,1.,1.],
		...                    [2.,2.,2.]])
		>>> features  = array([[  1.9,2.3,1.7],
		...                    [  1.5,2.5,2.2],
		...                    [  0.8,0.6,1.7]])
		>>> vq(features,code_book)
		(array([1, 1, 0],'i'), array([ 0.43588989,  0.73484692,  0.83066239]))
	**/
	static public function vq(obs:Dynamic, code_book:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Normalize a group of observations on a per feature basis.
		
		Before running k-means, it is beneficial to rescale each feature
		dimension of the observation set with whitening. Each feature is
		divided by its standard deviation across all observations to give
		it unit variance.
		
		Parameters
		----------
		obs : ndarray
		    Each row of the array is an observation.  The
		    columns are the features seen during each observation.
		
		    >>> #         f0    f1    f2
		    >>> obs = [[  1.,   1.,   1.],  #o0
		    ...        [  2.,   2.,   2.],  #o1
		    ...        [  3.,   3.,   3.],  #o2
		    ...        [  4.,   4.,   4.]]  #o3
		
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		
		Returns
		-------
		result : ndarray
		    Contains the values in `obs` scaled by the standard deviation
		    of each column.
		
		Examples
		--------
		>>> from scipy.cluster.vq import whiten
		>>> features  = np.array([[1.9, 2.3, 1.7],
		...                       [1.5, 2.5, 2.2],
		...                       [0.8, 0.6, 1.7,]])
		>>> whiten(features)
		array([[ 4.17944278,  2.69811351,  7.21248917],
		       [ 3.29956009,  2.93273208,  9.33380951],
		       [ 1.75976538,  0.7038557 ,  7.21248917]])
	**/
	static public function whiten(obs:Dynamic, ?check_finite:Dynamic):Dynamic;
}