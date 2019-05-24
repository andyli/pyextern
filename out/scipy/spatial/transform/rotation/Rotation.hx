/* This file is generated, do not edit! */
package scipy.spatial.transform.rotation;
@:pythonImport("scipy.spatial.transform.rotation", "Rotation") extern class Rotation {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Extract rotation(s) at given index(es) from object.
		
		Create a new `Rotation` instance containing a subset of rotations
		stored in this object.
		
		Parameters
		----------
		indexer : index, slice, or index array
		    Specifies which rotation(s) to extract. A single indexer must be
		    specified, i.e. as if indexing a 1 dimensional array or list.
		
		Returns
		-------
		rotation : `Rotation` instance
		    Contains
		        - a single rotation, if `indexer` is a single index
		        - a stack of rotation(s), if `indexer` is a slice, or and index
		          array.
		
		Examples
		--------
		>>> from scipy.spatial.transform import Rotation as R
		>>> r = R.from_quat([
		... [1, 1, 0, 0],
		... [0, 1, 0, 1],
		... [1, 1, -1, 0]])
		>>> r.as_quat()
		array([[ 0.70710678,  0.70710678,  0.        ,  0.        ],
		       [ 0.        ,  0.70710678,  0.        ,  0.70710678],
		       [ 0.57735027,  0.57735027, -0.57735027,  0.        ]])
		
		Indexing using a single index:
		
		>>> p = r[0]
		>>> p.as_quat()
		array([0.70710678, 0.70710678, 0.        , 0.        ])
		
		Array slicing:
		
		>>> q = r[1:3]
		>>> q.as_quat()
		array([[ 0.        ,  0.70710678,  0.        ,  0.70710678],
		       [ 0.57735027,  0.57735027, -0.57735027,  0.        ]])
	**/
	public function __getitem__(indexer:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(quat:Dynamic, ?normalized:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(quat:Dynamic, ?normalized:Dynamic, ?copy:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Number of rotations contained in this object.
		
		Multiple rotations can be stored in a single instance.
		
		Returns
		-------
		length : int
		    Number of rotations stored in object.
	**/
	public function __len__():Int;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Compose this rotation with the other.
		
		If `p` and `q` are two rotations, then the composition of 'q followed
		by p' is equivalent to `p * q`. In terms of DCMs, the composition can
		be expressed as `p.as_dcm().dot(q.as_dcm())`.
		
		Parameters
		----------
		other : `Rotation` instance
		    Object containing the rotaions to be composed with this one. Note
		    that rotation compositions are not commutative, so ``p * q`` is
		    different from ``q * p``.
		
		Returns
		-------
		composition : `Rotation` instance
		    This function supports composition of multiple rotations at a time.
		    The following cases are possible:
		
		    - Either ``p`` or ``q`` contains a single rotation. In this case
		      `composition` contains the result of composing each rotation in
		      the other object with the single rotation.
		    - Both ``p`` and ``q`` contain ``N`` rotations. In this case each
		      rotation ``p[i]`` is composed with the corresponding rotation
		      ``q[i]`` and `output` contains ``N`` rotations.
		
		Examples
		--------
		>>> from scipy.spatial.transform import Rotation as R
		
		Composition of two single rotations:
		
		>>> p = R.from_quat([0, 0, 1, 1])
		>>> q = R.from_quat([1, 0, 0, 1])
		>>> p.as_dcm()
		array([[ 0., -1.,  0.],
		       [ 1.,  0.,  0.],
		       [ 0.,  0.,  1.]])
		>>> q.as_dcm()
		array([[ 1.,  0.,  0.],
		       [ 0.,  0., -1.],
		       [ 0.,  1.,  0.]])
		>>> r = p * q
		>>> r.as_dcm()
		array([[0., 0., 1.],
		       [1., 0., 0.],
		       [0., 1., 0.]])
		
		Composition of two objects containing equal number of rotations:
		
		>>> p = R.from_quat([[0, 0, 1, 1], [1, 0, 0, 1]])
		>>> q = R.from_rotvec([[np.pi/4, 0, 0], [-np.pi/4, 0, np.pi/4]])
		>>> p.as_quat()
		array([[0.        , 0.        , 0.70710678, 0.70710678],
		       [0.70710678, 0.        , 0.        , 0.70710678]])
		>>> q.as_quat()
		array([[ 0.38268343,  0.        ,  0.        ,  0.92387953],
		       [-0.37282173,  0.        ,  0.37282173,  0.84971049]])
		>>> r = p * q
		>>> r.as_quat()
		array([[ 0.27059805,  0.27059805,  0.65328148,  0.65328148],
		       [ 0.33721128, -0.26362477,  0.26362477,  0.86446082]])
	**/
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Apply this rotation to a set of vectors.
		
		If the original frame rotates to the final frame by this rotation, then
		its application to a vector can be seen in two ways:
		
		    - As a projection of vector components expressed in the final frame
		      to the original frame.
		    - As the physical rotation of a vector being glued to the original
		      frame as it rotates. In this case the vector components are
		      expressed in the original frame before and after the rotation.
		
		In terms of DCMs, this application is the same as
		``self.as_dcm().dot(vectors)``.
		
		Parameters
		----------
		vectors : array_like, shape (3,) or (N, 3)
		    Each `vectors[i]` represents a vector in 3D space. A single vector
		    can either be specified with shape `(3, )` or `(1, 3)`. The number
		    of rotations and number of vectors given must follow standard numpy
		    broadcasting rules: either one of them equals unity or they both
		    equal each other.
		inverse : boolean, optional
		    If True then the inverse of the rotation(s) is applied to the input
		    vectors. Default is False.
		
		Returns
		-------
		rotated_vectors : ndarray, shape (3,) or (N, 3)
		    Result of applying rotation on input vectors.
		    Shape depends on the following cases:
		
		        - If object contains a single rotation (as opposed to a stack
		          with a single rotation) and a single vector is specified with
		          shape ``(3,)``, then `rotated_vectors` has shape ``(3,)``.
		        - In all other cases, `rotated_vectors` has shape ``(N, 3)``,
		          where ``N`` is either the number of rotations or vectors.
		
		Examples
		--------
		>>> from scipy.spatial.transform import Rotation as R
		
		Single rotation applied on a single vector:
		
		>>> vector = np.array([1, 0, 0])
		>>> r = R.from_rotvec([0, 0, np.pi/2])
		>>> r.as_dcm()
		array([[ 2.22044605e-16, -1.00000000e+00,  0.00000000e+00],
		       [ 1.00000000e+00,  2.22044605e-16,  0.00000000e+00],
		       [ 0.00000000e+00,  0.00000000e+00,  1.00000000e+00]])
		>>> r.apply(vector)
		array([2.22044605e-16, 1.00000000e+00, 0.00000000e+00])
		>>> r.apply(vector).shape
		(3,)
		
		Single rotation applied on multiple vectors:
		
		>>> vectors = np.array([
		... [1, 0, 0],
		... [1, 2, 3]])
		>>> r = R.from_rotvec([0, 0, np.pi/4])
		>>> r.as_dcm()
		array([[ 0.70710678, -0.70710678,  0.        ],
		       [ 0.70710678,  0.70710678,  0.        ],
		       [ 0.        ,  0.        ,  1.        ]])
		>>> r.apply(vectors)
		array([[ 0.70710678,  0.70710678,  0.        ],
		       [-0.70710678,  2.12132034,  3.        ]])
		>>> r.apply(vectors).shape
		(2, 3)
		
		Multiple rotations on a single vector:
		
		>>> r = R.from_rotvec([[0, 0, np.pi/4], [np.pi/2, 0, 0]])
		>>> vector = np.array([1,2,3])
		>>> r.as_dcm()
		array([[[ 7.07106781e-01, -7.07106781e-01,  0.00000000e+00],
		        [ 7.07106781e-01,  7.07106781e-01,  0.00000000e+00],
		        [ 0.00000000e+00,  0.00000000e+00,  1.00000000e+00]],
		       [[ 1.00000000e+00,  0.00000000e+00,  0.00000000e+00],
		        [ 0.00000000e+00,  2.22044605e-16, -1.00000000e+00],
		        [ 0.00000000e+00,  1.00000000e+00,  2.22044605e-16]]])
		>>> r.apply(vector)
		array([[-0.70710678,  2.12132034,  3.        ],
		       [ 1.        , -3.        ,  2.        ]])
		>>> r.apply(vector).shape
		(2, 3)
		
		Multiple rotations on multiple vectors. Each rotation is applied on the
		corresponding vector:
		
		>>> r = R.from_euler('zxy', [
		... [0, 0, 90],
		... [45, 30, 60]], degrees=True)
		>>> vectors = [
		... [1, 2, 3],
		... [1, 0, -1]]
		>>> r.apply(vectors)
		array([[ 3.        ,  2.        , -1.        ],
		       [-0.09026039,  1.11237244, -0.86860844]])
		>>> r.apply(vectors).shape
		(2, 3)
		
		It is also possible to apply the inverse rotation:
		
		>>> r = R.from_euler('zxy', [
		... [0, 0, 90],
		... [45, 30, 60]], degrees=True)
		>>> vectors = [
		... [1, 2, 3],
		... [1, 0, -1]]
		>>> r.apply(vectors, inverse=True)
		array([[-3.        ,  2.        ,  1.        ],
		       [ 1.09533535, -0.8365163 ,  0.3169873 ]])
	**/
	public function apply(vectors:Dynamic, ?inverse:Dynamic):Dynamic;
	/**
		Represent as direction cosine matrices.
		
		3D rotations can be represented using direction cosine matrices, which
		are 3 x 3 real orthogonal matrices with determinant equal to +1 [1]_.
		
		Returns
		-------
		dcm : ndarray, shape (3, 3) or (N, 3, 3)
		    Shape depends on shape of inputs used for initialization.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Rotation_matrix#In_three_dimensions
		
		Examples
		--------
		>>> from scipy.spatial.transform import Rotation as R
		
		Represent a single rotation:
		
		>>> r = R.from_rotvec([0, 0, np.pi/2])
		>>> r.as_dcm()
		array([[ 2.22044605e-16, -1.00000000e+00,  0.00000000e+00],
		       [ 1.00000000e+00,  2.22044605e-16,  0.00000000e+00],
		       [ 0.00000000e+00,  0.00000000e+00,  1.00000000e+00]])
		>>> r.as_dcm().shape
		(3, 3)
		
		Represent a stack with a single rotation:
		
		>>> r = R.from_quat([[1, 1, 0, 0]])
		>>> r.as_dcm()
		array([[[ 0.,  1.,  0.],
		        [ 1.,  0.,  0.],
		        [ 0.,  0., -1.]]])
		>>> r.as_dcm().shape
		(1, 3, 3)
		
		Represent multiple rotations:
		
		>>> r = R.from_rotvec([[np.pi/2, 0, 0], [0, 0, np.pi/2]])
		>>> r.as_dcm()
		array([[[ 1.00000000e+00,  0.00000000e+00,  0.00000000e+00],
		        [ 0.00000000e+00,  2.22044605e-16, -1.00000000e+00],
		        [ 0.00000000e+00,  1.00000000e+00,  2.22044605e-16]],
		       [[ 2.22044605e-16, -1.00000000e+00,  0.00000000e+00],
		        [ 1.00000000e+00,  2.22044605e-16,  0.00000000e+00],
		        [ 0.00000000e+00,  0.00000000e+00,  1.00000000e+00]]])
		>>> r.as_dcm().shape
		(2, 3, 3)
	**/
	public function as_dcm():Dynamic;
	/**
		Represent as Euler angles.
		
		Any orientation can be expressed as a composition of 3 elementary
		rotations. Once the axis sequence has been chosen, Euler angles define
		the angle of rotation around each respective axis [1]_.
		
		The algorithm from [2]_ has been used to calculate Euler angles for the
		rotation about a given sequence of axes.
		
		Euler angles suffer from the problem of gimbal lock [3]_, where the
		representation loses a degree of freedom and it is not possible to
		determine the first and third angles uniquely. In this case,
		a warning is raised, and the third angle is set to zero. Note however
		that the returned angles still represent the correct rotation.
		
		Parameters
		----------
		seq : string, length 3
		    3 characters belonging to the set {'X', 'Y', 'Z'} for intrinsic
		    rotations, or {'x', 'y', 'z'} for extrinsic rotations [1]_.
		    Adjacent axes cannot be the same.
		    Extrinsic and intrinsic rotations cannot be mixed in one function
		    call.
		degrees : boolean, optional
		    Returned angles are in degrees if this flag is True, else they are
		    in radians. Default is False.
		
		Returns
		-------
		angles : ndarray, shape (3,) or (N, 3)
		    Shape depends on shape of inputs used to initialize object.
		    The returned angles are in the range:
		
		    - First angle belongs to [-180, 180] degrees (both inclusive)
		    - Third angle belongs to [-180, 180] degrees (both inclusive)
		    - Second angle belongs to:
		
		        - [-90, 90] degrees if all axes are different (like xyz)
		        - [0, 180] degrees if first and third axes are the same
		          (like zxz)
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Euler_angles#Definition_by_intrinsic_rotations
		.. [2] Malcolm D. Shuster, F. Landis Markley, "General formula for
		       extraction the Euler angles", Journal of guidance, control, and
		       dynamics, vol. 29.1, pp. 215-221. 2006
		.. [3] https://en.wikipedia.org/wiki/Gimbal_lock#In_applied_mathematics
		
		Examples
		--------
		>>> from scipy.spatial.transform import Rotation as R
		
		Represent a single rotation:
		
		>>> r = R.from_rotvec([0, 0, np.pi/2])
		>>> r.as_euler('zxy', degrees=True)
		array([90.,  0.,  0.])
		>>> r.as_euler('zxy', degrees=True).shape
		(3,)
		
		Represent a stack of single rotation:
		
		>>> r = R.from_rotvec([[0, 0, np.pi/2]])
		>>> r.as_euler('zxy', degrees=True)
		array([[90.,  0.,  0.]])
		>>> r.as_euler('zxy', degrees=True).shape
		(1, 3)
		
		Represent multiple rotations in a single object:
		
		>>> r = R.from_rotvec([
		... [0, 0, np.pi/2],
		... [0, -np.pi/3, 0],
		... [np.pi/4, 0, 0]])
		>>> r.as_euler('zxy', degrees=True)
		array([[ 90.,   0.,   0.],
		       [  0.,   0., -60.],
		       [  0.,  45.,   0.]])
		>>> r.as_euler('zxy', degrees=True).shape
		(3, 3)
	**/
	public function as_euler(seq:Dynamic, ?degrees:Dynamic):Dynamic;
	/**
		Represent as quaternions.
		
		Rotations in 3 dimensions can be represented using unit norm
		quaternions [1]_. The mapping from quaternions to rotations is
		two-to-one, i.e. quaternions ``q`` and ``-q``, where ``-q`` simply
		reverses the sign of each component, represent the same spatial
		rotation.
		
		Returns
		-------
		quat : `numpy.ndarray`, shape (4,) or (N, 4)
		    Shape depends on shape of inputs used for initialization.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Quaternions_and_spatial_rotation
		
		Examples
		--------
		>>> from scipy.spatial.transform import Rotation as R
		
		Represent a single rotation:
		
		>>> r = R.from_dcm([
		... [0, -1, 0],
		... [1, 0, 0],
		... [0, 0, 1]])
		>>> r.as_quat()
		array([0.        , 0.        , 0.70710678, 0.70710678])
		>>> r.as_quat().shape
		(4,)
		
		Represent a stack with a single rotation:
		
		>>> r = R.from_quat([[0, 0, 0, 1]])
		>>> r.as_quat().shape
		(1, 4)
		
		Represent multiple rotaions in a single object:
		
		>>> r = R.from_rotvec([[np.pi, 0, 0], [0, 0, np.pi/2]])
		>>> r.as_quat().shape
		(2, 4)
	**/
	public function as_quat():Dynamic;
	/**
		Represent as rotation vectors.
		
		A rotation vector is a 3 dimensional vector which is co-directional to
		the axis of rotation and whose norm gives the angle of rotation (in
		radians) [1]_.
		
		Returns
		-------
		rotvec : ndarray, shape (3,) or (N, 3)
		    Shape depends on shape of inputs used for initialization.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Axis%E2%80%93angle_representation#Rotation_vector
		
		Examples
		--------
		>>> from scipy.spatial.transform import Rotation as R
		
		Represent a single rotation:
		
		>>> r = R.from_euler('z', 90, degrees=True)
		>>> r.as_rotvec()
		array([0.        , 0.        , 1.57079633])
		>>> r.as_rotvec().shape
		(3,)
		
		Represent a stack with a single rotation:
		
		>>> r = R.from_quat([[0, 0, 1, 1]])
		>>> r.as_rotvec()
		array([[0.        , 0.        , 1.57079633]])
		>>> r.as_rotvec().shape
		(1, 3)
		
		Represent multiple rotations in a single object:
		
		>>> r = R.from_quat([[0, 0, 1, 1], [1, 1, 0, 1]])
		>>> r.as_rotvec()
		array([[0.        , 0.        , 1.57079633],
		       [1.35102172, 1.35102172, 0.        ]])
		>>> r.as_rotvec().shape
		(2, 3)
	**/
	public function as_rotvec():Dynamic;
	/**
		Initialize from direction cosine matrices.
		
		Rotations in 3 dimensions can be represented using 3 x 3 proper
		orthogonal matrices [1]_. If the input is not proper orthogonal,
		an approximation is created using the method described in [2]_.
		
		Parameters
		----------
		dcm : array_like, shape (N, 3, 3) or (3, 3)
		    A single matrix or a stack of matrices, where ``dcm[i]`` is the i-th
		    matrix.
		
		Returns
		-------
		rotation : `Rotation` instance
		    Object containing the rotations represented by the input direction
		    cosine matrices.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Rotation_matrix#In_three_dimensions
		.. [2] F. Landis Markley, "Unit Quaternion from Rotation Matrix",
		       Journal of guidance, control, and dynamics vol. 31.2, pp.
		       440-442, 2008.
		
		Examples
		--------
		>>> from scipy.spatial.transform import Rotation as R
		
		Initialize a single rotation:
		
		>>> r = R.from_dcm([
		... [0, -1, 0],
		... [1, 0, 0],
		... [0, 0, 1]])
		>>> r.as_dcm().shape
		(3, 3)
		
		Initialize multiple rotations in a single object:
		
		>>> r = R.from_dcm([
		... [
		...     [0, -1, 0],
		...     [1, 0, 0],
		...     [0, 0, 1],
		... ],
		... [
		...     [1, 0, 0],
		...     [0, 0, -1],
		...     [0, 1, 0],
		... ]])
		>>> r.as_dcm().shape
		(2, 3, 3)
		
		If input matrices are not special orthogonal (orthogonal with
		determinant equal to +1), then a special orthogonal estimate is stored:
		
		>>> a = np.array([
		... [0, -0.5, 0],
		... [0.5, 0, 0],
		... [0, 0, 0.5]])
		>>> np.linalg.det(a)
		0.12500000000000003
		>>> r = R.from_dcm(a)
		>>> dcm = r.as_dcm()
		>>> dcm
		array([[-0.38461538, -0.92307692,  0.        ],
		       [ 0.92307692, -0.38461538,  0.        ],
		       [ 0.        ,  0.        ,  1.        ]])
		>>> np.linalg.det(dcm)
		1.0000000000000002
		
		It is also possible to have a stack containing a single rotation:
		
		>>> r = R.from_dcm([[
		... [0, -1, 0],
		... [1, 0, 0],
		... [0, 0, 1]]])
		>>> r.as_dcm()
		array([[[ 0., -1.,  0.],
		        [ 1.,  0.,  0.],
		        [ 0.,  0.,  1.]]])
		>>> r.as_dcm().shape
		(1, 3, 3)
	**/
	static public function from_dcm(dcm:Dynamic):Dynamic;
	/**
		Initialize from Euler angles.
		
		Rotations in 3 dimensions can be represented by a sequece of 3
		rotations around a sequence of axes. In theory, any three axes spanning
		the 3D Euclidean space are enough. In practice the axes of rotation are
		chosen to be the basis vectors.
		
		The three rotations can either be in a global frame of reference
		(extrinsic) or in a body centred frame of refernce (intrinsic), which
		is attached to, and moves with, the object under rotation [1]_.
		
		Parameters
		----------
		seq : string
		    Specifies sequence of axes for rotations. Up to 3 characters
		    belonging to the set {'X', 'Y', 'Z'} for intrinsic rotations, or
		    {'x', 'y', 'z'} for extrinsic rotations. Extrinsic and intrinsic
		    rotations cannot be mixed in one function call.
		angles : float or array_like, shape (N,) or (N, [1 or 2 or 3])
		    Euler angles specified in radians (`degrees` is False) or degrees
		    (`degrees` is True).
		    For a single character `seq`, `angles` can be:
		
		    - a single value
		    - array_like with shape (N,), where each `angle[i]`
		      corresponds to a single rotation
		    - array_like with shape (N, 1), where each `angle[i, 0]`
		      corresponds to a single rotation
		
		    For 2- and 3-character wide `seq`, `angles` can be:
		
		    - array_like with shape (W,) where `W` is the width of
		      `seq`, which corresponds to a single rotation with `W` axes
		    - array_like with shape (N, W) where each `angle[i]`
		      corresponds to a sequence of Euler angles describing a single
		      rotation
		
		degrees : bool, optional
		    If True, then the given angles are assumed to be in degrees.
		    Default is False.
		
		Returns
		-------
		rotation : `Rotation` instance
		    Object containing the rotation represented by the sequence of
		    rotations around given axes with given angles.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Euler_angles#Definition_by_intrinsic_rotations
		
		Examples
		--------
		>>> from scipy.spatial.transform import Rotation as R
		
		Initialize a single rotation along a single axis:
		
		>>> r = R.from_euler('x', 90, degrees=True)
		>>> r.as_quat().shape
		(4,)
		
		Initialize a single rotation with a given axis sequence:
		
		>>> r = R.from_euler('zyx', [90, 45, 30], degrees=True)
		>>> r.as_quat().shape
		(4,)
		
		Initialize a stack with a single rotation around a single axis:
		
		>>> r = R.from_euler('x', [90], degrees=True)
		>>> r.as_quat().shape
		(1, 4)
		
		Initialize a stack with a single rotation with an axis sequence:
		
		>>> r = R.from_euler('zyx', [[90, 45, 30]], degrees=True)
		>>> r.as_quat().shape
		(1, 4)
		
		Initialize multiple elementary rotations in one object:
		
		>>> r = R.from_euler('x', [90, 45, 30], degrees=True)
		>>> r.as_quat().shape
		(3, 4)
		
		Initialize multiple rotations in one object:
		
		>>> r = R.from_euler('zyx', [[90, 45, 30], [35, 45, 90]], degrees=True)
		>>> r.as_quat().shape
		(2, 4)
	**/
	static public function from_euler(seq:Dynamic, angles:Dynamic, ?degrees:Dynamic):Dynamic;
	/**
		Initialize from quaternions.
		
		3D rotations can be represented using unit-norm quaternions [1]_.
		
		Parameters
		----------
		quat : array_like, shape (N, 4) or (4,)
		    Each row is a (possibly non-unit norm) quaternion in scalar-last
		    (x, y, z, w) format.
		normalized : bool, optional
		    If False, input quaternions are normalized to unit norm before
		    being stored. If True, quaternions are assumed to already have
		    unit norm and are stored as given. Default is False.
		
		Returns
		-------
		rotation : `Rotation` instance
		    Object containing the rotations represented by input quaternions.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Quaternions_and_spatial_rotation
		
		Examples
		--------
		>>> from scipy.spatial.transform import Rotation as R
		
		Initialize a single rotation:
		
		>>> r = R.from_quat([1, 0, 0, 0])
		>>> r.as_quat()
		array([1., 0., 0., 0.])
		>>> r.as_quat().shape
		(4,)
		
		Initialize multiple rotations in a single object:
		
		>>> r = R.from_quat([
		... [1, 0, 0, 0],
		... [0, 0, 0, 1]
		... ])
		>>> r.as_quat()
		array([[1., 0., 0., 0.],
		       [0., 0., 0., 1.]])
		>>> r.as_quat().shape
		(2, 4)
		
		It is also possible to have a stack of a single rotation:
		
		>>> r = R.from_quat([[0, 0, 0, 1]])
		>>> r.as_quat()
		array([[0., 0., 0., 1.]])
		>>> r.as_quat().shape
		(1, 4)
		
		By default, quaternions are normalized before initialization.
		
		>>> r = R.from_quat([0, 0, 1, 1])
		>>> r.as_quat()
		array([0.        , 0.        , 0.70710678, 0.70710678])
		
		If unit norms are ensured, skip the normalization step.
		
		>>> r = R.from_quat([0, 0, 1, 0], normalized=True)
		>>> r.as_quat()
		array([0., 0., 1., 0.])
	**/
	static public function from_quat(quat:Dynamic, ?normalized:Dynamic):Dynamic;
	/**
		Initialize from rotation vectors.
		
		A rotation vector is a 3 dimensional vector which is co-directional to
		the axis of rotation and whose norm gives the angle of rotation (in
		radians) [1]_.
		
		Parameters
		----------
		rotvec : array_like, shape (N, 3) or (3,)
		    A single vector or a stack of vectors, where `rot_vec[i]` gives
		    the ith rotation vector.
		
		Returns
		-------
		rotation : `Rotation` instance
		    Object containing the rotations represented by input rotation
		    vectors.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Axis%E2%80%93angle_representation#Rotation_vector
		
		Examples
		--------
		>>> from scipy.spatial.transform import Rotation as R
		
		Initialize a single rotation:
		
		>>> r = R.from_rotvec(np.pi/2 * np.array([0, 0, 1]))
		>>> r.as_rotvec()
		array([0.        , 0.        , 1.57079633])
		>>> r.as_rotvec().shape
		(3,)
		
		Initialize multiple rotations in one object:
		
		>>> r = R.from_rotvec([
		... [0, 0, np.pi/2],
		... [np.pi/2, 0, 0]])
		>>> r.as_rotvec()
		array([[0.        , 0.        , 1.57079633],
		       [1.57079633, 0.        , 0.        ]])
		>>> r.as_rotvec().shape
		(2, 3)
		
		It is also possible to have a stack of a single rotaton:
		
		>>> r = R.from_rotvec([[0, 0, np.pi/2]])
		>>> r.as_rotvec().shape
		(1, 3)
	**/
	static public function from_rotvec(rotvec:Dynamic):Dynamic;
	/**
		Invert this rotation.
		
		Composition of a rotation with its inverse results in an identity
		transformation.
		
		Returns
		-------
		inverse : `Rotation` instance
		    Object containing inverse of the rotations in the current instance.
		
		Examples
		--------
		>>> from scipy.spatial.transform import Rotation as R
		
		Inverting a single rotation:
		
		>>> p = R.from_euler('z', 45, degrees=True)
		>>> q = p.inv()
		>>> q.as_euler('zyx', degrees=True)
		array([-45.,   0.,   0.])
		
		Inverting multiple rotations:
		
		>>> p = R.from_rotvec([[0, 0, np.pi/3], [-np.pi/4, 0, 0]])
		>>> q = p.inv()
		>>> q.as_rotvec()
		array([[-0.        , -0.        , -1.04719755],
		       [ 0.78539816, -0.        , -0.        ]])
	**/
	public function inv():Dynamic;
	/**
		Estimate a rotation to match two sets of vectors.
		
		Find a rotation between frames A and B which best matches a set of unit
		vectors `a` and `b` observed in these frames. The following loss
		function is minimized to solve for the direction cosine matrix
		:math:`C`:
		
		.. math::
		
		    L(C) = \frac{1}{2} \sum_{i = 1}^{n} w_i \lVert \mathbf{a}_i -
		    C \mathbf{b}_i \rVert^2 ,
		
		where :math:`w_i`'s are the `weights` corresponding to each vector.
		
		The rotation is estimated using Markley's SVD method [1]_.
		
		Parameters
		----------
		a : array_like, shape (N, 3)
		    Vector components observed in initial frame A. Each row of `a`
		    denotes a vector.
		b : array_like, shape (N, 3)
		    Vector components observed in another frame B. Each row of `b`
		    denotes a vector.
		weights : array_like shape (N,), optional
		    Weights describing the relative importance of the vectors in
		    `a`. If None (default), then all values in `weights` are assumed to
		    be equal.
		normalized : bool, optional
		    If True, assume input vectors `a` and `b` to have unit norm. If
		    False, normalize `a` and `b` before estimating rotation. Default
		    is False.
		
		Returns
		-------
		estimated_rotation : `Rotation` instance
		    Best estimate of the rotation that transforms `b` to `a`.
		sensitivity_matrix : ndarray, shape (3, 3)
		    Scaled covariance of the attitude errors expressed as the small
		    rotation vector of frame A. Multiply with harmonic mean [3]_ of
		    variance in each observation to get true covariance matrix. The
		    error model is detailed in [2]_.
		
		References
		----------
		.. [1] F. Landis Markley,
		        "Attitude determination using vector observations: a fast
		        optimal matrix algorithm", Journal of Astronautical Sciences,
		        Vol. 41, No.2, 1993, pp. 261-280.
		.. [2] F. Landis Markley,
		        "Attitude determination using vector observations and the
		        Singular Value Decomposition", Journal of Astronautical
		        Sciences, Vol. 38, No.3, 1988, pp. 245-258.
		.. [3] https://en.wikipedia.org/wiki/Harmonic_mean
	**/
	static public function match_vectors(a:Dynamic, b:Dynamic, ?weights:Dynamic, ?normalized:Dynamic):Dynamic;
	/**
		Generate uniformly distributed rotations.
		
		Parameters
		----------
		num : int or None, optional
		    Number of random rotations to generate. If None (default), then a
		    single rotation is generated.
		random_state : int, RandomState instance or None, optional
		    Accepts an integer as a seed for the random generator or a
		    RandomState object. If None (default), uses global `numpy.random`
		    random state.
		
		Returns
		-------
		random_rotation : `Rotation` instance
		    Contains a single rotation if `num` is None. Otherwise contains a
		    stack of `num` rotations.
		
		Examples
		--------
		>>> from scipy.spatial.transform import Rotation as R
		
		Sample a single rotation:
		
		>>> R.random(random_state=1234).as_euler('zxy', degrees=True)
		array([-110.5976185 ,   55.32758512,   76.3289269 ])
		
		Sample a stack of rotations:
		
		>>> R.random(5, random_state=1234).as_euler('zxy', degrees=True)
		array([[-110.5976185 ,   55.32758512,   76.3289269 ],
		       [ -91.59132005,  -14.3629884 ,  -93.91933182],
		       [  25.23835501,   45.02035145, -121.67867086],
		       [ -51.51414184,  -15.29022692, -172.46870023],
		       [ -81.63376847,  -27.39521579,    2.60408416]])
	**/
	static public function random(?num:Dynamic, ?random_state:Dynamic):Dynamic;
}