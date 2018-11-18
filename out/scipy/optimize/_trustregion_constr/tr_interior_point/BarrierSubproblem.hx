/* This file is generated, do not edit! */
package scipy.optimize._trustregion_constr.tr_interior_point;
@:pythonImport("scipy.optimize._trustregion_constr.tr_interior_point", "BarrierSubproblem") extern class BarrierSubproblem {
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
	public function ___init__(x0:Dynamic, s0:Dynamic, fun:Dynamic, grad:Dynamic, lagr_hess:Dynamic, n_vars:Dynamic, n_ineq:Dynamic, n_eq:Dynamic, constr:Dynamic, jac:Dynamic, barrier_parameter:Dynamic, tolerance:Dynamic, enforce_feasibility:Dynamic, global_stop_criteria:Dynamic, xtol:Dynamic, fun0:Dynamic, grad0:Dynamic, constr_ineq0:Dynamic, jac_ineq0:Dynamic, constr_eq0:Dynamic, jac_eq0:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(x0:Dynamic, s0:Dynamic, fun:Dynamic, grad:Dynamic, lagr_hess:Dynamic, n_vars:Dynamic, n_ineq:Dynamic, n_eq:Dynamic, constr:Dynamic, jac:Dynamic, barrier_parameter:Dynamic, tolerance:Dynamic, enforce_feasibility:Dynamic, global_stop_criteria:Dynamic, xtol:Dynamic, fun0:Dynamic, grad0:Dynamic, constr_ineq0:Dynamic, jac_ineq0:Dynamic, constr_eq0:Dynamic, jac_eq0:Dynamic):Void;
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
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
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
		Assemble sparse jacobian given its components.
		
		Given ``J_eq``, ``J_ineq`` and ``s`` returns:
		    jacobian = [ J_eq,     0     ]
		               [ J_ineq, diag(s) ]
		
		It is equivalent to:
		    sps.bmat([[ J_eq,   None    ],
		              [ J_ineq, diag(s) ]], "csr")
		but significantly more efficient for this
		given structure.
	**/
	public function _assemble_sparse_jacobian(J_eq:Dynamic, J_ineq:Dynamic, s:Dynamic):Dynamic;
	public function _compute_constr(c_ineq:Dynamic, c_eq:Dynamic, s:Dynamic):Dynamic;
	public function _compute_function(f:Dynamic, c_ineq:Dynamic, s:Dynamic):Dynamic;
	public function _compute_gradient(g:Dynamic):Dynamic;
	public function _compute_jacobian(J_eq:Dynamic, J_ineq:Dynamic, s:Dynamic):Dynamic;
	/**
		Returns barrier function and constraints at given point.
		
		For z = [x, s], returns barrier function:
		    function(z) = fun(x) - barrier_parameter*sum(log(s))
		and barrier constraints:
		    constraints(z) = [   constr_eq(x)     ]
		                     [ constr_ineq(x) + s ]
	**/
	public function function_and_constraints(z:Dynamic):Dynamic;
	public function get_slack(z:Dynamic):Dynamic;
	public function get_variables(z:Dynamic):Dynamic;
	/**
		Returns scaled gradient.
		
		Return scalled gradient:
		    gradient = [             grad(x)             ]
		               [ -barrier_parameter*ones(n_ineq) ]
		and scaled Jacobian Matrix:
		    jacobian = [  jac_eq(x)  0  ]
		               [ jac_ineq(x) S  ]
		Both of them scaled by the previously defined scaling factor.
	**/
	public function gradient_and_jacobian(z:Dynamic):Dynamic;
	/**
		Returns scaled Lagrangian Hessian
	**/
	public function lagrangian_hessian(z:Dynamic, v:Dynamic):Dynamic;
	/**
		Returns scaled Lagrangian Hessian (in relation to`s`) -> S Hs S
	**/
	public function lagrangian_hessian_s(z:Dynamic, v:Dynamic):Dynamic;
	/**
		Returns Lagrangian Hessian (in relation to `x`) -> Hx
	**/
	public function lagrangian_hessian_x(z:Dynamic, v:Dynamic):Dynamic;
	/**
		Returns scaling vector.
		Given by:
		    scaling = [ones(n_vars), s]
	**/
	public function scaling(z:Dynamic):Dynamic;
	/**
		Stop criteria to the barrier problem.
		The criteria here proposed is similar to formula (2.3)
		from [1]_, p.879.
	**/
	public function stop_criteria(state:Dynamic, z:Dynamic, last_iteration_failed:Dynamic, optimality:Dynamic, constr_violation:Dynamic, trust_radius:Dynamic, penalty:Dynamic, cg_info:Dynamic):Dynamic;
	public function update(barrier_parameter:Dynamic, tolerance:Dynamic):Dynamic;
}