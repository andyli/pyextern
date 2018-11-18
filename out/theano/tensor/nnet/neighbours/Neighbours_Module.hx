/* This file is generated, do not edit! */
package theano.tensor.nnet.neighbours;
@:pythonImport("theano.tensor.nnet.neighbours") extern class Neighbours_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Return an un-computable symbolic variable of type `x.type`.
		
		If any call to tensor.grad results in an expression containing this
		un-computable variable, an exception (NotImplementedError) will be
		raised indicating that the gradient on the
		`x_pos`'th input of `op` has not been implemented. Likewise if
		any call to theano.function involves this variable.
		
		Optionally adds a comment to the exception explaining why this
		gradient is not implemented.
	**/
	static public function grad_not_implemented(op:Dynamic, x_pos:Dynamic, x:Dynamic, ?comment:Dynamic):Dynamic;
	/**
		Return an un-computable symbolic variable of type `x.type`.
		
		If any call to tensor.grad results in an expression containing this
		un-computable variable, an exception (GradUndefinedError) will be
		raised indicating that the gradient on the
		`x_pos`'th input of `op` is mathematically undefined. Likewise if
		any call to theano.function involves this variable.
		
		Optionally adds a comment to the exception explaining why this
		gradient is not defined.
	**/
	static public function grad_undefined(op:Dynamic, x_pos:Dynamic, x:Dynamic, ?comment:Dynamic):Dynamic;
	/**
		Function :func:`images2neibs <theano.tensor.nnet.neighbours.images2neibs>`
		allows to apply a sliding window operation to a tensor containing
		images or other two-dimensional objects.
		The sliding window operation loops over points in input data and stores
		a rectangular neighbourhood of each point.
		It is possible to assign a step of selecting patches (parameter `neib_step`).
		
		Parameters
		----------
		ten4 : A 4d tensor-like
		    A 4-dimensional tensor which represents a list of lists of images.
		    It should have shape (list 1 dim, list 2 dim, row, col). The first
		    two dimensions can be useful to store different channels and batches.
		neib_shape : A 1d tensor-like of 2 values
		    A tuple containing two values: height and width of the neighbourhood.
		    It should have shape (r,c) where r is the height of the neighborhood
		    in rows and c is the width of the neighborhood in columns.
		neib_step : A 1d tensor-like of 2 values
		    (dr,dc) where dr is the number of rows to skip between patch and dc is
		    the number of columns. The parameter should be a tuple of two elements:
		    number of rows and number of columns to skip each iteration.
		    Basically, when the step is 1, the neighbourhood of every first element
		    is taken and every possible rectangular subset is returned.
		    By default it is equal to `neib_shape` in other words, the patches are
		    disjoint. When the step is greater than `neib_shape`, some elements are
		    omitted. When None, this is the same as neib_shape (patch are disjoint).
		mode : {'valid', 'ignore_borders', 'wrap_centered', 'half'}
		    ``valid``
		        Requires an input that is a multiple of the
		        pooling factor (in each direction).
		    ``half``
		        Equivalent to 'valid' if we pre-pad with zeros the input on
		        each side by (neib_shape[0]//2, neib_shape[1]//2)
		    ``full``
		        Equivalent to 'valid' if we pre-pad with zeros the input on
		        each side by (neib_shape[0] - 1, neib_shape[1] - 1)
		    ``ignore_borders``
		        Same as valid, but will ignore the borders if the shape(s) of
		        the input is not a multiple of the pooling factor(s).
		    ``wrap_centered``
		        ?? TODO comment
		
		Returns
		-------
		object
		    Reshapes the input as a 2D tensor where each row is an
		    pooling example. Pseudo-code of the output:
		
		      .. code-block:: python
		
		         idx = 0
		         for i in xrange(list 1 dim):
		             for j in xrange(list 2 dim):
		                 for k in <image column coordinates>:
		                     for l in <image row coordinates>:
		                         output[idx,:]
		                              = flattened version of ten4[i,j,l:l+r,k:k+c]
		                         idx += 1
		
		      .. note:: The operation isn't necessarily implemented internally with
		         these for loops, they're just the easiest way to describe the
		         output pattern.
		
		Notes
		-----
		.. note::
		    Currently the step size should be chosen in the way that the
		    corresponding dimension :math:`i` (width or height) is equal
		    to :math:`n * step\_size_i + neib\_shape_i` for some :math:`n`.
		
		Examples
		--------
		
		.. code-block:: python
		
		    # Defining variables
		    images = T.tensor4('images')
		    neibs = images2neibs(images, neib_shape=(5, 5))
		
		    # Constructing theano function
		    window_function = theano.function([images], neibs)
		
		    # Input tensor (one image 10x10)
		    im_val = np.arange(100.).reshape((1, 1, 10, 10))
		
		    # Function application
		    neibs_val = window_function(im_val)
		
		.. note:: The underlying code will construct a 2D tensor of disjoint
		   patches 5x5. The output has shape 4x25.
	**/
	static public function images2neibs(ten4:Dynamic, neib_shape:Dynamic, ?neib_step:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Function :func:`neibs2images <theano.sandbox.neighbours.neibs2images>`
		performs the inverse operation of
		:func:`images2neibs <theano.sandbox.neigbours.neibs2images>`. It inputs
		the output of :func:`images2neibs <theano.sandbox.neigbours.neibs2images>`
		and reconstructs its input.
		
		Parameters
		----------
		neibs : 2d tensor
		    Like the one obtained by
		    :func:`images2neibs <theano.sandbox.neigbours.neibs2images>`.
		neib_shape
		    `neib_shape` that was used in
		    :func:`images2neibs <theano.sandbox.neigbours.neibs2images>`.
		original_shape
		    Original shape of the 4d tensor given to
		    :func:`images2neibs <theano.sandbox.neigbours.neibs2images>`
		
		Returns
		-------
		object
		    Reconstructs the input of
		    :func:`images2neibs <theano.sandbox.neigbours.neibs2images>`,
		    a 4d tensor of shape `original_shape`.
		
		Notes
		-----
		Currently, the function doesn't support tensors created with
		`neib_step` different from default value. This means that it may be
		impossible to compute the gradient of a variable gained by
		:func:`images2neibs <theano.sandbox.neigbours.neibs2images>` w.r.t.
		its inputs in this case, because it uses
		:func:`images2neibs <theano.sandbox.neigbours.neibs2images>` for
		gradient computation.
		
		Examples
		--------
		Example, which uses a tensor gained in example for
		:func:`images2neibs <theano.sandbox.neigbours.neibs2images>`:
		
		.. code-block:: python
		
		    im_new = neibs2images(neibs, (5, 5), im_val.shape)
		    # Theano function definition
		    inv_window = theano.function([neibs], im_new)
		    # Function application
		    im_new_val = inv_window(neibs_val)
		
		.. note:: The code will output the initial image array.
	**/
	static public function neibs2images(neibs:Dynamic, neib_shape:Dynamic, original_shape:Dynamic, ?mode:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}