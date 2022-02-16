/* This file is generated, do not edit! */
package scipy.ndimage.morphology;
@:pythonImport("scipy.ndimage.morphology") extern class Morphology_Module {
	/**
		Multidimensional binary closing with the given structuring element.
		
		The *closing* of an input image by a structuring element is the
		*erosion* of the *dilation* of the image by the structuring element.
		
		Parameters
		----------
		input : array_like
		    Binary array_like to be closed. Non-zero (True) elements form
		    the subset to be closed.
		structure : array_like, optional
		    Structuring element used for the closing. Non-zero elements are
		    considered True. If no structuring element is provided an element
		    is generated with a square connectivity equal to one (i.e., only
		    nearest neighbors are connected to the center, diagonally-connected
		    elements are not considered neighbors).
		iterations : int, optional
		    The dilation step of the closing, then the erosion step are each
		    repeated `iterations` times (one, by default). If iterations is
		    less than 1, each operations is repeated until the result does
		    not change anymore. Only an integer of iterations is accepted.
		output : ndarray, optional
		    Array of the same shape as input, into which the output is placed.
		    By default, a new array is created.
		origin : int or tuple of ints, optional
		    Placement of the filter, by default 0.
		mask : array_like, optional
		    If a mask is given, only those elements with a True value at
		    the corresponding mask element are modified at each iteration.
		
		    .. versionadded:: 1.1.0
		border_value : int (cast to 0 or 1), optional
		    Value at the border in the output array.
		
		    .. versionadded:: 1.1.0
		brute_force : boolean, optional
		    Memory condition: if False, only the pixels whose value was changed in
		    the last iteration are tracked as candidates to be updated in the
		    current iteration; if true al pixels are considered as candidates for
		    update, regardless of what happened in the previous iteration.
		    False by default.
		
		    .. versionadded:: 1.1.0
		
		Returns
		-------
		binary_closing : ndarray of bools
		    Closing of the input by the structuring element.
		
		See also
		--------
		grey_closing, binary_opening, binary_dilation, binary_erosion,
		generate_binary_structure
		
		Notes
		-----
		*Closing* [1]_ is a mathematical morphology operation [2]_ that
		consists in the succession of a dilation and an erosion of the
		input with the same structuring element. Closing therefore fills
		holes smaller than the structuring element.
		
		Together with *opening* (`binary_opening`), closing can be used for
		noise removal.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Closing_%28morphology%29
		.. [2] https://en.wikipedia.org/wiki/Mathematical_morphology
		
		Examples
		--------
		>>> from scipy import ndimage
		>>> a = np.zeros((5,5), dtype=int)
		>>> a[1:-1, 1:-1] = 1; a[2,2] = 0
		>>> a
		array([[0, 0, 0, 0, 0],
		       [0, 1, 1, 1, 0],
		       [0, 1, 0, 1, 0],
		       [0, 1, 1, 1, 0],
		       [0, 0, 0, 0, 0]])
		>>> # Closing removes small holes
		>>> ndimage.binary_closing(a).astype(int)
		array([[0, 0, 0, 0, 0],
		       [0, 1, 1, 1, 0],
		       [0, 1, 1, 1, 0],
		       [0, 1, 1, 1, 0],
		       [0, 0, 0, 0, 0]])
		>>> # Closing is the erosion of the dilation of the input
		>>> ndimage.binary_dilation(a).astype(int)
		array([[0, 1, 1, 1, 0],
		       [1, 1, 1, 1, 1],
		       [1, 1, 1, 1, 1],
		       [1, 1, 1, 1, 1],
		       [0, 1, 1, 1, 0]])
		>>> ndimage.binary_erosion(ndimage.binary_dilation(a)).astype(int)
		array([[0, 0, 0, 0, 0],
		       [0, 1, 1, 1, 0],
		       [0, 1, 1, 1, 0],
		       [0, 1, 1, 1, 0],
		       [0, 0, 0, 0, 0]])
		
		
		>>> a = np.zeros((7,7), dtype=int)
		>>> a[1:6, 2:5] = 1; a[1:3,3] = 0
		>>> a
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 1, 0, 1, 0, 0],
		       [0, 0, 1, 0, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
		>>> # In addition to removing holes, closing can also
		>>> # coarsen boundaries with fine hollows.
		>>> ndimage.binary_closing(a).astype(int)
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 1, 0, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
		>>> ndimage.binary_closing(a, structure=np.ones((2,2))).astype(int)
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
	**/
	static public function binary_closing(input:Dynamic, ?structure:Dynamic, ?iterations:Dynamic, ?output:Dynamic, ?origin:Dynamic, ?mask:Dynamic, ?border_value:Dynamic, ?brute_force:Dynamic):Dynamic;
	/**
		Multidimensional binary dilation with the given structuring element.
		
		Parameters
		----------
		input : array_like
		    Binary array_like to be dilated. Non-zero (True) elements form
		    the subset to be dilated.
		structure : array_like, optional
		    Structuring element used for the dilation. Non-zero elements are
		    considered True. If no structuring element is provided an element
		    is generated with a square connectivity equal to one.
		iterations : int, optional
		    The dilation is repeated `iterations` times (one, by default).
		    If iterations is less than 1, the dilation is repeated until the
		    result does not change anymore. Only an integer of iterations is
		    accepted.
		mask : array_like, optional
		    If a mask is given, only those elements with a True value at
		    the corresponding mask element are modified at each iteration.
		output : ndarray, optional
		    Array of the same shape as input, into which the output is placed.
		    By default, a new array is created.
		border_value : int (cast to 0 or 1), optional
		    Value at the border in the output array.
		origin : int or tuple of ints, optional
		    Placement of the filter, by default 0.
		brute_force : boolean, optional
		    Memory condition: if False, only the pixels whose value was changed in
		    the last iteration are tracked as candidates to be updated (dilated)
		    in the current iteration; if True all pixels are considered as
		    candidates for dilation, regardless of what happened in the previous
		    iteration. False by default.
		
		Returns
		-------
		binary_dilation : ndarray of bools
		    Dilation of the input by the structuring element.
		
		See also
		--------
		grey_dilation, binary_erosion, binary_closing, binary_opening,
		generate_binary_structure
		
		Notes
		-----
		Dilation [1]_ is a mathematical morphology operation [2]_ that uses a
		structuring element for expanding the shapes in an image. The binary
		dilation of an image by a structuring element is the locus of the points
		covered by the structuring element, when its center lies within the
		non-zero points of the image.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Dilation_%28morphology%29
		.. [2] https://en.wikipedia.org/wiki/Mathematical_morphology
		
		Examples
		--------
		>>> from scipy import ndimage
		>>> a = np.zeros((5, 5))
		>>> a[2, 2] = 1
		>>> a
		array([[ 0.,  0.,  0.,  0.,  0.],
		       [ 0.,  0.,  0.,  0.,  0.],
		       [ 0.,  0.,  1.,  0.,  0.],
		       [ 0.,  0.,  0.,  0.,  0.],
		       [ 0.,  0.,  0.,  0.,  0.]])
		>>> ndimage.binary_dilation(a)
		array([[False, False, False, False, False],
		       [False, False,  True, False, False],
		       [False,  True,  True,  True, False],
		       [False, False,  True, False, False],
		       [False, False, False, False, False]], dtype=bool)
		>>> ndimage.binary_dilation(a).astype(a.dtype)
		array([[ 0.,  0.,  0.,  0.,  0.],
		       [ 0.,  0.,  1.,  0.,  0.],
		       [ 0.,  1.,  1.,  1.,  0.],
		       [ 0.,  0.,  1.,  0.,  0.],
		       [ 0.,  0.,  0.,  0.,  0.]])
		>>> # 3x3 structuring element with connectivity 1, used by default
		>>> struct1 = ndimage.generate_binary_structure(2, 1)
		>>> struct1
		array([[False,  True, False],
		       [ True,  True,  True],
		       [False,  True, False]], dtype=bool)
		>>> # 3x3 structuring element with connectivity 2
		>>> struct2 = ndimage.generate_binary_structure(2, 2)
		>>> struct2
		array([[ True,  True,  True],
		       [ True,  True,  True],
		       [ True,  True,  True]], dtype=bool)
		>>> ndimage.binary_dilation(a, structure=struct1).astype(a.dtype)
		array([[ 0.,  0.,  0.,  0.,  0.],
		       [ 0.,  0.,  1.,  0.,  0.],
		       [ 0.,  1.,  1.,  1.,  0.],
		       [ 0.,  0.,  1.,  0.,  0.],
		       [ 0.,  0.,  0.,  0.,  0.]])
		>>> ndimage.binary_dilation(a, structure=struct2).astype(a.dtype)
		array([[ 0.,  0.,  0.,  0.,  0.],
		       [ 0.,  1.,  1.,  1.,  0.],
		       [ 0.,  1.,  1.,  1.,  0.],
		       [ 0.,  1.,  1.,  1.,  0.],
		       [ 0.,  0.,  0.,  0.,  0.]])
		>>> ndimage.binary_dilation(a, structure=struct1,\
		... iterations=2).astype(a.dtype)
		array([[ 0.,  0.,  1.,  0.,  0.],
		       [ 0.,  1.,  1.,  1.,  0.],
		       [ 1.,  1.,  1.,  1.,  1.],
		       [ 0.,  1.,  1.,  1.,  0.],
		       [ 0.,  0.,  1.,  0.,  0.]])
	**/
	static public function binary_dilation(input:Dynamic, ?structure:Dynamic, ?iterations:Dynamic, ?mask:Dynamic, ?output:Dynamic, ?border_value:Dynamic, ?origin:Dynamic, ?brute_force:Dynamic):Dynamic;
	/**
		Multidimensional binary erosion with a given structuring element.
		
		Binary erosion is a mathematical morphology operation used for image
		processing.
		
		Parameters
		----------
		input : array_like
		    Binary image to be eroded. Non-zero (True) elements form
		    the subset to be eroded.
		structure : array_like, optional
		    Structuring element used for the erosion. Non-zero elements are
		    considered True. If no structuring element is provided, an element
		    is generated with a square connectivity equal to one.
		iterations : int, optional
		    The erosion is repeated `iterations` times (one, by default).
		    If iterations is less than 1, the erosion is repeated until the
		    result does not change anymore.
		mask : array_like, optional
		    If a mask is given, only those elements with a True value at
		    the corresponding mask element are modified at each iteration.
		output : ndarray, optional
		    Array of the same shape as input, into which the output is placed.
		    By default, a new array is created.
		border_value : int (cast to 0 or 1), optional
		    Value at the border in the output array.
		origin : int or tuple of ints, optional
		    Placement of the filter, by default 0.
		brute_force : boolean, optional
		    Memory condition: if False, only the pixels whose value was changed in
		    the last iteration are tracked as candidates to be updated (eroded) in
		    the current iteration; if True all pixels are considered as candidates
		    for erosion, regardless of what happened in the previous iteration.
		    False by default.
		
		Returns
		-------
		binary_erosion : ndarray of bools
		    Erosion of the input by the structuring element.
		
		See also
		--------
		grey_erosion, binary_dilation, binary_closing, binary_opening,
		generate_binary_structure
		
		Notes
		-----
		Erosion [1]_ is a mathematical morphology operation [2]_ that uses a
		structuring element for shrinking the shapes in an image. The binary
		erosion of an image by a structuring element is the locus of the points
		where a superimposition of the structuring element centered on the point
		is entirely contained in the set of non-zero elements of the image.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Erosion_%28morphology%29
		.. [2] https://en.wikipedia.org/wiki/Mathematical_morphology
		
		Examples
		--------
		>>> from scipy import ndimage
		>>> a = np.zeros((7,7), dtype=int)
		>>> a[1:6, 2:5] = 1
		>>> a
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
		>>> ndimage.binary_erosion(a).astype(a.dtype)
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 1, 0, 0, 0],
		       [0, 0, 0, 1, 0, 0, 0],
		       [0, 0, 0, 1, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
		>>> #Erosion removes objects smaller than the structure
		>>> ndimage.binary_erosion(a, structure=np.ones((5,5))).astype(a.dtype)
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
	**/
	static public function binary_erosion(input:Dynamic, ?structure:Dynamic, ?iterations:Dynamic, ?mask:Dynamic, ?output:Dynamic, ?border_value:Dynamic, ?origin:Dynamic, ?brute_force:Dynamic):Dynamic;
	/**
		Fill the holes in binary objects.
		
		
		Parameters
		----------
		input : array_like
		    N-D binary array with holes to be filled
		structure : array_like, optional
		    Structuring element used in the computation; large-size elements
		    make computations faster but may miss holes separated from the
		    background by thin regions. The default element (with a square
		    connectivity equal to one) yields the intuitive result where all
		    holes in the input have been filled.
		output : ndarray, optional
		    Array of the same shape as input, into which the output is placed.
		    By default, a new array is created.
		origin : int, tuple of ints, optional
		    Position of the structuring element.
		
		Returns
		-------
		out : ndarray
		    Transformation of the initial image `input` where holes have been
		    filled.
		
		See also
		--------
		binary_dilation, binary_propagation, label
		
		Notes
		-----
		The algorithm used in this function consists in invading the complementary
		of the shapes in `input` from the outer boundary of the image,
		using binary dilations. Holes are not connected to the boundary and are
		therefore not invaded. The result is the complementary subset of the
		invaded region.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Mathematical_morphology
		
		
		Examples
		--------
		>>> from scipy import ndimage
		>>> a = np.zeros((5, 5), dtype=int)
		>>> a[1:4, 1:4] = 1
		>>> a[2,2] = 0
		>>> a
		array([[0, 0, 0, 0, 0],
		       [0, 1, 1, 1, 0],
		       [0, 1, 0, 1, 0],
		       [0, 1, 1, 1, 0],
		       [0, 0, 0, 0, 0]])
		>>> ndimage.binary_fill_holes(a).astype(int)
		array([[0, 0, 0, 0, 0],
		       [0, 1, 1, 1, 0],
		       [0, 1, 1, 1, 0],
		       [0, 1, 1, 1, 0],
		       [0, 0, 0, 0, 0]])
		>>> # Too big structuring element
		>>> ndimage.binary_fill_holes(a, structure=np.ones((5,5))).astype(int)
		array([[0, 0, 0, 0, 0],
		       [0, 1, 1, 1, 0],
		       [0, 1, 0, 1, 0],
		       [0, 1, 1, 1, 0],
		       [0, 0, 0, 0, 0]])
	**/
	static public function binary_fill_holes(input:Dynamic, ?structure:Dynamic, ?output:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Multidimensional binary hit-or-miss transform.
		
		The hit-or-miss transform finds the locations of a given pattern
		inside the input image.
		
		Parameters
		----------
		input : array_like (cast to booleans)
		    Binary image where a pattern is to be detected.
		structure1 : array_like (cast to booleans), optional
		    Part of the structuring element to be fitted to the foreground
		    (non-zero elements) of `input`. If no value is provided, a
		    structure of square connectivity 1 is chosen.
		structure2 : array_like (cast to booleans), optional
		    Second part of the structuring element that has to miss completely
		    the foreground. If no value is provided, the complementary of
		    `structure1` is taken.
		output : ndarray, optional
		    Array of the same shape as input, into which the output is placed.
		    By default, a new array is created.
		origin1 : int or tuple of ints, optional
		    Placement of the first part of the structuring element `structure1`,
		    by default 0 for a centered structure.
		origin2 : int or tuple of ints, optional
		    Placement of the second part of the structuring element `structure2`,
		    by default 0 for a centered structure. If a value is provided for
		    `origin1` and not for `origin2`, then `origin2` is set to `origin1`.
		
		Returns
		-------
		binary_hit_or_miss : ndarray
		    Hit-or-miss transform of `input` with the given structuring
		    element (`structure1`, `structure2`).
		
		See also
		--------
		binary_erosion
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Hit-or-miss_transform
		
		Examples
		--------
		>>> from scipy import ndimage
		>>> a = np.zeros((7,7), dtype=int)
		>>> a[1, 1] = 1; a[2:4, 2:4] = 1; a[4:6, 4:6] = 1
		>>> a
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 1, 0, 0, 0, 0, 0],
		       [0, 0, 1, 1, 0, 0, 0],
		       [0, 0, 1, 1, 0, 0, 0],
		       [0, 0, 0, 0, 1, 1, 0],
		       [0, 0, 0, 0, 1, 1, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
		>>> structure1 = np.array([[1, 0, 0], [0, 1, 1], [0, 1, 1]])
		>>> structure1
		array([[1, 0, 0],
		       [0, 1, 1],
		       [0, 1, 1]])
		>>> # Find the matches of structure1 in the array a
		>>> ndimage.binary_hit_or_miss(a, structure1=structure1).astype(int)
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 1, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 1, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
		>>> # Change the origin of the filter
		>>> # origin1=1 is equivalent to origin1=(1,1) here
		>>> ndimage.binary_hit_or_miss(a, structure1=structure1,\
		... origin1=1).astype(int)
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 1, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 1, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
	**/
	static public function binary_hit_or_miss(input:Dynamic, ?structure1:Dynamic, ?structure2:Dynamic, ?output:Dynamic, ?origin1:Dynamic, ?origin2:Dynamic):Dynamic;
	/**
		Multidimensional binary opening with the given structuring element.
		
		The *opening* of an input image by a structuring element is the
		*dilation* of the *erosion* of the image by the structuring element.
		
		Parameters
		----------
		input : array_like
		    Binary array_like to be opened. Non-zero (True) elements form
		    the subset to be opened.
		structure : array_like, optional
		    Structuring element used for the opening. Non-zero elements are
		    considered True. If no structuring element is provided an element
		    is generated with a square connectivity equal to one (i.e., only
		    nearest neighbors are connected to the center, diagonally-connected
		    elements are not considered neighbors).
		iterations : int, optional
		    The erosion step of the opening, then the dilation step are each
		    repeated `iterations` times (one, by default). If `iterations` is
		    less than 1, each operation is repeated until the result does
		    not change anymore. Only an integer of iterations is accepted.
		output : ndarray, optional
		    Array of the same shape as input, into which the output is placed.
		    By default, a new array is created.
		origin : int or tuple of ints, optional
		    Placement of the filter, by default 0.
		mask : array_like, optional
		    If a mask is given, only those elements with a True value at
		    the corresponding mask element are modified at each iteration.
		
		    .. versionadded:: 1.1.0
		border_value : int (cast to 0 or 1), optional
		    Value at the border in the output array.
		
		    .. versionadded:: 1.1.0
		brute_force : boolean, optional
		    Memory condition: if False, only the pixels whose value was changed in
		    the last iteration are tracked as candidates to be updated in the
		    current iteration; if true all pixels are considered as candidates for
		    update, regardless of what happened in the previous iteration.
		    False by default.
		
		    .. versionadded:: 1.1.0
		
		Returns
		-------
		binary_opening : ndarray of bools
		    Opening of the input by the structuring element.
		
		See also
		--------
		grey_opening, binary_closing, binary_erosion, binary_dilation,
		generate_binary_structure
		
		Notes
		-----
		*Opening* [1]_ is a mathematical morphology operation [2]_ that
		consists in the succession of an erosion and a dilation of the
		input with the same structuring element. Opening, therefore, removes
		objects smaller than the structuring element.
		
		Together with *closing* (`binary_closing`), opening can be used for
		noise removal.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Opening_%28morphology%29
		.. [2] https://en.wikipedia.org/wiki/Mathematical_morphology
		
		Examples
		--------
		>>> from scipy import ndimage
		>>> a = np.zeros((5,5), dtype=int)
		>>> a[1:4, 1:4] = 1; a[4, 4] = 1
		>>> a
		array([[0, 0, 0, 0, 0],
		       [0, 1, 1, 1, 0],
		       [0, 1, 1, 1, 0],
		       [0, 1, 1, 1, 0],
		       [0, 0, 0, 0, 1]])
		>>> # Opening removes small objects
		>>> ndimage.binary_opening(a, structure=np.ones((3,3))).astype(int)
		array([[0, 0, 0, 0, 0],
		       [0, 1, 1, 1, 0],
		       [0, 1, 1, 1, 0],
		       [0, 1, 1, 1, 0],
		       [0, 0, 0, 0, 0]])
		>>> # Opening can also smooth corners
		>>> ndimage.binary_opening(a).astype(int)
		array([[0, 0, 0, 0, 0],
		       [0, 0, 1, 0, 0],
		       [0, 1, 1, 1, 0],
		       [0, 0, 1, 0, 0],
		       [0, 0, 0, 0, 0]])
		>>> # Opening is the dilation of the erosion of the input
		>>> ndimage.binary_erosion(a).astype(int)
		array([[0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0],
		       [0, 0, 1, 0, 0],
		       [0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0]])
		>>> ndimage.binary_dilation(ndimage.binary_erosion(a)).astype(int)
		array([[0, 0, 0, 0, 0],
		       [0, 0, 1, 0, 0],
		       [0, 1, 1, 1, 0],
		       [0, 0, 1, 0, 0],
		       [0, 0, 0, 0, 0]])
	**/
	static public function binary_opening(input:Dynamic, ?structure:Dynamic, ?iterations:Dynamic, ?output:Dynamic, ?origin:Dynamic, ?mask:Dynamic, ?border_value:Dynamic, ?brute_force:Dynamic):Dynamic;
	/**
		Multidimensional binary propagation with the given structuring element.
		
		Parameters
		----------
		input : array_like
		    Binary image to be propagated inside `mask`.
		structure : array_like, optional
		    Structuring element used in the successive dilations. The output
		    may depend on the structuring element, especially if `mask` has
		    several connex components. If no structuring element is
		    provided, an element is generated with a squared connectivity equal
		    to one.
		mask : array_like, optional
		    Binary mask defining the region into which `input` is allowed to
		    propagate.
		output : ndarray, optional
		    Array of the same shape as input, into which the output is placed.
		    By default, a new array is created.
		border_value : int (cast to 0 or 1), optional
		    Value at the border in the output array.
		origin : int or tuple of ints, optional
		    Placement of the filter, by default 0.
		
		Returns
		-------
		binary_propagation : ndarray
		    Binary propagation of `input` inside `mask`.
		
		Notes
		-----
		This function is functionally equivalent to calling binary_dilation
		with the number of iterations less than one: iterative dilation until
		the result does not change anymore.
		
		The succession of an erosion and propagation inside the original image
		can be used instead of an *opening* for deleting small objects while
		keeping the contours of larger objects untouched.
		
		References
		----------
		.. [1] http://cmm.ensmp.fr/~serra/cours/pdf/en/ch6en.pdf, slide 15.
		.. [2] I.T. Young, J.J. Gerbrands, and L.J. van Vliet, "Fundamentals of
		    image processing", 1998
		    ftp://qiftp.tudelft.nl/DIPimage/docs/FIP2.3.pdf
		
		Examples
		--------
		>>> from scipy import ndimage
		>>> input = np.zeros((8, 8), dtype=int)
		>>> input[2, 2] = 1
		>>> mask = np.zeros((8, 8), dtype=int)
		>>> mask[1:4, 1:4] = mask[4, 4]  = mask[6:8, 6:8] = 1
		>>> input
		array([[0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 1, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0]])
		>>> mask
		array([[0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 1, 1, 1, 0, 0, 0, 0],
		       [0, 1, 1, 1, 0, 0, 0, 0],
		       [0, 1, 1, 1, 0, 0, 0, 0],
		       [0, 0, 0, 0, 1, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 1, 1],
		       [0, 0, 0, 0, 0, 0, 1, 1]])
		>>> ndimage.binary_propagation(input, mask=mask).astype(int)
		array([[0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 1, 1, 1, 0, 0, 0, 0],
		       [0, 1, 1, 1, 0, 0, 0, 0],
		       [0, 1, 1, 1, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0]])
		>>> ndimage.binary_propagation(input, mask=mask,\
		... structure=np.ones((3,3))).astype(int)
		array([[0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 1, 1, 1, 0, 0, 0, 0],
		       [0, 1, 1, 1, 0, 0, 0, 0],
		       [0, 1, 1, 1, 0, 0, 0, 0],
		       [0, 0, 0, 0, 1, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0, 0]])
		
		>>> # Comparison between opening and erosion+propagation
		>>> a = np.zeros((6,6), dtype=int)
		>>> a[2:5, 2:5] = 1; a[0, 0] = 1; a[5, 5] = 1
		>>> a
		array([[1, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0],
		       [0, 0, 1, 1, 1, 0],
		       [0, 0, 1, 1, 1, 0],
		       [0, 0, 1, 1, 1, 0],
		       [0, 0, 0, 0, 0, 1]])
		>>> ndimage.binary_opening(a).astype(int)
		array([[0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0],
		       [0, 0, 0, 1, 0, 0],
		       [0, 0, 0, 0, 0, 0]])
		>>> b = ndimage.binary_erosion(a)
		>>> b.astype(int)
		array([[0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 1, 0, 0],
		       [0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0]])
		>>> ndimage.binary_propagation(b, mask=a).astype(int)
		array([[0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0],
		       [0, 0, 1, 1, 1, 0],
		       [0, 0, 1, 1, 1, 0],
		       [0, 0, 1, 1, 1, 0],
		       [0, 0, 0, 0, 0, 0]])
	**/
	static public function binary_propagation(input:Dynamic, ?structure:Dynamic, ?mask:Dynamic, ?output:Dynamic, ?border_value:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Multidimensional black tophat filter.
		
		Parameters
		----------
		input : array_like
		    Input.
		size : tuple of ints, optional
		    Shape of a flat and full structuring element used for the filter.
		    Optional if `footprint` or `structure` is provided.
		footprint : array of ints, optional
		    Positions of non-infinite elements of a flat structuring element
		    used for the black tophat filter.
		structure : array of ints, optional
		    Structuring element used for the filter. `structure`
		    may be a non-flat structuring element.
		output : array, optional
		    An array used for storing the output of the filter may be provided.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0
		
		Returns
		-------
		black_tophat : ndarray
		    Result of the filter of `input` with `structure`.
		
		Examples
		--------
		Change dark peak to bright peak and subtract background.
		
		>>> from scipy.ndimage import generate_binary_structure, black_tophat
		>>> square = generate_binary_structure(rank=2, connectivity=3)
		>>> dark_on_gray = np.array([[7, 6, 6, 6, 7],
		...                          [6, 5, 4, 5, 6],
		...                          [6, 4, 0, 4, 6],
		...                          [6, 5, 4, 5, 6],
		...                          [7, 6, 6, 6, 7]])
		>>> black_tophat(input=dark_on_gray, structure=square)
		array([[0, 0, 0, 0, 0],
		       [0, 0, 1, 0, 0],
		       [0, 1, 5, 1, 0],
		       [0, 0, 1, 0, 0],
		       [0, 0, 0, 0, 0]])
		
		See also
		--------
		white_tophat, grey_opening, grey_closing
	**/
	static public function black_tophat(input:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?structure:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Distance transform function by a brute force algorithm.
		
		This function calculates the distance transform of the `input`, by
		replacing each foreground (non-zero) element, with its
		shortest distance to the background (any zero-valued element).
		
		In addition to the distance transform, the feature transform can
		be calculated. In this case the index of the closest background
		element to each foreground element is returned in a separate array.
		
		Parameters
		----------
		input : array_like
		    Input
		metric : {'euclidean', 'taxicab', 'chessboard'}, optional
		    'cityblock' and 'manhattan' are also valid, and map to 'taxicab'.
		    The default is 'euclidean'.
		sampling : float, or sequence of float, optional
		    This parameter is only used when `metric` is 'euclidean'.
		    Spacing of elements along each dimension. If a sequence, must be of
		    length equal to the input rank; if a single number, this is used for
		    all axes. If not specified, a grid spacing of unity is implied.
		return_distances : bool, optional
		    Whether to calculate the distance transform.
		    Default is True.
		return_indices : bool, optional
		    Whether to calculate the feature transform.
		    Default is False.
		distances : ndarray, optional
		    An output array to store the calculated distance transform, instead of
		    returning it.
		    `return_distances` must be True.
		    It must be the same shape as `input`, and of type float64 if `metric`
		    is 'euclidean', uint32 otherwise.
		indices : int32 ndarray, optional
		    An output array to store the calculated feature transform, instead of
		    returning it.
		    `return_indicies` must be True.
		    Its shape must be `(input.ndim,) + input.shape`.
		
		Returns
		-------
		distances : ndarray, optional
		    The calculated distance transform. Returned only when
		    `return_distances` is True and `distances` is not supplied.
		    It will have the same shape as the input array.
		indices : int32 ndarray, optional
		    The calculated feature transform. It has an input-shaped array for each
		    dimension of the input. See distance_transform_edt documentation for an
		    example.
		    Returned only when `return_indices` is True and `indices` is not
		    supplied.
		
		Notes
		-----
		This function employs a slow brute force algorithm, see also the
		function distance_transform_cdt for more efficient taxicab and
		chessboard algorithms.
	**/
	static public function distance_transform_bf(input:Dynamic, ?metric:Dynamic, ?sampling:Dynamic, ?return_distances:Dynamic, ?return_indices:Dynamic, ?distances:Dynamic, ?indices:Dynamic):Dynamic;
	/**
		Distance transform for chamfer type of transforms.
		
		In addition to the distance transform, the feature transform can
		be calculated. In this case the index of the closest background
		element to each foreground element is returned in a separate array.
		
		Parameters
		----------
		input : array_like
		    Input
		metric : {'chessboard', 'taxicab'} or array_like, optional
		    The `metric` determines the type of chamfering that is done. If the
		    `metric` is equal to 'taxicab' a structure is generated using
		    generate_binary_structure with a squared distance equal to 1. If
		    the `metric` is equal to 'chessboard', a `metric` is generated
		    using generate_binary_structure with a squared distance equal to
		    the dimensionality of the array. These choices correspond to the
		    common interpretations of the 'taxicab' and the 'chessboard'
		    distance metrics in two dimensions.
		    A custom metric may be provided, in the form of a matrix where
		    each dimension has a length of three.
		    'cityblock' and 'manhattan' are also valid, and map to 'taxicab'.
		    The default is 'chessboard'.
		return_distances : bool, optional
		    Whether to calculate the distance transform.
		    Default is True.
		return_indices : bool, optional
		    Whether to calculate the feature transform.
		    Default is False.
		distances : int32 ndarray, optional
		    An output array to store the calculated distance transform, instead of
		    returning it.
		    `return_distances` must be True.
		    It must be the same shape as `input`.
		indices : int32 ndarray, optional
		    An output array to store the calculated feature transform, instead of
		    returning it.
		    `return_indicies` must be True.
		    Its shape must be `(input.ndim,) + input.shape`.
		
		Returns
		-------
		distances : int32 ndarray, optional
		    The calculated distance transform. Returned only when
		    `return_distances` is True, and `distances` is not supplied.
		    It will have the same shape as the input array.
		indices : int32 ndarray, optional
		    The calculated feature transform. It has an input-shaped array for each
		    dimension of the input. See distance_transform_edt documentation for an
		    example.
		    Returned only when `return_indices` is True, and `indices` is not
		    supplied.
	**/
	static public function distance_transform_cdt(input:Dynamic, ?metric:Dynamic, ?return_distances:Dynamic, ?return_indices:Dynamic, ?distances:Dynamic, ?indices:Dynamic):Dynamic;
	/**
		Exact Euclidean distance transform.
		
		In addition to the distance transform, the feature transform can
		be calculated. In this case the index of the closest background
		element to each foreground element is returned in a separate array.
		
		Parameters
		----------
		input : array_like
		    Input data to transform. Can be any type but will be converted
		    into binary: 1 wherever input equates to True, 0 elsewhere.
		sampling : float, or sequence of float, optional
		    Spacing of elements along each dimension. If a sequence, must be of
		    length equal to the input rank; if a single number, this is used for
		    all axes. If not specified, a grid spacing of unity is implied.
		return_distances : bool, optional
		    Whether to calculate the distance transform.
		    Default is True.
		return_indices : bool, optional
		    Whether to calculate the feature transform.
		    Default is False.
		distances : float64 ndarray, optional
		    An output array to store the calculated distance transform, instead of
		    returning it.
		    `return_distances` must be True.
		    It must be the same shape as `input`.
		indices : int32 ndarray, optional
		    An output array to store the calculated feature transform, instead of
		    returning it.
		    `return_indicies` must be True.
		    Its shape must be `(input.ndim,) + input.shape`.
		
		Returns
		-------
		distances : float64 ndarray, optional
		    The calculated distance transform. Returned only when
		    `return_distances` is True and `distances` is not supplied.
		    It will have the same shape as the input array.
		indices : int32 ndarray, optional
		    The calculated feature transform. It has an input-shaped array for each
		    dimension of the input. See example below.
		    Returned only when `return_indices` is True and `indices` is not
		    supplied.
		
		Notes
		-----
		The Euclidean distance transform gives values of the Euclidean
		distance::
		
		                n
		  y_i = sqrt(sum (x[i]-b[i])**2)
		                i
		
		where b[i] is the background point (value 0) with the smallest
		Euclidean distance to input points x[i], and n is the
		number of dimensions.
		
		Examples
		--------
		>>> from scipy import ndimage
		>>> a = np.array(([0,1,1,1,1],
		...               [0,0,1,1,1],
		...               [0,1,1,1,1],
		...               [0,1,1,1,0],
		...               [0,1,1,0,0]))
		>>> ndimage.distance_transform_edt(a)
		array([[ 0.    ,  1.    ,  1.4142,  2.2361,  3.    ],
		       [ 0.    ,  0.    ,  1.    ,  2.    ,  2.    ],
		       [ 0.    ,  1.    ,  1.4142,  1.4142,  1.    ],
		       [ 0.    ,  1.    ,  1.4142,  1.    ,  0.    ],
		       [ 0.    ,  1.    ,  1.    ,  0.    ,  0.    ]])
		
		With a sampling of 2 units along x, 1 along y:
		
		>>> ndimage.distance_transform_edt(a, sampling=[2,1])
		array([[ 0.    ,  1.    ,  2.    ,  2.8284,  3.6056],
		       [ 0.    ,  0.    ,  1.    ,  2.    ,  3.    ],
		       [ 0.    ,  1.    ,  2.    ,  2.2361,  2.    ],
		       [ 0.    ,  1.    ,  2.    ,  1.    ,  0.    ],
		       [ 0.    ,  1.    ,  1.    ,  0.    ,  0.    ]])
		
		Asking for indices as well:
		
		>>> edt, inds = ndimage.distance_transform_edt(a, return_indices=True)
		>>> inds
		array([[[0, 0, 1, 1, 3],
		        [1, 1, 1, 1, 3],
		        [2, 2, 1, 3, 3],
		        [3, 3, 4, 4, 3],
		        [4, 4, 4, 4, 4]],
		       [[0, 0, 1, 1, 4],
		        [0, 1, 1, 1, 4],
		        [0, 0, 1, 4, 4],
		        [0, 0, 3, 3, 4],
		        [0, 0, 3, 3, 4]]])
		
		With arrays provided for inplace outputs:
		
		>>> indices = np.zeros(((np.ndim(a),) + a.shape), dtype=np.int32)
		>>> ndimage.distance_transform_edt(a, return_indices=True, indices=indices)
		array([[ 0.    ,  1.    ,  1.4142,  2.2361,  3.    ],
		       [ 0.    ,  0.    ,  1.    ,  2.    ,  2.    ],
		       [ 0.    ,  1.    ,  1.4142,  1.4142,  1.    ],
		       [ 0.    ,  1.    ,  1.4142,  1.    ,  0.    ],
		       [ 0.    ,  1.    ,  1.    ,  0.    ,  0.    ]])
		>>> indices
		array([[[0, 0, 1, 1, 3],
		        [1, 1, 1, 1, 3],
		        [2, 2, 1, 3, 3],
		        [3, 3, 4, 4, 3],
		        [4, 4, 4, 4, 4]],
		       [[0, 0, 1, 1, 4],
		        [0, 1, 1, 1, 4],
		        [0, 0, 1, 4, 4],
		        [0, 0, 3, 3, 4],
		        [0, 0, 3, 3, 4]]])
	**/
	static public function distance_transform_edt(input:Dynamic, ?sampling:Dynamic, ?return_distances:Dynamic, ?return_indices:Dynamic, ?distances:Dynamic, ?indices:Dynamic):Dynamic;
	/**
		Generate a binary structure for binary morphological operations.
		
		Parameters
		----------
		rank : int
		     Number of dimensions of the array to which the structuring element
		     will be applied, as returned by `np.ndim`.
		connectivity : int
		     `connectivity` determines which elements of the output array belong
		     to the structure, i.e., are considered as neighbors of the central
		     element. Elements up to a squared distance of `connectivity` from
		     the center are considered neighbors. `connectivity` may range from 1
		     (no diagonal elements are neighbors) to `rank` (all elements are
		     neighbors).
		
		Returns
		-------
		output : ndarray of bools
		     Structuring element which may be used for binary morphological
		     operations, with `rank` dimensions and all dimensions equal to 3.
		
		See also
		--------
		iterate_structure, binary_dilation, binary_erosion
		
		Notes
		-----
		`generate_binary_structure` can only create structuring elements with
		dimensions equal to 3, i.e., minimal dimensions. For larger structuring
		elements, that are useful e.g., for eroding large objects, one may either
		use `iterate_structure`, or create directly custom arrays with
		numpy functions such as `numpy.ones`.
		
		Examples
		--------
		>>> from scipy import ndimage
		>>> struct = ndimage.generate_binary_structure(2, 1)
		>>> struct
		array([[False,  True, False],
		       [ True,  True,  True],
		       [False,  True, False]], dtype=bool)
		>>> a = np.zeros((5,5))
		>>> a[2, 2] = 1
		>>> a
		array([[ 0.,  0.,  0.,  0.,  0.],
		       [ 0.,  0.,  0.,  0.,  0.],
		       [ 0.,  0.,  1.,  0.,  0.],
		       [ 0.,  0.,  0.,  0.,  0.],
		       [ 0.,  0.,  0.,  0.,  0.]])
		>>> b = ndimage.binary_dilation(a, structure=struct).astype(a.dtype)
		>>> b
		array([[ 0.,  0.,  0.,  0.,  0.],
		       [ 0.,  0.,  1.,  0.,  0.],
		       [ 0.,  1.,  1.,  1.,  0.],
		       [ 0.,  0.,  1.,  0.,  0.],
		       [ 0.,  0.,  0.,  0.,  0.]])
		>>> ndimage.binary_dilation(b, structure=struct).astype(a.dtype)
		array([[ 0.,  0.,  1.,  0.,  0.],
		       [ 0.,  1.,  1.,  1.,  0.],
		       [ 1.,  1.,  1.,  1.,  1.],
		       [ 0.,  1.,  1.,  1.,  0.],
		       [ 0.,  0.,  1.,  0.,  0.]])
		>>> struct = ndimage.generate_binary_structure(2, 2)
		>>> struct
		array([[ True,  True,  True],
		       [ True,  True,  True],
		       [ True,  True,  True]], dtype=bool)
		>>> struct = ndimage.generate_binary_structure(3, 1)
		>>> struct # no diagonal elements
		array([[[False, False, False],
		        [False,  True, False],
		        [False, False, False]],
		       [[False,  True, False],
		        [ True,  True,  True],
		        [False,  True, False]],
		       [[False, False, False],
		        [False,  True, False],
		        [False, False, False]]], dtype=bool)
	**/
	static public function generate_binary_structure(rank:Dynamic, connectivity:Dynamic):Dynamic;
	/**
		Multidimensional grayscale closing.
		
		A grayscale closing consists in the succession of a grayscale dilation,
		and a grayscale erosion.
		
		Parameters
		----------
		input : array_like
		    Array over which the grayscale closing is to be computed.
		size : tuple of ints
		    Shape of a flat and full structuring element used for the grayscale
		    closing. Optional if `footprint` or `structure` is provided.
		footprint : array of ints, optional
		    Positions of non-infinite elements of a flat structuring element
		    used for the grayscale closing.
		structure : array of ints, optional
		    Structuring element used for the grayscale closing. `structure`
		    may be a non-flat structuring element.
		output : array, optional
		    An array used for storing the output of the closing may be provided.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0
		
		Returns
		-------
		grey_closing : ndarray
		    Result of the grayscale closing of `input` with `structure`.
		
		See also
		--------
		binary_closing, grey_dilation, grey_erosion, grey_opening,
		generate_binary_structure
		
		Notes
		-----
		The action of a grayscale closing with a flat structuring element amounts
		to smoothen deep local minima, whereas binary closing fills small holes.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Mathematical_morphology
		
		Examples
		--------
		>>> from scipy import ndimage
		>>> a = np.arange(36).reshape((6,6))
		>>> a[3,3] = 0
		>>> a
		array([[ 0,  1,  2,  3,  4,  5],
		       [ 6,  7,  8,  9, 10, 11],
		       [12, 13, 14, 15, 16, 17],
		       [18, 19, 20,  0, 22, 23],
		       [24, 25, 26, 27, 28, 29],
		       [30, 31, 32, 33, 34, 35]])
		>>> ndimage.grey_closing(a, size=(3,3))
		array([[ 7,  7,  8,  9, 10, 11],
		       [ 7,  7,  8,  9, 10, 11],
		       [13, 13, 14, 15, 16, 17],
		       [19, 19, 20, 20, 22, 23],
		       [25, 25, 26, 27, 28, 29],
		       [31, 31, 32, 33, 34, 35]])
		>>> # Note that the local minimum a[3,3] has disappeared
	**/
	static public function grey_closing(input:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?structure:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculate a greyscale dilation, using either a structuring element,
		or a footprint corresponding to a flat structuring element.
		
		Grayscale dilation is a mathematical morphology operation. For the
		simple case of a full and flat structuring element, it can be viewed
		as a maximum filter over a sliding window.
		
		Parameters
		----------
		input : array_like
		    Array over which the grayscale dilation is to be computed.
		size : tuple of ints
		    Shape of a flat and full structuring element used for the grayscale
		    dilation. Optional if `footprint` or `structure` is provided.
		footprint : array of ints, optional
		    Positions of non-infinite elements of a flat structuring element
		    used for the grayscale dilation. Non-zero values give the set of
		    neighbors of the center over which the maximum is chosen.
		structure : array of ints, optional
		    Structuring element used for the grayscale dilation. `structure`
		    may be a non-flat structuring element.
		output : array, optional
		    An array used for storing the output of the dilation may be provided.
		mode : {'reflect','constant','nearest','mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0
		
		Returns
		-------
		grey_dilation : ndarray
		    Grayscale dilation of `input`.
		
		See also
		--------
		binary_dilation, grey_erosion, grey_closing, grey_opening
		generate_binary_structure, maximum_filter
		
		Notes
		-----
		The grayscale dilation of an image input by a structuring element s defined
		over a domain E is given by:
		
		(input+s)(x) = max {input(y) + s(x-y), for y in E}
		
		In particular, for structuring elements defined as
		s(y) = 0 for y in E, the grayscale dilation computes the maximum of the
		input image inside a sliding window defined by E.
		
		Grayscale dilation [1]_ is a *mathematical morphology* operation [2]_.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Dilation_%28morphology%29
		.. [2] https://en.wikipedia.org/wiki/Mathematical_morphology
		
		Examples
		--------
		>>> from scipy import ndimage
		>>> a = np.zeros((7,7), dtype=int)
		>>> a[2:5, 2:5] = 1
		>>> a[4,4] = 2; a[2,3] = 3
		>>> a
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 1, 3, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 1, 1, 2, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
		>>> ndimage.grey_dilation(a, size=(3,3))
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 1, 3, 3, 3, 1, 0],
		       [0, 1, 3, 3, 3, 1, 0],
		       [0, 1, 3, 3, 3, 2, 0],
		       [0, 1, 1, 2, 2, 2, 0],
		       [0, 1, 1, 2, 2, 2, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
		>>> ndimage.grey_dilation(a, footprint=np.ones((3,3)))
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 1, 3, 3, 3, 1, 0],
		       [0, 1, 3, 3, 3, 1, 0],
		       [0, 1, 3, 3, 3, 2, 0],
		       [0, 1, 1, 2, 2, 2, 0],
		       [0, 1, 1, 2, 2, 2, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
		>>> s = ndimage.generate_binary_structure(2,1)
		>>> s
		array([[False,  True, False],
		       [ True,  True,  True],
		       [False,  True, False]], dtype=bool)
		>>> ndimage.grey_dilation(a, footprint=s)
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 1, 3, 1, 0, 0],
		       [0, 1, 3, 3, 3, 1, 0],
		       [0, 1, 1, 3, 2, 1, 0],
		       [0, 1, 1, 2, 2, 2, 0],
		       [0, 0, 1, 1, 2, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
		>>> ndimage.grey_dilation(a, size=(3,3), structure=np.ones((3,3)))
		array([[1, 1, 1, 1, 1, 1, 1],
		       [1, 2, 4, 4, 4, 2, 1],
		       [1, 2, 4, 4, 4, 2, 1],
		       [1, 2, 4, 4, 4, 3, 1],
		       [1, 2, 2, 3, 3, 3, 1],
		       [1, 2, 2, 3, 3, 3, 1],
		       [1, 1, 1, 1, 1, 1, 1]])
	**/
	static public function grey_dilation(input:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?structure:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Calculate a greyscale erosion, using either a structuring element,
		or a footprint corresponding to a flat structuring element.
		
		Grayscale erosion is a mathematical morphology operation. For the
		simple case of a full and flat structuring element, it can be viewed
		as a minimum filter over a sliding window.
		
		Parameters
		----------
		input : array_like
		    Array over which the grayscale erosion is to be computed.
		size : tuple of ints
		    Shape of a flat and full structuring element used for the grayscale
		    erosion. Optional if `footprint` or `structure` is provided.
		footprint : array of ints, optional
		    Positions of non-infinite elements of a flat structuring element
		    used for the grayscale erosion. Non-zero values give the set of
		    neighbors of the center over which the minimum is chosen.
		structure : array of ints, optional
		    Structuring element used for the grayscale erosion. `structure`
		    may be a non-flat structuring element.
		output : array, optional
		    An array used for storing the output of the erosion may be provided.
		mode : {'reflect','constant','nearest','mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0
		
		Returns
		-------
		output : ndarray
		    Grayscale erosion of `input`.
		
		See also
		--------
		binary_erosion, grey_dilation, grey_opening, grey_closing
		generate_binary_structure, minimum_filter
		
		Notes
		-----
		The grayscale erosion of an image input by a structuring element s defined
		over a domain E is given by:
		
		(input+s)(x) = min {input(y) - s(x-y), for y in E}
		
		In particular, for structuring elements defined as
		s(y) = 0 for y in E, the grayscale erosion computes the minimum of the
		input image inside a sliding window defined by E.
		
		Grayscale erosion [1]_ is a *mathematical morphology* operation [2]_.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Erosion_%28morphology%29
		.. [2] https://en.wikipedia.org/wiki/Mathematical_morphology
		
		Examples
		--------
		>>> from scipy import ndimage
		>>> a = np.zeros((7,7), dtype=int)
		>>> a[1:6, 1:6] = 3
		>>> a[4,4] = 2; a[2,3] = 1
		>>> a
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 3, 3, 3, 3, 3, 0],
		       [0, 3, 3, 1, 3, 3, 0],
		       [0, 3, 3, 3, 3, 3, 0],
		       [0, 3, 3, 3, 2, 3, 0],
		       [0, 3, 3, 3, 3, 3, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
		>>> ndimage.grey_erosion(a, size=(3,3))
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 3, 2, 2, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
		>>> footprint = ndimage.generate_binary_structure(2, 1)
		>>> footprint
		array([[False,  True, False],
		       [ True,  True,  True],
		       [False,  True, False]], dtype=bool)
		>>> # Diagonally-connected elements are not considered neighbors
		>>> ndimage.grey_erosion(a, size=(3,3), footprint=footprint)
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 3, 1, 2, 0, 0],
		       [0, 0, 3, 2, 2, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
	**/
	static public function grey_erosion(input:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?structure:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Multidimensional grayscale opening.
		
		A grayscale opening consists in the succession of a grayscale erosion,
		and a grayscale dilation.
		
		Parameters
		----------
		input : array_like
		    Array over which the grayscale opening is to be computed.
		size : tuple of ints
		    Shape of a flat and full structuring element used for the grayscale
		    opening. Optional if `footprint` or `structure` is provided.
		footprint : array of ints, optional
		    Positions of non-infinite elements of a flat structuring element
		    used for the grayscale opening.
		structure : array of ints, optional
		    Structuring element used for the grayscale opening. `structure`
		    may be a non-flat structuring element.
		output : array, optional
		    An array used for storing the output of the opening may be provided.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0
		
		Returns
		-------
		grey_opening : ndarray
		    Result of the grayscale opening of `input` with `structure`.
		
		See also
		--------
		binary_opening, grey_dilation, grey_erosion, grey_closing
		generate_binary_structure
		
		Notes
		-----
		The action of a grayscale opening with a flat structuring element amounts
		to smoothen high local maxima, whereas binary opening erases small objects.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Mathematical_morphology
		
		Examples
		--------
		>>> from scipy import ndimage
		>>> a = np.arange(36).reshape((6,6))
		>>> a[3, 3] = 50
		>>> a
		array([[ 0,  1,  2,  3,  4,  5],
		       [ 6,  7,  8,  9, 10, 11],
		       [12, 13, 14, 15, 16, 17],
		       [18, 19, 20, 50, 22, 23],
		       [24, 25, 26, 27, 28, 29],
		       [30, 31, 32, 33, 34, 35]])
		>>> ndimage.grey_opening(a, size=(3,3))
		array([[ 0,  1,  2,  3,  4,  4],
		       [ 6,  7,  8,  9, 10, 10],
		       [12, 13, 14, 15, 16, 16],
		       [18, 19, 20, 22, 22, 22],
		       [24, 25, 26, 27, 28, 28],
		       [24, 25, 26, 27, 28, 28]])
		>>> # Note that the local maximum a[3,3] has disappeared
	**/
	static public function grey_opening(input:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?structure:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Iterate a structure by dilating it with itself.
		
		Parameters
		----------
		structure : array_like
		   Structuring element (an array of bools, for example), to be dilated with
		   itself.
		iterations : int
		   number of dilations performed on the structure with itself
		origin : optional
		    If origin is None, only the iterated structure is returned. If
		    not, a tuple of the iterated structure and the modified origin is
		    returned.
		
		Returns
		-------
		iterate_structure : ndarray of bools
		    A new structuring element obtained by dilating `structure`
		    (`iterations` - 1) times with itself.
		
		See also
		--------
		generate_binary_structure
		
		Examples
		--------
		>>> from scipy import ndimage
		>>> struct = ndimage.generate_binary_structure(2, 1)
		>>> struct.astype(int)
		array([[0, 1, 0],
		       [1, 1, 1],
		       [0, 1, 0]])
		>>> ndimage.iterate_structure(struct, 2).astype(int)
		array([[0, 0, 1, 0, 0],
		       [0, 1, 1, 1, 0],
		       [1, 1, 1, 1, 1],
		       [0, 1, 1, 1, 0],
		       [0, 0, 1, 0, 0]])
		>>> ndimage.iterate_structure(struct, 3).astype(int)
		array([[0, 0, 0, 1, 0, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 1, 1, 1, 1, 1, 0],
		       [1, 1, 1, 1, 1, 1, 1],
		       [0, 1, 1, 1, 1, 1, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 0, 1, 0, 0, 0]])
	**/
	static public function iterate_structure(structure:Dynamic, iterations:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Multidimensional morphological gradient.
		
		The morphological gradient is calculated as the difference between a
		dilation and an erosion of the input with a given structuring element.
		
		Parameters
		----------
		input : array_like
		    Array over which to compute the morphlogical gradient.
		size : tuple of ints
		    Shape of a flat and full structuring element used for the mathematical
		    morphology operations. Optional if `footprint` or `structure` is
		    provided. A larger `size` yields a more blurred gradient.
		footprint : array of ints, optional
		    Positions of non-infinite elements of a flat structuring element
		    used for the morphology operations. Larger footprints
		    give a more blurred morphological gradient.
		structure : array of ints, optional
		    Structuring element used for the morphology operations.
		    `structure` may be a non-flat structuring element.
		output : array, optional
		    An array used for storing the output of the morphological gradient
		    may be provided.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'. Default
		    is 0.0.
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default 0
		
		Returns
		-------
		morphological_gradient : ndarray
		    Morphological gradient of `input`.
		
		See also
		--------
		grey_dilation, grey_erosion, gaussian_gradient_magnitude
		
		Notes
		-----
		For a flat structuring element, the morphological gradient
		computed at a given point corresponds to the maximal difference
		between elements of the input among the elements covered by the
		structuring element centered on the point.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Mathematical_morphology
		
		Examples
		--------
		>>> from scipy import ndimage
		>>> a = np.zeros((7,7), dtype=int)
		>>> a[2:5, 2:5] = 1
		>>> ndimage.morphological_gradient(a, size=(3,3))
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 1, 1, 1, 1, 1, 0],
		       [0, 1, 1, 1, 1, 1, 0],
		       [0, 1, 1, 0, 1, 1, 0],
		       [0, 1, 1, 1, 1, 1, 0],
		       [0, 1, 1, 1, 1, 1, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
		>>> # The morphological gradient is computed as the difference
		>>> # between a dilation and an erosion
		>>> ndimage.grey_dilation(a, size=(3,3)) -\
		...  ndimage.grey_erosion(a, size=(3,3))
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 1, 1, 1, 1, 1, 0],
		       [0, 1, 1, 1, 1, 1, 0],
		       [0, 1, 1, 0, 1, 1, 0],
		       [0, 1, 1, 1, 1, 1, 0],
		       [0, 1, 1, 1, 1, 1, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
		>>> a = np.zeros((7,7), dtype=int)
		>>> a[2:5, 2:5] = 1
		>>> a[4,4] = 2; a[2,3] = 3
		>>> a
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 1, 3, 1, 0, 0],
		       [0, 0, 1, 1, 1, 0, 0],
		       [0, 0, 1, 1, 2, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
		>>> ndimage.morphological_gradient(a, size=(3,3))
		array([[0, 0, 0, 0, 0, 0, 0],
		       [0, 1, 3, 3, 3, 1, 0],
		       [0, 1, 3, 3, 3, 1, 0],
		       [0, 1, 3, 2, 3, 2, 0],
		       [0, 1, 1, 2, 2, 2, 0],
		       [0, 1, 1, 2, 2, 2, 0],
		       [0, 0, 0, 0, 0, 0, 0]])
	**/
	static public function morphological_gradient(input:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?structure:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Multidimensional morphological laplace.
		
		Parameters
		----------
		input : array_like
		    Input.
		size : int or sequence of ints, optional
		    See `structure`.
		footprint : bool or ndarray, optional
		    See `structure`.
		structure : structure, optional
		    Either `size`, `footprint`, or the `structure` must be provided.
		output : ndarray, optional
		    An output array can optionally be provided.
		mode : {'reflect','constant','nearest','mirror', 'wrap'}, optional
		    The mode parameter determines how the array borders are handled.
		    For 'constant' mode, values beyond borders are set to be `cval`.
		    Default is 'reflect'.
		cval : scalar, optional
		    Value to fill past edges of input if mode is 'constant'.
		    Default is 0.0
		origin : origin, optional
		    The origin parameter controls the placement of the filter.
		
		Returns
		-------
		morphological_laplace : ndarray
		    Output
	**/
	static public function morphological_laplace(input:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?structure:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Multidimensional white tophat filter.
		
		Parameters
		----------
		input : array_like
		    Input.
		size : tuple of ints
		    Shape of a flat and full structuring element used for the filter.
		    Optional if `footprint` or `structure` is provided.
		footprint : array of ints, optional
		    Positions of elements of a flat structuring element
		    used for the white tophat filter.
		structure : array of ints, optional
		    Structuring element used for the filter. `structure`
		    may be a non-flat structuring element.
		output : array, optional
		    An array used for storing the output of the filter may be provided.
		mode : {'reflect', 'constant', 'nearest', 'mirror', 'wrap'}, optional
		    The `mode` parameter determines how the array borders are
		    handled, where `cval` is the value when mode is equal to
		    'constant'. Default is 'reflect'
		cval : scalar, optional
		    Value to fill past edges of input if `mode` is 'constant'.
		    Default is 0.0.
		origin : scalar, optional
		    The `origin` parameter controls the placement of the filter.
		    Default is 0.
		
		Returns
		-------
		output : ndarray
		    Result of the filter of `input` with `structure`.
		
		Examples
		--------
		Subtract gray background from a bright peak.
		
		>>> from scipy.ndimage import generate_binary_structure, white_tophat
		>>> square = generate_binary_structure(rank=2, connectivity=3)
		>>> bright_on_gray = np.array([[2, 3, 3, 3, 2],
		...                            [3, 4, 5, 4, 3],
		...                            [3, 5, 9, 5, 3],
		...                            [3, 4, 5, 4, 3],
		...                            [2, 3, 3, 3, 2]])
		>>> white_tophat(input=bright_on_gray, structure=square)
		array([[0, 0, 0, 0, 0],
		       [0, 0, 1, 0, 0],
		       [0, 1, 5, 1, 0],
		       [0, 0, 1, 0, 0],
		       [0, 0, 0, 0, 0]])
		
		See also
		--------
		black_tophat
	**/
	static public function white_tophat(input:Dynamic, ?size:Dynamic, ?footprint:Dynamic, ?structure:Dynamic, ?output:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
}