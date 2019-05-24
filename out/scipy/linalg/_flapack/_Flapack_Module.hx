/* This file is generated, do not edit! */
package scipy.linalg._flapack;
@:pythonImport("scipy.linalg._flapack") extern class _Flapack_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
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
		w,v,info = cheevd(a,[compute_v,lower,lwork,overwrite_a])
		
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
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		v : rank-2 array('F') with bounds (n,n) and a storage
		info : int
	**/
	static public function cheevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,info = cheevr(a,[jobz,range,uplo,il,iu,lwork,overwrite_a])
		
		Wrapper for ``cheevr``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		jobz : input string(len=1), optional
		    Default: 'V'
		range : input string(len=1), optional
		    Default: 'A'
		uplo : input string(len=1), optional
		    Default: 'L'
		overwrite_a : input int, optional
		    Default: 0
		il : input int, optional
		    Default: 1
		iu : input int, optional
		    Default: n
		lwork : input int, optional
		    Default: max(18*n,1)
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		z : rank-2 array('F') with bounds (n,m)
		info : int
	**/
	static public function cheevr(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		a,w,info = chegv(a,b,[itype,jobz,uplo,overwrite_a,overwrite_b])
		
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
		
		Returns
		-------
		a : rank-2 array('F') with bounds (n,n)
		w : rank-1 array('f') with bounds (n)
		info : int
	**/
	static public function chegv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,w,info = chegvd(a,b,[itype,jobz,uplo,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``chegvd``.
		
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
		    Default: max(2*n+n*n,1)
		
		Returns
		-------
		a : rank-2 array('F') with bounds (n,n)
		w : rank-1 array('f') with bounds (n)
		info : int
	**/
	static public function chegvd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,ifail,info = chegvx(a,b,iu,[itype,jobz,uplo,il,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``chegvx``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		b : input rank-2 array('F') with bounds (n,n)
		iu : input int
		
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
		il : input int, optional
		    Default: 1
		lwork : input int, optional
		    Default: max(18*n-1,1)
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		z : rank-2 array('F') with bounds (n,m)
		ifail : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function chegvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		a,b,alpha,beta,q,z,m,pl,pr,dif,work,iwork,info = ctgsen(select,a,b,q,z,[lwork,liwork,overwrite_a,overwrite_b,overwrite_q,overwrite_z])
		
		Wrapper for ``ctgsen``.
		
		Parameters
		----------
		select : input rank-1 array('i') with bounds (n)
		a : input rank-2 array('F') with bounds (lda,n)
		b : input rank-2 array('F') with bounds (ldb,n)
		q : input rank-2 array('F') with bounds (ldq,n)
		z : input rank-2 array('F') with bounds (ldz,n)
		
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
		    Default: max(2*m*(n-m),1)
		liwork : input int, optional
		    Default: n+2
		
		Returns
		-------
		a : rank-2 array('F') with bounds (lda,n)
		b : rank-2 array('F') with bounds (ldb,n)
		alpha : rank-1 array('F') with bounds (n)
		beta : rank-1 array('F') with bounds (n)
		q : rank-2 array('F') with bounds (ldq,n)
		z : rank-2 array('F') with bounds (ldz,n)
		m : int
		pl : float
		pr : float
		dif : rank-1 array('f') with bounds (2)
		work : rank-1 array('F') with bounds (MAX(lwork,1))
		iwork : rank-1 array('i') with bounds (MAX(1,liwork))
		info : int
	**/
	static public function ctgsen(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		w,v,info = dsyevd(a,[compute_v,lower,lwork,overwrite_a])
		
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
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		v : rank-2 array('d') with bounds (n,n) and a storage
		info : int
	**/
	static public function dsyevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,info = dsyevr(a,[jobz,range,uplo,il,iu,lwork,overwrite_a])
		
		Wrapper for ``dsyevr``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		jobz : input string(len=1), optional
		    Default: 'V'
		range : input string(len=1), optional
		    Default: 'A'
		uplo : input string(len=1), optional
		    Default: 'L'
		overwrite_a : input int, optional
		    Default: 0
		il : input int, optional
		    Default: 1
		iu : input int, optional
		    Default: n
		lwork : input int, optional
		    Default: max(26*n,1)
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		z : rank-2 array('d') with bounds (n,m)
		info : int
	**/
	static public function dsyevr(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		a,w,info = dsygv(a,b,[itype,jobz,uplo,overwrite_a,overwrite_b])
		
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
		
		Returns
		-------
		a : rank-2 array('d') with bounds (n,n)
		w : rank-1 array('d') with bounds (n)
		info : int
	**/
	static public function dsygv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,w,info = dsygvd(a,b,[itype,jobz,uplo,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``dsygvd``.
		
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
		    Default: max(1+6*n+2*n*n,1)
		
		Returns
		-------
		a : rank-2 array('d') with bounds (n,n)
		w : rank-1 array('d') with bounds (n)
		info : int
	**/
	static public function dsygvd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,ifail,info = dsygvx(a,b,iu,[itype,jobz,uplo,il,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``dsygvx``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		b : input rank-2 array('d') with bounds (n,n)
		iu : input int
		
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
		il : input int, optional
		    Default: 1
		lwork : input int, optional
		    Default: max(8*n,1)
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		z : rank-2 array('d') with bounds (n,m)
		ifail : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function dsygvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		a,b,alphar,alphai,beta,q,z,m,pl,pr,dif,work,iwork,info = dtgsen(select,a,b,q,z,[lwork,liwork,overwrite_a,overwrite_b,overwrite_q,overwrite_z])
		
		Wrapper for ``dtgsen``.
		
		Parameters
		----------
		select : input rank-1 array('i') with bounds (n)
		a : input rank-2 array('d') with bounds (lda,n)
		b : input rank-2 array('d') with bounds (ldb,n)
		q : input rank-2 array('d') with bounds (ldq,n)
		z : input rank-2 array('d') with bounds (ldz,n)
		
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
		    Default: max(MAX(4*n+16,2*m*(n-m)),1)
		liwork : input int, optional
		    Default: n+6
		
		Returns
		-------
		a : rank-2 array('d') with bounds (lda,n)
		b : rank-2 array('d') with bounds (ldb,n)
		alphar : rank-1 array('d') with bounds (n)
		alphai : rank-1 array('d') with bounds (n)
		beta : rank-1 array('d') with bounds (n)
		q : rank-2 array('d') with bounds (ldq,n)
		z : rank-2 array('d') with bounds (ldz,n)
		m : int
		pl : float
		pr : float
		dif : rank-1 array('d') with bounds (2)
		work : rank-1 array('d') with bounds (MAX(lwork,1))
		iwork : rank-1 array('i') with bounds (MAX(1,liwork))
		info : int
	**/
	static public function dtgsen(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		w,v,info = ssyevd(a,[compute_v,lower,lwork,overwrite_a])
		
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
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		v : rank-2 array('f') with bounds (n,n) and a storage
		info : int
	**/
	static public function ssyevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,info = ssyevr(a,[jobz,range,uplo,il,iu,lwork,overwrite_a])
		
		Wrapper for ``ssyevr``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		jobz : input string(len=1), optional
		    Default: 'V'
		range : input string(len=1), optional
		    Default: 'A'
		uplo : input string(len=1), optional
		    Default: 'L'
		overwrite_a : input int, optional
		    Default: 0
		il : input int, optional
		    Default: 1
		iu : input int, optional
		    Default: n
		lwork : input int, optional
		    Default: max(26*n,1)
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		z : rank-2 array('f') with bounds (n,m)
		info : int
	**/
	static public function ssyevr(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		a,w,info = ssygv(a,b,[itype,jobz,uplo,overwrite_a,overwrite_b])
		
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
		
		Returns
		-------
		a : rank-2 array('f') with bounds (n,n)
		w : rank-1 array('f') with bounds (n)
		info : int
	**/
	static public function ssygv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,w,info = ssygvd(a,b,[itype,jobz,uplo,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``ssygvd``.
		
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
		    Default: max(1+6*n+2*n*n,1)
		
		Returns
		-------
		a : rank-2 array('f') with bounds (n,n)
		w : rank-1 array('f') with bounds (n)
		info : int
	**/
	static public function ssygvd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,ifail,info = ssygvx(a,b,iu,[itype,jobz,uplo,il,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``ssygvx``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		b : input rank-2 array('f') with bounds (n,n)
		iu : input int
		
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
		il : input int, optional
		    Default: 1
		lwork : input int, optional
		    Default: max(8*n,1)
		
		Returns
		-------
		w : rank-1 array('f') with bounds (n)
		z : rank-2 array('f') with bounds (n,m)
		ifail : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function ssygvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		a,b,alphar,alphai,beta,q,z,m,pl,pr,dif,work,iwork,info = stgsen(select,a,b,q,z,[lwork,liwork,overwrite_a,overwrite_b,overwrite_q,overwrite_z])
		
		Wrapper for ``stgsen``.
		
		Parameters
		----------
		select : input rank-1 array('i') with bounds (n)
		a : input rank-2 array('f') with bounds (lda,n)
		b : input rank-2 array('f') with bounds (ldb,n)
		q : input rank-2 array('f') with bounds (ldq,n)
		z : input rank-2 array('f') with bounds (ldz,n)
		
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
		    Default: max(MAX(4*n+16,2*m*(n-m)),1)
		liwork : input int, optional
		    Default: n+6
		
		Returns
		-------
		a : rank-2 array('f') with bounds (lda,n)
		b : rank-2 array('f') with bounds (ldb,n)
		alphar : rank-1 array('f') with bounds (n)
		alphai : rank-1 array('f') with bounds (n)
		beta : rank-1 array('f') with bounds (n)
		q : rank-2 array('f') with bounds (ldq,n)
		z : rank-2 array('f') with bounds (ldz,n)
		m : int
		pl : float
		pr : float
		dif : rank-1 array('f') with bounds (2)
		work : rank-1 array('f') with bounds (MAX(lwork,1))
		iwork : rank-1 array('i') with bounds (MAX(1,liwork))
		info : int
	**/
	static public function stgsen(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		w,v,info = zheevd(a,[compute_v,lower,lwork,overwrite_a])
		
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
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		v : rank-2 array('D') with bounds (n,n) and a storage
		info : int
	**/
	static public function zheevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,info = zheevr(a,[jobz,range,uplo,il,iu,lwork,overwrite_a])
		
		Wrapper for ``zheevr``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		jobz : input string(len=1), optional
		    Default: 'V'
		range : input string(len=1), optional
		    Default: 'A'
		uplo : input string(len=1), optional
		    Default: 'L'
		overwrite_a : input int, optional
		    Default: 0
		il : input int, optional
		    Default: 1
		iu : input int, optional
		    Default: n
		lwork : input int, optional
		    Default: max(18*n,1)
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		z : rank-2 array('D') with bounds (n,m)
		info : int
	**/
	static public function zheevr(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		a,w,info = zhegv(a,b,[itype,jobz,uplo,overwrite_a,overwrite_b])
		
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
		
		Returns
		-------
		a : rank-2 array('D') with bounds (n,n)
		w : rank-1 array('d') with bounds (n)
		info : int
	**/
	static public function zhegv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,w,info = zhegvd(a,b,[itype,jobz,uplo,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``zhegvd``.
		
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
		    Default: max(2*n+n*n,1)
		
		Returns
		-------
		a : rank-2 array('D') with bounds (n,n)
		w : rank-1 array('d') with bounds (n)
		info : int
	**/
	static public function zhegvd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		w,z,ifail,info = zhegvx(a,b,iu,[itype,jobz,uplo,il,lwork,overwrite_a,overwrite_b])
		
		Wrapper for ``zhegvx``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		b : input rank-2 array('D') with bounds (n,n)
		iu : input int
		
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
		il : input int, optional
		    Default: 1
		lwork : input int, optional
		    Default: max(18*n-1,1)
		
		Returns
		-------
		w : rank-1 array('d') with bounds (n)
		z : rank-2 array('D') with bounds (n,m)
		ifail : rank-1 array('i') with bounds (n)
		info : int
	**/
	static public function zhegvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		a,b,alpha,beta,q,z,m,pl,pr,dif,work,iwork,info = ztgsen(select,a,b,q,z,[lwork,liwork,overwrite_a,overwrite_b,overwrite_q,overwrite_z])
		
		Wrapper for ``ztgsen``.
		
		Parameters
		----------
		select : input rank-1 array('i') with bounds (n)
		a : input rank-2 array('D') with bounds (lda,n)
		b : input rank-2 array('D') with bounds (ldb,n)
		q : input rank-2 array('D') with bounds (ldq,n)
		z : input rank-2 array('D') with bounds (ldz,n)
		
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
		    Default: max(2*m*(n-m),1)
		liwork : input int, optional
		    Default: n+2
		
		Returns
		-------
		a : rank-2 array('D') with bounds (lda,n)
		b : rank-2 array('D') with bounds (ldb,n)
		alpha : rank-1 array('D') with bounds (n)
		beta : rank-1 array('D') with bounds (n)
		q : rank-2 array('D') with bounds (ldq,n)
		z : rank-2 array('D') with bounds (ldz,n)
		m : int
		pl : float
		pr : float
		dif : rank-1 array('d') with bounds (2)
		work : rank-1 array('D') with bounds (MAX(lwork,1))
		iwork : rank-1 array('i') with bounds (MAX(1,liwork))
		info : int
	**/
	static public function ztgsen(args:haxe.extern.Rest<Dynamic>):Dynamic;
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