/* This file is generated, do not edit! */
package scipy.linalg.lapack;
@:pythonImport("scipy.linalg.lapack") extern class Lapack_Module {
	static public var HAS_ILP64 : Dynamic;
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
		Convert LAPACK-returned work array size float to integer,
		carefully for single-precision types.
	**/
	static public function _check_work_float(value:Dynamic, dtype:Dynamic, int_dtype:Dynamic):Dynamic;
	static public var _clapack : Dynamic;
	/**
		Round floating-point lwork returned by lapack to integer.
		
		Several LAPACK routines compute optimal values for LWORK, which
		they return in a floating-point variable. However, for large
		values of LWORK, single-precision floating point is not sufficient
		to hold the exact value --- some LAPACK versions (<= 3.5.0 at
		least) truncate the returned integer to single precision and in
		some cases this can be smaller than the required value.
		
		Examples
		--------
		>>> from scipy.linalg import lapack
		>>> n = 5000
		>>> s_r, s_lw = lapack.get_lapack_funcs(('sysvx', 'sysvx_lwork'))
		>>> lwork = lapack._compute_lwork(s_lw, n)
		>>> lwork
		32000
	**/
	static public function _compute_lwork(routine:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _dep_message : Dynamic;
	static public var _flapack_64 : Dynamic;
	/**
		Return available BLAS/LAPACK functions.
		
		Used also in lapack.py. See get_blas_funcs for docstring.
	**/
	static public function _get_funcs(names:Dynamic, arrays:Dynamic, dtype:Dynamic, lib_name:Dynamic, fmodule:Dynamic, cmodule:Dynamic, fmodule_name:Dynamic, cmodule_name:Dynamic, alias:Dynamic, ?ilp64:Dynamic):Dynamic;
	static public var _int32_max : Dynamic;
	static public var _int64_max : Dynamic;
	static public var _lapack_alias : Dynamic;
	/**
		Memoized fast path for _get_funcs instances
	**/
	static public function _memoize_get_funcs(func:Dynamic):Dynamic;
	/**
		lub,piv,x,info = cgbsv(kl,ku,ab,b,[overwrite_ab,overwrite_b])
		
		Wrapper for ``cgbsv``.
		
		Parameters
		----------
		kl : input int
		ku : input int
		ab : input rank-2 array('F') with bounds (2*kl+ku+1,n)
		b : input rank-2 array('F') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_ab : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		lub : rank-2 array('F') with bounds (2*kl+ku+1,n) and ab storage
		piv : rank-1 array('i') with bounds (n)
		x : rank-2 array('F') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function cgbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lu,ipiv,info = cgbtrf(ab,kl,ku,[m,n,ldab,overwrite_ab])
		
		Wrapper for ``cgbtrf``.
		
		Parameters
		----------
		ab : input rank-2 array('F') with bounds (ldab,n)
		kl : input int
		ku : input int
		
		Other Parameters
		----------------
		m : input int, optional
		    Default: shape(ab,1)
		n : input int, optional
		    Default: shape(ab,1)
		overwrite_ab : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: max(shape(ab,0),1)
		
		Returns
		-------
		lu : rank-2 array('F') with bounds (ldab,n) and ab storage
		ipiv : rank-1 array('i') with bounds (MIN(m,n))
		info : int
	**/
	static public function cgbtrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = cgbtrs(ab,kl,ku,b,ipiv,[trans,n,ldab,ldb,overwrite_b])
		
		Wrapper for ``cgbtrs``.
		
		Parameters
		----------
		ab : input rank-2 array('F') with bounds (ldab,n)
		kl : input int
		ku : input int
		b : input rank-2 array('F') with bounds (ldb,nrhs)
		ipiv : input rank-1 array('i') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		n : input int, optional
		    Default: shape(ab,1)
		ldab : input int, optional
		    Default: shape(ab,0)
		ldb : input int, optional
		    Default: shape(b,0)
		
		Returns
		-------
		x : rank-2 array('F') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function cgbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ba,lo,hi,pivscale,info = cgebal(a,[scale,permute,overwrite_a])
		
		Wrapper for ``cgebal``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		
		Other Parameters
		----------------
		scale : input int, optional
		    Default: 0
		permute : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		ba : rank-2 array('F') with bounds (m,n) and a storage
		lo : int
		hi : int
		pivscale : rank-1 array('f') with bounds (n)
		info : int
	**/
	static public function cgebal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = cgecon(a,anorm,[norm])
		
		Wrapper for ``cgecon``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		anorm : input float
		
		Other Parameters
		----------------
		norm : input string(len=1), optional
		    Default: '1'
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function cgecon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		r,c,rowcnd,colcnd,amax,info = cgeequ(a)
		
		Wrapper for ``cgeequ``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		
		Returns
		-------
		r : rank-1 array('f') with bounds (m)
		c : rank-1 array('f') with bounds (n)
		rowcnd : float
		colcnd : float
		amax : float
		info : int
	**/
	static public function cgeequ(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		r,c,rowcnd,colcnd,amax,info = cgeequb(a)
		
		Wrapper for ``cgeequb``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		
		Returns
		-------
		r : rank-1 array('f') with bounds (m)
		c : rank-1 array('f') with bounds (n)
		rowcnd : float
		colcnd : float
		amax : float
		info : int
	**/
	static public function cgeequb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		t,sdim,w,vs,work,info = cgees(cselect,a,[compute_v,sort_t,lwork,cselect_extra_args,overwrite_a])
		
		Wrapper for ``cgees``.
		
		Parameters
		----------
		cselect : call-back function
		a : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default: 1
		sort_t : input int, optional
		    Default: 0
		cselect_extra_args : input tuple, optional
		    Default: ()
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		
		Returns
		-------
		t : rank-2 array('F') with bounds (n,n) and a storage
		sdim : int
		w : rank-1 array('F') with bounds (n)
		vs : rank-2 array('F') with bounds (ldvs,n)
		work : rank-1 array('F') with bounds (MAX(lwork,1))
		info : int
		
		Notes
		-----
		Call-back functions::
		
		  def cselect(arg): return cselect
		  Required arguments:
		    arg : input complex
		  Return objects:
		    cselect : int
	**/
	static public function cgees(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,vl,vr,info = cgeev(a,[compute_vl,compute_vr,lwork,overwrite_a])
		
		Wrapper for ``cgeev``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_vl : input int, optional
		    Default: 1
		compute_vr : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(2*n,1)
		
		Returns
		-------
		w : rank-1 array('F') with bounds (n)
		vl : rank-2 array('F') with bounds (ldvl,n)
		vr : rank-2 array('F') with bounds (ldvr,n)
		info : int
	**/
	static public function cgeev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = cgeev_lwork(n,[compute_vl,compute_vr])
		
		Wrapper for ``cgeev_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		compute_vl : input int, optional
		    Default: 1
		compute_vr : input int, optional
		    Default: 1
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function cgeev_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		`cgegv` is deprecated!
		The `*gegv` family of routines has been deprecated in
		LAPACK 3.6.0 in favor of the `*ggev` family of routines.
		The corresponding wrappers will be removed from SciPy in
		a future release.
		
		alpha,beta,vl,vr,info = cgegv(a,b,[compute_vl,compute_vr,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``cgegv``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_vl : input int, optional
		    Default: 1
		compute_vr : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(2*n,1)
		
		Returns
		-------
		alpha : rank-1 array('F') with bounds (n)
		beta : rank-1 array('F') with bounds (n)
		vl : rank-2 array('F') with bounds (ldvl,n)
		vr : rank-2 array('F') with bounds (ldvr,n)
		info : int
	**/
	static public function cgegv(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		ht,tau,info = cgehrd(a,[lo,hi,lwork,overwrite_a])
		
		Wrapper for ``cgehrd``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		lo : input int, optional
		    Default: 0
		hi : input int, optional
		    Default: n-1
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(n,1)
		
		Returns
		-------
		ht : rank-2 array('F') with bounds (n,n) and a storage
		tau : rank-1 array('F') with bounds (n - 1)
		info : int
	**/
	static public function cgehrd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = cgehrd_lwork(n,[lo,hi])
		
		Wrapper for ``cgehrd_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lo : input int, optional
		    Default: 0
		hi : input int, optional
		    Default: n-1
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function cgehrd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lqr,x,info = cgels(a,b,[trans,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``cgels``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		b : input rank-2 array('F') with bounds (MAX(m,n),nrhs)
		
		Other Parameters
		----------------
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(MIN(m,n)+MAX(MIN(m,n),nrhs),1)
		
		Returns
		-------
		lqr : rank-2 array('F') with bounds (m,n) and a storage
		x : rank-2 array('F') with bounds (MAX(m,n),nrhs) and b storage
		info : int
	**/
	static public function cgels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = cgels_lwork(m,n,nrhs,[trans])
		
		Wrapper for ``cgels_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		nrhs : input int
		
		Other Parameters
		----------------
		trans : input string(len=1), optional
		    Default: 'N'
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function cgels_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,s,rank,info = cgelsd(a,b,lwork,size_rwork,size_iwork,[cond,overwrite_a,overwrite_b])
		
		Wrapper for ``cgelsd``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		b : input rank-2 array('F') with bounds (maxmn,nrhs)
		lwork : input int
		size_rwork : input int
		size_iwork : input int
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		cond : input float, optional
		    Default: -1.0
		
		Returns
		-------
		x : rank-2 array('F') with bounds (maxmn,nrhs) and b storage
		s : rank-1 array('f') with bounds (minmn)
		rank : int
		info : int
	**/
	static public function cgelsd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,rwork,iwork,info = cgelsd_lwork(m,n,nrhs,[cond,lwork])
		
		Wrapper for ``cgelsd_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		nrhs : input int
		
		Other Parameters
		----------------
		cond : input float, optional
		    Default: -1.0
		lwork : input int, optional
		    Default: -1
		
		Returns
		-------
		work : complex
		rwork : float
		iwork : int
		info : int
	**/
	static public function cgelsd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		v,x,s,rank,work,info = cgelss(a,b,[cond,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``cgelss``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		b : input rank-2 array('F') with bounds (maxmn,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		cond : input float, optional
		    Default: -1.0
		lwork : input int, optional
		    Default: max(2*minmn+MAX(maxmn,nrhs),1)
		
		Returns
		-------
		v : rank-2 array('F') with bounds (m,n) and a storage
		x : rank-2 array('F') with bounds (maxmn,nrhs) and b storage
		s : rank-1 array('f') with bounds (minmn)
		rank : int
		work : rank-1 array('F') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function cgelss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = cgelss_lwork(m,n,nrhs,[cond,lwork])
		
		Wrapper for ``cgelss_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		nrhs : input int
		
		Other Parameters
		----------------
		cond : input float, optional
		    Default: -1.0
		lwork : input int, optional
		    Default: -1
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function cgelss_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		v,x,j,rank,info = cgelsy(a,b,jptv,cond,lwork,[overwrite_a,overwrite_b])
		
		Wrapper for ``cgelsy``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		b : input rank-2 array('F') with bounds (maxmn,nrhs)
		jptv : input rank-1 array('i') with bounds (n)
		cond : input float
		lwork : input int
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		v : rank-2 array('F') with bounds (m,n) and a storage
		x : rank-2 array('F') with bounds (maxmn,nrhs) and b storage
		j : rank-1 array('i') with bounds (n) and jptv storage
		rank : int
		info : int
	**/
	static public function cgelsy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = cgelsy_lwork(m,n,nrhs,cond,[lwork])
		
		Wrapper for ``cgelsy_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		nrhs : input int
		cond : input float
		
		Other Parameters
		----------------
		lwork : input int, optional
		    Default: -1
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function cgelsy_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,info = cgemqrt(v,t,c,[side,trans,overwrite_c])
		
		Wrapper for ``cgemqrt``.
		
		Parameters
		----------
		v : input rank-2 array('F') with bounds ((side[0]=='L'?m:n),k)
		t : input rank-2 array('F') with bounds (nb,k)
		c : input rank-2 array('F') with bounds (m,n)
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('F') with bounds (m,n)
		info : int
	**/
	static public function cgemqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr,jpvt,tau,work,info = cgeqp3(a,[lwork,overwrite_a])
		
		Wrapper for ``cgeqp3``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*(n+1),1)
		
		Returns
		-------
		qr : rank-2 array('F') with bounds (m,n) and a storage
		jpvt : rank-1 array('i') with bounds (n)
		tau : rank-1 array('F') with bounds (MIN(m,n))
		work : rank-1 array('F') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function cgeqp3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr,tau,work,info = cgeqrf(a,[lwork,overwrite_a])
		
		Wrapper for ``cgeqrf``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		
		Returns
		-------
		qr : rank-2 array('F') with bounds (m,n) and a storage
		tau : rank-1 array('F') with bounds (MIN(m,n))
		work : rank-1 array('F') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function cgeqrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = cgeqrf_lwork(m,n)
		
		Wrapper for ``cgeqrf_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function cgeqrf_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr,tau,info = cgeqrfp(a,[lwork,overwrite_a])
		
		Wrapper for ``cgeqrfp``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(1, n)
		
		Returns
		-------
		qr : rank-2 array('F') with bounds (m,n) and a storage
		tau : rank-1 array('F') with bounds (MIN(m,n))
		info : int
	**/
	static public function cgeqrfp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = cgeqrfp_lwork(m,n)
		
		Wrapper for ``cgeqrfp_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function cgeqrfp_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,t,info = cgeqrt(nb,a,[overwrite_a])
		
		Wrapper for ``cgeqrt``.
		
		Parameters
		----------
		nb : input int
		a : input rank-2 array('F') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('F') with bounds (m,n)
		t : rank-2 array('F') with bounds (nb,MIN(m,n))
		info : int
	**/
	static public function cgeqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr,tau,work,info = cgerqf(a,[lwork,overwrite_a])
		
		Wrapper for ``cgerqf``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*m,1)
		
		Returns
		-------
		qr : rank-2 array('F') with bounds (m,n) and a storage
		tau : rank-1 array('F') with bounds (MIN(m,n))
		work : rank-1 array('F') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function cgerqf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,scale = cgesc2(lu,rhs,ipiv,jpiv,[overwrite_rhs])
		
		Wrapper for ``cgesc2``.
		
		Parameters
		----------
		lu : input rank-2 array('F') with bounds (n,n)
		rhs : input rank-1 array('F') with bounds (n)
		ipiv : input rank-1 array('i') with bounds (n)
		jpiv : input rank-1 array('i') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_rhs : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-1 array('F') with bounds (n) and rhs storage
		scale : float
	**/
	static public function cgesc2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		u,s,vt,info = cgesdd(a,[compute_uv,full_matrices,lwork,overwrite_a])
		
		Wrapper for ``cgesdd``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		compute_uv : input int, optional
		    Default: 1
		full_matrices : input int, optional
		    Default: 1
		lwork : input int, optional
		    Default: max((compute_uv?2*minmn*minmn+MAX(m,n)+2*minmn:2*minmn+MAX(m,n)),1)
		
		Returns
		-------
		u : rank-2 array('F') with bounds (u0,u1)
		s : rank-1 array('f') with bounds (minmn)
		vt : rank-2 array('F') with bounds (vt0,vt1)
		info : int
	**/
	static public function cgesdd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = cgesdd_lwork(m,n,[compute_uv,full_matrices])
		
		Wrapper for ``cgesdd_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Other Parameters
		----------------
		compute_uv : input int, optional
		    Default: 1
		full_matrices : input int, optional
		    Default: 1
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function cgesdd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lu,piv,x,info = cgesv(a,b,[overwrite_a,overwrite_b])
		
		Wrapper for ``cgesv``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		lu : rank-2 array('F') with bounds (n,n) and a storage
		piv : rank-1 array('i') with bounds (n)
		x : rank-2 array('F') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function cgesv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		u,s,vt,info = cgesvd(a,[compute_uv,full_matrices,lwork,overwrite_a])
		
		Wrapper for ``cgesvd``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		compute_uv : input int, optional
		    Default: 1
		full_matrices : input int, optional
		    Default: 1
		lwork : input int, optional
		    Default: MAX(2*minmn+MAX(m,n),1)
		
		Returns
		-------
		u : rank-2 array('F') with bounds (u0,u1)
		s : rank-1 array('f') with bounds (minmn)
		vt : rank-2 array('F') with bounds (vt0,vt1)
		info : int
	**/
	static public function cgesvd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = cgesvd_lwork(m,n,[compute_uv,full_matrices])
		
		Wrapper for ``cgesvd_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Other Parameters
		----------------
		compute_uv : input int, optional
		    Default: 1
		full_matrices : input int, optional
		    Default: 1
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function cgesvd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		as,lu,ipiv,equed,rs,cs,bs,x,rcond,ferr,berr,info = cgesvx(a,b,[fact,trans,af,ipiv,equed,r,c,overwrite_a,overwrite_b])
		
		Wrapper for ``cgesvx``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		fact : input string(len=1), optional
		    Default: 'E'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_a : input int, optional
		    Default: 0
		af : input rank-2 array('F') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		equed : input string(len=1), optional
		    Default: 'B'
		r : input rank-1 array('f') with bounds (n)
		c : input rank-1 array('f') with bounds (n)
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		as : rank-2 array('F') with bounds (n,n) and a storage
		lu : rank-2 array('F') with bounds (n,n) and af storage
		ipiv : rank-1 array('i') with bounds (n)
		equed : string(len=1)
		rs : rank-1 array('f') with bounds (n) and r storage
		cs : rank-1 array('f') with bounds (n) and c storage
		bs : rank-2 array('F') with bounds (n,nrhs) and b storage
		x : rank-2 array('F') with bounds (n,nrhs)
		rcond : float
		ferr : rank-1 array('f') with bounds (nrhs)
		berr : rank-1 array('f') with bounds (nrhs)
		info : int
	**/
	static public function cgesvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lu,ipiv,jpiv,info = cgetc2(a,[overwrite_a])
		
		Wrapper for ``cgetc2``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		lu : rank-2 array('F') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		jpiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function cgetc2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lu,piv,info = cgetrf(a,[overwrite_a])
		
		Wrapper for ``cgetrf``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		lu : rank-2 array('F') with bounds (m,n) and a storage
		piv : rank-1 array('i') with bounds (MIN(m,n))
		info : int
	**/
	static public function cgetrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inv_a,info = cgetri(lu,piv,[lwork,overwrite_lu])
		
		Wrapper for ``cgetri``.
		
		Parameters
		----------
		lu : input rank-2 array('F') with bounds (n,n)
		piv : input rank-1 array('i') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_lu : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		
		Returns
		-------
		inv_a : rank-2 array('F') with bounds (n,n) and lu storage
		info : int
	**/
	static public function cgetri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = cgetri_lwork(n)
		
		Wrapper for ``cgetri_lwork``.
		
		Parameters
		----------
		n : input int
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function cgetri_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = cgetrs(lu,piv,b,[trans,overwrite_b])
		
		Wrapper for ``cgetrs``.
		
		Parameters
		----------
		lu : input rank-2 array('F') with bounds (n,n)
		piv : input rank-1 array('i') with bounds (n)
		b : input rank-2 array('F') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('F') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function cgetrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,b,sdim,alpha,beta,vsl,vsr,work,info = cgges(cselect,a,b,[jobvsl,jobvsr,sort_t,ldvsl,ldvsr,lwork,cselect_extra_args,overwrite_a,overwrite_b])
		
		Wrapper for ``cgges``.
		
		Parameters
		----------
		cselect : call-back function
		a : input rank-2 array('F') with bounds (lda,n)
		b : input rank-2 array('F') with bounds (ldb,n)
		
		Other Parameters
		----------------
		jobvsl : input int, optional
		    Default: 1
		jobvsr : input int, optional
		    Default: 1
		sort_t : input int, optional
		    Default: 0
		cselect_extra_args : input tuple, optional
		    Default: ()
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		ldvsl : input int, optional
		    Default: ((jobvsl==1)?n:1)
		ldvsr : input int, optional
		    Default: ((jobvsr==1)?n:1)
		lwork : input int, optional
		    Default: max(2*n,1)
		
		Returns
		-------
		a : rank-2 array('F') with bounds (lda,n)
		b : rank-2 array('F') with bounds (ldb,n)
		sdim : int
		alpha : rank-1 array('F') with bounds (n)
		beta : rank-1 array('F') with bounds (n)
		vsl : rank-2 array('F') with bounds (ldvsl,n)
		vsr : rank-2 array('F') with bounds (ldvsr,n)
		work : rank-1 array('F') with bounds (MAX(lwork,1))
		info : int
		
		Notes
		-----
		Call-back functions::
		
		  def cselect(alpha,beta): return cselect
		  Required arguments:
		    alpha : input complex
		    beta : input complex
		  Return objects:
		    cselect : int
	**/
	static public function cgges(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		alpha,beta,vl,vr,work,info = cggev(a,b,[compute_vl,compute_vr,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``cggev``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_vl : input int, optional
		    Default: 1
		compute_vr : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(2*n,1)
		
		Returns
		-------
		alpha : rank-1 array('F') with bounds (n)
		beta : rank-1 array('F') with bounds (n)
		vl : rank-2 array('F') with bounds (ldvl,n)
		vr : rank-2 array('F') with bounds (ldvr,n)
		work : rank-1 array('F') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function cggev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		t,r,res,x,info = cgglse(a,b,c,d,[lwork,overwrite_a,overwrite_b,overwrite_c,overwrite_d])
		
		Wrapper for ``cgglse``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		b : input rank-2 array('F') with bounds (p,n)
		c : input rank-1 array('F') with bounds (m)
		d : input rank-1 array('F') with bounds (p)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		overwrite_c : input int, optional
		    Default: 0
		overwrite_d : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(m+n+p,1)
		
		Returns
		-------
		t : rank-2 array('F') with bounds (m,n) and a storage
		r : rank-2 array('F') with bounds (p,n) and b storage
		res : rank-1 array('F') with bounds (m) and c storage
		x : rank-1 array('F') with bounds (n)
		info : int
	**/
	static public function cgglse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = cgglse_lwork(m,n,p)
		
		Wrapper for ``cgglse_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		p : input int
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function cgglse_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		du2,d,du,x,info = cgtsv(dl,d,du,b,[overwrite_dl,overwrite_d,overwrite_du,overwrite_b])
		
		Wrapper for ``cgtsv``.
		
		Parameters
		----------
		dl : input rank-1 array('F') with bounds (n - 1)
		d : input rank-1 array('F') with bounds (n)
		du : input rank-1 array('F') with bounds (n - 1)
		b : input rank-2 array('F') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_dl : input int, optional
		    Default: 0
		overwrite_d : input int, optional
		    Default: 0
		overwrite_du : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		du2 : rank-1 array('F') with bounds (n - 1) and dl storage
		d : rank-1 array('F') with bounds (n)
		du : rank-1 array('F') with bounds (n - 1)
		x : rank-2 array('F') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function cgtsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dlf,df,duf,du2,ipiv,x,rcond,ferr,berr,info = cgtsvx(dl,d,du,b,[fact,trans,dlf,df,duf,du2,ipiv])
		
		Wrapper for ``cgtsvx``.
		
		Parameters
		----------
		dl : input rank-1 array('F') with bounds (MAX(0, n-1))
		d : input rank-1 array('F') with bounds (n)
		du : input rank-1 array('F') with bounds (MAX(0, n-1))
		b : input rank-2 array('F') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		fact : input string(len=1), optional
		    Default: 'N'
		trans : input string(len=1), optional
		    Default: 'N'
		dlf : input rank-1 array('F') with bounds (MAX(0,n-1))
		df : input rank-1 array('F') with bounds (n)
		duf : input rank-1 array('F') with bounds (MAX(0,n-1))
		du2 : input rank-1 array('F') with bounds (MAX(0,n-2))
		ipiv : input rank-1 array('i') with bounds (n)
		
		Returns
		-------
		dlf : rank-1 array('F') with bounds (MAX(0,n-1))
		df : rank-1 array('F') with bounds (n)
		duf : rank-1 array('F') with bounds (MAX(0,n-1))
		du2 : rank-1 array('F') with bounds (MAX(0,n-2))
		ipiv : rank-1 array('i') with bounds (n)
		x : rank-2 array('F') with bounds (ldx,nrhs)
		rcond : float
		ferr : rank-1 array('f') with bounds (nrhs)
		berr : rank-1 array('f') with bounds (nrhs)
		info : int
	**/
	static public function cgtsvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dl,d,du,du2,ipiv,info = cgttrf(dl,d,du,[overwrite_dl,overwrite_d,overwrite_du])
		
		Wrapper for ``cgttrf``.
		
		Parameters
		----------
		dl : input rank-1 array('F') with bounds (n - 1)
		d : input rank-1 array('F') with bounds (n)
		du : input rank-1 array('F') with bounds (n - 1)
		
		Other Parameters
		----------------
		overwrite_dl : input int, optional
		    Default: 0
		overwrite_d : input int, optional
		    Default: 0
		overwrite_du : input int, optional
		    Default: 0
		
		Returns
		-------
		dl : rank-1 array('F') with bounds (n - 1)
		d : rank-1 array('F') with bounds (n)
		du : rank-1 array('F') with bounds (n - 1)
		du2 : rank-1 array('F') with bounds (n - 2)
		ipiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function cgttrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = cgttrs(dl,d,du,du2,ipiv,b,[trans,overwrite_b])
		
		Wrapper for ``cgttrs``.
		
		Parameters
		----------
		dl : input rank-1 array('F') with bounds (n - 1)
		d : input rank-1 array('F') with bounds (n)
		du : input rank-1 array('F') with bounds (n - 1)
		du2 : input rank-1 array('F') with bounds (n - 2)
		ipiv : input rank-1 array('i') with bounds (n)
		b : input rank-2 array('F') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('F') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function cgttrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,info = chbevd(ab,[compute_v,lower,ldab,lrwork,liwork,overwrite_ab])
		
		Wrapper for ``chbevd``.
		
		Parameters
		----------
		ab : input rank-2 array('F') with bounds (ldab,n)
		
		Other Parameters
		----------------
		overwrite_ab : input int, optional
		    Default: 1
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		lrwork : input int, optional
		    Default: (compute_v?1+5*n+2*n*n:n)
		liwork : input int, optional
		    Default: (compute_v?3+5*n:1)
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		z : rank-2 array('F') with bounds (ldz,ldz)
		info : int
	**/
	static public function chbevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,m,ifail,info = chbevx(ab,vl,vu,il,iu,[ldab,compute_v,range,lower,abstol,mmax,overwrite_ab])
		
		Wrapper for ``chbevx``.
		
		Parameters
		----------
		ab : input rank-2 array('F') with bounds (ldab,n)
		vl : input float
		vu : input float
		il : input int
		iu : input int
		
		Other Parameters
		----------------
		overwrite_ab : input int, optional
		    Default: 1
		ldab : input int, optional
		    Default: shape(ab,0)
		compute_v : input int, optional
		    Default: 1
		range : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		abstol : input float, optional
		    Default: 0.0
		mmax : input int, optional
		    Default: (compute_v?(range==2?(iu-il+1):n):1)
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		z : rank-2 array('F') with bounds (ldz,mmax)
		m : int
		ifail : rank-1 array('i') with bounds ((compute_v?n:1))
		info : int
	**/
	static public function chbevx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = checon(a,ipiv,anorm,[lower])
		
		Wrapper for ``checon``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		anorm : input float
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function checon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		s,scond,amax,info = cheequb(a,[lower])
		
		Wrapper for ``cheequb``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (lda,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		s : rank-1 array('f') with bounds (n)
		scond : float
		amax : float
		info : int
	**/
	static public function cheequb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,v,info = cheev(a,[compute_v,lower,lwork,overwrite_a])
		
		Wrapper for ``cheev``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(2*n-1,1)
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		v : rank-2 array('F') with bounds (n,n) and a storage
		info : int
	**/
	static public function cheev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = cheev_lwork(n,[lower])
		
		Wrapper for ``cheev_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function cheev_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,v,info = cheevd(a,[compute_v,lower,lwork,liwork,lrwork,overwrite_a])
		
		Wrapper for ``cheevd``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max((compute_v?2*n+n*n:n+1),1)
		liwork : input int, optional
		    Default: (compute_v?3+5*n:1)
		lrwork : input int, optional
		    Default: (compute_v?1+5*n+2*n*n:n)
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		v : rank-2 array('F') with bounds (n,n) and a storage
		info : int
	**/
	static public function cheevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,iwork,rwork,info = cheevd_lwork(n,[compute_v,lower])
		
		Wrapper for ``cheevd_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		iwork : int
		rwork : float
		info : int
	**/
	static public function cheevd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,m,isuppz,info = cheevr(a,[compute_v,range,lower,vl,vu,il,iu,abstol,lwork,lrwork,liwork,overwrite_a])
		
		Wrapper for ``cheevr``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds ``(n,n)``
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default ``1``
		range : input string(len=1), optional
		    Default ``'A'``
		lower : input int, optional
		    Default ``0``
		overwrite_a : input int, optional
		    Default ``0``
		vl : input float, optional
		    Default ``0.0``
		vu : input float, optional
		    Default ``1.0``
		il : input int, optional
		    Default ``1``
		iu : input int, optional
		    Default ``n``
		abstol : input float, optional
		    Default ``0.0``
		lwork : input int, optional
		    Default ``max(2*n,1)``
		lrwork : input int, optional
		    Default ``max(24*n,1)``
		liwork : input int, optional
		    Default ``max(1,10*n)``
		
		Returns
		-------
		w : rank-1 array('f') with bounds ``(n)``
		z : rank-2 array('F') with bounds ``((compute_v?MAX(0,n):0),(compute_v?(*range=='I'?iu-il+1:MAX(1,n)):0))``
		m : int
		isuppz : rank-1 array('i') with bounds ``(2*max(1,n))``
		info : int
	**/
	static public function cheevr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,rwork,iwork,info = cheevr_lwork(n,[lower])
		
		Wrapper for ``cheevr_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		rwork : float
		iwork : int
		info : int
	**/
	static public function cheevr_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,m,ifail,info = cheevx(a,[compute_v,range,lower,vl,vu,il,iu,abstol,lwork,overwrite_a])
		
		Wrapper for ``cheevx``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds ``(n,n)``
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default ``1``
		range : input string(len=1), optional
		    Default ``'A'``
		lower : input int, optional
		    Default ``0``
		overwrite_a : input int, optional
		    Default ``0``
		vl : input float, optional
		    Default ``0.0``
		vu : input float, optional
		    Default ``1.0``
		il : input int, optional
		    Default ``1``
		iu : input int, optional
		    Default ``n``
		abstol : input float, optional
		    Default ``0.0``
		lwork : input int, optional
		    Default ``max(2*n,1)``
		
		Returns
		-------
		w : rank-1 array('f') with bounds ``(n)``
		z : rank-2 array('F') with bounds ``((compute_v*n),(compute_v?(*range=='I'?iu-il+1:MAX(1,n)):0))``
		m : int
		ifail : rank-1 array('i') with bounds ``(compute_v*n)``
		info : int
	**/
	static public function cheevx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = cheevx_lwork(n,[lower])
		
		Wrapper for ``cheevx_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function cheevx_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,info = chegst(a,b,[itype,lower,overwrite_a])
		
		Wrapper for ``chegst``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		itype : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('F') with bounds (n,n) and a storage
		info : int
	**/
	static public function chegst(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,v,info = chegv(a,b,[itype,jobz,uplo,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``chegv``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		itype : input int, optional
		    Default: 1
		jobz : input string(len=1), optional
		    Default: 'V'
		uplo : input string(len=1), optional
		    Default: 'L'
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(2*n-1,1)
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		v : rank-2 array('F') with bounds (n,n) and a storage
		info : int
	**/
	static public function chegv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = chegv_lwork(n,[uplo])
		
		Wrapper for ``chegv_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'L'
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function chegv_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,v,info = chegvd(a,b,[itype,jobz,uplo,lwork,lrwork,liwork,overwrite_a,overwrite_b])
		
		Wrapper for ``chegvd``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds ``(n,n)``
		b : input rank-2 array('F') with bounds ``(n,n)``
		
		Other Parameters
		----------------
		itype : input int, optional
		    Default ``1``
		jobz : input string(len=1), optional
		    Default ``'V'``
		uplo : input string(len=1), optional
		    Default ``'L'``
		overwrite_a : input int, optional
		    Default ``0``
		overwrite_b : input int, optional
		    Default ``0``
		lwork : input int, optional
		    Default ``(*jobz=='N'?n+1:n*(n+2))``
		lrwork : input int, optional
		    Default ``max((*jobz=='N'?n:2*n*n+5*n+1),1)``
		liwork : input int, optional
		    Default ``(*jobz=='N'?1:5*n+3)``
		
		Returns
		-------
		w : rank-1 array('f') with bounds ``(n)``
		v : rank-2 array('F') with bounds ``(n,n)`` with ``a`` storage
		info : int
	**/
	static public function chegvd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,m,ifail,info = chegvx(a,b,[itype,jobz,range,uplo,vl,vu,il,iu,abstol,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``chegvx``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		itype : input int, optional
		    Default: 1
		jobz : input string(len=1), optional
		    Default: 'V'
		range : input string(len=1), optional
		    Default: 'A'
		uplo : input string(len=1), optional
		    Default: 'L'
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		vl : input float, optional
		    Default: 0.0
		vu : input float, optional
		    Default: 1.0
		il : input int, optional
		    Default: 1
		iu : input int, optional
		    Default: n
		abstol : input float, optional
		    Default: 0.0
		lwork : input int, optional
		    Default: max(2*n,1)
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		z : rank-2 array('F') with bounds ((jobz[0]=='V'?MAX(0,n):0),(jobz[0]=='V'?(range[0]=='I'?iu-il+1:MAX(1,n)):0))
		m : int
		ifail : rank-1 array('i') with bounds ((jobz[0]=='N'?0:n))
		info : int
	**/
	static public function chegvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = chegvx_lwork(n,[uplo])
		
		Wrapper for ``chegvx_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'L'
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function chegvx_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uduh,ipiv,x,info = chesv(a,b,[lwork,lower,overwrite_a,overwrite_b])
		
		Wrapper for ``chesv``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(n,1)
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		uduh : rank-2 array('F') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		x : rank-2 array('F') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function chesv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = chesv_lwork(n,[lower])
		
		Wrapper for ``chesv_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function chesv_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uduh,ipiv,x,rcond,ferr,berr,info = chesvx(a,b,[af,ipiv,lwork,factored,lower,overwrite_a,overwrite_b])
		
		Wrapper for ``chesvx``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		af : input rank-2 array('F') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(2*n,1)
		factored : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		uduh : rank-2 array('F') with bounds (n,n) and af storage
		ipiv : rank-1 array('i') with bounds (n)
		x : rank-2 array('F') with bounds (n,nrhs)
		rcond : float
		ferr : rank-1 array('f') with bounds (nrhs)
		berr : rank-1 array('f') with bounds (nrhs)
		info : int
	**/
	static public function chesvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = chesvx_lwork(n,[lower])
		
		Wrapper for ``chesvx_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function chesvx_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,d,e,tau,info = chetrd(a,[lower,lwork,overwrite_a])
		
		Wrapper for ``chetrd``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (lda,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(n,1)
		
		Returns
		-------
		c : rank-2 array('F') with bounds (lda,n) and a storage
		d : rank-1 array('f') with bounds (n)
		e : rank-1 array('f') with bounds (n - 1)
		tau : rank-1 array('F') with bounds (n - 1)
		info : int
	**/
	static public function chetrd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = chetrd_lwork(n,[lower])
		
		Wrapper for ``chetrd_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function chetrd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ldu,ipiv,info = chetrf(a,[lower,lwork,overwrite_a])
		
		Wrapper for ``chetrf``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(n,1)
		
		Returns
		-------
		ldu : rank-2 array('F') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function chetrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = chetrf_lwork(n,[lower])
		
		Wrapper for ``chetrf_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function chetrf_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cout = chfrk(n,k,alpha,a,beta,c,[transr,uplo,trans,overwrite_c])
		
		Wrapper for ``chfrk``.
		
		Parameters
		----------
		n : input int
		k : input int
		alpha : input float
		a : input rank-2 array('F') with bounds (lda,ka)
		beta : input float
		c : input rank-1 array('F') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		cout : rank-1 array('F') with bounds (nt) and c storage
	**/
	static public function chfrk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		n2 = clange(norm,a)
		
		Wrapper for ``clange``.
		
		Parameters
		----------
		norm : input string(len=1)
		a : input rank-2 array('F') with bounds (m,n)
		
		Returns
		-------
		n2 : float
	**/
	static public function clange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var clapack : Dynamic;
	/**
		c = clarf(v,tau,c,work,[side,incv,overwrite_c])
		
		Wrapper for ``clarf``.
		
		Parameters
		----------
		v : input rank-1 array('F') with bounds ((side[0]=='L'?(1 + (m-1)*abs(incv)):(1 + (n-1)*abs(incv))))
		tau : input complex
		c : input rank-2 array('F') with bounds (m,n)
		work : input rank-1 array('F') with bounds (lwork)
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		incv : input int, optional
		    Default: 1
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('F') with bounds (m,n)
	**/
	static public function clarf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		alpha,x,tau = clarfg(n,alpha,x,[incx,overwrite_x])
		
		Wrapper for ``clarfg``.
		
		Parameters
		----------
		n : input int
		alpha : input complex
		x : input rank-1 array('F') with bounds (lx)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		alpha : complex
		x : rank-1 array('F') with bounds (lx)
		tau : complex
	**/
	static public function clarfg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cs,sn,r = clartg(f,g)
		
		Wrapper for ``clartg``.
		
		Parameters
		----------
		f : input complex
		g : input complex
		
		Returns
		-------
		cs : float
		sn : complex
		r : complex
	**/
	static public function clartg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = claswp(a,piv,[k1,k2,off,inc,overwrite_a])
		
		Wrapper for ``claswp``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (nrows,n)
		piv : input rank-1 array('i') with bounds (npiv)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		k1 : input int, optional
		    Default: 0
		k2 : input int, optional
		    Default: npiv-1
		off : input int, optional
		    Default: 0
		inc : input int, optional
		    Default: 1
		
		Returns
		-------
		a : rank-2 array('F') with bounds (nrows,n)
	**/
	static public function claswp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,info = clauum(c,[lower,overwrite_c])
		
		Wrapper for ``clauum``.
		
		Parameters
		----------
		c : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_c : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('F') with bounds (n,n) and c storage
		info : int
	**/
	static public function clauum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,x,info = cpbsv(ab,b,[lower,ldab,overwrite_ab,overwrite_b])
		
		Wrapper for ``cpbsv``.
		
		Parameters
		----------
		ab : input rank-2 array('F') with bounds (ldab,n)
		b : input rank-2 array('F') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_ab : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('F') with bounds (ldab,n) and ab storage
		x : rank-2 array('F') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function cpbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,info = cpbtrf(ab,[lower,ldab,overwrite_ab])
		
		Wrapper for ``cpbtrf``.
		
		Parameters
		----------
		ab : input rank-2 array('F') with bounds (ldab,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_ab : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		
		Returns
		-------
		c : rank-2 array('F') with bounds (ldab,n) and ab storage
		info : int
	**/
	static public function cpbtrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = cpbtrs(ab,b,[lower,ldab,overwrite_b])
		
		Wrapper for ``cpbtrs``.
		
		Parameters
		----------
		ab : input rank-2 array('F') with bounds (ldab,n)
		b : input rank-2 array('F') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('F') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function cpbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		achol,info = cpftrf(n,a,[transr,uplo,overwrite_a])
		
		Wrapper for ``cpftrf``.
		
		Parameters
		----------
		n : input int
		a : input rank-1 array('F') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		achol : rank-1 array('F') with bounds (nt) and a storage
		info : int
	**/
	static public function cpftrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ainv,info = cpftri(n,a,[transr,uplo,overwrite_a])
		
		Wrapper for ``cpftri``.
		
		Parameters
		----------
		n : input int
		a : input rank-1 array('F') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		ainv : rank-1 array('F') with bounds (nt) and a storage
		info : int
	**/
	static public function cpftri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = cpftrs(n,a,b,[transr,uplo,overwrite_b])
		
		Wrapper for ``cpftrs``.
		
		Parameters
		----------
		n : input int
		a : input rank-1 array('F') with bounds (nt)
		b : input rank-2 array('F') with bounds (ldb,nhrs)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('F') with bounds (ldb,nhrs) and b storage
		info : int
	**/
	static public function cpftrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = cpocon(a,anorm,[uplo])
		
		Wrapper for ``cpocon``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		anorm : input float
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function cpocon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,x,info = cposv(a,b,[lower,overwrite_a,overwrite_b])
		
		Wrapper for ``cposv``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('F') with bounds (n,n) and a storage
		x : rank-2 array('F') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function cposv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a_s,lu,equed,s,b_s,x,rcond,ferr,berr,info = cposvx(a,b,[fact,af,equed,s,lower,overwrite_a,overwrite_b])
		
		Wrapper for ``cposvx``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		fact : input string(len=1), optional
		    Default: 'E'
		overwrite_a : input int, optional
		    Default: 0
		af : input rank-2 array('F') with bounds (n,n)
		equed : input string(len=1), optional
		    Default: 'Y'
		s : input rank-1 array('f') with bounds (n)
		overwrite_b : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		a_s : rank-2 array('F') with bounds (n,n) and a storage
		lu : rank-2 array('F') with bounds (n,n) and af storage
		equed : string(len=1)
		s : rank-1 array('f') with bounds (n)
		b_s : rank-2 array('F') with bounds (n,nrhs) and b storage
		x : rank-2 array('F') with bounds (n,nrhs)
		rcond : float
		ferr : rank-1 array('f') with bounds (nrhs)
		berr : rank-1 array('f') with bounds (nrhs)
		info : int
	**/
	static public function cposvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,info = cpotrf(a,[lower,clean,overwrite_a])
		
		Wrapper for ``cpotrf``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		clean : input int, optional
		    Default: 1
		
		Returns
		-------
		c : rank-2 array('F') with bounds (n,n) and a storage
		info : int
	**/
	static public function cpotrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inv_a,info = cpotri(c,[lower,overwrite_c])
		
		Wrapper for ``cpotri``.
		
		Parameters
		----------
		c : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_c : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		inv_a : rank-2 array('F') with bounds (n,n) and c storage
		info : int
	**/
	static public function cpotri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = cpotrs(c,b,[lower,overwrite_b])
		
		Wrapper for ``cpotrs``.
		
		Parameters
		----------
		c : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('F') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function cpotrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = cppcon(n,ap,anorm,[lower])
		
		Wrapper for ``cppcon``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('F') with bounds (L)
		anorm : input float
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function cppcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = cppsv(n,ap,b,[lower,overwrite_b])
		
		Wrapper for ``cppsv``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('F') with bounds (L)
		b : input rank-2 array('F') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('F') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function cppsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ul,info = cpptrf(n,ap,[lower,overwrite_ap])
		
		Wrapper for ``cpptrf``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('F') with bounds (L)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		
		Returns
		-------
		ul : rank-1 array('F') with bounds (L) and ap storage
		info : int
	**/
	static public function cpptrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uli,info = cpptri(n,ap,[lower,overwrite_ap])
		
		Wrapper for ``cpptri``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('F') with bounds (L)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		
		Returns
		-------
		uli : rank-1 array('F') with bounds (L) and ap storage
		info : int
	**/
	static public function cpptri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = cpptrs(n,ap,b,[lower,overwrite_b])
		
		Wrapper for ``cpptrs``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('F') with bounds (L)
		b : input rank-2 array('F') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('F') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function cpptrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,piv,rank_c,info = cpstf2(a,[tol,lower,overwrite_a])
		
		Wrapper for ``cpstf2``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		tol : input float, optional
		    Default: -1.0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('F') with bounds (n,n) and a storage
		piv : rank-1 array('i') with bounds (n)
		rank_c : int
		info : int
	**/
	static public function cpstf2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,piv,rank_c,info = cpstrf(a,[tol,lower,overwrite_a])
		
		Wrapper for ``cpstrf``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		tol : input float, optional
		    Default: -1.0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('F') with bounds (n,n) and a storage
		piv : rank-1 array('i') with bounds (n)
		rank_c : int
		info : int
	**/
	static public function cpstrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		d,e,z,info = cpteqr(d,e,z,[compute_z,overwrite_d,overwrite_e,overwrite_z])
		
		Wrapper for ``cpteqr``.
		
		Parameters
		----------
		d : input rank-1 array('f') with bounds (n)
		e : input rank-1 array('f') with bounds ((n>0?n-1:0))
		z : input rank-2 array('F') with bounds ((compute_z==0?shape(z, 0):max(1,n)),(compute_z==0?shape(z, 1):n))
		
		Other Parameters
		----------------
		compute_z : input int, optional
		    Default: 0
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		overwrite_z : input int, optional
		    Default: 0
		
		Returns
		-------
		d : rank-1 array('f') with bounds (n)
		e : rank-1 array('f') with bounds ((n>0?n-1:0))
		z : rank-2 array('F') with bounds ((compute_z==0?shape(z, 0):max(1,n)),(compute_z==0?shape(z, 1):n))
		info : int
	**/
	static public function cpteqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		d,du,x,info = cptsv(d,e,b,[overwrite_d,overwrite_e,overwrite_b])
		
		Wrapper for ``cptsv``.
		
		Parameters
		----------
		d : input rank-1 array('f') with bounds (n)
		e : input rank-1 array('F') with bounds (n - 1)
		b : input rank-2 array('F') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		d : rank-1 array('f') with bounds (n)
		du : rank-1 array('F') with bounds (n - 1) and e storage
		x : rank-2 array('F') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function cptsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		df,ef,x,rcond,ferr,berr,info = cptsvx(d,e,b,[fact,df,ef])
		
		Wrapper for ``cptsvx``.
		
		Parameters
		----------
		d : input rank-1 array('f') with bounds (n)
		e : input rank-1 array('F') with bounds (max(0, n-1))
		b : input rank-2 array('F') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		fact : input string(len=1), optional
		    Default: 'N'
		df : input rank-1 array('f') with bounds (n)
		ef : input rank-1 array('F') with bounds (max(0, n-1))
		
		Returns
		-------
		df : rank-1 array('f') with bounds (n)
		ef : rank-1 array('F') with bounds (max(0, n-1))
		x : rank-2 array('F') with bounds (ldx,nrhs)
		rcond : float
		ferr : rank-1 array('f') with bounds (nrhs)
		berr : rank-1 array('f') with bounds (nrhs)
		info : int
	**/
	static public function cptsvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		d,e,info = cpttrf(d,e,[overwrite_d,overwrite_e])
		
		Wrapper for ``cpttrf``.
		
		Parameters
		----------
		d : input rank-1 array('f') with bounds (n)
		e : input rank-1 array('F') with bounds ((n>0?n-1:0))
		
		Other Parameters
		----------------
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		
		Returns
		-------
		d : rank-1 array('f') with bounds (n)
		e : rank-1 array('F') with bounds ((n>0?n-1:0))
		info : int
	**/
	static public function cpttrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = cpttrs(d,e,b,[lower,overwrite_b])
		
		Wrapper for ``cpttrs``.
		
		Parameters
		----------
		d : input rank-1 array('f') with bounds (n)
		e : input rank-1 array('F') with bounds ((n>0?n-1:0))
		b : input rank-2 array('F') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('F') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function cpttrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,y = crot(x,y,c,s,[n,offx,incx,offy,incy,overwrite_x,overwrite_y])
		
		Wrapper for ``crot``.
		
		Parameters
		----------
		x : input rank-1 array('F') with bounds (lx)
		y : input rank-1 array('F') with bounds (ly)
		c : input float
		s : input complex
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (lx-1-offx)/abs(incx)+1
		overwrite_x : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		overwrite_y : input int, optional
		    Default: 0
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('F') with bounds (lx)
		y : rank-1 array('F') with bounds (ly)
	**/
	static public function crot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = csycon(a,ipiv,anorm,[lower])
		
		Wrapper for ``csycon``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		anorm : input float
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function csycon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,e,info = csyconv(a,ipiv,[lower,way,overwrite_a])
		
		Wrapper for ``csyconv``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		way : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('F') with bounds (n,n)
		e : rank-1 array('F') with bounds (n)
		info : int
	**/
	static public function csyconv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		s,scond,amax,info = csyequb(a,[lower])
		
		Wrapper for ``csyequb``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (lda,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		s : rank-1 array('f') with bounds (n)
		scond : float
		amax : float
		info : int
	**/
	static public function csyequb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		udut,ipiv,x,info = csysv(a,b,[lwork,lower,overwrite_a,overwrite_b])
		
		Wrapper for ``csysv``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(n,1)
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		udut : rank-2 array('F') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		x : rank-2 array('F') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function csysv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = csysv_lwork(n,[lower])
		
		Wrapper for ``csysv_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function csysv_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a_s,udut,ipiv,b_s,x,rcond,ferr,berr,info = csysvx(a,b,[af,ipiv,lwork,factored,lower,overwrite_a,overwrite_b])
		
		Wrapper for ``csysvx``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		af : input rank-2 array('F') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		factored : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		a_s : rank-2 array('F') with bounds (n,n) and a storage
		udut : rank-2 array('F') with bounds (n,n) and af storage
		ipiv : rank-1 array('i') with bounds (n)
		b_s : rank-2 array('F') with bounds (n,nrhs) and b storage
		x : rank-2 array('F') with bounds (n,nrhs)
		rcond : float
		ferr : rank-1 array('f') with bounds (nrhs)
		berr : rank-1 array('f') with bounds (nrhs)
		info : int
	**/
	static public function csysvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = csysvx_lwork(n,[lower])
		
		Wrapper for ``csysvx_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function csysvx_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ldu,ipiv,info = csytf2(a,[lower,overwrite_a])
		
		Wrapper for ``csytf2``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		ldu : rank-2 array('F') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function csytf2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ldu,ipiv,info = csytrf(a,[lower,lwork,overwrite_a])
		
		Wrapper for ``csytrf``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(n,1)
		
		Returns
		-------
		ldu : rank-2 array('F') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function csytrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = csytrf_lwork(n,[lower])
		
		Wrapper for ``csytrf_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function csytrf_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = ctbtrs(ab,b,[uplo,trans,diag,overwrite_b])
		
		Wrapper for ``ctbtrs``.
		
		Parameters
		----------
		ab : input rank-2 array('F') with bounds (ldab,n)
		b : input rank-2 array('F') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'U'
		trans : input string(len=1), optional
		    Default: 'N'
		diag : input string(len=1), optional
		    Default: 'N'
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('F') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function ctbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = ctfsm(alpha,a,b,[transr,side,uplo,trans,diag,overwrite_b])
		
		Wrapper for ``ctfsm``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-1 array('F') with bounds (nt)
		b : input rank-2 array('F') with bounds (m,n)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		side : input string(len=1), optional
		    Default: 'L'
		uplo : input string(len=1), optional
		    Default: 'U'
		trans : input string(len=1), optional
		    Default: 'N'
		diag : input string(len=1), optional
		    Default: 'N'
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('F') with bounds (m,n) and b storage
	**/
	static public function ctfsm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ap,info = ctfttp(n,arf,[transr,uplo])
		
		Wrapper for ``ctfttp``.
		
		Parameters
		----------
		n : input int
		arf : input rank-1 array('F') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		ap : rank-1 array('F') with bounds (nt)
		info : int
	**/
	static public function ctfttp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,info = ctfttr(n,arf,[transr,uplo])
		
		Wrapper for ``ctfttr``.
		
		Parameters
		----------
		n : input int
		arf : input rank-1 array('F') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		a : rank-2 array('F') with bounds (lda,n)
		info : int
	**/
	static public function ctfttr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,b,q,z,info = ctgexc(a,b,q,z,ifst,ilst,[overwrite_a,overwrite_b,overwrite_q,overwrite_z])
		
		Wrapper for ``ctgexc``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (lda,n)
		b : input rank-2 array('F') with bounds (ldb,n)
		q : input rank-2 array('F') with bounds (ldq,n)
		z : input rank-2 array('F') with bounds (ldz,n)
		ifst : input int
		ilst : input int
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		overwrite_q : input int, optional
		    Default: 0
		overwrite_z : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('F') with bounds (lda,n)
		b : rank-2 array('F') with bounds (ldb,n)
		q : rank-2 array('F') with bounds (ldq,n)
		z : rank-2 array('F') with bounds (ldz,n)
		info : int
	**/
	static public function ctgexc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		as,bs,alpha,beta,qs,zs,m,pl,pr,dif,info = ctgsen(select,a,b,q,z,[ijob,wantq,wantz,lwork,liwork,overwrite_a,overwrite_b,overwrite_q,overwrite_z])
		
		Wrapper for ``ctgsen``.
		
		Parameters
		----------
		select : input rank-1 array('i') with bounds (n)
		a : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (n,n)
		q : input rank-2 array('F') with bounds (n,n)
		z : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		ijob : input int, optional
		    Default: 4
		wantq : input int, optional
		    Default: 1
		wantz : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		overwrite_q : input int, optional
		    Default: 0
		overwrite_z : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: (ijob==0?1:n+2)
		liwork : input int, optional
		    Default: (ijob==0?1:n+2)
		
		Returns
		-------
		as : rank-2 array('F') with bounds (n,n) and a storage
		bs : rank-2 array('F') with bounds (n,n) and b storage
		alpha : rank-1 array('F') with bounds (n)
		beta : rank-1 array('F') with bounds (n)
		qs : rank-2 array('F') with bounds (n,n) and q storage
		zs : rank-2 array('F') with bounds (n,n) and z storage
		m : int
		pl : float
		pr : float
		dif : rank-1 array('f') with bounds (2)
		info : int
	**/
	static public function ctgsen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,iwork,info = ctgsen_lwork(select,a,b,[ijob])
		
		Wrapper for ``ctgsen_lwork``.
		
		Parameters
		----------
		select : input rank-1 array('i') with bounds (n)
		a : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		ijob : input int, optional
		    Default: 4
		
		Returns
		-------
		work : complex
		iwork : int
		info : int
	**/
	static public function ctgsen_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,b,info = ctpmqrt(l,v,t,a,b,[side,trans,overwrite_a,overwrite_b])
		
		Wrapper for ``ctpmqrt``.
		
		Parameters
		----------
		l : input int
		v : input rank-2 array('F') with bounds ((side[0]=='L'?m:n),k)
		t : input rank-2 array('F') with bounds (nb,k)
		a : input rank-2 array('F') with bounds ((side[0]=='L'?k:m),(side[0]=='L'?n:k))
		b : input rank-2 array('F') with bounds (m,n)
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('F') with bounds ((side[0]=='L'?k:m),(side[0]=='L'?n:k))
		b : rank-2 array('F') with bounds (m,n)
		info : int
	**/
	static public function ctpmqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,b,t,info = ctpqrt(l,nb,a,b,[overwrite_a,overwrite_b])
		
		Wrapper for ``ctpqrt``.
		
		Parameters
		----------
		l : input int
		nb : input int
		a : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('F') with bounds (n,n)
		b : rank-2 array('F') with bounds (m,n)
		t : rank-2 array('F') with bounds (nb,n)
		info : int
	**/
	static public function ctpqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arf,info = ctpttf(n,ap,[transr,uplo])
		
		Wrapper for ``ctpttf``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('F') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		arf : rank-1 array('F') with bounds (nt)
		info : int
	**/
	static public function ctpttf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,info = ctpttr(n,ap,[uplo])
		
		Wrapper for ``ctpttr``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('F') with bounds (nt)
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		a : rank-2 array('F') with bounds (n,n)
		info : int
	**/
	static public function ctpttr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,scale,info = ctrsyl(a,b,c,[trana,tranb,isgn,overwrite_c])
		
		Wrapper for ``ctrsyl``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,m)
		b : input rank-2 array('F') with bounds (n,n)
		c : input rank-2 array('F') with bounds (m,n)
		
		Other Parameters
		----------------
		trana : input string(len=1), optional
		    Default: 'N'
		tranb : input string(len=1), optional
		    Default: 'N'
		isgn : input int, optional
		    Default: 1
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('F') with bounds (m,n) and c storage
		scale : float
		info : int
	**/
	static public function ctrsyl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inv_c,info = ctrtri(c,[lower,unitdiag,overwrite_c])
		
		Wrapper for ``ctrtri``.
		
		Parameters
		----------
		c : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_c : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		unitdiag : input int, optional
		    Default: 0
		
		Returns
		-------
		inv_c : rank-2 array('F') with bounds (n,n) and c storage
		info : int
	**/
	static public function ctrtri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = ctrtrs(a,b,[lower,trans,unitdiag,lda,overwrite_b])
		
		Wrapper for ``ctrtrs``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (lda,n)
		b : input rank-2 array('F') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		unitdiag : input int, optional
		    Default: 0
		lda : input int, optional
		    Default: shape(a,0)
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('F') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function ctrtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arf,info = ctrttf(a,[transr,uplo])
		
		Wrapper for ``ctrttf``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (lda,n)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		arf : rank-1 array('F') with bounds (n*(n+1)/2)
		info : int
	**/
	static public function ctrttf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ap,info = ctrttp(a,[uplo])
		
		Wrapper for ``ctrttp``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (lda,n)
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		ap : rank-1 array('F') with bounds (n*(n+1)/2)
		info : int
	**/
	static public function ctrttp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rz,tau,info = ctzrzf(a,[lwork,overwrite_a])
		
		Wrapper for ``ctzrzf``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(m,1)
		
		Returns
		-------
		rz : rank-2 array('F') with bounds (m,n) and a storage
		tau : rank-1 array('F') with bounds (m)
		info : int
	**/
	static public function ctzrzf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = ctzrzf_lwork(m,n)
		
		Wrapper for ``ctzrzf_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function ctzrzf_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cs11,cs12,cs21,cs22,theta,u1,u2,v1t,v2t,info = cuncsd(x11,x12,x21,x22,[compute_u1,compute_u2,compute_v1t,compute_v2t,trans,signs,lwork,lrwork,overwrite_x11,overwrite_x12,overwrite_x21,overwrite_x22])
		
		Wrapper for ``cuncsd``.
		
		Parameters
		----------
		x11 : input rank-2 array('F') with bounds (p,q)
		x12 : input rank-2 array('F') with bounds (p,mmq)
		x21 : input rank-2 array('F') with bounds (mmp,q)
		x22 : input rank-2 array('F') with bounds (mmp,mmq)
		
		Other Parameters
		----------------
		compute_u1 : input int, optional
		    Default: 1
		compute_u2 : input int, optional
		    Default: 1
		compute_v1t : input int, optional
		    Default: 1
		compute_v2t : input int, optional
		    Default: 1
		trans : input int, optional
		    Default: 0
		signs : input int, optional
		    Default: 0
		overwrite_x11 : input int, optional
		    Default: 0
		overwrite_x12 : input int, optional
		    Default: 0
		overwrite_x21 : input int, optional
		    Default: 0
		overwrite_x22 : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: 2*m+MAX(1,MAX(mmp,mmq))+1
		lrwork : input int, optional
		    Default: 5*MAX(1,q-1)+4*MAX(1,q)+8*q+1
		
		Returns
		-------
		cs11 : rank-2 array('F') with bounds (p,q) and x11 storage
		cs12 : rank-2 array('F') with bounds (p,mmq) and x12 storage
		cs21 : rank-2 array('F') with bounds (mmp,q) and x21 storage
		cs22 : rank-2 array('F') with bounds (mmp,mmq) and x22 storage
		theta : rank-1 array('f') with bounds (min(min(p,mmp),min(q,mmq)))
		u1 : rank-2 array('F') with bounds ((compute_u1?p:0),(compute_u1?p:0))
		u2 : rank-2 array('F') with bounds ((compute_u2?mmp:0),(compute_u2?mmp:0))
		v1t : rank-2 array('F') with bounds ((compute_v1t?q:0),(compute_v1t?q:0))
		v2t : rank-2 array('F') with bounds ((compute_v2t?mmq:0),(compute_v2t?mmq:0))
		info : int
	**/
	static public function cuncsd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,rwork,info = cuncsd_lwork(m,p,q)
		
		Wrapper for ``cuncsd_lwork``.
		
		Parameters
		----------
		m : input int
		p : input int
		q : input int
		
		Returns
		-------
		work : complex
		rwork : float
		info : int
	**/
	static public function cuncsd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ht,info = cunghr(a,tau,[lo,hi,lwork,overwrite_a])
		
		Wrapper for ``cunghr``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		tau : input rank-1 array('F') with bounds (n - 1)
		
		Other Parameters
		----------------
		lo : input int, optional
		    Default: 0
		hi : input int, optional
		    Default: n-1
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(hi-lo,1)
		
		Returns
		-------
		ht : rank-2 array('F') with bounds (n,n) and a storage
		info : int
	**/
	static public function cunghr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = cunghr_lwork(n,[lo,hi])
		
		Wrapper for ``cunghr_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lo : input int, optional
		    Default: 0
		hi : input int, optional
		    Default: n-1
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function cunghr_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		q,work,info = cungqr(a,tau,[lwork,overwrite_a])
		
		Wrapper for ``cungqr``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		tau : input rank-1 array('F') with bounds (k)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		
		Returns
		-------
		q : rank-2 array('F') with bounds (m,n) and a storage
		work : rank-1 array('F') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function cungqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		q,work,info = cungrq(a,tau,[lwork,overwrite_a])
		
		Wrapper for ``cungrq``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		tau : input rank-1 array('F') with bounds (k)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*m,1)
		
		Returns
		-------
		q : rank-2 array('F') with bounds (m,n) and a storage
		work : rank-1 array('F') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function cungrq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cq,work,info = cunmqr(side,trans,a,tau,c,lwork,[overwrite_c])
		
		Wrapper for ``cunmqr``.
		
		Parameters
		----------
		side : input string(len=1)
		trans : input string(len=1)
		a : input rank-2 array('F') with bounds (lda,k)
		tau : input rank-1 array('F') with bounds (k)
		c : input rank-2 array('F') with bounds (ldc,n)
		lwork : input int
		
		Other Parameters
		----------------
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		cq : rank-2 array('F') with bounds (ldc,n) and c storage
		work : rank-1 array('F') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function cunmqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cq,info = cunmrz(a,tau,c,[side,trans,lwork,overwrite_c])
		
		Wrapper for ``cunmrz``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (k,nt)
		tau : input rank-1 array('F') with bounds (k)
		c : input rank-2 array('F') with bounds (m,n)
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_c : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX((side[0]=='L'?n:m),1)
		
		Returns
		-------
		cq : rank-2 array('F') with bounds (m,n) and c storage
		info : int
	**/
	static public function cunmrz(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = cunmrz_lwork(m,n,[side,trans])
		
		Wrapper for ``cunmrz_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		trans : input string(len=1), optional
		    Default: 'N'
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function cunmrz_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lub,piv,x,info = dgbsv(kl,ku,ab,b,[overwrite_ab,overwrite_b])
		
		Wrapper for ``dgbsv``.
		
		Parameters
		----------
		kl : input int
		ku : input int
		ab : input rank-2 array('d') with bounds (2*kl+ku+1,n)
		b : input rank-2 array('d') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_ab : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		lub : rank-2 array('d') with bounds (2*kl+ku+1,n) and ab storage
		piv : rank-1 array('i') with bounds (n)
		x : rank-2 array('d') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function dgbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lu,ipiv,info = dgbtrf(ab,kl,ku,[m,n,ldab,overwrite_ab])
		
		Wrapper for ``dgbtrf``.
		
		Parameters
		----------
		ab : input rank-2 array('d') with bounds (ldab,n)
		kl : input int
		ku : input int
		
		Other Parameters
		----------------
		m : input int, optional
		    Default: shape(ab,1)
		n : input int, optional
		    Default: shape(ab,1)
		overwrite_ab : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: max(shape(ab,0),1)
		
		Returns
		-------
		lu : rank-2 array('d') with bounds (ldab,n) and ab storage
		ipiv : rank-1 array('i') with bounds (MIN(m,n))
		info : int
	**/
	static public function dgbtrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = dgbtrs(ab,kl,ku,b,ipiv,[trans,n,ldab,ldb,overwrite_b])
		
		Wrapper for ``dgbtrs``.
		
		Parameters
		----------
		ab : input rank-2 array('d') with bounds (ldab,n)
		kl : input int
		ku : input int
		b : input rank-2 array('d') with bounds (ldb,nrhs)
		ipiv : input rank-1 array('i') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		n : input int, optional
		    Default: shape(ab,1)
		ldab : input int, optional
		    Default: shape(ab,0)
		ldb : input int, optional
		    Default: shape(b,0)
		
		Returns
		-------
		x : rank-2 array('d') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function dgbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ba,lo,hi,pivscale,info = dgebal(a,[scale,permute,overwrite_a])
		
		Wrapper for ``dgebal``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		scale : input int, optional
		    Default: 0
		permute : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		ba : rank-2 array('d') with bounds (m,n) and a storage
		lo : int
		hi : int
		pivscale : rank-1 array('d') with bounds (n)
		info : int
	**/
	static public function dgebal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = dgecon(a,anorm,[norm])
		
		Wrapper for ``dgecon``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		anorm : input float
		
		Other Parameters
		----------------
		norm : input string(len=1), optional
		    Default: '1'
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function dgecon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		r,c,rowcnd,colcnd,amax,info = dgeequ(a)
		
		Wrapper for ``dgeequ``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		
		Returns
		-------
		r : rank-1 array('d') with bounds (m)
		c : rank-1 array('d') with bounds (n)
		rowcnd : float
		colcnd : float
		amax : float
		info : int
	**/
	static public function dgeequ(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		r,c,rowcnd,colcnd,amax,info = dgeequb(a)
		
		Wrapper for ``dgeequb``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		
		Returns
		-------
		r : rank-1 array('d') with bounds (m)
		c : rank-1 array('d') with bounds (n)
		rowcnd : float
		colcnd : float
		amax : float
		info : int
	**/
	static public function dgeequb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		t,sdim,wr,wi,vs,work,info = dgees(dselect,a,[compute_v,sort_t,lwork,dselect_extra_args,overwrite_a])
		
		Wrapper for ``dgees``.
		
		Parameters
		----------
		dselect : call-back function
		a : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default: 1
		sort_t : input int, optional
		    Default: 0
		dselect_extra_args : input tuple, optional
		    Default: ()
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		
		Returns
		-------
		t : rank-2 array('d') with bounds (n,n) and a storage
		sdim : int
		wr : rank-1 array('d') with bounds (n)
		wi : rank-1 array('d') with bounds (n)
		vs : rank-2 array('d') with bounds (ldvs,n)
		work : rank-1 array('d') with bounds (MAX(lwork,1))
		info : int
		
		Notes
		-----
		Call-back functions::
		
		  def dselect(arg1,arg2): return dselect
		  Required arguments:
		    arg1 : input float
		    arg2 : input float
		  Return objects:
		    dselect : int
	**/
	static public function dgees(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		wr,wi,vl,vr,info = dgeev(a,[compute_vl,compute_vr,lwork,overwrite_a])
		
		Wrapper for ``dgeev``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_vl : input int, optional
		    Default: 1
		compute_vr : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(4*n,1)
		
		Returns
		-------
		wr : rank-1 array('d') with bounds (n)
		wi : rank-1 array('d') with bounds (n)
		vl : rank-2 array('d') with bounds (ldvl,n)
		vr : rank-2 array('d') with bounds (ldvr,n)
		info : int
	**/
	static public function dgeev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dgeev_lwork(n,[compute_vl,compute_vr])
		
		Wrapper for ``dgeev_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		compute_vl : input int, optional
		    Default: 1
		compute_vr : input int, optional
		    Default: 1
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dgeev_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		`dgegv` is deprecated!
		The `*gegv` family of routines has been deprecated in
		LAPACK 3.6.0 in favor of the `*ggev` family of routines.
		The corresponding wrappers will be removed from SciPy in
		a future release.
		
		alphar,alphai,beta,vl,vr,info = dgegv(a,b,[compute_vl,compute_vr,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``dgegv``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		b : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_vl : input int, optional
		    Default: 1
		compute_vr : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(8*n,1)
		
		Returns
		-------
		alphar : rank-1 array('d') with bounds (n)
		alphai : rank-1 array('d') with bounds (n)
		beta : rank-1 array('d') with bounds (n)
		vl : rank-2 array('d') with bounds (ldvl,n)
		vr : rank-2 array('d') with bounds (ldvr,n)
		info : int
	**/
	static public function dgegv(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		ht,tau,info = dgehrd(a,[lo,hi,lwork,overwrite_a])
		
		Wrapper for ``dgehrd``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		lo : input int, optional
		    Default: 0
		hi : input int, optional
		    Default: n-1
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(n,1)
		
		Returns
		-------
		ht : rank-2 array('d') with bounds (n,n) and a storage
		tau : rank-1 array('d') with bounds (n - 1)
		info : int
	**/
	static public function dgehrd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dgehrd_lwork(n,[lo,hi])
		
		Wrapper for ``dgehrd_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lo : input int, optional
		    Default: 0
		hi : input int, optional
		    Default: n-1
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dgehrd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sva,u,v,workout,iworkout,info = dgejsv(a,[joba,jobu,jobv,jobr,jobt,jobp,lwork,overwrite_a])
		
		Wrapper for ``dgejsv``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (lda,n)
		
		Other Parameters
		----------------
		joba : input int, optional
		    Default: 4
		jobu : input int, optional
		    Default: 0
		jobv : input int, optional
		    Default: 0
		jobr : input int, optional
		    Default: 1
		jobt : input int, optional
		    Default: 0
		jobp : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(6*n+2*n*n, max(2*m+n, max(4*n+n*n, max(2*n+n*n+6, 7))))
		
		Returns
		-------
		sva : rank-1 array('d') with bounds (n)
		u : rank-2 array('d') with bounds (((jobt == 0)&&(jobu == 3)?0:m),((jobt == 0)&&(jobu == 3)?0:(jobu == 1?m:n)))
		v : rank-2 array('d') with bounds (((jobt == 0)&&(jobv == 3)?0:ldv),((jobt == 0)&&(jobv == 3)?0:n))
		workout : rank-1 array('d') with bounds (7)
		iworkout : rank-1 array('i') with bounds (3)
		info : int
	**/
	static public function dgejsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lqr,x,info = dgels(a,b,[trans,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``dgels``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		b : input rank-2 array('d') with bounds (MAX(m,n),nrhs)
		
		Other Parameters
		----------------
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(MIN(m,n)+MAX(MIN(m,n),nrhs),1)
		
		Returns
		-------
		lqr : rank-2 array('d') with bounds (m,n) and a storage
		x : rank-2 array('d') with bounds (MAX(m,n),nrhs) and b storage
		info : int
	**/
	static public function dgels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dgels_lwork(m,n,nrhs,[trans])
		
		Wrapper for ``dgels_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		nrhs : input int
		
		Other Parameters
		----------------
		trans : input string(len=1), optional
		    Default: 'N'
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dgels_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,s,rank,info = dgelsd(a,b,lwork,size_iwork,[cond,overwrite_a,overwrite_b])
		
		Wrapper for ``dgelsd``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		b : input rank-2 array('d') with bounds (maxmn,nrhs)
		lwork : input int
		size_iwork : input int
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		cond : input float, optional
		    Default: -1.0
		
		Returns
		-------
		x : rank-2 array('d') with bounds (maxmn,nrhs) and b storage
		s : rank-1 array('d') with bounds (minmn)
		rank : int
		info : int
	**/
	static public function dgelsd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,iwork,info = dgelsd_lwork(m,n,nrhs,[cond,lwork])
		
		Wrapper for ``dgelsd_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		nrhs : input int
		
		Other Parameters
		----------------
		cond : input float, optional
		    Default: -1.0
		lwork : input int, optional
		    Default: -1
		
		Returns
		-------
		work : float
		iwork : int
		info : int
	**/
	static public function dgelsd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		v,x,s,rank,work,info = dgelss(a,b,[cond,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``dgelss``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		b : input rank-2 array('d') with bounds (maxmn,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		cond : input float, optional
		    Default: -1.0
		lwork : input int, optional
		    Default: max(3*minmn+MAX(2*minmn,MAX(maxmn,nrhs)),1)
		
		Returns
		-------
		v : rank-2 array('d') with bounds (m,n) and a storage
		x : rank-2 array('d') with bounds (maxmn,nrhs) and b storage
		s : rank-1 array('d') with bounds (minmn)
		rank : int
		work : rank-1 array('d') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function dgelss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dgelss_lwork(m,n,nrhs,[cond,lwork])
		
		Wrapper for ``dgelss_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		nrhs : input int
		
		Other Parameters
		----------------
		cond : input float, optional
		    Default: -1.0
		lwork : input int, optional
		    Default: -1
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dgelss_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		v,x,j,rank,info = dgelsy(a,b,jptv,cond,lwork,[overwrite_a,overwrite_b])
		
		Wrapper for ``dgelsy``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		b : input rank-2 array('d') with bounds (maxmn,nrhs)
		jptv : input rank-1 array('i') with bounds (n)
		cond : input float
		lwork : input int
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		v : rank-2 array('d') with bounds (m,n) and a storage
		x : rank-2 array('d') with bounds (maxmn,nrhs) and b storage
		j : rank-1 array('i') with bounds (n) and jptv storage
		rank : int
		info : int
	**/
	static public function dgelsy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dgelsy_lwork(m,n,nrhs,cond,[lwork])
		
		Wrapper for ``dgelsy_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		nrhs : input int
		cond : input float
		
		Other Parameters
		----------------
		lwork : input int, optional
		    Default: -1
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dgelsy_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,info = dgemqrt(v,t,c,[side,trans,overwrite_c])
		
		Wrapper for ``dgemqrt``.
		
		Parameters
		----------
		v : input rank-2 array('d') with bounds ((side[0]=='L'?m:n),k)
		t : input rank-2 array('d') with bounds (nb,k)
		c : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('d') with bounds (m,n)
		info : int
	**/
	static public function dgemqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr,jpvt,tau,work,info = dgeqp3(a,[lwork,overwrite_a])
		
		Wrapper for ``dgeqp3``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*(n+1),1)
		
		Returns
		-------
		qr : rank-2 array('d') with bounds (m,n) and a storage
		jpvt : rank-1 array('i') with bounds (n)
		tau : rank-1 array('d') with bounds (MIN(m,n))
		work : rank-1 array('d') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function dgeqp3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr,tau,work,info = dgeqrf(a,[lwork,overwrite_a])
		
		Wrapper for ``dgeqrf``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		
		Returns
		-------
		qr : rank-2 array('d') with bounds (m,n) and a storage
		tau : rank-1 array('d') with bounds (MIN(m,n))
		work : rank-1 array('d') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function dgeqrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dgeqrf_lwork(m,n)
		
		Wrapper for ``dgeqrf_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dgeqrf_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr,tau,info = dgeqrfp(a,[lwork,overwrite_a])
		
		Wrapper for ``dgeqrfp``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(1, n)
		
		Returns
		-------
		qr : rank-2 array('d') with bounds (m,n) and a storage
		tau : rank-1 array('d') with bounds (MIN(m,n))
		info : int
	**/
	static public function dgeqrfp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dgeqrfp_lwork(m,n)
		
		Wrapper for ``dgeqrfp_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dgeqrfp_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,t,info = dgeqrt(nb,a,[overwrite_a])
		
		Wrapper for ``dgeqrt``.
		
		Parameters
		----------
		nb : input int
		a : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('d') with bounds (m,n)
		t : rank-2 array('d') with bounds (nb,MIN(m,n))
		info : int
	**/
	static public function dgeqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr,tau,work,info = dgerqf(a,[lwork,overwrite_a])
		
		Wrapper for ``dgerqf``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*m,1)
		
		Returns
		-------
		qr : rank-2 array('d') with bounds (m,n) and a storage
		tau : rank-1 array('d') with bounds (MIN(m,n))
		work : rank-1 array('d') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function dgerqf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,scale = dgesc2(lu,rhs,ipiv,jpiv,[overwrite_rhs])
		
		Wrapper for ``dgesc2``.
		
		Parameters
		----------
		lu : input rank-2 array('d') with bounds (n,n)
		rhs : input rank-1 array('d') with bounds (n)
		ipiv : input rank-1 array('i') with bounds (n)
		jpiv : input rank-1 array('i') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_rhs : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-1 array('d') with bounds (n) and rhs storage
		scale : float
	**/
	static public function dgesc2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		u,s,vt,info = dgesdd(a,[compute_uv,full_matrices,lwork,overwrite_a])
		
		Wrapper for ``dgesdd``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		compute_uv : input int, optional
		    Default: 1
		full_matrices : input int, optional
		    Default: 1
		lwork : input int, optional
		    Default: max((compute_uv?4*minmn*minmn+MAX(m,n)+9*minmn:MAX(14*minmn+4,10*minmn+2+25*(25+8))+MAX(m,n)),1)
		
		Returns
		-------
		u : rank-2 array('d') with bounds (u0,u1)
		s : rank-1 array('d') with bounds (minmn)
		vt : rank-2 array('d') with bounds (vt0,vt1)
		info : int
	**/
	static public function dgesdd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dgesdd_lwork(m,n,[compute_uv,full_matrices])
		
		Wrapper for ``dgesdd_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Other Parameters
		----------------
		compute_uv : input int, optional
		    Default: 1
		full_matrices : input int, optional
		    Default: 1
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dgesdd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lu,piv,x,info = dgesv(a,b,[overwrite_a,overwrite_b])
		
		Wrapper for ``dgesv``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		b : input rank-2 array('d') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		lu : rank-2 array('d') with bounds (n,n) and a storage
		piv : rank-1 array('i') with bounds (n)
		x : rank-2 array('d') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function dgesv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		u,s,vt,info = dgesvd(a,[compute_uv,full_matrices,lwork,overwrite_a])
		
		Wrapper for ``dgesvd``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		compute_uv : input int, optional
		    Default: 1
		full_matrices : input int, optional
		    Default: 1
		lwork : input int, optional
		    Default: max(MAX(3*minmn+MAX(m,n),5*minmn),1)
		
		Returns
		-------
		u : rank-2 array('d') with bounds (u0,u1)
		s : rank-1 array('d') with bounds (minmn)
		vt : rank-2 array('d') with bounds (vt0,vt1)
		info : int
	**/
	static public function dgesvd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dgesvd_lwork(m,n,[compute_uv,full_matrices])
		
		Wrapper for ``dgesvd_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Other Parameters
		----------------
		compute_uv : input int, optional
		    Default: 1
		full_matrices : input int, optional
		    Default: 1
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dgesvd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		as,lu,ipiv,equed,rs,cs,bs,x,rcond,ferr,berr,info = dgesvx(a,b,[fact,trans,af,ipiv,equed,r,c,overwrite_a,overwrite_b])
		
		Wrapper for ``dgesvx``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		b : input rank-2 array('d') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		fact : input string(len=1), optional
		    Default: 'E'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_a : input int, optional
		    Default: 0
		af : input rank-2 array('d') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		equed : input string(len=1), optional
		    Default: 'B'
		r : input rank-1 array('d') with bounds (n)
		c : input rank-1 array('d') with bounds (n)
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		as : rank-2 array('d') with bounds (n,n) and a storage
		lu : rank-2 array('d') with bounds (n,n) and af storage
		ipiv : rank-1 array('i') with bounds (n)
		equed : string(len=1)
		rs : rank-1 array('d') with bounds (n) and r storage
		cs : rank-1 array('d') with bounds (n) and c storage
		bs : rank-2 array('d') with bounds (n,nrhs) and b storage
		x : rank-2 array('d') with bounds (n,nrhs)
		rcond : float
		ferr : rank-1 array('d') with bounds (nrhs)
		berr : rank-1 array('d') with bounds (nrhs)
		info : int
	**/
	static public function dgesvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lu,ipiv,jpiv,info = dgetc2(a,[overwrite_a])
		
		Wrapper for ``dgetc2``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		lu : rank-2 array('d') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		jpiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function dgetc2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lu,piv,info = dgetrf(a,[overwrite_a])
		
		Wrapper for ``dgetrf``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		lu : rank-2 array('d') with bounds (m,n) and a storage
		piv : rank-1 array('i') with bounds (MIN(m,n))
		info : int
	**/
	static public function dgetrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inv_a,info = dgetri(lu,piv,[lwork,overwrite_lu])
		
		Wrapper for ``dgetri``.
		
		Parameters
		----------
		lu : input rank-2 array('d') with bounds (n,n)
		piv : input rank-1 array('i') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_lu : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		
		Returns
		-------
		inv_a : rank-2 array('d') with bounds (n,n) and lu storage
		info : int
	**/
	static public function dgetri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dgetri_lwork(n)
		
		Wrapper for ``dgetri_lwork``.
		
		Parameters
		----------
		n : input int
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dgetri_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = dgetrs(lu,piv,b,[trans,overwrite_b])
		
		Wrapper for ``dgetrs``.
		
		Parameters
		----------
		lu : input rank-2 array('d') with bounds (n,n)
		piv : input rank-1 array('i') with bounds (n)
		b : input rank-2 array('d') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('d') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function dgetrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,b,sdim,alphar,alphai,beta,vsl,vsr,work,info = dgges(dselect,a,b,[jobvsl,jobvsr,sort_t,ldvsl,ldvsr,lwork,dselect_extra_args,overwrite_a,overwrite_b])
		
		Wrapper for ``dgges``.
		
		Parameters
		----------
		dselect : call-back function
		a : input rank-2 array('d') with bounds (lda,n)
		b : input rank-2 array('d') with bounds (ldb,n)
		
		Other Parameters
		----------------
		jobvsl : input int, optional
		    Default: 1
		jobvsr : input int, optional
		    Default: 1
		sort_t : input int, optional
		    Default: 0
		dselect_extra_args : input tuple, optional
		    Default: ()
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		ldvsl : input int, optional
		    Default: ((jobvsl==1)?n:1)
		ldvsr : input int, optional
		    Default: ((jobvsr==1)?n:1)
		lwork : input int, optional
		    Default: max(8*n+16,1)
		
		Returns
		-------
		a : rank-2 array('d') with bounds (lda,n)
		b : rank-2 array('d') with bounds (ldb,n)
		sdim : int
		alphar : rank-1 array('d') with bounds (n)
		alphai : rank-1 array('d') with bounds (n)
		beta : rank-1 array('d') with bounds (n)
		vsl : rank-2 array('d') with bounds (ldvsl,n)
		vsr : rank-2 array('d') with bounds (ldvsr,n)
		work : rank-1 array('d') with bounds (MAX(lwork,1))
		info : int
		
		Notes
		-----
		Call-back functions::
		
		  def dselect(alphar,alphai,beta): return dselect
		  Required arguments:
		    alphar : input float
		    alphai : input float
		    beta : input float
		  Return objects:
		    dselect : int
	**/
	static public function dgges(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		alphar,alphai,beta,vl,vr,work,info = dggev(a,b,[compute_vl,compute_vr,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``dggev``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		b : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_vl : input int, optional
		    Default: 1
		compute_vr : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(8*n,1)
		
		Returns
		-------
		alphar : rank-1 array('d') with bounds (n)
		alphai : rank-1 array('d') with bounds (n)
		beta : rank-1 array('d') with bounds (n)
		vl : rank-2 array('d') with bounds (ldvl,n)
		vr : rank-2 array('d') with bounds (ldvr,n)
		work : rank-1 array('d') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function dggev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		t,r,res,x,info = dgglse(a,b,c,d,[lwork,overwrite_a,overwrite_b,overwrite_c,overwrite_d])
		
		Wrapper for ``dgglse``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		b : input rank-2 array('d') with bounds (p,n)
		c : input rank-1 array('d') with bounds (m)
		d : input rank-1 array('d') with bounds (p)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		overwrite_c : input int, optional
		    Default: 0
		overwrite_d : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(m+n+p,1)
		
		Returns
		-------
		t : rank-2 array('d') with bounds (m,n) and a storage
		r : rank-2 array('d') with bounds (p,n) and b storage
		res : rank-1 array('d') with bounds (m) and c storage
		x : rank-1 array('d') with bounds (n)
		info : int
	**/
	static public function dgglse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dgglse_lwork(m,n,p)
		
		Wrapper for ``dgglse_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		p : input int
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dgglse_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		du2,d,du,x,info = dgtsv(dl,d,du,b,[overwrite_dl,overwrite_d,overwrite_du,overwrite_b])
		
		Wrapper for ``dgtsv``.
		
		Parameters
		----------
		dl : input rank-1 array('d') with bounds (n - 1)
		d : input rank-1 array('d') with bounds (n)
		du : input rank-1 array('d') with bounds (n - 1)
		b : input rank-2 array('d') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_dl : input int, optional
		    Default: 0
		overwrite_d : input int, optional
		    Default: 0
		overwrite_du : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		du2 : rank-1 array('d') with bounds (n - 1) and dl storage
		d : rank-1 array('d') with bounds (n)
		du : rank-1 array('d') with bounds (n - 1)
		x : rank-2 array('d') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function dgtsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dlf,df,duf,du2,ipiv,x,rcond,ferr,berr,info = dgtsvx(dl,d,du,b,[fact,trans,dlf,df,duf,du2,ipiv])
		
		Wrapper for ``dgtsvx``.
		
		Parameters
		----------
		dl : input rank-1 array('d') with bounds (MAX(0, n-1))
		d : input rank-1 array('d') with bounds (n)
		du : input rank-1 array('d') with bounds (MAX(0, n-1))
		b : input rank-2 array('d') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		fact : input string(len=1), optional
		    Default: 'N'
		trans : input string(len=1), optional
		    Default: 'N'
		dlf : input rank-1 array('d') with bounds (MAX(0,n-1))
		df : input rank-1 array('d') with bounds (n)
		duf : input rank-1 array('d') with bounds (MAX(0,n-1))
		du2 : input rank-1 array('d') with bounds (MAX(0,n-2))
		ipiv : input rank-1 array('i') with bounds (n)
		
		Returns
		-------
		dlf : rank-1 array('d') with bounds (MAX(0,n-1))
		df : rank-1 array('d') with bounds (n)
		duf : rank-1 array('d') with bounds (MAX(0,n-1))
		du2 : rank-1 array('d') with bounds (MAX(0,n-2))
		ipiv : rank-1 array('i') with bounds (n)
		x : rank-2 array('d') with bounds (ldx,nrhs)
		rcond : float
		ferr : rank-1 array('d') with bounds (nrhs)
		berr : rank-1 array('d') with bounds (nrhs)
		info : int
	**/
	static public function dgtsvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dl,d,du,du2,ipiv,info = dgttrf(dl,d,du,[overwrite_dl,overwrite_d,overwrite_du])
		
		Wrapper for ``dgttrf``.
		
		Parameters
		----------
		dl : input rank-1 array('d') with bounds (n - 1)
		d : input rank-1 array('d') with bounds (n)
		du : input rank-1 array('d') with bounds (n - 1)
		
		Other Parameters
		----------------
		overwrite_dl : input int, optional
		    Default: 0
		overwrite_d : input int, optional
		    Default: 0
		overwrite_du : input int, optional
		    Default: 0
		
		Returns
		-------
		dl : rank-1 array('d') with bounds (n - 1)
		d : rank-1 array('d') with bounds (n)
		du : rank-1 array('d') with bounds (n - 1)
		du2 : rank-1 array('d') with bounds (n - 2)
		ipiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function dgttrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = dgttrs(dl,d,du,du2,ipiv,b,[trans,overwrite_b])
		
		Wrapper for ``dgttrs``.
		
		Parameters
		----------
		dl : input rank-1 array('d') with bounds (n - 1)
		d : input rank-1 array('d') with bounds (n)
		du : input rank-1 array('d') with bounds (n - 1)
		du2 : input rank-1 array('d') with bounds (n - 2)
		ipiv : input rank-1 array('i') with bounds (n)
		b : input rank-2 array('d') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('d') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function dgttrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dlamch = dlamch(cmach)
		
		Wrapper for ``dlamch``.
		
		Parameters
		----------
		cmach : input string(len=1)
		
		Returns
		-------
		dlamch : float
	**/
	static public function dlamch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		n2 = dlange(norm,a)
		
		Wrapper for ``dlange``.
		
		Parameters
		----------
		norm : input string(len=1)
		a : input rank-2 array('d') with bounds (m,n)
		
		Returns
		-------
		n2 : float
	**/
	static public function dlange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = dlarf(v,tau,c,work,[side,incv,overwrite_c])
		
		Wrapper for ``dlarf``.
		
		Parameters
		----------
		v : input rank-1 array('d') with bounds ((side[0]=='L'?(1 + (m-1)*abs(incv)):(1 + (n-1)*abs(incv))))
		tau : input float
		c : input rank-2 array('d') with bounds (m,n)
		work : input rank-1 array('d') with bounds (lwork)
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		incv : input int, optional
		    Default: 1
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('d') with bounds (m,n)
	**/
	static public function dlarf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		alpha,x,tau = dlarfg(n,alpha,x,[incx,overwrite_x])
		
		Wrapper for ``dlarfg``.
		
		Parameters
		----------
		n : input int
		alpha : input float
		x : input rank-1 array('d') with bounds (lx)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		alpha : float
		x : rank-1 array('d') with bounds (lx)
		tau : float
	**/
	static public function dlarfg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cs,sn,r = dlartg(f,g)
		
		Wrapper for ``dlartg``.
		
		Parameters
		----------
		f : input float
		g : input float
		
		Returns
		-------
		cs : float
		sn : float
		r : float
	**/
	static public function dlartg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		delta,sigma,work,info = dlasd4(i,d,z,[rho])
		
		Wrapper for ``dlasd4``.
		
		Parameters
		----------
		i : input int
		d : input rank-1 array('d') with bounds (n)
		z : input rank-1 array('d') with bounds (n)
		
		Other Parameters
		----------------
		rho : input float, optional
		    Default: 1.0
		
		Returns
		-------
		delta : rank-1 array('d') with bounds (n)
		sigma : float
		work : rank-1 array('d') with bounds (n)
		info : int
	**/
	static public function dlasd4(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = dlaswp(a,piv,[k1,k2,off,inc,overwrite_a])
		
		Wrapper for ``dlaswp``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (nrows,n)
		piv : input rank-1 array('i') with bounds (npiv)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		k1 : input int, optional
		    Default: 0
		k2 : input int, optional
		    Default: npiv-1
		off : input int, optional
		    Default: 0
		inc : input int, optional
		    Default: 1
		
		Returns
		-------
		a : rank-2 array('d') with bounds (nrows,n)
	**/
	static public function dlaswp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,info = dlauum(c,[lower,overwrite_c])
		
		Wrapper for ``dlauum``.
		
		Parameters
		----------
		c : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_c : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('d') with bounds (n,n) and c storage
		info : int
	**/
	static public function dlauum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cs11,cs12,cs21,cs22,theta,u1,u2,v1t,v2t,info = dorcsd(x11,x12,x21,x22,[compute_u1,compute_u2,compute_v1t,compute_v2t,trans,signs,lwork,overwrite_x11,overwrite_x12,overwrite_x21,overwrite_x22])
		
		Wrapper for ``dorcsd``.
		
		Parameters
		----------
		x11 : input rank-2 array('d') with bounds (p,q)
		x12 : input rank-2 array('d') with bounds (p,mmq)
		x21 : input rank-2 array('d') with bounds (mmp,q)
		x22 : input rank-2 array('d') with bounds (mmp,mmq)
		
		Other Parameters
		----------------
		compute_u1 : input int, optional
		    Default: 1
		compute_u2 : input int, optional
		    Default: 1
		compute_v1t : input int, optional
		    Default: 1
		compute_v2t : input int, optional
		    Default: 1
		trans : input int, optional
		    Default: 0
		signs : input int, optional
		    Default: 0
		overwrite_x11 : input int, optional
		    Default: 0
		overwrite_x12 : input int, optional
		    Default: 0
		overwrite_x21 : input int, optional
		    Default: 0
		overwrite_x22 : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: 2+2*m+5*MAX(1,q-1)+4*MAX(1,q)+8*q
		
		Returns
		-------
		cs11 : rank-2 array('d') with bounds (p,q) and x11 storage
		cs12 : rank-2 array('d') with bounds (p,mmq) and x12 storage
		cs21 : rank-2 array('d') with bounds (mmp,q) and x21 storage
		cs22 : rank-2 array('d') with bounds (mmp,mmq) and x22 storage
		theta : rank-1 array('d') with bounds (min(min(p,mmp),min(q,mmq)))
		u1 : rank-2 array('d') with bounds ((compute_u1?p:0),(compute_u1?p:0))
		u2 : rank-2 array('d') with bounds ((compute_u2?mmp:0),(compute_u2?mmp:0))
		v1t : rank-2 array('d') with bounds ((compute_v1t?q:0),(compute_v1t?q:0))
		v2t : rank-2 array('d') with bounds ((compute_v2t?mmq:0),(compute_v2t?mmq:0))
		info : int
	**/
	static public function dorcsd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dorcsd_lwork(m,p,q)
		
		Wrapper for ``dorcsd_lwork``.
		
		Parameters
		----------
		m : input int
		p : input int
		q : input int
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dorcsd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ht,info = dorghr(a,tau,[lo,hi,lwork,overwrite_a])
		
		Wrapper for ``dorghr``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		tau : input rank-1 array('d') with bounds (n - 1)
		
		Other Parameters
		----------------
		lo : input int, optional
		    Default: 0
		hi : input int, optional
		    Default: n-1
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(hi-lo,1)
		
		Returns
		-------
		ht : rank-2 array('d') with bounds (n,n) and a storage
		info : int
	**/
	static public function dorghr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dorghr_lwork(n,[lo,hi])
		
		Wrapper for ``dorghr_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lo : input int, optional
		    Default: 0
		hi : input int, optional
		    Default: n-1
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dorghr_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		q,work,info = dorgqr(a,tau,[lwork,overwrite_a])
		
		Wrapper for ``dorgqr``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		tau : input rank-1 array('d') with bounds (k)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		
		Returns
		-------
		q : rank-2 array('d') with bounds (m,n) and a storage
		work : rank-1 array('d') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function dorgqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		q,work,info = dorgrq(a,tau,[lwork,overwrite_a])
		
		Wrapper for ``dorgrq``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		tau : input rank-1 array('d') with bounds (k)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*m,1)
		
		Returns
		-------
		q : rank-2 array('d') with bounds (m,n) and a storage
		work : rank-1 array('d') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function dorgrq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cq,work,info = dormqr(side,trans,a,tau,c,lwork,[overwrite_c])
		
		Wrapper for ``dormqr``.
		
		Parameters
		----------
		side : input string(len=1)
		trans : input string(len=1)
		a : input rank-2 array('d') with bounds (lda,k)
		tau : input rank-1 array('d') with bounds (k)
		c : input rank-2 array('d') with bounds (ldc,n)
		lwork : input int
		
		Other Parameters
		----------------
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		cq : rank-2 array('d') with bounds (ldc,n) and c storage
		work : rank-1 array('d') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function dormqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cq,info = dormrz(a,tau,c,[side,trans,lwork,overwrite_c])
		
		Wrapper for ``dormrz``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (k,nt)
		tau : input rank-1 array('d') with bounds (k)
		c : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_c : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX((side[0]=='L'?n:m),1)
		
		Returns
		-------
		cq : rank-2 array('d') with bounds (m,n) and c storage
		info : int
	**/
	static public function dormrz(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dormrz_lwork(m,n,[side,trans])
		
		Wrapper for ``dormrz_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		trans : input string(len=1), optional
		    Default: 'N'
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dormrz_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,x,info = dpbsv(ab,b,[lower,ldab,overwrite_ab,overwrite_b])
		
		Wrapper for ``dpbsv``.
		
		Parameters
		----------
		ab : input rank-2 array('d') with bounds (ldab,n)
		b : input rank-2 array('d') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_ab : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('d') with bounds (ldab,n) and ab storage
		x : rank-2 array('d') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function dpbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,info = dpbtrf(ab,[lower,ldab,overwrite_ab])
		
		Wrapper for ``dpbtrf``.
		
		Parameters
		----------
		ab : input rank-2 array('d') with bounds (ldab,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_ab : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		
		Returns
		-------
		c : rank-2 array('d') with bounds (ldab,n) and ab storage
		info : int
	**/
	static public function dpbtrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = dpbtrs(ab,b,[lower,ldab,overwrite_b])
		
		Wrapper for ``dpbtrs``.
		
		Parameters
		----------
		ab : input rank-2 array('d') with bounds (ldab,n)
		b : input rank-2 array('d') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('d') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function dpbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		achol,info = dpftrf(n,a,[transr,uplo,overwrite_a])
		
		Wrapper for ``dpftrf``.
		
		Parameters
		----------
		n : input int
		a : input rank-1 array('d') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		achol : rank-1 array('d') with bounds (nt) and a storage
		info : int
	**/
	static public function dpftrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ainv,info = dpftri(n,a,[transr,uplo,overwrite_a])
		
		Wrapper for ``dpftri``.
		
		Parameters
		----------
		n : input int
		a : input rank-1 array('d') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		ainv : rank-1 array('d') with bounds (nt) and a storage
		info : int
	**/
	static public function dpftri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = dpftrs(n,a,b,[transr,uplo,overwrite_b])
		
		Wrapper for ``dpftrs``.
		
		Parameters
		----------
		n : input int
		a : input rank-1 array('d') with bounds (nt)
		b : input rank-2 array('d') with bounds (ldb,nhrs)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('d') with bounds (ldb,nhrs) and b storage
		info : int
	**/
	static public function dpftrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = dpocon(a,anorm,[uplo])
		
		Wrapper for ``dpocon``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		anorm : input float
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function dpocon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,x,info = dposv(a,b,[lower,overwrite_a,overwrite_b])
		
		Wrapper for ``dposv``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		b : input rank-2 array('d') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('d') with bounds (n,n) and a storage
		x : rank-2 array('d') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function dposv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a_s,lu,equed,s,b_s,x,rcond,ferr,berr,info = dposvx(a,b,[fact,af,equed,s,lower,overwrite_a,overwrite_b])
		
		Wrapper for ``dposvx``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		b : input rank-2 array('d') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		fact : input string(len=1), optional
		    Default: 'E'
		overwrite_a : input int, optional
		    Default: 0
		af : input rank-2 array('d') with bounds (n,n)
		equed : input string(len=1), optional
		    Default: 'Y'
		s : input rank-1 array('d') with bounds (n)
		overwrite_b : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		a_s : rank-2 array('d') with bounds (n,n) and a storage
		lu : rank-2 array('d') with bounds (n,n) and af storage
		equed : string(len=1)
		s : rank-1 array('d') with bounds (n)
		b_s : rank-2 array('d') with bounds (n,nrhs) and b storage
		x : rank-2 array('d') with bounds (n,nrhs)
		rcond : float
		ferr : rank-1 array('d') with bounds (nrhs)
		berr : rank-1 array('d') with bounds (nrhs)
		info : int
	**/
	static public function dposvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,info = dpotrf(a,[lower,clean,overwrite_a])
		
		Wrapper for ``dpotrf``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		clean : input int, optional
		    Default: 1
		
		Returns
		-------
		c : rank-2 array('d') with bounds (n,n) and a storage
		info : int
	**/
	static public function dpotrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inv_a,info = dpotri(c,[lower,overwrite_c])
		
		Wrapper for ``dpotri``.
		
		Parameters
		----------
		c : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_c : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		inv_a : rank-2 array('d') with bounds (n,n) and c storage
		info : int
	**/
	static public function dpotri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = dpotrs(c,b,[lower,overwrite_b])
		
		Wrapper for ``dpotrs``.
		
		Parameters
		----------
		c : input rank-2 array('d') with bounds (n,n)
		b : input rank-2 array('d') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('d') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function dpotrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = dppcon(n,ap,anorm,[lower])
		
		Wrapper for ``dppcon``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('d') with bounds (L)
		anorm : input float
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function dppcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = dppsv(n,ap,b,[lower,overwrite_b])
		
		Wrapper for ``dppsv``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('d') with bounds (L)
		b : input rank-2 array('d') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('d') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function dppsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ul,info = dpptrf(n,ap,[lower,overwrite_ap])
		
		Wrapper for ``dpptrf``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('d') with bounds (L)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		
		Returns
		-------
		ul : rank-1 array('d') with bounds (L) and ap storage
		info : int
	**/
	static public function dpptrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uli,info = dpptri(n,ap,[lower,overwrite_ap])
		
		Wrapper for ``dpptri``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('d') with bounds (L)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		
		Returns
		-------
		uli : rank-1 array('d') with bounds (L) and ap storage
		info : int
	**/
	static public function dpptri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = dpptrs(n,ap,b,[lower,overwrite_b])
		
		Wrapper for ``dpptrs``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('d') with bounds (L)
		b : input rank-2 array('d') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('d') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function dpptrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,piv,rank_c,info = dpstf2(a,[tol,lower,overwrite_a])
		
		Wrapper for ``dpstf2``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		tol : input float, optional
		    Default: -1.0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('d') with bounds (n,n) and a storage
		piv : rank-1 array('i') with bounds (n)
		rank_c : int
		info : int
	**/
	static public function dpstf2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,piv,rank_c,info = dpstrf(a,[tol,lower,overwrite_a])
		
		Wrapper for ``dpstrf``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		tol : input float, optional
		    Default: -1.0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('d') with bounds (n,n) and a storage
		piv : rank-1 array('i') with bounds (n)
		rank_c : int
		info : int
	**/
	static public function dpstrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		d,e,z,info = dpteqr(d,e,z,[compute_z,overwrite_d,overwrite_e,overwrite_z])
		
		Wrapper for ``dpteqr``.
		
		Parameters
		----------
		d : input rank-1 array('d') with bounds (n)
		e : input rank-1 array('d') with bounds ((n>0?n-1:0))
		z : input rank-2 array('d') with bounds ((compute_z==0?shape(z, 0):max(1,n)),(compute_z==0?shape(z, 1):n))
		
		Other Parameters
		----------------
		compute_z : input int, optional
		    Default: 0
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		overwrite_z : input int, optional
		    Default: 0
		
		Returns
		-------
		d : rank-1 array('d') with bounds (n)
		e : rank-1 array('d') with bounds ((n>0?n-1:0))
		z : rank-2 array('d') with bounds ((compute_z==0?shape(z, 0):max(1,n)),(compute_z==0?shape(z, 1):n))
		info : int
	**/
	static public function dpteqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		d,du,x,info = dptsv(d,e,b,[overwrite_d,overwrite_e,overwrite_b])
		
		Wrapper for ``dptsv``.
		
		Parameters
		----------
		d : input rank-1 array('d') with bounds (n)
		e : input rank-1 array('d') with bounds (n - 1)
		b : input rank-2 array('d') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		d : rank-1 array('d') with bounds (n)
		du : rank-1 array('d') with bounds (n - 1) and e storage
		x : rank-2 array('d') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function dptsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		df,ef,x,rcond,ferr,berr,info = dptsvx(d,e,b,[fact,df,ef])
		
		Wrapper for ``dptsvx``.
		
		Parameters
		----------
		d : input rank-1 array('d') with bounds (n)
		e : input rank-1 array('d') with bounds (max(0, n-1))
		b : input rank-2 array('d') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		fact : input string(len=1), optional
		    Default: 'N'
		df : input rank-1 array('d') with bounds (n)
		ef : input rank-1 array('d') with bounds (max(0, n-1))
		
		Returns
		-------
		df : rank-1 array('d') with bounds (n)
		ef : rank-1 array('d') with bounds (max(0, n-1))
		x : rank-2 array('d') with bounds (ldx,nrhs)
		rcond : float
		ferr : rank-1 array('d') with bounds (nrhs)
		berr : rank-1 array('d') with bounds (nrhs)
		info : int
	**/
	static public function dptsvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		d,e,info = dpttrf(d,e,[overwrite_d,overwrite_e])
		
		Wrapper for ``dpttrf``.
		
		Parameters
		----------
		d : input rank-1 array('d') with bounds (n)
		e : input rank-1 array('d') with bounds ((n>0?n-1:0))
		
		Other Parameters
		----------------
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		
		Returns
		-------
		d : rank-1 array('d') with bounds (n)
		e : rank-1 array('d') with bounds ((n>0?n-1:0))
		info : int
	**/
	static public function dpttrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = dpttrs(d,e,b,[overwrite_b])
		
		Wrapper for ``dpttrs``.
		
		Parameters
		----------
		d : input rank-1 array('d') with bounds (n)
		e : input rank-1 array('d') with bounds ((n>0?n-1:0))
		b : input rank-2 array('d') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('d') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function dpttrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,info = dsbev(ab,[compute_v,lower,ldab,overwrite_ab])
		
		Wrapper for ``dsbev``.
		
		Parameters
		----------
		ab : input rank-2 array('d') with bounds (ldab,n)
		
		Other Parameters
		----------------
		overwrite_ab : input int, optional
		    Default: 1
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		z : rank-2 array('d') with bounds (ldz,ldz)
		info : int
	**/
	static public function dsbev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,info = dsbevd(ab,[compute_v,lower,ldab,liwork,overwrite_ab])
		
		Wrapper for ``dsbevd``.
		
		Parameters
		----------
		ab : input rank-2 array('d') with bounds (ldab,n)
		
		Other Parameters
		----------------
		overwrite_ab : input int, optional
		    Default: 1
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		liwork : input int, optional
		    Default: (compute_v?3+5*n:1)
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		z : rank-2 array('d') with bounds (ldz,ldz)
		info : int
	**/
	static public function dsbevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,m,ifail,info = dsbevx(ab,vl,vu,il,iu,[ldab,compute_v,range,lower,abstol,mmax,overwrite_ab])
		
		Wrapper for ``dsbevx``.
		
		Parameters
		----------
		ab : input rank-2 array('d') with bounds (ldab,n)
		vl : input float
		vu : input float
		il : input int
		iu : input int
		
		Other Parameters
		----------------
		overwrite_ab : input int, optional
		    Default: 1
		ldab : input int, optional
		    Default: shape(ab,0)
		compute_v : input int, optional
		    Default: 1
		range : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		abstol : input float, optional
		    Default: 0.0
		mmax : input int, optional
		    Default: (compute_v?(range==2?(iu-il+1):n):1)
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		z : rank-2 array('d') with bounds (ldz,mmax)
		m : int
		ifail : rank-1 array('i') with bounds ((compute_v?n:1))
		info : int
	**/
	static public function dsbevx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cout = dsfrk(n,k,alpha,a,beta,c,[transr,uplo,trans,overwrite_c])
		
		Wrapper for ``dsfrk``.
		
		Parameters
		----------
		n : input int
		k : input int
		alpha : input float
		a : input rank-2 array('d') with bounds (lda,ka)
		beta : input float
		c : input rank-1 array('d') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		cout : rank-1 array('d') with bounds (nt) and c storage
	**/
	static public function dsfrk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		m,w,iblock,isplit,info = dstebz(d,e,range,vl,vu,il,iu,tol,order)
		
		Wrapper for ``dstebz``.
		
		Parameters
		----------
		d : input rank-1 array('d') with bounds (n)
		e : input rank-1 array('d') with bounds (n - 1)
		range : input int
		vl : input float
		vu : input float
		il : input int
		iu : input int
		tol : input float
		order : input string(len=1)
		
		Returns
		-------
		m : int
		w : rank-1 array('d') with bounds (n)
		iblock : rank-1 array('i') with bounds (n)
		isplit : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function dstebz(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		z,info = dstein(d,e,w,iblock,isplit)
		
		Wrapper for ``dstein``.
		
		Parameters
		----------
		d : input rank-1 array('d') with bounds (n)
		e : input rank-1 array('d') with bounds (n - 1)
		w : input rank-1 array('d') with bounds (m)
		iblock : input rank-1 array('i') with bounds (n)
		isplit : input rank-1 array('i') with bounds (n)
		
		Returns
		-------
		z : rank-2 array('d') with bounds (ldz,m)
		info : int
	**/
	static public function dstein(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		m,w,z,info = dstemr(d,e,range,vl,vu,il,iu,[compute_v,lwork,liwork,overwrite_d])
		
		Wrapper for ``dstemr``.
		
		Parameters
		----------
		d : input rank-1 array('d') with bounds (n)
		e : input rank-1 array('d') with bounds (n)
		range : input int
		vl : input float
		vu : input float
		il : input int
		iu : input int
		
		Other Parameters
		----------------
		overwrite_d : input int, optional
		    Default: 0
		compute_v : input int, optional
		    Default: 1
		lwork : input int, optional
		    Default: max((compute_v?18*n:12*n),1)
		liwork : input int, optional
		    Default: (compute_v?10*n:8*n)
		
		Returns
		-------
		m : int
		w : rank-1 array('d') with bounds (n)
		z : rank-2 array('d') with bounds (n,n)
		info : int
	**/
	static public function dstemr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,iwork,info = dstemr_lwork(d,e,range,vl,vu,il,iu,[compute_v,overwrite_d,overwrite_e])
		
		Wrapper for ``dstemr_lwork``.
		
		Parameters
		----------
		d : input rank-1 array('d') with bounds (n)
		e : input rank-1 array('d') with bounds (n)
		range : input int
		vl : input float
		vu : input float
		il : input int
		iu : input int
		
		Other Parameters
		----------------
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		compute_v : input int, optional
		    Default: 1
		
		Returns
		-------
		work : float
		iwork : int
		info : int
	**/
	static public function dstemr_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		vals,info = dsterf(d,e,[overwrite_d,overwrite_e])
		
		Wrapper for ``dsterf``.
		
		Parameters
		----------
		d : input rank-1 array('d') with bounds (n)
		e : input rank-1 array('d') with bounds (n - 1)
		
		Other Parameters
		----------------
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		
		Returns
		-------
		vals : rank-1 array('d') with bounds (n) and d storage
		info : int
	**/
	static public function dsterf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		vals,z,info = dstev(d,e,[compute_v,overwrite_d,overwrite_e])
		
		Wrapper for ``dstev``.
		
		Parameters
		----------
		d : input rank-1 array('d') with bounds (n)
		e : input rank-1 array('d') with bounds (MAX(n-1,1))
		
		Other Parameters
		----------------
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		compute_v : input int, optional
		    Default: 1
		
		Returns
		-------
		vals : rank-1 array('d') with bounds (n) and d storage
		z : rank-2 array('d') with bounds (ldz,(compute_v?n:1))
		info : int
	**/
	static public function dstev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = dsycon(a,ipiv,anorm,[lower])
		
		Wrapper for ``dsycon``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		anorm : input float
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function dsycon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,e,info = dsyconv(a,ipiv,[lower,way,overwrite_a])
		
		Wrapper for ``dsyconv``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		way : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('d') with bounds (n,n)
		e : rank-1 array('d') with bounds (n)
		info : int
	**/
	static public function dsyconv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		s,scond,amax,info = dsyequb(a,[lower])
		
		Wrapper for ``dsyequb``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (lda,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		s : rank-1 array('d') with bounds (n)
		scond : float
		amax : float
		info : int
	**/
	static public function dsyequb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,v,info = dsyev(a,[compute_v,lower,lwork,overwrite_a])
		
		Wrapper for ``dsyev``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n-1,1)
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		v : rank-2 array('d') with bounds (n,n) and a storage
		info : int
	**/
	static public function dsyev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dsyev_lwork(n,[lower])
		
		Wrapper for ``dsyev_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dsyev_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,v,info = dsyevd(a,[compute_v,lower,lwork,liwork,overwrite_a])
		
		Wrapper for ``dsyevd``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max((compute_v?1+6*n+2*n*n:2*n+1),1)
		liwork : input int, optional
		    Default: (compute_v?3+5*n:1)
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		v : rank-2 array('d') with bounds (n,n) and a storage
		info : int
	**/
	static public function dsyevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,iwork,info = dsyevd_lwork(n,[compute_v,lower])
		
		Wrapper for ``dsyevd_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : float
		iwork : int
		info : int
	**/
	static public function dsyevd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,m,isuppz,info = dsyevr(a,[compute_v,range,lower,vl,vu,il,iu,abstol,lwork,liwork,overwrite_a])
		
		Wrapper for ``dsyevr``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds ``(n,n)``
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default ``1``
		range : input string(len=1), optional
		    Default ``'A'``
		lower : input int, optional
		    Default ``0``
		overwrite_a : input int, optional
		    Default ``0``
		vl : input float, optional
		    Default ``0.0``
		vu : input float, optional
		    Default ``1.0``
		il : input int, optional
		    Default ``1``
		iu : input int, optional
		    Default ``n``
		abstol : input float, optional
		    Default ``0.0``
		lwork : input int, optional
		    Default ``max(26*n,1)``
		liwork : input int, optional
		    Default ``max(1,10*n)``
		
		Returns
		-------
		w : rank-1 array('d') with bounds ``(n)``
		z : rank-2 array('d') with bounds ``((compute_v?MAX(0,n):0),(compute_v?(*range=='I'?iu-il+1:MAX(1,n)):0))``
		m : int
		isuppz : rank-1 array('i') with bounds ``((compute_v?(2*(*range=='A'||(*range=='I' && iu-il+1==n)?n:0)):0))``
		info : int
	**/
	static public function dsyevr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,iwork,info = dsyevr_lwork(n,[lower])
		
		Wrapper for ``dsyevr_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : float
		iwork : int
		info : int
	**/
	static public function dsyevr_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,m,ifail,info = dsyevx(a,[compute_v,range,lower,vl,vu,il,iu,abstol,lwork,overwrite_a])
		
		Wrapper for ``dsyevx``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds ``(n,n)``
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default ``1``
		range : input string(len=1), optional
		    Default ``'A'``
		lower : input int, optional
		    Default ``0``
		overwrite_a : input int, optional
		    Default ``0``
		vl : input float, optional
		    Default ``0.0``
		vu : input float, optional
		    Default ``1.0``
		il : input int, optional
		    Default ``1``
		iu : input int, optional
		    Default ``n``
		abstol : input float, optional
		    Default ``0.0``
		lwork : input int, optional
		    Default ``max(8*n,1)``
		
		Returns
		-------
		w : rank-1 array('d') with bounds ``(n)``
		z : rank-2 array('d') with bounds ``((compute_v?MAX(0,n):0),(compute_v?(*range=='I'?iu-il+1:MAX(1,n)):0))``
		m : int
		ifail : rank-1 array('i') with bounds ``((compute_v?n:0))``
		info : int
	**/
	static public function dsyevx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dsyevx_lwork(n,[lower])
		
		Wrapper for ``dsyevx_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dsyevx_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,info = dsygst(a,b,[itype,lower,overwrite_a])
		
		Wrapper for ``dsygst``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		b : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		itype : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('d') with bounds (n,n) and a storage
		info : int
	**/
	static public function dsygst(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,v,info = dsygv(a,b,[itype,jobz,uplo,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``dsygv``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		b : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		itype : input int, optional
		    Default: 1
		jobz : input string(len=1), optional
		    Default: 'V'
		uplo : input string(len=1), optional
		    Default: 'L'
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n-1,1)
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		v : rank-2 array('d') with bounds (n,n) and a storage
		info : int
	**/
	static public function dsygv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dsygv_lwork(n,[uplo])
		
		Wrapper for ``dsygv_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'L'
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dsygv_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,v,info = dsygvd(a,b,[itype,jobz,uplo,lwork,liwork,overwrite_a,overwrite_b])
		
		Wrapper for ``dsygvd``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds ``(n,n)``
		b : input rank-2 array('d') with bounds ``(n,n)``
		
		Other Parameters
		----------------
		itype : input int, optional
		    Default ``1``
		jobz : input string(len=1), optional
		    Default ``'V'``
		uplo : input string(len=1), optional
		    Default ``'L'``
		overwrite_a : input int, optional
		    Default ``0``
		overwrite_b : input int, optional
		    Default ``0``
		lwork : input int, optional
		    Default ``(*jobz=='N'?2*n+1:1+6*n+2*n*n)``
		liwork : input int, optional
		    Default ``(*jobz=='N'?1:5*n+3)``
		
		Returns
		-------
		w : rank-1 array('d') with bounds ``(n)``
		v : rank-2 array('d') with bounds ``(n,n)`` with ``a`` storage
		info : int
	**/
	static public function dsygvd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,m,ifail,info = dsygvx(a,b,[itype,jobz,range,uplo,vl,vu,il,iu,abstol,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``dsygvx``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		b : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		itype : input int, optional
		    Default: 1
		jobz : input string(len=1), optional
		    Default: 'V'
		range : input string(len=1), optional
		    Default: 'A'
		uplo : input string(len=1), optional
		    Default: 'L'
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		vl : input float, optional
		    Default: 0.0
		vu : input float, optional
		    Default: 1.0
		il : input int, optional
		    Default: 1
		iu : input int, optional
		    Default: n
		abstol : input float, optional
		    Default: 0.0
		lwork : input int, optional
		    Default: max(8*n,1)
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		z : rank-2 array('d') with bounds ((jobz[0]=='V'?MAX(0,n):0),(jobz[0]=='V'?(range[0]=='I'?iu-il+1:MAX(1,n)):0))
		m : int
		ifail : rank-1 array('i') with bounds ((jobz[0]=='N'?0:n))
		info : int
	**/
	static public function dsygvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dsygvx_lwork(n,[uplo])
		
		Wrapper for ``dsygvx_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'L'
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dsygvx_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		udut,ipiv,x,info = dsysv(a,b,[lwork,lower,overwrite_a,overwrite_b])
		
		Wrapper for ``dsysv``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		b : input rank-2 array('d') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(n,1)
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		udut : rank-2 array('d') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		x : rank-2 array('d') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function dsysv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dsysv_lwork(n,[lower])
		
		Wrapper for ``dsysv_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dsysv_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a_s,udut,ipiv,b_s,x,rcond,ferr,berr,info = dsysvx(a,b,[af,ipiv,lwork,factored,lower,overwrite_a,overwrite_b])
		
		Wrapper for ``dsysvx``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		b : input rank-2 array('d') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		af : input rank-2 array('d') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		factored : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		a_s : rank-2 array('d') with bounds (n,n) and a storage
		udut : rank-2 array('d') with bounds (n,n) and af storage
		ipiv : rank-1 array('i') with bounds (n)
		b_s : rank-2 array('d') with bounds (n,nrhs) and b storage
		x : rank-2 array('d') with bounds (n,nrhs)
		rcond : float
		ferr : rank-1 array('d') with bounds (nrhs)
		berr : rank-1 array('d') with bounds (nrhs)
		info : int
	**/
	static public function dsysvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dsysvx_lwork(n,[lower])
		
		Wrapper for ``dsysvx_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dsysvx_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ldu,ipiv,info = dsytf2(a,[lower,overwrite_a])
		
		Wrapper for ``dsytf2``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		ldu : rank-2 array('d') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function dsytf2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,d,e,tau,info = dsytrd(a,[lower,lwork,overwrite_a])
		
		Wrapper for ``dsytrd``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (lda,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(n,1)
		
		Returns
		-------
		c : rank-2 array('d') with bounds (lda,n) and a storage
		d : rank-1 array('d') with bounds (n)
		e : rank-1 array('d') with bounds (n - 1)
		tau : rank-1 array('d') with bounds (n - 1)
		info : int
	**/
	static public function dsytrd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dsytrd_lwork(n,[lower])
		
		Wrapper for ``dsytrd_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dsytrd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ldu,ipiv,info = dsytrf(a,[lower,lwork,overwrite_a])
		
		Wrapper for ``dsytrf``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(n,1)
		
		Returns
		-------
		ldu : rank-2 array('d') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function dsytrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dsytrf_lwork(n,[lower])
		
		Wrapper for ``dsytrf_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dsytrf_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = dtbtrs(ab,b,[uplo,trans,diag,overwrite_b])
		
		Wrapper for ``dtbtrs``.
		
		Parameters
		----------
		ab : input rank-2 array('d') with bounds (ldab,n)
		b : input rank-2 array('d') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'U'
		trans : input string(len=1), optional
		    Default: 'N'
		diag : input string(len=1), optional
		    Default: 'N'
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('d') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function dtbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = dtfsm(alpha,a,b,[transr,side,uplo,trans,diag,overwrite_b])
		
		Wrapper for ``dtfsm``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-1 array('d') with bounds (nt)
		b : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		side : input string(len=1), optional
		    Default: 'L'
		uplo : input string(len=1), optional
		    Default: 'U'
		trans : input string(len=1), optional
		    Default: 'N'
		diag : input string(len=1), optional
		    Default: 'N'
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('d') with bounds (m,n) and b storage
	**/
	static public function dtfsm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ap,info = dtfttp(n,arf,[transr,uplo])
		
		Wrapper for ``dtfttp``.
		
		Parameters
		----------
		n : input int
		arf : input rank-1 array('d') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		ap : rank-1 array('d') with bounds (nt)
		info : int
	**/
	static public function dtfttp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,info = dtfttr(n,arf,[transr,uplo])
		
		Wrapper for ``dtfttr``.
		
		Parameters
		----------
		n : input int
		arf : input rank-1 array('d') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		a : rank-2 array('d') with bounds (lda,n)
		info : int
	**/
	static public function dtfttr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,b,q,z,work,info = dtgexc(a,b,q,z,ifst,ilst,[lwork,overwrite_a,overwrite_b,overwrite_q,overwrite_z])
		
		Wrapper for ``dtgexc``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (lda,n)
		b : input rank-2 array('d') with bounds (ldb,n)
		q : input rank-2 array('d') with bounds (ldq,n)
		z : input rank-2 array('d') with bounds (ldz,n)
		ifst : input int
		ilst : input int
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		overwrite_q : input int, optional
		    Default: 0
		overwrite_z : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(4*n+16,1)
		
		Returns
		-------
		a : rank-2 array('d') with bounds (lda,n)
		b : rank-2 array('d') with bounds (ldb,n)
		q : rank-2 array('d') with bounds (ldq,n)
		z : rank-2 array('d') with bounds (ldz,n)
		work : rank-1 array('d') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function dtgexc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		as,bs,alphar,alphai,beta,qs,zs,m,pl,pr,dif,info = dtgsen(select,a,b,q,z,[ijob,wantq,wantz,lwork,liwork,overwrite_a,overwrite_b,overwrite_q,overwrite_z])
		
		Wrapper for ``dtgsen``.
		
		Parameters
		----------
		select : input rank-1 array('i') with bounds (n)
		a : input rank-2 array('d') with bounds (n,n)
		b : input rank-2 array('d') with bounds (n,n)
		q : input rank-2 array('d') with bounds (n,n)
		z : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		ijob : input int, optional
		    Default: 4
		wantq : input int, optional
		    Default: 1
		wantz : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		overwrite_q : input int, optional
		    Default: 0
		overwrite_z : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: 4*n+16
		liwork : input int, optional
		    Default: n+6
		
		Returns
		-------
		as : rank-2 array('d') with bounds (n,n) and a storage
		bs : rank-2 array('d') with bounds (n,n) and b storage
		alphar : rank-1 array('d') with bounds (n)
		alphai : rank-1 array('d') with bounds (n)
		beta : rank-1 array('d') with bounds (n)
		qs : rank-2 array('d') with bounds (n,n) and q storage
		zs : rank-2 array('d') with bounds (n,n) and z storage
		m : int
		pl : float
		pr : float
		dif : rank-1 array('d') with bounds (2)
		info : int
	**/
	static public function dtgsen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,iwork,info = dtgsen_lwork(select,a,[ijob])
		
		Wrapper for ``dtgsen_lwork``.
		
		Parameters
		----------
		select : input rank-1 array('i') with bounds (n)
		a : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		ijob : input int, optional
		    Default: 4
		
		Returns
		-------
		work : float
		iwork : int
		info : int
	**/
	static public function dtgsen_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,b,info = dtpmqrt(l,v,t,a,b,[side,trans,overwrite_a,overwrite_b])
		
		Wrapper for ``dtpmqrt``.
		
		Parameters
		----------
		l : input int
		v : input rank-2 array('d') with bounds ((side[0]=='L'?m:n),k)
		t : input rank-2 array('d') with bounds (nb,k)
		a : input rank-2 array('d') with bounds ((side[0]=='L'?k:m),(side[0]=='L'?n:k))
		b : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('d') with bounds ((side[0]=='L'?k:m),(side[0]=='L'?n:k))
		b : rank-2 array('d') with bounds (m,n)
		info : int
	**/
	static public function dtpmqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,b,t,info = dtpqrt(l,nb,a,b,[overwrite_a,overwrite_b])
		
		Wrapper for ``dtpqrt``.
		
		Parameters
		----------
		l : input int
		nb : input int
		a : input rank-2 array('d') with bounds (n,n)
		b : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('d') with bounds (n,n)
		b : rank-2 array('d') with bounds (m,n)
		t : rank-2 array('d') with bounds (nb,n)
		info : int
	**/
	static public function dtpqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arf,info = dtpttf(n,ap,[transr,uplo])
		
		Wrapper for ``dtpttf``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('d') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		arf : rank-1 array('d') with bounds (nt)
		info : int
	**/
	static public function dtpttf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,info = dtpttr(n,ap,[uplo])
		
		Wrapper for ``dtpttr``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('d') with bounds (nt)
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		a : rank-2 array('d') with bounds (n,n)
		info : int
	**/
	static public function dtpttr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,scale,info = dtrsyl(a,b,c,[trana,tranb,isgn,overwrite_c])
		
		Wrapper for ``dtrsyl``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,m)
		b : input rank-2 array('d') with bounds (n,n)
		c : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		trana : input string(len=1), optional
		    Default: 'N'
		tranb : input string(len=1), optional
		    Default: 'N'
		isgn : input int, optional
		    Default: 1
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('d') with bounds (m,n) and c storage
		scale : float
		info : int
	**/
	static public function dtrsyl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inv_c,info = dtrtri(c,[lower,unitdiag,overwrite_c])
		
		Wrapper for ``dtrtri``.
		
		Parameters
		----------
		c : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_c : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		unitdiag : input int, optional
		    Default: 0
		
		Returns
		-------
		inv_c : rank-2 array('d') with bounds (n,n) and c storage
		info : int
	**/
	static public function dtrtri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = dtrtrs(a,b,[lower,trans,unitdiag,lda,overwrite_b])
		
		Wrapper for ``dtrtrs``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (lda,n)
		b : input rank-2 array('d') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		unitdiag : input int, optional
		    Default: 0
		lda : input int, optional
		    Default: shape(a,0)
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('d') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function dtrtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arf,info = dtrttf(a,[transr,uplo])
		
		Wrapper for ``dtrttf``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (lda,n)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		arf : rank-1 array('d') with bounds (n*(n+1)/2)
		info : int
	**/
	static public function dtrttf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ap,info = dtrttp(a,[uplo])
		
		Wrapper for ``dtrttp``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (lda,n)
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		ap : rank-1 array('d') with bounds (n*(n+1)/2)
		info : int
	**/
	static public function dtrttp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rz,tau,info = dtzrzf(a,[lwork,overwrite_a])
		
		Wrapper for ``dtzrzf``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(m,1)
		
		Returns
		-------
		rz : rank-2 array('d') with bounds (m,n) and a storage
		tau : rank-1 array('d') with bounds (m)
		info : int
	**/
	static public function dtzrzf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = dtzrzf_lwork(m,n)
		
		Wrapper for ``dtzrzf_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function dtzrzf_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var flapack : Dynamic;
	/**
		Return available LAPACK function objects from names.
		
		Arrays are used to determine the optimal prefix of LAPACK routines.
		
		Parameters
		----------
		names : str or sequence of str
		    Name(s) of LAPACK functions without type prefix.
		
		arrays : sequence of ndarrays, optional
		    Arrays can be given to determine optimal prefix of LAPACK
		    routines. If not given, double-precision routines will be
		    used, otherwise the most generic type in arrays will be used.
		
		dtype : str or dtype, optional
		    Data-type specifier. Not used if `arrays` is non-empty.
		
		ilp64 : {True, False, 'preferred'}, optional
		    Whether to return ILP64 routine variant.
		    Choosing 'preferred' returns ILP64 routine if available, and
		    otherwise the 32-bit routine. Default: False
		
		Returns
		-------
		funcs : list
		    List containing the found function(s).
		
		Notes
		-----
		This routine automatically chooses between Fortran/C
		interfaces. Fortran code is used whenever possible for arrays with
		column major order. In all other cases, C code is preferred.
		
		In LAPACK, the naming convention is that all functions start with a
		type prefix, which depends on the type of the principal
		matrix. These can be one of {'s', 'd', 'c', 'z'} for the NumPy
		types {float32, float64, complex64, complex128} respectively, and
		are stored in attribute ``typecode`` of the returned functions.
		
		Examples
		--------
		Suppose we would like to use '?lange' routine which computes the selected
		norm of an array. We pass our array in order to get the correct 'lange'
		flavor.
		
		>>> import scipy.linalg as LA
		>>> rng = np.random.default_rng()
		>>> a = rng.random((3,2))
		>>> x_lange = LA.get_lapack_funcs('lange', (a,))
		>>> x_lange.typecode
		'd'
		>>> x_lange = LA.get_lapack_funcs('lange',(a*1j,))
		>>> x_lange.typecode
		'z'
		
		Several LAPACK routines work best when its internal WORK array has
		the optimal size (big enough for fast computation and small enough to
		avoid waste of memory). This size is determined also by a dedicated query
		to the function which is often wrapped as a standalone function and
		commonly denoted as ``###_lwork``. Below is an example for ``?sysv``
		
		>>> import scipy.linalg as LA
		>>> rng = np.random.default_rng()
		>>> a = rng.random((1000, 1000))
		>>> b = rng.random((1000, 1)) * 1j
		>>> # We pick up zsysv and zsysv_lwork due to b array
		... xsysv, xlwork = LA.get_lapack_funcs(('sysv', 'sysv_lwork'), (a, b))
		>>> opt_lwork, _ = xlwork(a.shape[0])  # returns a complex for 'z' prefix
		>>> udut, ipiv, x, info = xsysv(a, b, lwork=int(opt_lwork.real))
	**/
	static public function get_lapack_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic, ?ilp64:Dynamic):Array<Dynamic>;
	/**
		major,minor,patch = ilaver()
		
		Wrapper for ``ilaver``.
		
		Returns
		-------
		major : int
		minor : int
		patch : int
	**/
	static public function ilaver(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,v,info = zhegvd(a,b,[itype,jobz,uplo,lwork,lrwork,liwork,overwrite_a,overwrite_b])
		
		Wrapper for ``zhegvd``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds ``(n,n)``
		b : input rank-2 array('D') with bounds ``(n,n)``
		
		Other Parameters
		----------------
		itype : input int, optional
		    Default ``1``
		jobz : input string(len=1), optional
		    Default ``'V'``
		uplo : input string(len=1), optional
		    Default ``'L'``
		overwrite_a : input int, optional
		    Default ``0``
		overwrite_b : input int, optional
		    Default ``0``
		lwork : input int, optional
		    Default ``(*jobz=='N'?n+1:n*(n+2))``
		lrwork : input int, optional
		    Default ``max((*jobz=='N'?n:2*n*n+5*n+1),1)``
		liwork : input int, optional
		    Default ``(*jobz=='N'?1:5*n+3)``
		
		Returns
		-------
		w : rank-1 array('d') with bounds ``(n)``
		v : rank-2 array('D') with bounds ``(n,n)`` with ``a`` storage
		info : int
	**/
	static public function routine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lub,piv,x,info = sgbsv(kl,ku,ab,b,[overwrite_ab,overwrite_b])
		
		Wrapper for ``sgbsv``.
		
		Parameters
		----------
		kl : input int
		ku : input int
		ab : input rank-2 array('f') with bounds (2*kl+ku+1,n)
		b : input rank-2 array('f') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_ab : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		lub : rank-2 array('f') with bounds (2*kl+ku+1,n) and ab storage
		piv : rank-1 array('i') with bounds (n)
		x : rank-2 array('f') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function sgbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lu,ipiv,info = sgbtrf(ab,kl,ku,[m,n,ldab,overwrite_ab])
		
		Wrapper for ``sgbtrf``.
		
		Parameters
		----------
		ab : input rank-2 array('f') with bounds (ldab,n)
		kl : input int
		ku : input int
		
		Other Parameters
		----------------
		m : input int, optional
		    Default: shape(ab,1)
		n : input int, optional
		    Default: shape(ab,1)
		overwrite_ab : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: max(shape(ab,0),1)
		
		Returns
		-------
		lu : rank-2 array('f') with bounds (ldab,n) and ab storage
		ipiv : rank-1 array('i') with bounds (MIN(m,n))
		info : int
	**/
	static public function sgbtrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = sgbtrs(ab,kl,ku,b,ipiv,[trans,n,ldab,ldb,overwrite_b])
		
		Wrapper for ``sgbtrs``.
		
		Parameters
		----------
		ab : input rank-2 array('f') with bounds (ldab,n)
		kl : input int
		ku : input int
		b : input rank-2 array('f') with bounds (ldb,nrhs)
		ipiv : input rank-1 array('i') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		n : input int, optional
		    Default: shape(ab,1)
		ldab : input int, optional
		    Default: shape(ab,0)
		ldb : input int, optional
		    Default: shape(b,0)
		
		Returns
		-------
		x : rank-2 array('f') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function sgbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ba,lo,hi,pivscale,info = sgebal(a,[scale,permute,overwrite_a])
		
		Wrapper for ``sgebal``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		
		Other Parameters
		----------------
		scale : input int, optional
		    Default: 0
		permute : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		ba : rank-2 array('f') with bounds (m,n) and a storage
		lo : int
		hi : int
		pivscale : rank-1 array('f') with bounds (n)
		info : int
	**/
	static public function sgebal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = sgecon(a,anorm,[norm])
		
		Wrapper for ``sgecon``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		anorm : input float
		
		Other Parameters
		----------------
		norm : input string(len=1), optional
		    Default: '1'
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function sgecon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		r,c,rowcnd,colcnd,amax,info = sgeequ(a)
		
		Wrapper for ``sgeequ``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		
		Returns
		-------
		r : rank-1 array('f') with bounds (m)
		c : rank-1 array('f') with bounds (n)
		rowcnd : float
		colcnd : float
		amax : float
		info : int
	**/
	static public function sgeequ(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		r,c,rowcnd,colcnd,amax,info = sgeequb(a)
		
		Wrapper for ``sgeequb``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		
		Returns
		-------
		r : rank-1 array('f') with bounds (m)
		c : rank-1 array('f') with bounds (n)
		rowcnd : float
		colcnd : float
		amax : float
		info : int
	**/
	static public function sgeequb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		t,sdim,wr,wi,vs,work,info = sgees(sselect,a,[compute_v,sort_t,lwork,sselect_extra_args,overwrite_a])
		
		Wrapper for ``sgees``.
		
		Parameters
		----------
		sselect : call-back function
		a : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default: 1
		sort_t : input int, optional
		    Default: 0
		sselect_extra_args : input tuple, optional
		    Default: ()
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		
		Returns
		-------
		t : rank-2 array('f') with bounds (n,n) and a storage
		sdim : int
		wr : rank-1 array('f') with bounds (n)
		wi : rank-1 array('f') with bounds (n)
		vs : rank-2 array('f') with bounds (ldvs,n)
		work : rank-1 array('f') with bounds (MAX(lwork,1))
		info : int
		
		Notes
		-----
		Call-back functions::
		
		  def sselect(arg1,arg2): return sselect
		  Required arguments:
		    arg1 : input float
		    arg2 : input float
		  Return objects:
		    sselect : int
	**/
	static public function sgees(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		wr,wi,vl,vr,info = sgeev(a,[compute_vl,compute_vr,lwork,overwrite_a])
		
		Wrapper for ``sgeev``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_vl : input int, optional
		    Default: 1
		compute_vr : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(4*n,1)
		
		Returns
		-------
		wr : rank-1 array('f') with bounds (n)
		wi : rank-1 array('f') with bounds (n)
		vl : rank-2 array('f') with bounds (ldvl,n)
		vr : rank-2 array('f') with bounds (ldvr,n)
		info : int
	**/
	static public function sgeev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = sgeev_lwork(n,[compute_vl,compute_vr])
		
		Wrapper for ``sgeev_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		compute_vl : input int, optional
		    Default: 1
		compute_vr : input int, optional
		    Default: 1
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function sgeev_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		`sgegv` is deprecated!
		The `*gegv` family of routines has been deprecated in
		LAPACK 3.6.0 in favor of the `*ggev` family of routines.
		The corresponding wrappers will be removed from SciPy in
		a future release.
		
		alphar,alphai,beta,vl,vr,info = sgegv(a,b,[compute_vl,compute_vr,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``sgegv``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		b : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_vl : input int, optional
		    Default: 1
		compute_vr : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(8*n,1)
		
		Returns
		-------
		alphar : rank-1 array('f') with bounds (n)
		alphai : rank-1 array('f') with bounds (n)
		beta : rank-1 array('f') with bounds (n)
		vl : rank-2 array('f') with bounds (ldvl,n)
		vr : rank-2 array('f') with bounds (ldvr,n)
		info : int
	**/
	static public function sgegv(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		ht,tau,info = sgehrd(a,[lo,hi,lwork,overwrite_a])
		
		Wrapper for ``sgehrd``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		lo : input int, optional
		    Default: 0
		hi : input int, optional
		    Default: n-1
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(n,1)
		
		Returns
		-------
		ht : rank-2 array('f') with bounds (n,n) and a storage
		tau : rank-1 array('f') with bounds (n - 1)
		info : int
	**/
	static public function sgehrd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = sgehrd_lwork(n,[lo,hi])
		
		Wrapper for ``sgehrd_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lo : input int, optional
		    Default: 0
		hi : input int, optional
		    Default: n-1
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function sgehrd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sva,u,v,workout,iworkout,info = sgejsv(a,[joba,jobu,jobv,jobr,jobt,jobp,lwork,overwrite_a])
		
		Wrapper for ``sgejsv``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (lda,n)
		
		Other Parameters
		----------------
		joba : input int, optional
		    Default: 4
		jobu : input int, optional
		    Default: 0
		jobv : input int, optional
		    Default: 0
		jobr : input int, optional
		    Default: 1
		jobt : input int, optional
		    Default: 0
		jobp : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(6*n+2*n*n, max(2*m+n, max(4*n+n*n, max(2*n+n*n+6, 7))))
		
		Returns
		-------
		sva : rank-1 array('f') with bounds (n)
		u : rank-2 array('f') with bounds (((jobt == 0)&&(jobu == 3)?0:m),((jobt == 0)&&(jobu == 3)?0:(jobu == 1?m:n)))
		v : rank-2 array('f') with bounds (((jobt == 0)&&(jobv == 3)?0:ldv),((jobt == 0)&&(jobv == 3)?0:n))
		workout : rank-1 array('f') with bounds (7)
		iworkout : rank-1 array('i') with bounds (3)
		info : int
	**/
	static public function sgejsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lqr,x,info = sgels(a,b,[trans,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``sgels``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		b : input rank-2 array('f') with bounds (MAX(m,n),nrhs)
		
		Other Parameters
		----------------
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(MIN(m,n)+MAX(MIN(m,n),nrhs),1)
		
		Returns
		-------
		lqr : rank-2 array('f') with bounds (m,n) and a storage
		x : rank-2 array('f') with bounds (MAX(m,n),nrhs) and b storage
		info : int
	**/
	static public function sgels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = sgels_lwork(m,n,nrhs,[trans])
		
		Wrapper for ``sgels_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		nrhs : input int
		
		Other Parameters
		----------------
		trans : input string(len=1), optional
		    Default: 'N'
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function sgels_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,s,rank,info = sgelsd(a,b,lwork,size_iwork,[cond,overwrite_a,overwrite_b])
		
		Wrapper for ``sgelsd``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		b : input rank-2 array('f') with bounds (maxmn,nrhs)
		lwork : input int
		size_iwork : input int
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		cond : input float, optional
		    Default: -1.0
		
		Returns
		-------
		x : rank-2 array('f') with bounds (maxmn,nrhs) and b storage
		s : rank-1 array('f') with bounds (minmn)
		rank : int
		info : int
	**/
	static public function sgelsd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,iwork,info = sgelsd_lwork(m,n,nrhs,[cond,lwork])
		
		Wrapper for ``sgelsd_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		nrhs : input int
		
		Other Parameters
		----------------
		cond : input float, optional
		    Default: -1.0
		lwork : input int, optional
		    Default: -1
		
		Returns
		-------
		work : float
		iwork : int
		info : int
	**/
	static public function sgelsd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		v,x,s,rank,work,info = sgelss(a,b,[cond,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``sgelss``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		b : input rank-2 array('f') with bounds (maxmn,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		cond : input float, optional
		    Default: -1.0
		lwork : input int, optional
		    Default: max(3*minmn+MAX(2*minmn,MAX(maxmn,nrhs)),1)
		
		Returns
		-------
		v : rank-2 array('f') with bounds (m,n) and a storage
		x : rank-2 array('f') with bounds (maxmn,nrhs) and b storage
		s : rank-1 array('f') with bounds (minmn)
		rank : int
		work : rank-1 array('f') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function sgelss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = sgelss_lwork(m,n,nrhs,[cond,lwork])
		
		Wrapper for ``sgelss_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		nrhs : input int
		
		Other Parameters
		----------------
		cond : input float, optional
		    Default: -1.0
		lwork : input int, optional
		    Default: -1
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function sgelss_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		v,x,j,rank,info = sgelsy(a,b,jptv,cond,lwork,[overwrite_a,overwrite_b])
		
		Wrapper for ``sgelsy``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		b : input rank-2 array('f') with bounds (maxmn,nrhs)
		jptv : input rank-1 array('i') with bounds (n)
		cond : input float
		lwork : input int
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		v : rank-2 array('f') with bounds (m,n) and a storage
		x : rank-2 array('f') with bounds (maxmn,nrhs) and b storage
		j : rank-1 array('i') with bounds (n) and jptv storage
		rank : int
		info : int
	**/
	static public function sgelsy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = sgelsy_lwork(m,n,nrhs,cond,[lwork])
		
		Wrapper for ``sgelsy_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		nrhs : input int
		cond : input float
		
		Other Parameters
		----------------
		lwork : input int, optional
		    Default: -1
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function sgelsy_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,info = sgemqrt(v,t,c,[side,trans,overwrite_c])
		
		Wrapper for ``sgemqrt``.
		
		Parameters
		----------
		v : input rank-2 array('f') with bounds ((side[0]=='L'?m:n),k)
		t : input rank-2 array('f') with bounds (nb,k)
		c : input rank-2 array('f') with bounds (m,n)
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('f') with bounds (m,n)
		info : int
	**/
	static public function sgemqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr,jpvt,tau,work,info = sgeqp3(a,[lwork,overwrite_a])
		
		Wrapper for ``sgeqp3``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*(n+1),1)
		
		Returns
		-------
		qr : rank-2 array('f') with bounds (m,n) and a storage
		jpvt : rank-1 array('i') with bounds (n)
		tau : rank-1 array('f') with bounds (MIN(m,n))
		work : rank-1 array('f') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function sgeqp3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr,tau,work,info = sgeqrf(a,[lwork,overwrite_a])
		
		Wrapper for ``sgeqrf``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		
		Returns
		-------
		qr : rank-2 array('f') with bounds (m,n) and a storage
		tau : rank-1 array('f') with bounds (MIN(m,n))
		work : rank-1 array('f') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function sgeqrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = sgeqrf_lwork(m,n)
		
		Wrapper for ``sgeqrf_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function sgeqrf_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr,tau,info = sgeqrfp(a,[lwork,overwrite_a])
		
		Wrapper for ``sgeqrfp``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(1, n)
		
		Returns
		-------
		qr : rank-2 array('f') with bounds (m,n) and a storage
		tau : rank-1 array('f') with bounds (MIN(m,n))
		info : int
	**/
	static public function sgeqrfp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = sgeqrfp_lwork(m,n)
		
		Wrapper for ``sgeqrfp_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function sgeqrfp_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,t,info = sgeqrt(nb,a,[overwrite_a])
		
		Wrapper for ``sgeqrt``.
		
		Parameters
		----------
		nb : input int
		a : input rank-2 array('f') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('f') with bounds (m,n)
		t : rank-2 array('f') with bounds (nb,MIN(m,n))
		info : int
	**/
	static public function sgeqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr,tau,work,info = sgerqf(a,[lwork,overwrite_a])
		
		Wrapper for ``sgerqf``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*m,1)
		
		Returns
		-------
		qr : rank-2 array('f') with bounds (m,n) and a storage
		tau : rank-1 array('f') with bounds (MIN(m,n))
		work : rank-1 array('f') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function sgerqf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,scale = sgesc2(lu,rhs,ipiv,jpiv,[overwrite_rhs])
		
		Wrapper for ``sgesc2``.
		
		Parameters
		----------
		lu : input rank-2 array('f') with bounds (n,n)
		rhs : input rank-1 array('f') with bounds (n)
		ipiv : input rank-1 array('i') with bounds (n)
		jpiv : input rank-1 array('i') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_rhs : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-1 array('f') with bounds (n) and rhs storage
		scale : float
	**/
	static public function sgesc2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		u,s,vt,info = sgesdd(a,[compute_uv,full_matrices,lwork,overwrite_a])
		
		Wrapper for ``sgesdd``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		compute_uv : input int, optional
		    Default: 1
		full_matrices : input int, optional
		    Default: 1
		lwork : input int, optional
		    Default: max((compute_uv?4*minmn*minmn+MAX(m,n)+9*minmn:MAX(14*minmn+4,10*minmn+2+25*(25+8))+MAX(m,n)),1)
		
		Returns
		-------
		u : rank-2 array('f') with bounds (u0,u1)
		s : rank-1 array('f') with bounds (minmn)
		vt : rank-2 array('f') with bounds (vt0,vt1)
		info : int
	**/
	static public function sgesdd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = sgesdd_lwork(m,n,[compute_uv,full_matrices])
		
		Wrapper for ``sgesdd_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Other Parameters
		----------------
		compute_uv : input int, optional
		    Default: 1
		full_matrices : input int, optional
		    Default: 1
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function sgesdd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lu,piv,x,info = sgesv(a,b,[overwrite_a,overwrite_b])
		
		Wrapper for ``sgesv``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		b : input rank-2 array('f') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		lu : rank-2 array('f') with bounds (n,n) and a storage
		piv : rank-1 array('i') with bounds (n)
		x : rank-2 array('f') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function sgesv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		u,s,vt,info = sgesvd(a,[compute_uv,full_matrices,lwork,overwrite_a])
		
		Wrapper for ``sgesvd``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		compute_uv : input int, optional
		    Default: 1
		full_matrices : input int, optional
		    Default: 1
		lwork : input int, optional
		    Default: max(MAX(3*minmn+MAX(m,n),5*minmn),1)
		
		Returns
		-------
		u : rank-2 array('f') with bounds (u0,u1)
		s : rank-1 array('f') with bounds (minmn)
		vt : rank-2 array('f') with bounds (vt0,vt1)
		info : int
	**/
	static public function sgesvd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = sgesvd_lwork(m,n,[compute_uv,full_matrices])
		
		Wrapper for ``sgesvd_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Other Parameters
		----------------
		compute_uv : input int, optional
		    Default: 1
		full_matrices : input int, optional
		    Default: 1
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function sgesvd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		as,lu,ipiv,equed,rs,cs,bs,x,rcond,ferr,berr,info = sgesvx(a,b,[fact,trans,af,ipiv,equed,r,c,overwrite_a,overwrite_b])
		
		Wrapper for ``sgesvx``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		b : input rank-2 array('f') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		fact : input string(len=1), optional
		    Default: 'E'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_a : input int, optional
		    Default: 0
		af : input rank-2 array('f') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		equed : input string(len=1), optional
		    Default: 'B'
		r : input rank-1 array('f') with bounds (n)
		c : input rank-1 array('f') with bounds (n)
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		as : rank-2 array('f') with bounds (n,n) and a storage
		lu : rank-2 array('f') with bounds (n,n) and af storage
		ipiv : rank-1 array('i') with bounds (n)
		equed : string(len=1)
		rs : rank-1 array('f') with bounds (n) and r storage
		cs : rank-1 array('f') with bounds (n) and c storage
		bs : rank-2 array('f') with bounds (n,nrhs) and b storage
		x : rank-2 array('f') with bounds (n,nrhs)
		rcond : float
		ferr : rank-1 array('f') with bounds (nrhs)
		berr : rank-1 array('f') with bounds (nrhs)
		info : int
	**/
	static public function sgesvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lu,ipiv,jpiv,info = sgetc2(a,[overwrite_a])
		
		Wrapper for ``sgetc2``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		lu : rank-2 array('f') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		jpiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function sgetc2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lu,piv,info = sgetrf(a,[overwrite_a])
		
		Wrapper for ``sgetrf``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		lu : rank-2 array('f') with bounds (m,n) and a storage
		piv : rank-1 array('i') with bounds (MIN(m,n))
		info : int
	**/
	static public function sgetrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inv_a,info = sgetri(lu,piv,[lwork,overwrite_lu])
		
		Wrapper for ``sgetri``.
		
		Parameters
		----------
		lu : input rank-2 array('f') with bounds (n,n)
		piv : input rank-1 array('i') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_lu : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		
		Returns
		-------
		inv_a : rank-2 array('f') with bounds (n,n) and lu storage
		info : int
	**/
	static public function sgetri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = sgetri_lwork(n)
		
		Wrapper for ``sgetri_lwork``.
		
		Parameters
		----------
		n : input int
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function sgetri_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = sgetrs(lu,piv,b,[trans,overwrite_b])
		
		Wrapper for ``sgetrs``.
		
		Parameters
		----------
		lu : input rank-2 array('f') with bounds (n,n)
		piv : input rank-1 array('i') with bounds (n)
		b : input rank-2 array('f') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('f') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function sgetrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,b,sdim,alphar,alphai,beta,vsl,vsr,work,info = sgges(sselect,a,b,[jobvsl,jobvsr,sort_t,ldvsl,ldvsr,lwork,sselect_extra_args,overwrite_a,overwrite_b])
		
		Wrapper for ``sgges``.
		
		Parameters
		----------
		sselect : call-back function
		a : input rank-2 array('f') with bounds (lda,n)
		b : input rank-2 array('f') with bounds (ldb,n)
		
		Other Parameters
		----------------
		jobvsl : input int, optional
		    Default: 1
		jobvsr : input int, optional
		    Default: 1
		sort_t : input int, optional
		    Default: 0
		sselect_extra_args : input tuple, optional
		    Default: ()
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		ldvsl : input int, optional
		    Default: ((jobvsl==1)?n:1)
		ldvsr : input int, optional
		    Default: ((jobvsr==1)?n:1)
		lwork : input int, optional
		    Default: max(8*n+16,1)
		
		Returns
		-------
		a : rank-2 array('f') with bounds (lda,n)
		b : rank-2 array('f') with bounds (ldb,n)
		sdim : int
		alphar : rank-1 array('f') with bounds (n)
		alphai : rank-1 array('f') with bounds (n)
		beta : rank-1 array('f') with bounds (n)
		vsl : rank-2 array('f') with bounds (ldvsl,n)
		vsr : rank-2 array('f') with bounds (ldvsr,n)
		work : rank-1 array('f') with bounds (MAX(lwork,1))
		info : int
		
		Notes
		-----
		Call-back functions::
		
		  def sselect(alphar,alphai,beta): return sselect
		  Required arguments:
		    alphar : input float
		    alphai : input float
		    beta : input float
		  Return objects:
		    sselect : int
	**/
	static public function sgges(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		alphar,alphai,beta,vl,vr,work,info = sggev(a,b,[compute_vl,compute_vr,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``sggev``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		b : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_vl : input int, optional
		    Default: 1
		compute_vr : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(8*n,1)
		
		Returns
		-------
		alphar : rank-1 array('f') with bounds (n)
		alphai : rank-1 array('f') with bounds (n)
		beta : rank-1 array('f') with bounds (n)
		vl : rank-2 array('f') with bounds (ldvl,n)
		vr : rank-2 array('f') with bounds (ldvr,n)
		work : rank-1 array('f') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function sggev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		t,r,res,x,info = sgglse(a,b,c,d,[lwork,overwrite_a,overwrite_b,overwrite_c,overwrite_d])
		
		Wrapper for ``sgglse``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		b : input rank-2 array('f') with bounds (p,n)
		c : input rank-1 array('f') with bounds (m)
		d : input rank-1 array('f') with bounds (p)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		overwrite_c : input int, optional
		    Default: 0
		overwrite_d : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(m+n+p,1)
		
		Returns
		-------
		t : rank-2 array('f') with bounds (m,n) and a storage
		r : rank-2 array('f') with bounds (p,n) and b storage
		res : rank-1 array('f') with bounds (m) and c storage
		x : rank-1 array('f') with bounds (n)
		info : int
	**/
	static public function sgglse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = sgglse_lwork(m,n,p)
		
		Wrapper for ``sgglse_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		p : input int
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function sgglse_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		du2,d,du,x,info = sgtsv(dl,d,du,b,[overwrite_dl,overwrite_d,overwrite_du,overwrite_b])
		
		Wrapper for ``sgtsv``.
		
		Parameters
		----------
		dl : input rank-1 array('f') with bounds (n - 1)
		d : input rank-1 array('f') with bounds (n)
		du : input rank-1 array('f') with bounds (n - 1)
		b : input rank-2 array('f') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_dl : input int, optional
		    Default: 0
		overwrite_d : input int, optional
		    Default: 0
		overwrite_du : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		du2 : rank-1 array('f') with bounds (n - 1) and dl storage
		d : rank-1 array('f') with bounds (n)
		du : rank-1 array('f') with bounds (n - 1)
		x : rank-2 array('f') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function sgtsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dlf,df,duf,du2,ipiv,x,rcond,ferr,berr,info = sgtsvx(dl,d,du,b,[fact,trans,dlf,df,duf,du2,ipiv])
		
		Wrapper for ``sgtsvx``.
		
		Parameters
		----------
		dl : input rank-1 array('f') with bounds (MAX(0, n-1))
		d : input rank-1 array('f') with bounds (n)
		du : input rank-1 array('f') with bounds (MAX(0, n-1))
		b : input rank-2 array('f') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		fact : input string(len=1), optional
		    Default: 'N'
		trans : input string(len=1), optional
		    Default: 'N'
		dlf : input rank-1 array('f') with bounds (MAX(0,n-1))
		df : input rank-1 array('f') with bounds (n)
		duf : input rank-1 array('f') with bounds (MAX(0,n-1))
		du2 : input rank-1 array('f') with bounds (MAX(0,n-2))
		ipiv : input rank-1 array('i') with bounds (n)
		
		Returns
		-------
		dlf : rank-1 array('f') with bounds (MAX(0,n-1))
		df : rank-1 array('f') with bounds (n)
		duf : rank-1 array('f') with bounds (MAX(0,n-1))
		du2 : rank-1 array('f') with bounds (MAX(0,n-2))
		ipiv : rank-1 array('i') with bounds (n)
		x : rank-2 array('f') with bounds (ldx,nrhs)
		rcond : float
		ferr : rank-1 array('f') with bounds (nrhs)
		berr : rank-1 array('f') with bounds (nrhs)
		info : int
	**/
	static public function sgtsvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dl,d,du,du2,ipiv,info = sgttrf(dl,d,du,[overwrite_dl,overwrite_d,overwrite_du])
		
		Wrapper for ``sgttrf``.
		
		Parameters
		----------
		dl : input rank-1 array('f') with bounds (n - 1)
		d : input rank-1 array('f') with bounds (n)
		du : input rank-1 array('f') with bounds (n - 1)
		
		Other Parameters
		----------------
		overwrite_dl : input int, optional
		    Default: 0
		overwrite_d : input int, optional
		    Default: 0
		overwrite_du : input int, optional
		    Default: 0
		
		Returns
		-------
		dl : rank-1 array('f') with bounds (n - 1)
		d : rank-1 array('f') with bounds (n)
		du : rank-1 array('f') with bounds (n - 1)
		du2 : rank-1 array('f') with bounds (n - 2)
		ipiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function sgttrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = sgttrs(dl,d,du,du2,ipiv,b,[trans,overwrite_b])
		
		Wrapper for ``sgttrs``.
		
		Parameters
		----------
		dl : input rank-1 array('f') with bounds (n - 1)
		d : input rank-1 array('f') with bounds (n)
		du : input rank-1 array('f') with bounds (n - 1)
		du2 : input rank-1 array('f') with bounds (n - 2)
		ipiv : input rank-1 array('i') with bounds (n)
		b : input rank-2 array('f') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('f') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function sgttrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		slamch = slamch(cmach)
		
		Wrapper for ``slamch``.
		
		Parameters
		----------
		cmach : input string(len=1)
		
		Returns
		-------
		slamch : float
	**/
	static public function slamch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		n2 = slange(norm,a)
		
		Wrapper for ``slange``.
		
		Parameters
		----------
		norm : input string(len=1)
		a : input rank-2 array('f') with bounds (m,n)
		
		Returns
		-------
		n2 : float
	**/
	static public function slange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = slarf(v,tau,c,work,[side,incv,overwrite_c])
		
		Wrapper for ``slarf``.
		
		Parameters
		----------
		v : input rank-1 array('f') with bounds ((side[0]=='L'?(1 + (m-1)*abs(incv)):(1 + (n-1)*abs(incv))))
		tau : input float
		c : input rank-2 array('f') with bounds (m,n)
		work : input rank-1 array('f') with bounds (lwork)
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		incv : input int, optional
		    Default: 1
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('f') with bounds (m,n)
	**/
	static public function slarf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		alpha,x,tau = slarfg(n,alpha,x,[incx,overwrite_x])
		
		Wrapper for ``slarfg``.
		
		Parameters
		----------
		n : input int
		alpha : input float
		x : input rank-1 array('f') with bounds (lx)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		alpha : float
		x : rank-1 array('f') with bounds (lx)
		tau : float
	**/
	static public function slarfg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cs,sn,r = slartg(f,g)
		
		Wrapper for ``slartg``.
		
		Parameters
		----------
		f : input float
		g : input float
		
		Returns
		-------
		cs : float
		sn : float
		r : float
	**/
	static public function slartg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		delta,sigma,work,info = slasd4(i,d,z,[rho])
		
		Wrapper for ``slasd4``.
		
		Parameters
		----------
		i : input int
		d : input rank-1 array('f') with bounds (n)
		z : input rank-1 array('f') with bounds (n)
		
		Other Parameters
		----------------
		rho : input float, optional
		    Default: 1.0
		
		Returns
		-------
		delta : rank-1 array('f') with bounds (n)
		sigma : float
		work : rank-1 array('f') with bounds (n)
		info : int
	**/
	static public function slasd4(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = slaswp(a,piv,[k1,k2,off,inc,overwrite_a])
		
		Wrapper for ``slaswp``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (nrows,n)
		piv : input rank-1 array('i') with bounds (npiv)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		k1 : input int, optional
		    Default: 0
		k2 : input int, optional
		    Default: npiv-1
		off : input int, optional
		    Default: 0
		inc : input int, optional
		    Default: 1
		
		Returns
		-------
		a : rank-2 array('f') with bounds (nrows,n)
	**/
	static public function slaswp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,info = slauum(c,[lower,overwrite_c])
		
		Wrapper for ``slauum``.
		
		Parameters
		----------
		c : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_c : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('f') with bounds (n,n) and c storage
		info : int
	**/
	static public function slauum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cs11,cs12,cs21,cs22,theta,u1,u2,v1t,v2t,info = sorcsd(x11,x12,x21,x22,[compute_u1,compute_u2,compute_v1t,compute_v2t,trans,signs,lwork,overwrite_x11,overwrite_x12,overwrite_x21,overwrite_x22])
		
		Wrapper for ``sorcsd``.
		
		Parameters
		----------
		x11 : input rank-2 array('f') with bounds (p,q)
		x12 : input rank-2 array('f') with bounds (p,mmq)
		x21 : input rank-2 array('f') with bounds (mmp,q)
		x22 : input rank-2 array('f') with bounds (mmp,mmq)
		
		Other Parameters
		----------------
		compute_u1 : input int, optional
		    Default: 1
		compute_u2 : input int, optional
		    Default: 1
		compute_v1t : input int, optional
		    Default: 1
		compute_v2t : input int, optional
		    Default: 1
		trans : input int, optional
		    Default: 0
		signs : input int, optional
		    Default: 0
		overwrite_x11 : input int, optional
		    Default: 0
		overwrite_x12 : input int, optional
		    Default: 0
		overwrite_x21 : input int, optional
		    Default: 0
		overwrite_x22 : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: 2+2*m+5*MAX(1,q-1)+4*MAX(1,q)+8*q
		
		Returns
		-------
		cs11 : rank-2 array('f') with bounds (p,q) and x11 storage
		cs12 : rank-2 array('f') with bounds (p,mmq) and x12 storage
		cs21 : rank-2 array('f') with bounds (mmp,q) and x21 storage
		cs22 : rank-2 array('f') with bounds (mmp,mmq) and x22 storage
		theta : rank-1 array('f') with bounds (min(min(p,mmp),min(q,mmq)))
		u1 : rank-2 array('f') with bounds ((compute_u1?p:0),(compute_u1?p:0))
		u2 : rank-2 array('f') with bounds ((compute_u2?mmp:0),(compute_u2?mmp:0))
		v1t : rank-2 array('f') with bounds ((compute_v1t?q:0),(compute_v1t?q:0))
		v2t : rank-2 array('f') with bounds ((compute_v2t?mmq:0),(compute_v2t?mmq:0))
		info : int
	**/
	static public function sorcsd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = sorcsd_lwork(m,p,q)
		
		Wrapper for ``sorcsd_lwork``.
		
		Parameters
		----------
		m : input int
		p : input int
		q : input int
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function sorcsd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ht,info = sorghr(a,tau,[lo,hi,lwork,overwrite_a])
		
		Wrapper for ``sorghr``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		tau : input rank-1 array('f') with bounds (n - 1)
		
		Other Parameters
		----------------
		lo : input int, optional
		    Default: 0
		hi : input int, optional
		    Default: n-1
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(hi-lo,1)
		
		Returns
		-------
		ht : rank-2 array('f') with bounds (n,n) and a storage
		info : int
	**/
	static public function sorghr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = sorghr_lwork(n,[lo,hi])
		
		Wrapper for ``sorghr_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lo : input int, optional
		    Default: 0
		hi : input int, optional
		    Default: n-1
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function sorghr_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		q,work,info = sorgqr(a,tau,[lwork,overwrite_a])
		
		Wrapper for ``sorgqr``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		tau : input rank-1 array('f') with bounds (k)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		
		Returns
		-------
		q : rank-2 array('f') with bounds (m,n) and a storage
		work : rank-1 array('f') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function sorgqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		q,work,info = sorgrq(a,tau,[lwork,overwrite_a])
		
		Wrapper for ``sorgrq``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		tau : input rank-1 array('f') with bounds (k)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*m,1)
		
		Returns
		-------
		q : rank-2 array('f') with bounds (m,n) and a storage
		work : rank-1 array('f') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function sorgrq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cq,work,info = sormqr(side,trans,a,tau,c,lwork,[overwrite_c])
		
		Wrapper for ``sormqr``.
		
		Parameters
		----------
		side : input string(len=1)
		trans : input string(len=1)
		a : input rank-2 array('f') with bounds (lda,k)
		tau : input rank-1 array('f') with bounds (k)
		c : input rank-2 array('f') with bounds (ldc,n)
		lwork : input int
		
		Other Parameters
		----------------
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		cq : rank-2 array('f') with bounds (ldc,n) and c storage
		work : rank-1 array('f') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function sormqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cq,info = sormrz(a,tau,c,[side,trans,lwork,overwrite_c])
		
		Wrapper for ``sormrz``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (k,nt)
		tau : input rank-1 array('f') with bounds (k)
		c : input rank-2 array('f') with bounds (m,n)
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_c : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX((side[0]=='L'?n:m),1)
		
		Returns
		-------
		cq : rank-2 array('f') with bounds (m,n) and c storage
		info : int
	**/
	static public function sormrz(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = sormrz_lwork(m,n,[side,trans])
		
		Wrapper for ``sormrz_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		trans : input string(len=1), optional
		    Default: 'N'
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function sormrz_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,x,info = spbsv(ab,b,[lower,ldab,overwrite_ab,overwrite_b])
		
		Wrapper for ``spbsv``.
		
		Parameters
		----------
		ab : input rank-2 array('f') with bounds (ldab,n)
		b : input rank-2 array('f') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_ab : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('f') with bounds (ldab,n) and ab storage
		x : rank-2 array('f') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function spbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,info = spbtrf(ab,[lower,ldab,overwrite_ab])
		
		Wrapper for ``spbtrf``.
		
		Parameters
		----------
		ab : input rank-2 array('f') with bounds (ldab,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_ab : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		
		Returns
		-------
		c : rank-2 array('f') with bounds (ldab,n) and ab storage
		info : int
	**/
	static public function spbtrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = spbtrs(ab,b,[lower,ldab,overwrite_b])
		
		Wrapper for ``spbtrs``.
		
		Parameters
		----------
		ab : input rank-2 array('f') with bounds (ldab,n)
		b : input rank-2 array('f') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('f') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function spbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		achol,info = spftrf(n,a,[transr,uplo,overwrite_a])
		
		Wrapper for ``spftrf``.
		
		Parameters
		----------
		n : input int
		a : input rank-1 array('f') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		achol : rank-1 array('f') with bounds (nt) and a storage
		info : int
	**/
	static public function spftrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ainv,info = spftri(n,a,[transr,uplo,overwrite_a])
		
		Wrapper for ``spftri``.
		
		Parameters
		----------
		n : input int
		a : input rank-1 array('f') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		ainv : rank-1 array('f') with bounds (nt) and a storage
		info : int
	**/
	static public function spftri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = spftrs(n,a,b,[transr,uplo,overwrite_b])
		
		Wrapper for ``spftrs``.
		
		Parameters
		----------
		n : input int
		a : input rank-1 array('f') with bounds (nt)
		b : input rank-2 array('f') with bounds (ldb,nhrs)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('f') with bounds (ldb,nhrs) and b storage
		info : int
	**/
	static public function spftrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = spocon(a,anorm,[uplo])
		
		Wrapper for ``spocon``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		anorm : input float
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function spocon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,x,info = sposv(a,b,[lower,overwrite_a,overwrite_b])
		
		Wrapper for ``sposv``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		b : input rank-2 array('f') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('f') with bounds (n,n) and a storage
		x : rank-2 array('f') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function sposv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a_s,lu,equed,s,b_s,x,rcond,ferr,berr,info = sposvx(a,b,[fact,af,equed,s,lower,overwrite_a,overwrite_b])
		
		Wrapper for ``sposvx``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		b : input rank-2 array('f') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		fact : input string(len=1), optional
		    Default: 'E'
		overwrite_a : input int, optional
		    Default: 0
		af : input rank-2 array('f') with bounds (n,n)
		equed : input string(len=1), optional
		    Default: 'Y'
		s : input rank-1 array('f') with bounds (n)
		overwrite_b : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		a_s : rank-2 array('f') with bounds (n,n) and a storage
		lu : rank-2 array('f') with bounds (n,n) and af storage
		equed : string(len=1)
		s : rank-1 array('f') with bounds (n)
		b_s : rank-2 array('f') with bounds (n,nrhs) and b storage
		x : rank-2 array('f') with bounds (n,nrhs)
		rcond : float
		ferr : rank-1 array('f') with bounds (nrhs)
		berr : rank-1 array('f') with bounds (nrhs)
		info : int
	**/
	static public function sposvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,info = spotrf(a,[lower,clean,overwrite_a])
		
		Wrapper for ``spotrf``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		clean : input int, optional
		    Default: 1
		
		Returns
		-------
		c : rank-2 array('f') with bounds (n,n) and a storage
		info : int
	**/
	static public function spotrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inv_a,info = spotri(c,[lower,overwrite_c])
		
		Wrapper for ``spotri``.
		
		Parameters
		----------
		c : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_c : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		inv_a : rank-2 array('f') with bounds (n,n) and c storage
		info : int
	**/
	static public function spotri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = spotrs(c,b,[lower,overwrite_b])
		
		Wrapper for ``spotrs``.
		
		Parameters
		----------
		c : input rank-2 array('f') with bounds (n,n)
		b : input rank-2 array('f') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('f') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function spotrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = sppcon(n,ap,anorm,[lower])
		
		Wrapper for ``sppcon``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('f') with bounds (L)
		anorm : input float
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function sppcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = sppsv(n,ap,b,[lower,overwrite_b])
		
		Wrapper for ``sppsv``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('f') with bounds (L)
		b : input rank-2 array('f') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('f') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function sppsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ul,info = spptrf(n,ap,[lower,overwrite_ap])
		
		Wrapper for ``spptrf``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('f') with bounds (L)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		
		Returns
		-------
		ul : rank-1 array('f') with bounds (L) and ap storage
		info : int
	**/
	static public function spptrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uli,info = spptri(n,ap,[lower,overwrite_ap])
		
		Wrapper for ``spptri``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('f') with bounds (L)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		
		Returns
		-------
		uli : rank-1 array('f') with bounds (L) and ap storage
		info : int
	**/
	static public function spptri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = spptrs(n,ap,b,[lower,overwrite_b])
		
		Wrapper for ``spptrs``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('f') with bounds (L)
		b : input rank-2 array('f') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('f') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function spptrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,piv,rank_c,info = spstf2(a,[tol,lower,overwrite_a])
		
		Wrapper for ``spstf2``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		tol : input float, optional
		    Default: -1.0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('f') with bounds (n,n) and a storage
		piv : rank-1 array('i') with bounds (n)
		rank_c : int
		info : int
	**/
	static public function spstf2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,piv,rank_c,info = spstrf(a,[tol,lower,overwrite_a])
		
		Wrapper for ``spstrf``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		tol : input float, optional
		    Default: -1.0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('f') with bounds (n,n) and a storage
		piv : rank-1 array('i') with bounds (n)
		rank_c : int
		info : int
	**/
	static public function spstrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		d,e,z,info = spteqr(d,e,z,[compute_z,overwrite_d,overwrite_e,overwrite_z])
		
		Wrapper for ``spteqr``.
		
		Parameters
		----------
		d : input rank-1 array('f') with bounds (n)
		e : input rank-1 array('f') with bounds ((n>0?n-1:0))
		z : input rank-2 array('f') with bounds ((compute_z==0?shape(z, 0):max(1,n)),(compute_z==0?shape(z, 1):n))
		
		Other Parameters
		----------------
		compute_z : input int, optional
		    Default: 0
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		overwrite_z : input int, optional
		    Default: 0
		
		Returns
		-------
		d : rank-1 array('f') with bounds (n)
		e : rank-1 array('f') with bounds ((n>0?n-1:0))
		z : rank-2 array('f') with bounds ((compute_z==0?shape(z, 0):max(1,n)),(compute_z==0?shape(z, 1):n))
		info : int
	**/
	static public function spteqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		d,du,x,info = sptsv(d,e,b,[overwrite_d,overwrite_e,overwrite_b])
		
		Wrapper for ``sptsv``.
		
		Parameters
		----------
		d : input rank-1 array('f') with bounds (n)
		e : input rank-1 array('f') with bounds (n - 1)
		b : input rank-2 array('f') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		d : rank-1 array('f') with bounds (n)
		du : rank-1 array('f') with bounds (n - 1) and e storage
		x : rank-2 array('f') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function sptsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		df,ef,x,rcond,ferr,berr,info = sptsvx(d,e,b,[fact,df,ef])
		
		Wrapper for ``sptsvx``.
		
		Parameters
		----------
		d : input rank-1 array('f') with bounds (n)
		e : input rank-1 array('f') with bounds (max(0, n-1))
		b : input rank-2 array('f') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		fact : input string(len=1), optional
		    Default: 'N'
		df : input rank-1 array('f') with bounds (n)
		ef : input rank-1 array('f') with bounds (max(0, n-1))
		
		Returns
		-------
		df : rank-1 array('f') with bounds (n)
		ef : rank-1 array('f') with bounds (max(0, n-1))
		x : rank-2 array('f') with bounds (ldx,nrhs)
		rcond : float
		ferr : rank-1 array('f') with bounds (nrhs)
		berr : rank-1 array('f') with bounds (nrhs)
		info : int
	**/
	static public function sptsvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		d,e,info = spttrf(d,e,[overwrite_d,overwrite_e])
		
		Wrapper for ``spttrf``.
		
		Parameters
		----------
		d : input rank-1 array('f') with bounds (n)
		e : input rank-1 array('f') with bounds ((n>0?n-1:0))
		
		Other Parameters
		----------------
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		
		Returns
		-------
		d : rank-1 array('f') with bounds (n)
		e : rank-1 array('f') with bounds ((n>0?n-1:0))
		info : int
	**/
	static public function spttrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = spttrs(d,e,b,[overwrite_b])
		
		Wrapper for ``spttrs``.
		
		Parameters
		----------
		d : input rank-1 array('f') with bounds (n)
		e : input rank-1 array('f') with bounds ((n>0?n-1:0))
		b : input rank-2 array('f') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('f') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function spttrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,info = ssbev(ab,[compute_v,lower,ldab,overwrite_ab])
		
		Wrapper for ``ssbev``.
		
		Parameters
		----------
		ab : input rank-2 array('f') with bounds (ldab,n)
		
		Other Parameters
		----------------
		overwrite_ab : input int, optional
		    Default: 1
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		z : rank-2 array('f') with bounds (ldz,ldz)
		info : int
	**/
	static public function ssbev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,info = ssbevd(ab,[compute_v,lower,ldab,liwork,overwrite_ab])
		
		Wrapper for ``ssbevd``.
		
		Parameters
		----------
		ab : input rank-2 array('f') with bounds (ldab,n)
		
		Other Parameters
		----------------
		overwrite_ab : input int, optional
		    Default: 1
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		liwork : input int, optional
		    Default: (compute_v?3+5*n:1)
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		z : rank-2 array('f') with bounds (ldz,ldz)
		info : int
	**/
	static public function ssbevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,m,ifail,info = ssbevx(ab,vl,vu,il,iu,[ldab,compute_v,range,lower,abstol,mmax,overwrite_ab])
		
		Wrapper for ``ssbevx``.
		
		Parameters
		----------
		ab : input rank-2 array('f') with bounds (ldab,n)
		vl : input float
		vu : input float
		il : input int
		iu : input int
		
		Other Parameters
		----------------
		overwrite_ab : input int, optional
		    Default: 1
		ldab : input int, optional
		    Default: shape(ab,0)
		compute_v : input int, optional
		    Default: 1
		range : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		abstol : input float, optional
		    Default: 0.0
		mmax : input int, optional
		    Default: (compute_v?(range==2?(iu-il+1):n):1)
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		z : rank-2 array('f') with bounds (ldz,mmax)
		m : int
		ifail : rank-1 array('i') with bounds ((compute_v?n:1))
		info : int
	**/
	static public function ssbevx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cout = ssfrk(n,k,alpha,a,beta,c,[transr,uplo,trans,overwrite_c])
		
		Wrapper for ``ssfrk``.
		
		Parameters
		----------
		n : input int
		k : input int
		alpha : input float
		a : input rank-2 array('f') with bounds (lda,ka)
		beta : input float
		c : input rank-1 array('f') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		cout : rank-1 array('f') with bounds (nt) and c storage
	**/
	static public function ssfrk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		m,w,iblock,isplit,info = sstebz(d,e,range,vl,vu,il,iu,tol,order)
		
		Wrapper for ``sstebz``.
		
		Parameters
		----------
		d : input rank-1 array('f') with bounds (n)
		e : input rank-1 array('f') with bounds (n - 1)
		range : input int
		vl : input float
		vu : input float
		il : input int
		iu : input int
		tol : input float
		order : input string(len=1)
		
		Returns
		-------
		m : int
		w : rank-1 array('f') with bounds (n)
		iblock : rank-1 array('i') with bounds (n)
		isplit : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function sstebz(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		z,info = sstein(d,e,w,iblock,isplit)
		
		Wrapper for ``sstein``.
		
		Parameters
		----------
		d : input rank-1 array('f') with bounds (n)
		e : input rank-1 array('f') with bounds (n - 1)
		w : input rank-1 array('f') with bounds (m)
		iblock : input rank-1 array('i') with bounds (n)
		isplit : input rank-1 array('i') with bounds (n)
		
		Returns
		-------
		z : rank-2 array('f') with bounds (ldz,m)
		info : int
	**/
	static public function sstein(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		m,w,z,info = sstemr(d,e,range,vl,vu,il,iu,[compute_v,lwork,liwork,overwrite_d])
		
		Wrapper for ``sstemr``.
		
		Parameters
		----------
		d : input rank-1 array('f') with bounds (n)
		e : input rank-1 array('f') with bounds (n)
		range : input int
		vl : input float
		vu : input float
		il : input int
		iu : input int
		
		Other Parameters
		----------------
		overwrite_d : input int, optional
		    Default: 0
		compute_v : input int, optional
		    Default: 1
		lwork : input int, optional
		    Default: max((compute_v?18*n:12*n),1)
		liwork : input int, optional
		    Default: (compute_v?10*n:8*n)
		
		Returns
		-------
		m : int
		w : rank-1 array('f') with bounds (n)
		z : rank-2 array('f') with bounds (n,n)
		info : int
	**/
	static public function sstemr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,iwork,info = sstemr_lwork(d,e,range,vl,vu,il,iu,[compute_v,overwrite_d,overwrite_e])
		
		Wrapper for ``sstemr_lwork``.
		
		Parameters
		----------
		d : input rank-1 array('f') with bounds (n)
		e : input rank-1 array('f') with bounds (n)
		range : input int
		vl : input float
		vu : input float
		il : input int
		iu : input int
		
		Other Parameters
		----------------
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		compute_v : input int, optional
		    Default: 1
		
		Returns
		-------
		work : float
		iwork : int
		info : int
	**/
	static public function sstemr_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		vals,info = ssterf(d,e,[overwrite_d,overwrite_e])
		
		Wrapper for ``ssterf``.
		
		Parameters
		----------
		d : input rank-1 array('f') with bounds (n)
		e : input rank-1 array('f') with bounds (n - 1)
		
		Other Parameters
		----------------
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		
		Returns
		-------
		vals : rank-1 array('f') with bounds (n) and d storage
		info : int
	**/
	static public function ssterf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		vals,z,info = sstev(d,e,[compute_v,overwrite_d,overwrite_e])
		
		Wrapper for ``sstev``.
		
		Parameters
		----------
		d : input rank-1 array('f') with bounds (n)
		e : input rank-1 array('f') with bounds (MAX(n-1,1))
		
		Other Parameters
		----------------
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		compute_v : input int, optional
		    Default: 1
		
		Returns
		-------
		vals : rank-1 array('f') with bounds (n) and d storage
		z : rank-2 array('f') with bounds (ldz,(compute_v?n:1))
		info : int
	**/
	static public function sstev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = ssycon(a,ipiv,anorm,[lower])
		
		Wrapper for ``ssycon``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		anorm : input float
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function ssycon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,e,info = ssyconv(a,ipiv,[lower,way,overwrite_a])
		
		Wrapper for ``ssyconv``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		way : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('f') with bounds (n,n)
		e : rank-1 array('f') with bounds (n)
		info : int
	**/
	static public function ssyconv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		s,scond,amax,info = ssyequb(a,[lower])
		
		Wrapper for ``ssyequb``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (lda,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		s : rank-1 array('f') with bounds (n)
		scond : float
		amax : float
		info : int
	**/
	static public function ssyequb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,v,info = ssyev(a,[compute_v,lower,lwork,overwrite_a])
		
		Wrapper for ``ssyev``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n-1,1)
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		v : rank-2 array('f') with bounds (n,n) and a storage
		info : int
	**/
	static public function ssyev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = ssyev_lwork(n,[lower])
		
		Wrapper for ``ssyev_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function ssyev_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,v,info = ssyevd(a,[compute_v,lower,lwork,liwork,overwrite_a])
		
		Wrapper for ``ssyevd``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max((compute_v?1+6*n+2*n*n:2*n+1),1)
		liwork : input int, optional
		    Default: (compute_v?3+5*n:1)
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		v : rank-2 array('f') with bounds (n,n) and a storage
		info : int
	**/
	static public function ssyevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,iwork,info = ssyevd_lwork(n,[compute_v,lower])
		
		Wrapper for ``ssyevd_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : float
		iwork : int
		info : int
	**/
	static public function ssyevd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,m,isuppz,info = ssyevr(a,[compute_v,range,lower,vl,vu,il,iu,abstol,lwork,liwork,overwrite_a])
		
		Wrapper for ``ssyevr``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds ``(n,n)``
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default ``1``
		range : input string(len=1), optional
		    Default ``'A'``
		lower : input int, optional
		    Default ``0``
		overwrite_a : input int, optional
		    Default ``0``
		vl : input float, optional
		    Default ``0.0``
		vu : input float, optional
		    Default ``1.0``
		il : input int, optional
		    Default ``1``
		iu : input int, optional
		    Default ``n``
		abstol : input float, optional
		    Default ``0.0``
		lwork : input int, optional
		    Default ``max(26*n,1)``
		liwork : input int, optional
		    Default ``max(1,10*n)``
		
		Returns
		-------
		w : rank-1 array('f') with bounds ``(n)``
		z : rank-2 array('f') with bounds ``((compute_v?MAX(0,n):0),(compute_v?(*range=='I'?iu-il+1:MAX(1,n)):0))``
		m : int
		isuppz : rank-1 array('i') with bounds ``((compute_v?(2*(*range=='A'||(*range=='I' && iu-il+1==n)?n:0)):0))``
		info : int
	**/
	static public function ssyevr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,iwork,info = ssyevr_lwork(n,[lower])
		
		Wrapper for ``ssyevr_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : float
		iwork : int
		info : int
	**/
	static public function ssyevr_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,m,ifail,info = ssyevx(a,[compute_v,range,lower,vl,vu,il,iu,abstol,lwork,overwrite_a])
		
		Wrapper for ``ssyevx``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds ``(n,n)``
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default ``1``
		range : input string(len=1), optional
		    Default ``'A'``
		lower : input int, optional
		    Default ``0``
		overwrite_a : input int, optional
		    Default ``0``
		vl : input float, optional
		    Default ``0.0``
		vu : input float, optional
		    Default ``1.0``
		il : input int, optional
		    Default ``1``
		iu : input int, optional
		    Default ``n``
		abstol : input float, optional
		    Default ``0.0``
		lwork : input int, optional
		    Default ``max(8*n,1)``
		
		Returns
		-------
		w : rank-1 array('f') with bounds ``(n)``
		z : rank-2 array('f') with bounds ``((compute_v?MAX(0,n):0),(compute_v?(*range=='I'?iu-il+1:MAX(1,n)):0))``
		m : int
		ifail : rank-1 array('i') with bounds ``((compute_v?n:0))``
		info : int
	**/
	static public function ssyevx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = ssyevx_lwork(n,[lower])
		
		Wrapper for ``ssyevx_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function ssyevx_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,info = ssygst(a,b,[itype,lower,overwrite_a])
		
		Wrapper for ``ssygst``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		b : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		itype : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('f') with bounds (n,n) and a storage
		info : int
	**/
	static public function ssygst(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,v,info = ssygv(a,b,[itype,jobz,uplo,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``ssygv``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		b : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		itype : input int, optional
		    Default: 1
		jobz : input string(len=1), optional
		    Default: 'V'
		uplo : input string(len=1), optional
		    Default: 'L'
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n-1,1)
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		v : rank-2 array('f') with bounds (n,n) and a storage
		info : int
	**/
	static public function ssygv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = ssygv_lwork(n,[uplo])
		
		Wrapper for ``ssygv_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'L'
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function ssygv_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,v,info = ssygvd(a,b,[itype,jobz,uplo,lwork,liwork,overwrite_a,overwrite_b])
		
		Wrapper for ``ssygvd``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds ``(n,n)``
		b : input rank-2 array('f') with bounds ``(n,n)``
		
		Other Parameters
		----------------
		itype : input int, optional
		    Default ``1``
		jobz : input string(len=1), optional
		    Default ``'V'``
		uplo : input string(len=1), optional
		    Default ``'L'``
		overwrite_a : input int, optional
		    Default ``0``
		overwrite_b : input int, optional
		    Default ``0``
		lwork : input int, optional
		    Default ``(*jobz=='N'?2*n+1:1+6*n+2*n*n)``
		liwork : input int, optional
		    Default ``(*jobz=='N'?1:5*n+3)``
		
		Returns
		-------
		w : rank-1 array('f') with bounds ``(n)``
		v : rank-2 array('f') with bounds ``(n,n)`` with ``a`` storage
		info : int
	**/
	static public function ssygvd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,m,ifail,info = ssygvx(a,b,[itype,jobz,range,uplo,vl,vu,il,iu,abstol,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``ssygvx``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		b : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		itype : input int, optional
		    Default: 1
		jobz : input string(len=1), optional
		    Default: 'V'
		range : input string(len=1), optional
		    Default: 'A'
		uplo : input string(len=1), optional
		    Default: 'L'
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		vl : input float, optional
		    Default: 0.0
		vu : input float, optional
		    Default: 1.0
		il : input int, optional
		    Default: 1
		iu : input int, optional
		    Default: n
		abstol : input float, optional
		    Default: 0.0
		lwork : input int, optional
		    Default: max(8*n,1)
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		z : rank-2 array('f') with bounds ((jobz[0]=='V'?MAX(0,n):0),(jobz[0]=='V'?(range[0]=='I'?iu-il+1:MAX(1,n)):0))
		m : int
		ifail : rank-1 array('i') with bounds ((jobz[0]=='N'?0:n))
		info : int
	**/
	static public function ssygvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = ssygvx_lwork(n,[uplo])
		
		Wrapper for ``ssygvx_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'L'
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function ssygvx_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		udut,ipiv,x,info = ssysv(a,b,[lwork,lower,overwrite_a,overwrite_b])
		
		Wrapper for ``ssysv``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		b : input rank-2 array('f') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(n,1)
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		udut : rank-2 array('f') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		x : rank-2 array('f') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function ssysv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = ssysv_lwork(n,[lower])
		
		Wrapper for ``ssysv_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function ssysv_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a_s,udut,ipiv,b_s,x,rcond,ferr,berr,info = ssysvx(a,b,[af,ipiv,lwork,factored,lower,overwrite_a,overwrite_b])
		
		Wrapper for ``ssysvx``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		b : input rank-2 array('f') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		af : input rank-2 array('f') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		factored : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		a_s : rank-2 array('f') with bounds (n,n) and a storage
		udut : rank-2 array('f') with bounds (n,n) and af storage
		ipiv : rank-1 array('i') with bounds (n)
		b_s : rank-2 array('f') with bounds (n,nrhs) and b storage
		x : rank-2 array('f') with bounds (n,nrhs)
		rcond : float
		ferr : rank-1 array('f') with bounds (nrhs)
		berr : rank-1 array('f') with bounds (nrhs)
		info : int
	**/
	static public function ssysvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = ssysvx_lwork(n,[lower])
		
		Wrapper for ``ssysvx_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function ssysvx_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ldu,ipiv,info = ssytf2(a,[lower,overwrite_a])
		
		Wrapper for ``ssytf2``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		ldu : rank-2 array('f') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function ssytf2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,d,e,tau,info = ssytrd(a,[lower,lwork,overwrite_a])
		
		Wrapper for ``ssytrd``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (lda,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(n,1)
		
		Returns
		-------
		c : rank-2 array('f') with bounds (lda,n) and a storage
		d : rank-1 array('f') with bounds (n)
		e : rank-1 array('f') with bounds (n - 1)
		tau : rank-1 array('f') with bounds (n - 1)
		info : int
	**/
	static public function ssytrd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = ssytrd_lwork(n,[lower])
		
		Wrapper for ``ssytrd_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function ssytrd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ldu,ipiv,info = ssytrf(a,[lower,lwork,overwrite_a])
		
		Wrapper for ``ssytrf``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(n,1)
		
		Returns
		-------
		ldu : rank-2 array('f') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function ssytrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = ssytrf_lwork(n,[lower])
		
		Wrapper for ``ssytrf_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function ssytrf_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = stbtrs(ab,b,[uplo,trans,diag,overwrite_b])
		
		Wrapper for ``stbtrs``.
		
		Parameters
		----------
		ab : input rank-2 array('f') with bounds (ldab,n)
		b : input rank-2 array('f') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'U'
		trans : input string(len=1), optional
		    Default: 'N'
		diag : input string(len=1), optional
		    Default: 'N'
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('f') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function stbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = stfsm(alpha,a,b,[transr,side,uplo,trans,diag,overwrite_b])
		
		Wrapper for ``stfsm``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-1 array('f') with bounds (nt)
		b : input rank-2 array('f') with bounds (m,n)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		side : input string(len=1), optional
		    Default: 'L'
		uplo : input string(len=1), optional
		    Default: 'U'
		trans : input string(len=1), optional
		    Default: 'N'
		diag : input string(len=1), optional
		    Default: 'N'
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('f') with bounds (m,n) and b storage
	**/
	static public function stfsm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ap,info = stfttp(n,arf,[transr,uplo])
		
		Wrapper for ``stfttp``.
		
		Parameters
		----------
		n : input int
		arf : input rank-1 array('f') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		ap : rank-1 array('f') with bounds (nt)
		info : int
	**/
	static public function stfttp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,info = stfttr(n,arf,[transr,uplo])
		
		Wrapper for ``stfttr``.
		
		Parameters
		----------
		n : input int
		arf : input rank-1 array('f') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		a : rank-2 array('f') with bounds (lda,n)
		info : int
	**/
	static public function stfttr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,b,q,z,work,info = stgexc(a,b,q,z,ifst,ilst,[lwork,overwrite_a,overwrite_b,overwrite_q,overwrite_z])
		
		Wrapper for ``stgexc``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (lda,n)
		b : input rank-2 array('f') with bounds (ldb,n)
		q : input rank-2 array('f') with bounds (ldq,n)
		z : input rank-2 array('f') with bounds (ldz,n)
		ifst : input int
		ilst : input int
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		overwrite_q : input int, optional
		    Default: 0
		overwrite_z : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(4*n+16,1)
		
		Returns
		-------
		a : rank-2 array('f') with bounds (lda,n)
		b : rank-2 array('f') with bounds (ldb,n)
		q : rank-2 array('f') with bounds (ldq,n)
		z : rank-2 array('f') with bounds (ldz,n)
		work : rank-1 array('f') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function stgexc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		as,bs,alphar,alphai,beta,qs,zs,m,pl,pr,dif,info = stgsen(select,a,b,q,z,[ijob,wantq,wantz,lwork,liwork,overwrite_a,overwrite_b,overwrite_q,overwrite_z])
		
		Wrapper for ``stgsen``.
		
		Parameters
		----------
		select : input rank-1 array('i') with bounds (n)
		a : input rank-2 array('f') with bounds (n,n)
		b : input rank-2 array('f') with bounds (n,n)
		q : input rank-2 array('f') with bounds (n,n)
		z : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		ijob : input int, optional
		    Default: 4
		wantq : input int, optional
		    Default: 1
		wantz : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		overwrite_q : input int, optional
		    Default: 0
		overwrite_z : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: 4*n+16
		liwork : input int, optional
		    Default: n+6
		
		Returns
		-------
		as : rank-2 array('f') with bounds (n,n) and a storage
		bs : rank-2 array('f') with bounds (n,n) and b storage
		alphar : rank-1 array('f') with bounds (n)
		alphai : rank-1 array('f') with bounds (n)
		beta : rank-1 array('f') with bounds (n)
		qs : rank-2 array('f') with bounds (n,n) and q storage
		zs : rank-2 array('f') with bounds (n,n) and z storage
		m : int
		pl : float
		pr : float
		dif : rank-1 array('f') with bounds (2)
		info : int
	**/
	static public function stgsen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,iwork,info = stgsen_lwork(select,a,[ijob])
		
		Wrapper for ``stgsen_lwork``.
		
		Parameters
		----------
		select : input rank-1 array('i') with bounds (n)
		a : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		ijob : input int, optional
		    Default: 4
		
		Returns
		-------
		work : float
		iwork : int
		info : int
	**/
	static public function stgsen_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,b,info = stpmqrt(l,v,t,a,b,[side,trans,overwrite_a,overwrite_b])
		
		Wrapper for ``stpmqrt``.
		
		Parameters
		----------
		l : input int
		v : input rank-2 array('f') with bounds ((side[0]=='L'?m:n),k)
		t : input rank-2 array('f') with bounds (nb,k)
		a : input rank-2 array('f') with bounds ((side[0]=='L'?k:m),(side[0]=='L'?n:k))
		b : input rank-2 array('f') with bounds (m,n)
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('f') with bounds ((side[0]=='L'?k:m),(side[0]=='L'?n:k))
		b : rank-2 array('f') with bounds (m,n)
		info : int
	**/
	static public function stpmqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,b,t,info = stpqrt(l,nb,a,b,[overwrite_a,overwrite_b])
		
		Wrapper for ``stpqrt``.
		
		Parameters
		----------
		l : input int
		nb : input int
		a : input rank-2 array('f') with bounds (n,n)
		b : input rank-2 array('f') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('f') with bounds (n,n)
		b : rank-2 array('f') with bounds (m,n)
		t : rank-2 array('f') with bounds (nb,n)
		info : int
	**/
	static public function stpqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arf,info = stpttf(n,ap,[transr,uplo])
		
		Wrapper for ``stpttf``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('f') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		arf : rank-1 array('f') with bounds (nt)
		info : int
	**/
	static public function stpttf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,info = stpttr(n,ap,[uplo])
		
		Wrapper for ``stpttr``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('f') with bounds (nt)
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		a : rank-2 array('f') with bounds (n,n)
		info : int
	**/
	static public function stpttr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,scale,info = strsyl(a,b,c,[trana,tranb,isgn,overwrite_c])
		
		Wrapper for ``strsyl``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,m)
		b : input rank-2 array('f') with bounds (n,n)
		c : input rank-2 array('f') with bounds (m,n)
		
		Other Parameters
		----------------
		trana : input string(len=1), optional
		    Default: 'N'
		tranb : input string(len=1), optional
		    Default: 'N'
		isgn : input int, optional
		    Default: 1
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('f') with bounds (m,n) and c storage
		scale : float
		info : int
	**/
	static public function strsyl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inv_c,info = strtri(c,[lower,unitdiag,overwrite_c])
		
		Wrapper for ``strtri``.
		
		Parameters
		----------
		c : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_c : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		unitdiag : input int, optional
		    Default: 0
		
		Returns
		-------
		inv_c : rank-2 array('f') with bounds (n,n) and c storage
		info : int
	**/
	static public function strtri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = strtrs(a,b,[lower,trans,unitdiag,lda,overwrite_b])
		
		Wrapper for ``strtrs``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (lda,n)
		b : input rank-2 array('f') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		unitdiag : input int, optional
		    Default: 0
		lda : input int, optional
		    Default: shape(a,0)
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('f') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function strtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arf,info = strttf(a,[transr,uplo])
		
		Wrapper for ``strttf``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (lda,n)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		arf : rank-1 array('f') with bounds (n*(n+1)/2)
		info : int
	**/
	static public function strttf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ap,info = strttp(a,[uplo])
		
		Wrapper for ``strttp``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (lda,n)
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		ap : rank-1 array('f') with bounds (n*(n+1)/2)
		info : int
	**/
	static public function strttp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rz,tau,info = stzrzf(a,[lwork,overwrite_a])
		
		Wrapper for ``stzrzf``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(m,1)
		
		Returns
		-------
		rz : rank-2 array('f') with bounds (m,n) and a storage
		tau : rank-1 array('f') with bounds (m)
		info : int
	**/
	static public function stzrzf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = stzrzf_lwork(m,n)
		
		Wrapper for ``stzrzf_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Returns
		-------
		work : float
		info : int
	**/
	static public function stzrzf_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lub,piv,x,info = zgbsv(kl,ku,ab,b,[overwrite_ab,overwrite_b])
		
		Wrapper for ``zgbsv``.
		
		Parameters
		----------
		kl : input int
		ku : input int
		ab : input rank-2 array('D') with bounds (2*kl+ku+1,n)
		b : input rank-2 array('D') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_ab : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		lub : rank-2 array('D') with bounds (2*kl+ku+1,n) and ab storage
		piv : rank-1 array('i') with bounds (n)
		x : rank-2 array('D') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function zgbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lu,ipiv,info = zgbtrf(ab,kl,ku,[m,n,ldab,overwrite_ab])
		
		Wrapper for ``zgbtrf``.
		
		Parameters
		----------
		ab : input rank-2 array('D') with bounds (ldab,n)
		kl : input int
		ku : input int
		
		Other Parameters
		----------------
		m : input int, optional
		    Default: shape(ab,1)
		n : input int, optional
		    Default: shape(ab,1)
		overwrite_ab : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: max(shape(ab,0),1)
		
		Returns
		-------
		lu : rank-2 array('D') with bounds (ldab,n) and ab storage
		ipiv : rank-1 array('i') with bounds (MIN(m,n))
		info : int
	**/
	static public function zgbtrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = zgbtrs(ab,kl,ku,b,ipiv,[trans,n,ldab,ldb,overwrite_b])
		
		Wrapper for ``zgbtrs``.
		
		Parameters
		----------
		ab : input rank-2 array('D') with bounds (ldab,n)
		kl : input int
		ku : input int
		b : input rank-2 array('D') with bounds (ldb,nrhs)
		ipiv : input rank-1 array('i') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		n : input int, optional
		    Default: shape(ab,1)
		ldab : input int, optional
		    Default: shape(ab,0)
		ldb : input int, optional
		    Default: shape(b,0)
		
		Returns
		-------
		x : rank-2 array('D') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function zgbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ba,lo,hi,pivscale,info = zgebal(a,[scale,permute,overwrite_a])
		
		Wrapper for ``zgebal``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		scale : input int, optional
		    Default: 0
		permute : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		ba : rank-2 array('D') with bounds (m,n) and a storage
		lo : int
		hi : int
		pivscale : rank-1 array('d') with bounds (n)
		info : int
	**/
	static public function zgebal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = zgecon(a,anorm,[norm])
		
		Wrapper for ``zgecon``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		anorm : input float
		
		Other Parameters
		----------------
		norm : input string(len=1), optional
		    Default: '1'
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function zgecon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		r,c,rowcnd,colcnd,amax,info = zgeequ(a)
		
		Wrapper for ``zgeequ``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		
		Returns
		-------
		r : rank-1 array('d') with bounds (m)
		c : rank-1 array('d') with bounds (n)
		rowcnd : float
		colcnd : float
		amax : float
		info : int
	**/
	static public function zgeequ(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		r,c,rowcnd,colcnd,amax,info = zgeequb(a)
		
		Wrapper for ``zgeequb``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		
		Returns
		-------
		r : rank-1 array('d') with bounds (m)
		c : rank-1 array('d') with bounds (n)
		rowcnd : float
		colcnd : float
		amax : float
		info : int
	**/
	static public function zgeequb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		t,sdim,w,vs,work,info = zgees(zselect,a,[compute_v,sort_t,lwork,zselect_extra_args,overwrite_a])
		
		Wrapper for ``zgees``.
		
		Parameters
		----------
		zselect : call-back function
		a : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default: 1
		sort_t : input int, optional
		    Default: 0
		zselect_extra_args : input tuple, optional
		    Default: ()
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		
		Returns
		-------
		t : rank-2 array('D') with bounds (n,n) and a storage
		sdim : int
		w : rank-1 array('D') with bounds (n)
		vs : rank-2 array('D') with bounds (ldvs,n)
		work : rank-1 array('D') with bounds (MAX(lwork,1))
		info : int
		
		Notes
		-----
		Call-back functions::
		
		  def zselect(arg): return zselect
		  Required arguments:
		    arg : input complex
		  Return objects:
		    zselect : int
	**/
	static public function zgees(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,vl,vr,info = zgeev(a,[compute_vl,compute_vr,lwork,overwrite_a])
		
		Wrapper for ``zgeev``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_vl : input int, optional
		    Default: 1
		compute_vr : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(2*n,1)
		
		Returns
		-------
		w : rank-1 array('D') with bounds (n)
		vl : rank-2 array('D') with bounds (ldvl,n)
		vr : rank-2 array('D') with bounds (ldvr,n)
		info : int
	**/
	static public function zgeev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zgeev_lwork(n,[compute_vl,compute_vr])
		
		Wrapper for ``zgeev_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		compute_vl : input int, optional
		    Default: 1
		compute_vr : input int, optional
		    Default: 1
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zgeev_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		`zgegv` is deprecated!
		The `*gegv` family of routines has been deprecated in
		LAPACK 3.6.0 in favor of the `*ggev` family of routines.
		The corresponding wrappers will be removed from SciPy in
		a future release.
		
		alpha,beta,vl,vr,info = zgegv(a,b,[compute_vl,compute_vr,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``zgegv``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_vl : input int, optional
		    Default: 1
		compute_vr : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(2*n,1)
		
		Returns
		-------
		alpha : rank-1 array('D') with bounds (n)
		beta : rank-1 array('D') with bounds (n)
		vl : rank-2 array('D') with bounds (ldvl,n)
		vr : rank-2 array('D') with bounds (ldvr,n)
		info : int
	**/
	static public function zgegv(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		ht,tau,info = zgehrd(a,[lo,hi,lwork,overwrite_a])
		
		Wrapper for ``zgehrd``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		lo : input int, optional
		    Default: 0
		hi : input int, optional
		    Default: n-1
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(n,1)
		
		Returns
		-------
		ht : rank-2 array('D') with bounds (n,n) and a storage
		tau : rank-1 array('D') with bounds (n - 1)
		info : int
	**/
	static public function zgehrd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zgehrd_lwork(n,[lo,hi])
		
		Wrapper for ``zgehrd_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lo : input int, optional
		    Default: 0
		hi : input int, optional
		    Default: n-1
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zgehrd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lqr,x,info = zgels(a,b,[trans,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``zgels``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		b : input rank-2 array('D') with bounds (MAX(m,n),nrhs)
		
		Other Parameters
		----------------
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(MIN(m,n)+MAX(MIN(m,n),nrhs),1)
		
		Returns
		-------
		lqr : rank-2 array('D') with bounds (m,n) and a storage
		x : rank-2 array('D') with bounds (MAX(m,n),nrhs) and b storage
		info : int
	**/
	static public function zgels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zgels_lwork(m,n,nrhs,[trans])
		
		Wrapper for ``zgels_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		nrhs : input int
		
		Other Parameters
		----------------
		trans : input string(len=1), optional
		    Default: 'N'
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zgels_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,s,rank,info = zgelsd(a,b,lwork,size_rwork,size_iwork,[cond,overwrite_a,overwrite_b])
		
		Wrapper for ``zgelsd``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		b : input rank-2 array('D') with bounds (maxmn,nrhs)
		lwork : input int
		size_rwork : input int
		size_iwork : input int
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		cond : input float, optional
		    Default: -1.0
		
		Returns
		-------
		x : rank-2 array('D') with bounds (maxmn,nrhs) and b storage
		s : rank-1 array('d') with bounds (minmn)
		rank : int
		info : int
	**/
	static public function zgelsd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,rwork,iwork,info = zgelsd_lwork(m,n,nrhs,[cond,lwork])
		
		Wrapper for ``zgelsd_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		nrhs : input int
		
		Other Parameters
		----------------
		cond : input float, optional
		    Default: -1.0
		lwork : input int, optional
		    Default: -1
		
		Returns
		-------
		work : complex
		rwork : float
		iwork : int
		info : int
	**/
	static public function zgelsd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		v,x,s,rank,work,info = zgelss(a,b,[cond,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``zgelss``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		b : input rank-2 array('D') with bounds (maxmn,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		cond : input float, optional
		    Default: -1.0
		lwork : input int, optional
		    Default: max(2*minmn+MAX(maxmn,nrhs),1)
		
		Returns
		-------
		v : rank-2 array('D') with bounds (m,n) and a storage
		x : rank-2 array('D') with bounds (maxmn,nrhs) and b storage
		s : rank-1 array('d') with bounds (minmn)
		rank : int
		work : rank-1 array('D') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function zgelss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zgelss_lwork(m,n,nrhs,[cond,lwork])
		
		Wrapper for ``zgelss_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		nrhs : input int
		
		Other Parameters
		----------------
		cond : input float, optional
		    Default: -1.0
		lwork : input int, optional
		    Default: -1
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zgelss_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		v,x,j,rank,info = zgelsy(a,b,jptv,cond,lwork,[overwrite_a,overwrite_b])
		
		Wrapper for ``zgelsy``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		b : input rank-2 array('D') with bounds (maxmn,nrhs)
		jptv : input rank-1 array('i') with bounds (n)
		cond : input float
		lwork : input int
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		v : rank-2 array('D') with bounds (m,n) and a storage
		x : rank-2 array('D') with bounds (maxmn,nrhs) and b storage
		j : rank-1 array('i') with bounds (n) and jptv storage
		rank : int
		info : int
	**/
	static public function zgelsy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zgelsy_lwork(m,n,nrhs,cond,[lwork])
		
		Wrapper for ``zgelsy_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		nrhs : input int
		cond : input float
		
		Other Parameters
		----------------
		lwork : input int, optional
		    Default: -1
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zgelsy_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,info = zgemqrt(v,t,c,[side,trans,overwrite_c])
		
		Wrapper for ``zgemqrt``.
		
		Parameters
		----------
		v : input rank-2 array('D') with bounds ((side[0]=='L'?m:n),k)
		t : input rank-2 array('D') with bounds (nb,k)
		c : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('D') with bounds (m,n)
		info : int
	**/
	static public function zgemqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr,jpvt,tau,work,info = zgeqp3(a,[lwork,overwrite_a])
		
		Wrapper for ``zgeqp3``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*(n+1),1)
		
		Returns
		-------
		qr : rank-2 array('D') with bounds (m,n) and a storage
		jpvt : rank-1 array('i') with bounds (n)
		tau : rank-1 array('D') with bounds (MIN(m,n))
		work : rank-1 array('D') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function zgeqp3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr,tau,work,info = zgeqrf(a,[lwork,overwrite_a])
		
		Wrapper for ``zgeqrf``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		
		Returns
		-------
		qr : rank-2 array('D') with bounds (m,n) and a storage
		tau : rank-1 array('D') with bounds (MIN(m,n))
		work : rank-1 array('D') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function zgeqrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zgeqrf_lwork(m,n)
		
		Wrapper for ``zgeqrf_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zgeqrf_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr,tau,info = zgeqrfp(a,[lwork,overwrite_a])
		
		Wrapper for ``zgeqrfp``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(1, n)
		
		Returns
		-------
		qr : rank-2 array('D') with bounds (m,n) and a storage
		tau : rank-1 array('D') with bounds (MIN(m,n))
		info : int
	**/
	static public function zgeqrfp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zgeqrfp_lwork(m,n)
		
		Wrapper for ``zgeqrfp_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zgeqrfp_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,t,info = zgeqrt(nb,a,[overwrite_a])
		
		Wrapper for ``zgeqrt``.
		
		Parameters
		----------
		nb : input int
		a : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('D') with bounds (m,n)
		t : rank-2 array('D') with bounds (nb,MIN(m,n))
		info : int
	**/
	static public function zgeqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr,tau,work,info = zgerqf(a,[lwork,overwrite_a])
		
		Wrapper for ``zgerqf``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*m,1)
		
		Returns
		-------
		qr : rank-2 array('D') with bounds (m,n) and a storage
		tau : rank-1 array('D') with bounds (MIN(m,n))
		work : rank-1 array('D') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function zgerqf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,scale = zgesc2(lu,rhs,ipiv,jpiv,[overwrite_rhs])
		
		Wrapper for ``zgesc2``.
		
		Parameters
		----------
		lu : input rank-2 array('D') with bounds (n,n)
		rhs : input rank-1 array('D') with bounds (n)
		ipiv : input rank-1 array('i') with bounds (n)
		jpiv : input rank-1 array('i') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_rhs : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-1 array('D') with bounds (n) and rhs storage
		scale : float
	**/
	static public function zgesc2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		u,s,vt,info = zgesdd(a,[compute_uv,full_matrices,lwork,overwrite_a])
		
		Wrapper for ``zgesdd``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		compute_uv : input int, optional
		    Default: 1
		full_matrices : input int, optional
		    Default: 1
		lwork : input int, optional
		    Default: max((compute_uv?2*minmn*minmn+MAX(m,n)+2*minmn:2*minmn+MAX(m,n)),1)
		
		Returns
		-------
		u : rank-2 array('D') with bounds (u0,u1)
		s : rank-1 array('d') with bounds (minmn)
		vt : rank-2 array('D') with bounds (vt0,vt1)
		info : int
	**/
	static public function zgesdd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zgesdd_lwork(m,n,[compute_uv,full_matrices])
		
		Wrapper for ``zgesdd_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Other Parameters
		----------------
		compute_uv : input int, optional
		    Default: 1
		full_matrices : input int, optional
		    Default: 1
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zgesdd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lu,piv,x,info = zgesv(a,b,[overwrite_a,overwrite_b])
		
		Wrapper for ``zgesv``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		lu : rank-2 array('D') with bounds (n,n) and a storage
		piv : rank-1 array('i') with bounds (n)
		x : rank-2 array('D') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function zgesv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		u,s,vt,info = zgesvd(a,[compute_uv,full_matrices,lwork,overwrite_a])
		
		Wrapper for ``zgesvd``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		compute_uv : input int, optional
		    Default: 1
		full_matrices : input int, optional
		    Default: 1
		lwork : input int, optional
		    Default: MAX(2*minmn+MAX(m,n),1)
		
		Returns
		-------
		u : rank-2 array('D') with bounds (u0,u1)
		s : rank-1 array('d') with bounds (minmn)
		vt : rank-2 array('D') with bounds (vt0,vt1)
		info : int
	**/
	static public function zgesvd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zgesvd_lwork(m,n,[compute_uv,full_matrices])
		
		Wrapper for ``zgesvd_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Other Parameters
		----------------
		compute_uv : input int, optional
		    Default: 1
		full_matrices : input int, optional
		    Default: 1
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zgesvd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		as,lu,ipiv,equed,rs,cs,bs,x,rcond,ferr,berr,info = zgesvx(a,b,[fact,trans,af,ipiv,equed,r,c,overwrite_a,overwrite_b])
		
		Wrapper for ``zgesvx``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		fact : input string(len=1), optional
		    Default: 'E'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_a : input int, optional
		    Default: 0
		af : input rank-2 array('D') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		equed : input string(len=1), optional
		    Default: 'B'
		r : input rank-1 array('d') with bounds (n)
		c : input rank-1 array('d') with bounds (n)
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		as : rank-2 array('D') with bounds (n,n) and a storage
		lu : rank-2 array('D') with bounds (n,n) and af storage
		ipiv : rank-1 array('i') with bounds (n)
		equed : string(len=1)
		rs : rank-1 array('d') with bounds (n) and r storage
		cs : rank-1 array('d') with bounds (n) and c storage
		bs : rank-2 array('D') with bounds (n,nrhs) and b storage
		x : rank-2 array('D') with bounds (n,nrhs)
		rcond : float
		ferr : rank-1 array('d') with bounds (nrhs)
		berr : rank-1 array('d') with bounds (nrhs)
		info : int
	**/
	static public function zgesvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lu,ipiv,jpiv,info = zgetc2(a,[overwrite_a])
		
		Wrapper for ``zgetc2``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		lu : rank-2 array('D') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		jpiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function zgetc2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lu,piv,info = zgetrf(a,[overwrite_a])
		
		Wrapper for ``zgetrf``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		lu : rank-2 array('D') with bounds (m,n) and a storage
		piv : rank-1 array('i') with bounds (MIN(m,n))
		info : int
	**/
	static public function zgetrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inv_a,info = zgetri(lu,piv,[lwork,overwrite_lu])
		
		Wrapper for ``zgetri``.
		
		Parameters
		----------
		lu : input rank-2 array('D') with bounds (n,n)
		piv : input rank-1 array('i') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_lu : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		
		Returns
		-------
		inv_a : rank-2 array('D') with bounds (n,n) and lu storage
		info : int
	**/
	static public function zgetri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zgetri_lwork(n)
		
		Wrapper for ``zgetri_lwork``.
		
		Parameters
		----------
		n : input int
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zgetri_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = zgetrs(lu,piv,b,[trans,overwrite_b])
		
		Wrapper for ``zgetrs``.
		
		Parameters
		----------
		lu : input rank-2 array('D') with bounds (n,n)
		piv : input rank-1 array('i') with bounds (n)
		b : input rank-2 array('D') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('D') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function zgetrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,b,sdim,alpha,beta,vsl,vsr,work,info = zgges(zselect,a,b,[jobvsl,jobvsr,sort_t,ldvsl,ldvsr,lwork,zselect_extra_args,overwrite_a,overwrite_b])
		
		Wrapper for ``zgges``.
		
		Parameters
		----------
		zselect : call-back function
		a : input rank-2 array('D') with bounds (lda,n)
		b : input rank-2 array('D') with bounds (ldb,n)
		
		Other Parameters
		----------------
		jobvsl : input int, optional
		    Default: 1
		jobvsr : input int, optional
		    Default: 1
		sort_t : input int, optional
		    Default: 0
		zselect_extra_args : input tuple, optional
		    Default: ()
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		ldvsl : input int, optional
		    Default: ((jobvsl==1)?n:1)
		ldvsr : input int, optional
		    Default: ((jobvsr==1)?n:1)
		lwork : input int, optional
		    Default: max(2*n,1)
		
		Returns
		-------
		a : rank-2 array('D') with bounds (lda,n)
		b : rank-2 array('D') with bounds (ldb,n)
		sdim : int
		alpha : rank-1 array('D') with bounds (n)
		beta : rank-1 array('D') with bounds (n)
		vsl : rank-2 array('D') with bounds (ldvsl,n)
		vsr : rank-2 array('D') with bounds (ldvsr,n)
		work : rank-1 array('D') with bounds (MAX(lwork,1))
		info : int
		
		Notes
		-----
		Call-back functions::
		
		  def zselect(alpha,beta): return zselect
		  Required arguments:
		    alpha : input complex
		    beta : input complex
		  Return objects:
		    zselect : int
	**/
	static public function zgges(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		alpha,beta,vl,vr,work,info = zggev(a,b,[compute_vl,compute_vr,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``zggev``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_vl : input int, optional
		    Default: 1
		compute_vr : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(2*n,1)
		
		Returns
		-------
		alpha : rank-1 array('D') with bounds (n)
		beta : rank-1 array('D') with bounds (n)
		vl : rank-2 array('D') with bounds (ldvl,n)
		vr : rank-2 array('D') with bounds (ldvr,n)
		work : rank-1 array('D') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function zggev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		t,r,res,x,info = zgglse(a,b,c,d,[lwork,overwrite_a,overwrite_b,overwrite_c,overwrite_d])
		
		Wrapper for ``zgglse``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		b : input rank-2 array('D') with bounds (p,n)
		c : input rank-1 array('D') with bounds (m)
		d : input rank-1 array('D') with bounds (p)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		overwrite_c : input int, optional
		    Default: 0
		overwrite_d : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(m+n+p,1)
		
		Returns
		-------
		t : rank-2 array('D') with bounds (m,n) and a storage
		r : rank-2 array('D') with bounds (p,n) and b storage
		res : rank-1 array('D') with bounds (m) and c storage
		x : rank-1 array('D') with bounds (n)
		info : int
	**/
	static public function zgglse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zgglse_lwork(m,n,p)
		
		Wrapper for ``zgglse_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		p : input int
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zgglse_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		du2,d,du,x,info = zgtsv(dl,d,du,b,[overwrite_dl,overwrite_d,overwrite_du,overwrite_b])
		
		Wrapper for ``zgtsv``.
		
		Parameters
		----------
		dl : input rank-1 array('D') with bounds (n - 1)
		d : input rank-1 array('D') with bounds (n)
		du : input rank-1 array('D') with bounds (n - 1)
		b : input rank-2 array('D') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_dl : input int, optional
		    Default: 0
		overwrite_d : input int, optional
		    Default: 0
		overwrite_du : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		du2 : rank-1 array('D') with bounds (n - 1) and dl storage
		d : rank-1 array('D') with bounds (n)
		du : rank-1 array('D') with bounds (n - 1)
		x : rank-2 array('D') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function zgtsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dlf,df,duf,du2,ipiv,x,rcond,ferr,berr,info = zgtsvx(dl,d,du,b,[fact,trans,dlf,df,duf,du2,ipiv])
		
		Wrapper for ``zgtsvx``.
		
		Parameters
		----------
		dl : input rank-1 array('D') with bounds (MAX(0, n-1))
		d : input rank-1 array('D') with bounds (n)
		du : input rank-1 array('D') with bounds (MAX(0, n-1))
		b : input rank-2 array('D') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		fact : input string(len=1), optional
		    Default: 'N'
		trans : input string(len=1), optional
		    Default: 'N'
		dlf : input rank-1 array('D') with bounds (MAX(0,n-1))
		df : input rank-1 array('D') with bounds (n)
		duf : input rank-1 array('D') with bounds (MAX(0,n-1))
		du2 : input rank-1 array('D') with bounds (MAX(0,n-2))
		ipiv : input rank-1 array('i') with bounds (n)
		
		Returns
		-------
		dlf : rank-1 array('D') with bounds (MAX(0,n-1))
		df : rank-1 array('D') with bounds (n)
		duf : rank-1 array('D') with bounds (MAX(0,n-1))
		du2 : rank-1 array('D') with bounds (MAX(0,n-2))
		ipiv : rank-1 array('i') with bounds (n)
		x : rank-2 array('D') with bounds (ldx,nrhs)
		rcond : float
		ferr : rank-1 array('d') with bounds (nrhs)
		berr : rank-1 array('d') with bounds (nrhs)
		info : int
	**/
	static public function zgtsvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dl,d,du,du2,ipiv,info = zgttrf(dl,d,du,[overwrite_dl,overwrite_d,overwrite_du])
		
		Wrapper for ``zgttrf``.
		
		Parameters
		----------
		dl : input rank-1 array('D') with bounds (n - 1)
		d : input rank-1 array('D') with bounds (n)
		du : input rank-1 array('D') with bounds (n - 1)
		
		Other Parameters
		----------------
		overwrite_dl : input int, optional
		    Default: 0
		overwrite_d : input int, optional
		    Default: 0
		overwrite_du : input int, optional
		    Default: 0
		
		Returns
		-------
		dl : rank-1 array('D') with bounds (n - 1)
		d : rank-1 array('D') with bounds (n)
		du : rank-1 array('D') with bounds (n - 1)
		du2 : rank-1 array('D') with bounds (n - 2)
		ipiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function zgttrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = zgttrs(dl,d,du,du2,ipiv,b,[trans,overwrite_b])
		
		Wrapper for ``zgttrs``.
		
		Parameters
		----------
		dl : input rank-1 array('D') with bounds (n - 1)
		d : input rank-1 array('D') with bounds (n)
		du : input rank-1 array('D') with bounds (n - 1)
		du2 : input rank-1 array('D') with bounds (n - 2)
		ipiv : input rank-1 array('i') with bounds (n)
		b : input rank-2 array('D') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('D') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function zgttrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,info = zhbevd(ab,[compute_v,lower,ldab,lrwork,liwork,overwrite_ab])
		
		Wrapper for ``zhbevd``.
		
		Parameters
		----------
		ab : input rank-2 array('D') with bounds (ldab,n)
		
		Other Parameters
		----------------
		overwrite_ab : input int, optional
		    Default: 1
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		lrwork : input int, optional
		    Default: (compute_v?1+5*n+2*n*n:n)
		liwork : input int, optional
		    Default: (compute_v?3+5*n:1)
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		z : rank-2 array('D') with bounds (ldz,ldz)
		info : int
	**/
	static public function zhbevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,m,ifail,info = zhbevx(ab,vl,vu,il,iu,[ldab,compute_v,range,lower,abstol,mmax,overwrite_ab])
		
		Wrapper for ``zhbevx``.
		
		Parameters
		----------
		ab : input rank-2 array('D') with bounds (ldab,n)
		vl : input float
		vu : input float
		il : input int
		iu : input int
		
		Other Parameters
		----------------
		overwrite_ab : input int, optional
		    Default: 1
		ldab : input int, optional
		    Default: shape(ab,0)
		compute_v : input int, optional
		    Default: 1
		range : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		abstol : input float, optional
		    Default: 0.0
		mmax : input int, optional
		    Default: (compute_v?(range==2?(iu-il+1):n):1)
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		z : rank-2 array('D') with bounds (ldz,mmax)
		m : int
		ifail : rank-1 array('i') with bounds ((compute_v?n:1))
		info : int
	**/
	static public function zhbevx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = zhecon(a,ipiv,anorm,[lower])
		
		Wrapper for ``zhecon``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		anorm : input float
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function zhecon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		s,scond,amax,info = zheequb(a,[lower])
		
		Wrapper for ``zheequb``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (lda,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		s : rank-1 array('d') with bounds (n)
		scond : float
		amax : float
		info : int
	**/
	static public function zheequb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,v,info = zheev(a,[compute_v,lower,lwork,overwrite_a])
		
		Wrapper for ``zheev``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(2*n-1,1)
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		v : rank-2 array('D') with bounds (n,n) and a storage
		info : int
	**/
	static public function zheev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zheev_lwork(n,[lower])
		
		Wrapper for ``zheev_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zheev_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,v,info = zheevd(a,[compute_v,lower,lwork,liwork,lrwork,overwrite_a])
		
		Wrapper for ``zheevd``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max((compute_v?2*n+n*n:n+1),1)
		liwork : input int, optional
		    Default: (compute_v?3+5*n:1)
		lrwork : input int, optional
		    Default: (compute_v?1+5*n+2*n*n:n)
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		v : rank-2 array('D') with bounds (n,n) and a storage
		info : int
	**/
	static public function zheevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,iwork,rwork,info = zheevd_lwork(n,[compute_v,lower])
		
		Wrapper for ``zheevd_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		iwork : int
		rwork : float
		info : int
	**/
	static public function zheevd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,m,isuppz,info = zheevr(a,[compute_v,range,lower,vl,vu,il,iu,abstol,lwork,lrwork,liwork,overwrite_a])
		
		Wrapper for ``zheevr``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds ``(n,n)``
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default ``1``
		range : input string(len=1), optional
		    Default ``'A'``
		lower : input int, optional
		    Default ``0``
		overwrite_a : input int, optional
		    Default ``0``
		vl : input float, optional
		    Default ``0.0``
		vu : input float, optional
		    Default ``1.0``
		il : input int, optional
		    Default ``1``
		iu : input int, optional
		    Default ``n``
		abstol : input float, optional
		    Default ``0.0``
		lwork : input int, optional
		    Default ``max(2*n,1)``
		lrwork : input int, optional
		    Default ``max(24*n,1)``
		liwork : input int, optional
		    Default ``max(1,10*n)``
		
		Returns
		-------
		w : rank-1 array('d') with bounds ``(n)``
		z : rank-2 array('D') with bounds ``((compute_v?MAX(0,n):0),(compute_v?(*range=='I'?iu-il+1:MAX(1,n)):0))``
		m : int
		isuppz : rank-1 array('i') with bounds ``(2*max(1,n))``
		info : int
	**/
	static public function zheevr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,rwork,iwork,info = zheevr_lwork(n,[lower])
		
		Wrapper for ``zheevr_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		rwork : float
		iwork : int
		info : int
	**/
	static public function zheevr_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,m,ifail,info = zheevx(a,[compute_v,range,lower,vl,vu,il,iu,abstol,lwork,overwrite_a])
		
		Wrapper for ``zheevx``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds ``(n,n)``
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default ``1``
		range : input string(len=1), optional
		    Default ``'A'``
		lower : input int, optional
		    Default ``0``
		overwrite_a : input int, optional
		    Default ``0``
		vl : input float, optional
		    Default ``0.0``
		vu : input float, optional
		    Default ``1.0``
		il : input int, optional
		    Default ``1``
		iu : input int, optional
		    Default ``n``
		abstol : input float, optional
		    Default ``0.0``
		lwork : input int, optional
		    Default ``max(2*n,1)``
		
		Returns
		-------
		w : rank-1 array('d') with bounds ``(n)``
		z : rank-2 array('D') with bounds ``((compute_v*n),(compute_v?(*range=='I'?iu-il+1:MAX(1,n)):0))``
		m : int
		ifail : rank-1 array('i') with bounds ``(compute_v*n)``
		info : int
	**/
	static public function zheevx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zheevx_lwork(n,[lower])
		
		Wrapper for ``zheevx_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zheevx_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,info = zhegst(a,b,[itype,lower,overwrite_a])
		
		Wrapper for ``zhegst``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		itype : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('D') with bounds (n,n) and a storage
		info : int
	**/
	static public function zhegst(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,v,info = zhegv(a,b,[itype,jobz,uplo,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``zhegv``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		itype : input int, optional
		    Default: 1
		jobz : input string(len=1), optional
		    Default: 'V'
		uplo : input string(len=1), optional
		    Default: 'L'
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(2*n-1,1)
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		v : rank-2 array('D') with bounds (n,n) and a storage
		info : int
	**/
	static public function zhegv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zhegv_lwork(n,[uplo])
		
		Wrapper for ``zhegv_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'L'
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zhegv_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,v,info = zhegvd(a,b,[itype,jobz,uplo,lwork,lrwork,liwork,overwrite_a,overwrite_b])
		
		Wrapper for ``zhegvd``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds ``(n,n)``
		b : input rank-2 array('D') with bounds ``(n,n)``
		
		Other Parameters
		----------------
		itype : input int, optional
		    Default ``1``
		jobz : input string(len=1), optional
		    Default ``'V'``
		uplo : input string(len=1), optional
		    Default ``'L'``
		overwrite_a : input int, optional
		    Default ``0``
		overwrite_b : input int, optional
		    Default ``0``
		lwork : input int, optional
		    Default ``(*jobz=='N'?n+1:n*(n+2))``
		lrwork : input int, optional
		    Default ``max((*jobz=='N'?n:2*n*n+5*n+1),1)``
		liwork : input int, optional
		    Default ``(*jobz=='N'?1:5*n+3)``
		
		Returns
		-------
		w : rank-1 array('d') with bounds ``(n)``
		v : rank-2 array('D') with bounds ``(n,n)`` with ``a`` storage
		info : int
	**/
	static public function zhegvd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,m,ifail,info = zhegvx(a,b,[itype,jobz,range,uplo,vl,vu,il,iu,abstol,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``zhegvx``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		itype : input int, optional
		    Default: 1
		jobz : input string(len=1), optional
		    Default: 'V'
		range : input string(len=1), optional
		    Default: 'A'
		uplo : input string(len=1), optional
		    Default: 'L'
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		vl : input float, optional
		    Default: 0.0
		vu : input float, optional
		    Default: 1.0
		il : input int, optional
		    Default: 1
		iu : input int, optional
		    Default: n
		abstol : input float, optional
		    Default: 0.0
		lwork : input int, optional
		    Default: max(2*n,1)
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		z : rank-2 array('D') with bounds ((jobz[0]=='V'?MAX(0,n):0),(jobz[0]=='V'?(range[0]=='I'?iu-il+1:MAX(1,n)):0))
		m : int
		ifail : rank-1 array('i') with bounds ((jobz[0]=='N'?0:n))
		info : int
	**/
	static public function zhegvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zhegvx_lwork(n,[uplo])
		
		Wrapper for ``zhegvx_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'L'
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zhegvx_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uduh,ipiv,x,info = zhesv(a,b,[lwork,lower,overwrite_a,overwrite_b])
		
		Wrapper for ``zhesv``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(n,1)
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		uduh : rank-2 array('D') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		x : rank-2 array('D') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function zhesv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zhesv_lwork(n,[lower])
		
		Wrapper for ``zhesv_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zhesv_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uduh,ipiv,x,rcond,ferr,berr,info = zhesvx(a,b,[af,ipiv,lwork,factored,lower,overwrite_a,overwrite_b])
		
		Wrapper for ``zhesvx``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		af : input rank-2 array('D') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(2*n,1)
		factored : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		uduh : rank-2 array('D') with bounds (n,n) and af storage
		ipiv : rank-1 array('i') with bounds (n)
		x : rank-2 array('D') with bounds (n,nrhs)
		rcond : float
		ferr : rank-1 array('d') with bounds (nrhs)
		berr : rank-1 array('d') with bounds (nrhs)
		info : int
	**/
	static public function zhesvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zhesvx_lwork(n,[lower])
		
		Wrapper for ``zhesvx_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zhesvx_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,d,e,tau,info = zhetrd(a,[lower,lwork,overwrite_a])
		
		Wrapper for ``zhetrd``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (lda,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(n,1)
		
		Returns
		-------
		c : rank-2 array('D') with bounds (lda,n) and a storage
		d : rank-1 array('d') with bounds (n)
		e : rank-1 array('d') with bounds (n - 1)
		tau : rank-1 array('D') with bounds (n - 1)
		info : int
	**/
	static public function zhetrd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zhetrd_lwork(n,[lower])
		
		Wrapper for ``zhetrd_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zhetrd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ldu,ipiv,info = zhetrf(a,[lower,lwork,overwrite_a])
		
		Wrapper for ``zhetrf``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(n,1)
		
		Returns
		-------
		ldu : rank-2 array('D') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function zhetrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zhetrf_lwork(n,[lower])
		
		Wrapper for ``zhetrf_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zhetrf_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cout = zhfrk(n,k,alpha,a,beta,c,[transr,uplo,trans,overwrite_c])
		
		Wrapper for ``zhfrk``.
		
		Parameters
		----------
		n : input int
		k : input int
		alpha : input float
		a : input rank-2 array('D') with bounds (lda,ka)
		beta : input float
		c : input rank-1 array('D') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		cout : rank-1 array('D') with bounds (nt) and c storage
	**/
	static public function zhfrk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		n2 = zlange(norm,a)
		
		Wrapper for ``zlange``.
		
		Parameters
		----------
		norm : input string(len=1)
		a : input rank-2 array('D') with bounds (m,n)
		
		Returns
		-------
		n2 : float
	**/
	static public function zlange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = zlarf(v,tau,c,work,[side,incv,overwrite_c])
		
		Wrapper for ``zlarf``.
		
		Parameters
		----------
		v : input rank-1 array('D') with bounds ((side[0]=='L'?(1 + (m-1)*abs(incv)):(1 + (n-1)*abs(incv))))
		tau : input complex
		c : input rank-2 array('D') with bounds (m,n)
		work : input rank-1 array('D') with bounds (lwork)
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		incv : input int, optional
		    Default: 1
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('D') with bounds (m,n)
	**/
	static public function zlarf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		alpha,x,tau = zlarfg(n,alpha,x,[incx,overwrite_x])
		
		Wrapper for ``zlarfg``.
		
		Parameters
		----------
		n : input int
		alpha : input complex
		x : input rank-1 array('D') with bounds (lx)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		alpha : complex
		x : rank-1 array('D') with bounds (lx)
		tau : complex
	**/
	static public function zlarfg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cs,sn,r = zlartg(f,g)
		
		Wrapper for ``zlartg``.
		
		Parameters
		----------
		f : input complex
		g : input complex
		
		Returns
		-------
		cs : float
		sn : complex
		r : complex
	**/
	static public function zlartg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = zlaswp(a,piv,[k1,k2,off,inc,overwrite_a])
		
		Wrapper for ``zlaswp``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (nrows,n)
		piv : input rank-1 array('i') with bounds (npiv)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		k1 : input int, optional
		    Default: 0
		k2 : input int, optional
		    Default: npiv-1
		off : input int, optional
		    Default: 0
		inc : input int, optional
		    Default: 1
		
		Returns
		-------
		a : rank-2 array('D') with bounds (nrows,n)
	**/
	static public function zlaswp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,info = zlauum(c,[lower,overwrite_c])
		
		Wrapper for ``zlauum``.
		
		Parameters
		----------
		c : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_c : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('D') with bounds (n,n) and c storage
		info : int
	**/
	static public function zlauum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,x,info = zpbsv(ab,b,[lower,ldab,overwrite_ab,overwrite_b])
		
		Wrapper for ``zpbsv``.
		
		Parameters
		----------
		ab : input rank-2 array('D') with bounds (ldab,n)
		b : input rank-2 array('D') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_ab : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('D') with bounds (ldab,n) and ab storage
		x : rank-2 array('D') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function zpbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,info = zpbtrf(ab,[lower,ldab,overwrite_ab])
		
		Wrapper for ``zpbtrf``.
		
		Parameters
		----------
		ab : input rank-2 array('D') with bounds (ldab,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_ab : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		
		Returns
		-------
		c : rank-2 array('D') with bounds (ldab,n) and ab storage
		info : int
	**/
	static public function zpbtrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = zpbtrs(ab,b,[lower,ldab,overwrite_b])
		
		Wrapper for ``zpbtrs``.
		
		Parameters
		----------
		ab : input rank-2 array('D') with bounds (ldab,n)
		b : input rank-2 array('D') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		ldab : input int, optional
		    Default: shape(ab,0)
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('D') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function zpbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		achol,info = zpftrf(n,a,[transr,uplo,overwrite_a])
		
		Wrapper for ``zpftrf``.
		
		Parameters
		----------
		n : input int
		a : input rank-1 array('D') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		achol : rank-1 array('D') with bounds (nt) and a storage
		info : int
	**/
	static public function zpftrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ainv,info = zpftri(n,a,[transr,uplo,overwrite_a])
		
		Wrapper for ``zpftri``.
		
		Parameters
		----------
		n : input int
		a : input rank-1 array('D') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		ainv : rank-1 array('D') with bounds (nt) and a storage
		info : int
	**/
	static public function zpftri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = zpftrs(n,a,b,[transr,uplo,overwrite_b])
		
		Wrapper for ``zpftrs``.
		
		Parameters
		----------
		n : input int
		a : input rank-1 array('D') with bounds (nt)
		b : input rank-2 array('D') with bounds (ldb,nhrs)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('D') with bounds (ldb,nhrs) and b storage
		info : int
	**/
	static public function zpftrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = zpocon(a,anorm,[uplo])
		
		Wrapper for ``zpocon``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		anorm : input float
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function zpocon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,x,info = zposv(a,b,[lower,overwrite_a,overwrite_b])
		
		Wrapper for ``zposv``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('D') with bounds (n,n) and a storage
		x : rank-2 array('D') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function zposv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a_s,lu,equed,s,b_s,x,rcond,ferr,berr,info = zposvx(a,b,[fact,af,equed,s,lower,overwrite_a,overwrite_b])
		
		Wrapper for ``zposvx``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		fact : input string(len=1), optional
		    Default: 'E'
		overwrite_a : input int, optional
		    Default: 0
		af : input rank-2 array('D') with bounds (n,n)
		equed : input string(len=1), optional
		    Default: 'Y'
		s : input rank-1 array('d') with bounds (n)
		overwrite_b : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		a_s : rank-2 array('D') with bounds (n,n) and a storage
		lu : rank-2 array('D') with bounds (n,n) and af storage
		equed : string(len=1)
		s : rank-1 array('d') with bounds (n)
		b_s : rank-2 array('D') with bounds (n,nrhs) and b storage
		x : rank-2 array('D') with bounds (n,nrhs)
		rcond : float
		ferr : rank-1 array('d') with bounds (nrhs)
		berr : rank-1 array('d') with bounds (nrhs)
		info : int
	**/
	static public function zposvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,info = zpotrf(a,[lower,clean,overwrite_a])
		
		Wrapper for ``zpotrf``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		clean : input int, optional
		    Default: 1
		
		Returns
		-------
		c : rank-2 array('D') with bounds (n,n) and a storage
		info : int
	**/
	static public function zpotrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inv_a,info = zpotri(c,[lower,overwrite_c])
		
		Wrapper for ``zpotri``.
		
		Parameters
		----------
		c : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_c : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		inv_a : rank-2 array('D') with bounds (n,n) and c storage
		info : int
	**/
	static public function zpotri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = zpotrs(c,b,[lower,overwrite_b])
		
		Wrapper for ``zpotrs``.
		
		Parameters
		----------
		c : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('D') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function zpotrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = zppcon(n,ap,anorm,[lower])
		
		Wrapper for ``zppcon``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('D') with bounds (L)
		anorm : input float
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function zppcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = zppsv(n,ap,b,[lower,overwrite_b])
		
		Wrapper for ``zppsv``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('D') with bounds (L)
		b : input rank-2 array('D') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('D') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function zppsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ul,info = zpptrf(n,ap,[lower,overwrite_ap])
		
		Wrapper for ``zpptrf``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('D') with bounds (L)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		
		Returns
		-------
		ul : rank-1 array('D') with bounds (L) and ap storage
		info : int
	**/
	static public function zpptrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uli,info = zpptri(n,ap,[lower,overwrite_ap])
		
		Wrapper for ``zpptri``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('D') with bounds (L)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		
		Returns
		-------
		uli : rank-1 array('D') with bounds (L) and ap storage
		info : int
	**/
	static public function zpptri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = zpptrs(n,ap,b,[lower,overwrite_b])
		
		Wrapper for ``zpptrs``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('D') with bounds (L)
		b : input rank-2 array('D') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('D') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function zpptrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,piv,rank_c,info = zpstf2(a,[tol,lower,overwrite_a])
		
		Wrapper for ``zpstf2``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		tol : input float, optional
		    Default: -1.0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('D') with bounds (n,n) and a storage
		piv : rank-1 array('i') with bounds (n)
		rank_c : int
		info : int
	**/
	static public function zpstf2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,piv,rank_c,info = zpstrf(a,[tol,lower,overwrite_a])
		
		Wrapper for ``zpstrf``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		tol : input float, optional
		    Default: -1.0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('D') with bounds (n,n) and a storage
		piv : rank-1 array('i') with bounds (n)
		rank_c : int
		info : int
	**/
	static public function zpstrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		d,e,z,info = zpteqr(d,e,z,[compute_z,overwrite_d,overwrite_e,overwrite_z])
		
		Wrapper for ``zpteqr``.
		
		Parameters
		----------
		d : input rank-1 array('d') with bounds (n)
		e : input rank-1 array('d') with bounds ((n>0?n-1:0))
		z : input rank-2 array('D') with bounds ((compute_z==0?shape(z, 0):max(1,n)),(compute_z==0?shape(z, 1):n))
		
		Other Parameters
		----------------
		compute_z : input int, optional
		    Default: 0
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		overwrite_z : input int, optional
		    Default: 0
		
		Returns
		-------
		d : rank-1 array('d') with bounds (n)
		e : rank-1 array('d') with bounds ((n>0?n-1:0))
		z : rank-2 array('D') with bounds ((compute_z==0?shape(z, 0):max(1,n)),(compute_z==0?shape(z, 1):n))
		info : int
	**/
	static public function zpteqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		d,du,x,info = zptsv(d,e,b,[overwrite_d,overwrite_e,overwrite_b])
		
		Wrapper for ``zptsv``.
		
		Parameters
		----------
		d : input rank-1 array('d') with bounds (n)
		e : input rank-1 array('D') with bounds (n - 1)
		b : input rank-2 array('D') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		d : rank-1 array('d') with bounds (n)
		du : rank-1 array('D') with bounds (n - 1) and e storage
		x : rank-2 array('D') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function zptsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		df,ef,x,rcond,ferr,berr,info = zptsvx(d,e,b,[fact,df,ef])
		
		Wrapper for ``zptsvx``.
		
		Parameters
		----------
		d : input rank-1 array('d') with bounds (n)
		e : input rank-1 array('D') with bounds (max(0, n-1))
		b : input rank-2 array('D') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		fact : input string(len=1), optional
		    Default: 'N'
		df : input rank-1 array('d') with bounds (n)
		ef : input rank-1 array('D') with bounds (max(0, n-1))
		
		Returns
		-------
		df : rank-1 array('d') with bounds (n)
		ef : rank-1 array('D') with bounds (max(0, n-1))
		x : rank-2 array('D') with bounds (ldx,nrhs)
		rcond : float
		ferr : rank-1 array('d') with bounds (nrhs)
		berr : rank-1 array('d') with bounds (nrhs)
		info : int
	**/
	static public function zptsvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		d,e,info = zpttrf(d,e,[overwrite_d,overwrite_e])
		
		Wrapper for ``zpttrf``.
		
		Parameters
		----------
		d : input rank-1 array('d') with bounds (n)
		e : input rank-1 array('D') with bounds ((n>0?n-1:0))
		
		Other Parameters
		----------------
		overwrite_d : input int, optional
		    Default: 0
		overwrite_e : input int, optional
		    Default: 0
		
		Returns
		-------
		d : rank-1 array('d') with bounds (n)
		e : rank-1 array('D') with bounds ((n>0?n-1:0))
		info : int
	**/
	static public function zpttrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = zpttrs(d,e,b,[lower,overwrite_b])
		
		Wrapper for ``zpttrs``.
		
		Parameters
		----------
		d : input rank-1 array('d') with bounds (n)
		e : input rank-1 array('D') with bounds ((n>0?n-1:0))
		b : input rank-2 array('D') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('D') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function zpttrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,y = zrot(x,y,c,s,[n,offx,incx,offy,incy,overwrite_x,overwrite_y])
		
		Wrapper for ``zrot``.
		
		Parameters
		----------
		x : input rank-1 array('D') with bounds (lx)
		y : input rank-1 array('D') with bounds (ly)
		c : input float
		s : input complex
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (lx-1-offx)/abs(incx)+1
		overwrite_x : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		overwrite_y : input int, optional
		    Default: 0
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('D') with bounds (lx)
		y : rank-1 array('D') with bounds (ly)
	**/
	static public function zrot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcond,info = zsycon(a,ipiv,anorm,[lower])
		
		Wrapper for ``zsycon``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		anorm : input float
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		rcond : float
		info : int
	**/
	static public function zsycon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,e,info = zsyconv(a,ipiv,[lower,way,overwrite_a])
		
		Wrapper for ``zsyconv``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		way : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('D') with bounds (n,n)
		e : rank-1 array('D') with bounds (n)
		info : int
	**/
	static public function zsyconv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		s,scond,amax,info = zsyequb(a,[lower])
		
		Wrapper for ``zsyequb``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (lda,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		s : rank-1 array('d') with bounds (n)
		scond : float
		amax : float
		info : int
	**/
	static public function zsyequb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		udut,ipiv,x,info = zsysv(a,b,[lwork,lower,overwrite_a,overwrite_b])
		
		Wrapper for ``zsysv``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(n,1)
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		udut : rank-2 array('D') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		x : rank-2 array('D') with bounds (n,nrhs) and b storage
		info : int
	**/
	static public function zsysv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zsysv_lwork(n,[lower])
		
		Wrapper for ``zsysv_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zsysv_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a_s,udut,ipiv,b_s,x,rcond,ferr,berr,info = zsysvx(a,b,[af,ipiv,lwork,factored,lower,overwrite_a,overwrite_b])
		
		Wrapper for ``zsysvx``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (n,nrhs)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		af : input rank-2 array('D') with bounds (n,n)
		ipiv : input rank-1 array('i') with bounds (n)
		overwrite_b : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		factored : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		a_s : rank-2 array('D') with bounds (n,n) and a storage
		udut : rank-2 array('D') with bounds (n,n) and af storage
		ipiv : rank-1 array('i') with bounds (n)
		b_s : rank-2 array('D') with bounds (n,nrhs) and b storage
		x : rank-2 array('D') with bounds (n,nrhs)
		rcond : float
		ferr : rank-1 array('d') with bounds (nrhs)
		berr : rank-1 array('d') with bounds (nrhs)
		info : int
	**/
	static public function zsysvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zsysvx_lwork(n,[lower])
		
		Wrapper for ``zsysvx_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zsysvx_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ldu,ipiv,info = zsytf2(a,[lower,overwrite_a])
		
		Wrapper for ``zsytf2``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		ldu : rank-2 array('D') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function zsytf2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ldu,ipiv,info = zsytrf(a,[lower,lwork,overwrite_a])
		
		Wrapper for ``zsytrf``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(n,1)
		
		Returns
		-------
		ldu : rank-2 array('D') with bounds (n,n) and a storage
		ipiv : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function zsytrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zsytrf_lwork(n,[lower])
		
		Wrapper for ``zsytrf_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zsytrf_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = ztbtrs(ab,b,[uplo,trans,diag,overwrite_b])
		
		Wrapper for ``ztbtrs``.
		
		Parameters
		----------
		ab : input rank-2 array('D') with bounds (ldab,n)
		b : input rank-2 array('D') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'U'
		trans : input string(len=1), optional
		    Default: 'N'
		diag : input string(len=1), optional
		    Default: 'N'
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('D') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function ztbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = ztfsm(alpha,a,b,[transr,side,uplo,trans,diag,overwrite_b])
		
		Wrapper for ``ztfsm``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-1 array('D') with bounds (nt)
		b : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		side : input string(len=1), optional
		    Default: 'L'
		uplo : input string(len=1), optional
		    Default: 'U'
		trans : input string(len=1), optional
		    Default: 'N'
		diag : input string(len=1), optional
		    Default: 'N'
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('D') with bounds (m,n) and b storage
	**/
	static public function ztfsm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ap,info = ztfttp(n,arf,[transr,uplo])
		
		Wrapper for ``ztfttp``.
		
		Parameters
		----------
		n : input int
		arf : input rank-1 array('D') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		ap : rank-1 array('D') with bounds (nt)
		info : int
	**/
	static public function ztfttp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,info = ztfttr(n,arf,[transr,uplo])
		
		Wrapper for ``ztfttr``.
		
		Parameters
		----------
		n : input int
		arf : input rank-1 array('D') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		a : rank-2 array('D') with bounds (lda,n)
		info : int
	**/
	static public function ztfttr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,b,q,z,info = ztgexc(a,b,q,z,ifst,ilst,[overwrite_a,overwrite_b,overwrite_q,overwrite_z])
		
		Wrapper for ``ztgexc``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (lda,n)
		b : input rank-2 array('D') with bounds (ldb,n)
		q : input rank-2 array('D') with bounds (ldq,n)
		z : input rank-2 array('D') with bounds (ldz,n)
		ifst : input int
		ilst : input int
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		overwrite_q : input int, optional
		    Default: 0
		overwrite_z : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('D') with bounds (lda,n)
		b : rank-2 array('D') with bounds (ldb,n)
		q : rank-2 array('D') with bounds (ldq,n)
		z : rank-2 array('D') with bounds (ldz,n)
		info : int
	**/
	static public function ztgexc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		as,bs,alpha,beta,qs,zs,m,pl,pr,dif,info = ztgsen(select,a,b,q,z,[ijob,wantq,wantz,lwork,liwork,overwrite_a,overwrite_b,overwrite_q,overwrite_z])
		
		Wrapper for ``ztgsen``.
		
		Parameters
		----------
		select : input rank-1 array('i') with bounds (n)
		a : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (n,n)
		q : input rank-2 array('D') with bounds (n,n)
		z : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		ijob : input int, optional
		    Default: 4
		wantq : input int, optional
		    Default: 1
		wantz : input int, optional
		    Default: 1
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		overwrite_q : input int, optional
		    Default: 0
		overwrite_z : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: (ijob==0?1:n+2)
		liwork : input int, optional
		    Default: (ijob==0?1:n+2)
		
		Returns
		-------
		as : rank-2 array('D') with bounds (n,n) and a storage
		bs : rank-2 array('D') with bounds (n,n) and b storage
		alpha : rank-1 array('D') with bounds (n)
		beta : rank-1 array('D') with bounds (n)
		qs : rank-2 array('D') with bounds (n,n) and q storage
		zs : rank-2 array('D') with bounds (n,n) and z storage
		m : int
		pl : float
		pr : float
		dif : rank-1 array('d') with bounds (2)
		info : int
	**/
	static public function ztgsen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,iwork,info = ztgsen_lwork(select,a,b,[ijob])
		
		Wrapper for ``ztgsen_lwork``.
		
		Parameters
		----------
		select : input rank-1 array('i') with bounds (n)
		a : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		ijob : input int, optional
		    Default: 4
		
		Returns
		-------
		work : complex
		iwork : int
		info : int
	**/
	static public function ztgsen_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,b,info = ztpmqrt(l,v,t,a,b,[side,trans,overwrite_a,overwrite_b])
		
		Wrapper for ``ztpmqrt``.
		
		Parameters
		----------
		l : input int
		v : input rank-2 array('D') with bounds ((side[0]=='L'?m:n),k)
		t : input rank-2 array('D') with bounds (nb,k)
		a : input rank-2 array('D') with bounds ((side[0]=='L'?k:m),(side[0]=='L'?n:k))
		b : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('D') with bounds ((side[0]=='L'?k:m),(side[0]=='L'?n:k))
		b : rank-2 array('D') with bounds (m,n)
		info : int
	**/
	static public function ztpmqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,b,t,info = ztpqrt(l,nb,a,b,[overwrite_a,overwrite_b])
		
		Wrapper for ``ztpqrt``.
		
		Parameters
		----------
		l : input int
		nb : input int
		a : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('D') with bounds (n,n)
		b : rank-2 array('D') with bounds (m,n)
		t : rank-2 array('D') with bounds (nb,n)
		info : int
	**/
	static public function ztpqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arf,info = ztpttf(n,ap,[transr,uplo])
		
		Wrapper for ``ztpttf``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('D') with bounds (nt)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		arf : rank-1 array('D') with bounds (nt)
		info : int
	**/
	static public function ztpttf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,info = ztpttr(n,ap,[uplo])
		
		Wrapper for ``ztpttr``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('D') with bounds (nt)
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		a : rank-2 array('D') with bounds (n,n)
		info : int
	**/
	static public function ztpttr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,scale,info = ztrsyl(a,b,c,[trana,tranb,isgn,overwrite_c])
		
		Wrapper for ``ztrsyl``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,m)
		b : input rank-2 array('D') with bounds (n,n)
		c : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		trana : input string(len=1), optional
		    Default: 'N'
		tranb : input string(len=1), optional
		    Default: 'N'
		isgn : input int, optional
		    Default: 1
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('D') with bounds (m,n) and c storage
		scale : float
		info : int
	**/
	static public function ztrsyl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inv_c,info = ztrtri(c,[lower,unitdiag,overwrite_c])
		
		Wrapper for ``ztrtri``.
		
		Parameters
		----------
		c : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_c : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		unitdiag : input int, optional
		    Default: 0
		
		Returns
		-------
		inv_c : rank-2 array('D') with bounds (n,n) and c storage
		info : int
	**/
	static public function ztrtri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,info = ztrtrs(a,b,[lower,trans,unitdiag,lda,overwrite_b])
		
		Wrapper for ``ztrtrs``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (lda,n)
		b : input rank-2 array('D') with bounds (ldb,nrhs)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		unitdiag : input int, optional
		    Default: 0
		lda : input int, optional
		    Default: shape(a,0)
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('D') with bounds (ldb,nrhs) and b storage
		info : int
	**/
	static public function ztrtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arf,info = ztrttf(a,[transr,uplo])
		
		Wrapper for ``ztrttf``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (lda,n)
		
		Other Parameters
		----------------
		transr : input string(len=1), optional
		    Default: 'N'
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		arf : rank-1 array('D') with bounds (n*(n+1)/2)
		info : int
	**/
	static public function ztrttf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ap,info = ztrttp(a,[uplo])
		
		Wrapper for ``ztrttp``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (lda,n)
		
		Other Parameters
		----------------
		uplo : input string(len=1), optional
		    Default: 'U'
		
		Returns
		-------
		ap : rank-1 array('D') with bounds (n*(n+1)/2)
		info : int
	**/
	static public function ztrttp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rz,tau,info = ztzrzf(a,[lwork,overwrite_a])
		
		Wrapper for ``ztzrzf``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX(m,1)
		
		Returns
		-------
		rz : rank-2 array('D') with bounds (m,n) and a storage
		tau : rank-1 array('D') with bounds (m)
		info : int
	**/
	static public function ztzrzf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = ztzrzf_lwork(m,n)
		
		Wrapper for ``ztzrzf_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function ztzrzf_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cs11,cs12,cs21,cs22,theta,u1,u2,v1t,v2t,info = zuncsd(x11,x12,x21,x22,[compute_u1,compute_u2,compute_v1t,compute_v2t,trans,signs,lwork,lrwork,overwrite_x11,overwrite_x12,overwrite_x21,overwrite_x22])
		
		Wrapper for ``zuncsd``.
		
		Parameters
		----------
		x11 : input rank-2 array('D') with bounds (p,q)
		x12 : input rank-2 array('D') with bounds (p,mmq)
		x21 : input rank-2 array('D') with bounds (mmp,q)
		x22 : input rank-2 array('D') with bounds (mmp,mmq)
		
		Other Parameters
		----------------
		compute_u1 : input int, optional
		    Default: 1
		compute_u2 : input int, optional
		    Default: 1
		compute_v1t : input int, optional
		    Default: 1
		compute_v2t : input int, optional
		    Default: 1
		trans : input int, optional
		    Default: 0
		signs : input int, optional
		    Default: 0
		overwrite_x11 : input int, optional
		    Default: 0
		overwrite_x12 : input int, optional
		    Default: 0
		overwrite_x21 : input int, optional
		    Default: 0
		overwrite_x22 : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: 2*m+MAX(1,MAX(mmp,mmq))+1
		lrwork : input int, optional
		    Default: 5*MAX(1,q-1)+4*MAX(1,q)+8*q+1
		
		Returns
		-------
		cs11 : rank-2 array('D') with bounds (p,q) and x11 storage
		cs12 : rank-2 array('D') with bounds (p,mmq) and x12 storage
		cs21 : rank-2 array('D') with bounds (mmp,q) and x21 storage
		cs22 : rank-2 array('D') with bounds (mmp,mmq) and x22 storage
		theta : rank-1 array('d') with bounds (min(min(p,mmp),min(q,mmq)))
		u1 : rank-2 array('D') with bounds ((compute_u1?p:0),(compute_u1?p:0))
		u2 : rank-2 array('D') with bounds ((compute_u2?mmp:0),(compute_u2?mmp:0))
		v1t : rank-2 array('D') with bounds ((compute_v1t?q:0),(compute_v1t?q:0))
		v2t : rank-2 array('D') with bounds ((compute_v2t?mmq:0),(compute_v2t?mmq:0))
		info : int
	**/
	static public function zuncsd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,rwork,info = zuncsd_lwork(m,p,q)
		
		Wrapper for ``zuncsd_lwork``.
		
		Parameters
		----------
		m : input int
		p : input int
		q : input int
		
		Returns
		-------
		work : complex
		rwork : float
		info : int
	**/
	static public function zuncsd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ht,info = zunghr(a,tau,[lo,hi,lwork,overwrite_a])
		
		Wrapper for ``zunghr``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		tau : input rank-1 array('D') with bounds (n - 1)
		
		Other Parameters
		----------------
		lo : input int, optional
		    Default: 0
		hi : input int, optional
		    Default: n-1
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(hi-lo,1)
		
		Returns
		-------
		ht : rank-2 array('D') with bounds (n,n) and a storage
		info : int
	**/
	static public function zunghr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zunghr_lwork(n,[lo,hi])
		
		Wrapper for ``zunghr_lwork``.
		
		Parameters
		----------
		n : input int
		
		Other Parameters
		----------------
		lo : input int, optional
		    Default: 0
		hi : input int, optional
		    Default: n-1
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zunghr_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		q,work,info = zungqr(a,tau,[lwork,overwrite_a])
		
		Wrapper for ``zungqr``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		tau : input rank-1 array('D') with bounds (k)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*n,1)
		
		Returns
		-------
		q : rank-2 array('D') with bounds (m,n) and a storage
		work : rank-1 array('D') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function zungqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		q,work,info = zungrq(a,tau,[lwork,overwrite_a])
		
		Wrapper for ``zungrq``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		tau : input rank-1 array('D') with bounds (k)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: max(3*m,1)
		
		Returns
		-------
		q : rank-2 array('D') with bounds (m,n) and a storage
		work : rank-1 array('D') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function zungrq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cq,work,info = zunmqr(side,trans,a,tau,c,lwork,[overwrite_c])
		
		Wrapper for ``zunmqr``.
		
		Parameters
		----------
		side : input string(len=1)
		trans : input string(len=1)
		a : input rank-2 array('D') with bounds (lda,k)
		tau : input rank-1 array('D') with bounds (k)
		c : input rank-2 array('D') with bounds (ldc,n)
		lwork : input int
		
		Other Parameters
		----------------
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		cq : rank-2 array('D') with bounds (ldc,n) and c storage
		work : rank-1 array('D') with bounds (MAX(lwork,1))
		info : int
	**/
	static public function zunmqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cq,info = zunmrz(a,tau,c,[side,trans,lwork,overwrite_c])
		
		Wrapper for ``zunmrz``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (k,nt)
		tau : input rank-1 array('D') with bounds (k)
		c : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		trans : input string(len=1), optional
		    Default: 'N'
		overwrite_c : input int, optional
		    Default: 0
		lwork : input int, optional
		    Default: MAX((side[0]=='L'?n:m),1)
		
		Returns
		-------
		cq : rank-2 array('D') with bounds (m,n) and c storage
		info : int
	**/
	static public function zunmrz(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		work,info = zunmrz_lwork(m,n,[side,trans])
		
		Wrapper for ``zunmrz_lwork``.
		
		Parameters
		----------
		m : input int
		n : input int
		
		Other Parameters
		----------------
		side : input string(len=1), optional
		    Default: 'L'
		trans : input string(len=1), optional
		    Default: 'N'
		
		Returns
		-------
		work : complex
		info : int
	**/
	static public function zunmrz_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
}