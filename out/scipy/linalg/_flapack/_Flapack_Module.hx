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
		cgbsv - Function signature:
		  lub,piv,x,info = cgbsv(kl,ku,ab,b,[overwrite_ab,overwrite_b])
		Required arguments:
		  kl : input int
		  ku : input int
		  ab : input rank-2 array('F') with bounds (2*kl+ku+1,n)
		  b : input rank-2 array('F') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_ab := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  lub : rank-2 array('F') with bounds (2*kl+ku+1,n) and ab storage
		  piv : rank-1 array('i') with bounds (n)
		  x : rank-2 array('F') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function cgbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgbtrf - Function signature:
		  lu,ipiv,info = cgbtrf(ab,kl,ku,[m,n,ldab,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('F') with bounds (ldab,*)
		  kl : input int
		  ku : input int
		Optional arguments:
		  m := shape(ab,1) input int
		  n := shape(ab,1) input int
		  overwrite_ab := 0 input int
		  ldab := shape(ab,0) input int
		Return objects:
		  lu : rank-2 array('F') with bounds (ldab,*) and ab storage
		  ipiv : rank-1 array('i') with bounds (MIN(m,n))
		  info : int
	**/
	static public function cgbtrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgbtrs - Function signature:
		  x,info = cgbtrs(ab,kl,ku,b,ipiv,[trans,n,ldab,ldb,overwrite_b])
		Required arguments:
		  ab : input rank-2 array('F') with bounds (ldab,*)
		  kl : input int
		  ku : input int
		  b : input rank-2 array('F') with bounds (ldb,*)
		  ipiv : input rank-1 array('i') with bounds (n)
		Optional arguments:
		  overwrite_b := 0 input int
		  trans := 0 input int
		  n := shape(ab,1) input int
		  ldab := shape(ab,0) input int
		  ldb := shape(b,0) input int
		Return objects:
		  x : rank-2 array('F') with bounds (ldb,*) and b storage
		  info : int
	**/
	static public function cgbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgebal - Function signature:
		  ba,lo,hi,pivscale,info = cgebal(a,[scale,permute,overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (m,n)
		Optional arguments:
		  scale := 0 input int
		  permute := 0 input int
		  overwrite_a := 0 input int
		Return objects:
		  ba : rank-2 array('F') with bounds (m,n) and a storage
		  lo : int
		  hi : int
		  pivscale : rank-1 array('f') with bounds (n)
		  info : int
	**/
	static public function cgebal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgees - Function signature:
		  t,sdim,w,vs,work,info = cgees(cselect,a,[compute_v,sort_t,lwork,cselect_extra_args,overwrite_a])
		Required arguments:
		  cselect : call-back function
		  a : input rank-2 array('F') with bounds (n,n)
		Optional arguments:
		  compute_v := 1 input int
		  sort_t := 0 input int
		  cselect_extra_args := () input tuple
		  overwrite_a := 0 input int
		  lwork := 3*n input int
		Return objects:
		  t : rank-2 array('F') with bounds (n,n) and a storage
		  sdim : int
		  w : rank-1 array('F') with bounds (n)
		  vs : rank-2 array('F') with bounds (ldvs,n)
		  work : rank-1 array('F') with bounds (MAX(lwork,1))
		  info : int
		Call-back functions:
		  def cselect(arg): return cselect
		  Required arguments:
		    arg : input complex
		  Return objects:
		    cselect : int
	**/
	static public function cgees(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgeev - Function signature:
		  w,vl,vr,info = cgeev(a,[compute_vl,compute_vr,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (n,n)
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		  overwrite_a := 0 input int
		  lwork := 2*n input int
		Return objects:
		  w : rank-1 array('F') with bounds (n)
		  vl : rank-2 array('F') with bounds (ldvl,n)
		  vr : rank-2 array('F') with bounds (ldvr,n)
		  info : int
	**/
	static public function cgeev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgeev_lwork - Function signature:
		  work,info = cgeev_lwork(n,[compute_vl,compute_vr])
		Required arguments:
		  n : input int
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		Return objects:
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
		
		cgegv - Function signature:
		  alpha,beta,vl,vr,info = cgegv(a,b,[compute_vl,compute_vr,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('F') with bounds (n,n)
		  b : input rank-2 array('F') with bounds (n,n)
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  lwork := 2*n input int
		Return objects:
		  alpha : rank-1 array('F') with bounds (n)
		  beta : rank-1 array('F') with bounds (n)
		  vl : rank-2 array('F') with bounds (ldvl,n)
		  vr : rank-2 array('F') with bounds (ldvr,n)
		  info : int
	**/
	static public function cgegv(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		cgehrd - Function signature:
		  ht,tau,info = cgehrd(a,[lo,hi,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (n,n)
		Optional arguments:
		  lo := 0 input int
		  hi := n-1 input int
		  overwrite_a := 0 input int
		  lwork := MAX(n,1) input int
		Return objects:
		  ht : rank-2 array('F') with bounds (n,n) and a storage
		  tau : rank-1 array('F') with bounds (n - 1)
		  info : int
	**/
	static public function cgehrd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgehrd_lwork - Function signature:
		  work,info = cgehrd_lwork(n,[lo,hi])
		Required arguments:
		  n : input int
		Optional arguments:
		  lo := 0 input int
		  hi := n-1 input int
		Return objects:
		  work : complex
		  info : int
	**/
	static public function cgehrd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgelsd - Function signature:
		  x,s,rank,info = cgelsd(a,b,lwork,size_rwork,size_iwork,[cond,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('F') with bounds (m,n)
		  b : input rank-2 array('F') with bounds (maxmn,nrhs)
		  lwork : input int
		  size_rwork : input int
		  size_iwork : input int
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  cond := -1.0 input float
		Return objects:
		  x : rank-2 array('F') with bounds (maxmn,nrhs) and b storage
		  s : rank-1 array('f') with bounds (minmn)
		  rank : int
		  info : int
	**/
	static public function cgelsd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgelsd_lwork - Function signature:
		  work,rwork,iwork,info = cgelsd_lwork(m,n,nrhs,[cond,lwork])
		Required arguments:
		  m : input int
		  n : input int
		  nrhs : input int
		Optional arguments:
		  cond := -1.0 input float
		  lwork := -1 input int
		Return objects:
		  work : complex
		  rwork : float
		  iwork : int
		  info : int
	**/
	static public function cgelsd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgelss - Function signature:
		  v,x,s,rank,work,info = cgelss(a,b,[cond,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('F') with bounds (m,n)
		  b : input rank-2 array('F') with bounds (maxmn,nrhs)
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  cond := -1.0 input float
		  lwork := 2*minmn+MAX(maxmn,nrhs) input int
		Return objects:
		  v : rank-2 array('F') with bounds (m,n) and a storage
		  x : rank-2 array('F') with bounds (maxmn,nrhs) and b storage
		  s : rank-1 array('f') with bounds (minmn)
		  rank : int
		  work : rank-1 array('F') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function cgelss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgelss_lwork - Function signature:
		  work,info = cgelss_lwork(m,n,nrhs,[cond,lwork])
		Required arguments:
		  m : input int
		  n : input int
		  nrhs : input int
		Optional arguments:
		  cond := -1.0 input float
		  lwork := -1 input int
		Return objects:
		  work : complex
		  info : int
	**/
	static public function cgelss_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgelsy - Function signature:
		  v,x,j,rank,info = cgelsy(a,b,jptv,cond,lwork,[overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('F') with bounds (m,n)
		  b : input rank-2 array('F') with bounds (maxmn,nrhs)
		  jptv : input rank-1 array('i') with bounds (n)
		  cond : input float
		  lwork : input int
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  v : rank-2 array('F') with bounds (m,n) and a storage
		  x : rank-2 array('F') with bounds (maxmn,nrhs) and b storage
		  j : rank-1 array('i') with bounds (n) and jptv storage
		  rank : int
		  info : int
	**/
	static public function cgelsy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgelsy_lwork - Function signature:
		  work,info = cgelsy_lwork(m,n,nrhs,cond,[lwork])
		Required arguments:
		  m : input int
		  n : input int
		  nrhs : input int
		  cond : input float
		Optional arguments:
		  lwork := -1 input int
		Return objects:
		  work : complex
		  info : int
	**/
	static public function cgelsy_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgeqp3 - Function signature:
		  qr,jpvt,tau,work,info = cgeqp3(a,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*(n+1) input int
		Return objects:
		  qr : rank-2 array('F') with bounds (m,n) and a storage
		  jpvt : rank-1 array('i') with bounds (n)
		  tau : rank-1 array('F') with bounds (MIN(m,n))
		  work : rank-1 array('F') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function cgeqp3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgeqrf - Function signature:
		  qr,tau,work,info = cgeqrf(a,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*n input int
		Return objects:
		  qr : rank-2 array('F') with bounds (m,n) and a storage
		  tau : rank-1 array('F') with bounds (MIN(m,n))
		  work : rank-1 array('F') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function cgeqrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgerqf - Function signature:
		  qr,tau,work,info = cgerqf(a,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*m input int
		Return objects:
		  qr : rank-2 array('F') with bounds (m,n) and a storage
		  tau : rank-1 array('F') with bounds (MIN(m,n))
		  work : rank-1 array('F') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function cgerqf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgesdd - Function signature:
		  u,s,vt,info = cgesdd(a,[compute_uv,full_matrices,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  compute_uv := 1 input int
		  full_matrices := 1 input int
		  lwork := (compute_uv?2*minmn*minmn+MAX(m,n)+2*minmn:2*minmn+MAX(m,n)) input int
		Return objects:
		  u : rank-2 array('F') with bounds (u0,u1)
		  s : rank-1 array('f') with bounds (minmn)
		  vt : rank-2 array('F') with bounds (vt0,vt1)
		  info : int
	**/
	static public function cgesdd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgesdd_lwork - Function signature:
		  work,info = cgesdd_lwork(m,n,[compute_uv,full_matrices])
		Required arguments:
		  m : input int
		  n : input int
		Optional arguments:
		  compute_uv := 1 input int
		  full_matrices := 1 input int
		Return objects:
		  work : complex
		  info : int
	**/
	static public function cgesdd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgesv - Function signature:
		  lu,piv,x,info = cgesv(a,b,[overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('F') with bounds (n,n)
		  b : input rank-2 array('F') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  lu : rank-2 array('F') with bounds (n,n) and a storage
		  piv : rank-1 array('i') with bounds (n)
		  x : rank-2 array('F') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function cgesv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgetrf - Function signature:
		  lu,piv,info = cgetrf(a,[overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		Return objects:
		  lu : rank-2 array('F') with bounds (m,n) and a storage
		  piv : rank-1 array('i') with bounds (MIN(m,n))
		  info : int
	**/
	static public function cgetrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgetri - Function signature:
		  inv_a,info = cgetri(lu,piv,[lwork,overwrite_lu])
		Required arguments:
		  lu : input rank-2 array('F') with bounds (n,n)
		  piv : input rank-1 array('i') with bounds (n)
		Optional arguments:
		  overwrite_lu := 0 input int
		  lwork := 3*n input int
		Return objects:
		  inv_a : rank-2 array('F') with bounds (n,n) and lu storage
		  info : int
	**/
	static public function cgetri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgetri_lwork - Function signature:
		  work,info = cgetri_lwork(n)
		Required arguments:
		  n : input int
		Return objects:
		  work : complex
		  info : int
	**/
	static public function cgetri_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgetrs - Function signature:
		  x,info = cgetrs(lu,piv,b,[trans,overwrite_b])
		Required arguments:
		  lu : input rank-2 array('F') with bounds (n,n)
		  piv : input rank-1 array('i') with bounds (n)
		  b : input rank-2 array('F') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_b := 0 input int
		  trans := 0 input int
		Return objects:
		  x : rank-2 array('F') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function cgetrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgges - Function signature:
		  a,b,sdim,alpha,beta,vsl,vsr,work,info = cgges(cselect,a,b,[jobvsl,jobvsr,sort_t,ldvsl,ldvsr,lwork,cselect_extra_args,overwrite_a,overwrite_b])
		Required arguments:
		  cselect : call-back function
		  a : input rank-2 array('F') with bounds (lda,*)
		  b : input rank-2 array('F') with bounds (ldb,*)
		Optional arguments:
		  jobvsl := 1 input int
		  jobvsr := 1 input int
		  sort_t := 0 input int
		  cselect_extra_args := () input tuple
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  ldvsl := ((jobvsl==1)?n:1) input int
		  ldvsr := ((jobvsr==1)?n:1) input int
		  lwork := 2*n input int
		Return objects:
		  a : rank-2 array('F') with bounds (lda,*)
		  b : rank-2 array('F') with bounds (ldb,*)
		  sdim : int
		  alpha : rank-1 array('F') with bounds (n)
		  beta : rank-1 array('F') with bounds (n)
		  vsl : rank-2 array('F') with bounds (ldvsl,n)
		  vsr : rank-2 array('F') with bounds (ldvsr,n)
		  work : rank-1 array('F') with bounds (MAX(lwork,1))
		  info : int
		Call-back functions:
		  def cselect(alpha,beta): return cselect
		  Required arguments:
		    alpha : input complex
		    beta : input complex
		  Return objects:
		    cselect : int
	**/
	static public function cgges(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cggev - Function signature:
		  alpha,beta,vl,vr,work,info = cggev(a,b,[compute_vl,compute_vr,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('F') with bounds (n,n)
		  b : input rank-2 array('F') with bounds (n,n)
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  lwork := 2*n input int
		Return objects:
		  alpha : rank-1 array('F') with bounds (n)
		  beta : rank-1 array('F') with bounds (n)
		  vl : rank-2 array('F') with bounds (ldvl,n)
		  vr : rank-2 array('F') with bounds (ldvr,n)
		  work : rank-1 array('F') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function cggev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgtsv - Function signature:
		  du2,d,du,x,info = cgtsv(dl,d,du,b,[overwrite_dl,overwrite_d,overwrite_du,overwrite_b])
		Required arguments:
		  dl : input rank-1 array('F') with bounds (n - 1)
		  d : input rank-1 array('F') with bounds (*)
		  du : input rank-1 array('F') with bounds (n - 1)
		  b : input rank-2 array('F') with bounds (*,*)
		Optional arguments:
		  overwrite_dl := 0 input int
		  overwrite_d := 0 input int
		  overwrite_du := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  du2 : rank-1 array('F') with bounds (n - 1) and dl storage
		  d : rank-1 array('F') with bounds (*)
		  du : rank-1 array('F') with bounds (n - 1)
		  x : rank-2 array('F') with bounds (*,*) and b storage
		  info : int
	**/
	static public function cgtsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chbevd - Function signature:
		  w,z,info = chbevd(ab,[compute_v,lower,ldab,lrwork,liwork,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('F') with bounds (ldab,*)
		Optional arguments:
		  overwrite_ab := 1 input int
		  compute_v := 1 input int
		  lower := 0 input int
		  ldab := shape(ab,0) input int
		  lrwork := (compute_v?1+5*n+2*n*n:n) input int
		  liwork := (compute_v?3+5*n:1) input int
		Return objects:
		  w : rank-1 array('f') with bounds (n)
		  z : rank-2 array('F') with bounds (ldz,ldz)
		  info : int
	**/
	static public function chbevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chbevx - Function signature:
		  w,z,m,ifail,info = chbevx(ab,vl,vu,il,iu,[ldab,compute_v,range,lower,abstol,mmax,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('F') with bounds (ldab,*)
		  vl : input float
		  vu : input float
		  il : input int
		  iu : input int
		Optional arguments:
		  overwrite_ab := 1 input int
		  ldab := shape(ab,0) input int
		  compute_v := 1 input int
		  range := 0 input int
		  lower := 0 input int
		  abstol := 0.0 input float
		  mmax := (compute_v?(range==2?(iu-il+1):n):1) input int
		Return objects:
		  w : rank-1 array('f') with bounds (n)
		  z : rank-2 array('F') with bounds (ldz,mmax)
		  m : int
		  ifail : rank-1 array('i') with bounds ((compute_v?n:1))
		  info : int
	**/
	static public function chbevx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cheev - Function signature:
		  w,v,info = cheev(a,[compute_v,lower,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (n,n)
		Optional arguments:
		  compute_v := 1 input int
		  lower := 0 input int
		  overwrite_a := 0 input int
		  lwork := 2*n-1 input int
		Return objects:
		  w : rank-1 array('f') with bounds (n)
		  v : rank-2 array('F') with bounds (n,n) and a storage
		  info : int
	**/
	static public function cheev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cheevd - Function signature:
		  w,v,info = cheevd(a,[compute_v,lower,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (n,n)
		Optional arguments:
		  compute_v := 1 input int
		  lower := 0 input int
		  overwrite_a := 0 input int
		  lwork := (compute_v?2*n+n*n:n+1) input int
		Return objects:
		  w : rank-1 array('f') with bounds (n)
		  v : rank-2 array('F') with bounds (n,n) and a storage
		  info : int
	**/
	static public function cheevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cheevr - Function signature:
		  w,z,info = cheevr(a,[jobz,range,uplo,il,iu,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (n,n)
		Optional arguments:
		  jobz := 'V' input string(len=1)
		  range := 'A' input string(len=1)
		  uplo := 'L' input string(len=1)
		  overwrite_a := 0 input int
		  il := 1 input int
		  iu := n input int
		  lwork := 18*n input int
		Return objects:
		  w : rank-1 array('f') with bounds (n)
		  z : rank-2 array('F') with bounds (n,m)
		  info : int
	**/
	static public function cheevr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chegv - Function signature:
		  a,w,info = chegv(a,b,[itype,jobz,uplo,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('F') with bounds (n,n)
		  b : input rank-2 array('F') with bounds (n,n)
		Optional arguments:
		  itype := 1 input int
		  jobz := 'V' input string(len=1)
		  uplo := 'L' input string(len=1)
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  a : rank-2 array('F') with bounds (n,n)
		  w : rank-1 array('f') with bounds (n)
		  info : int
	**/
	static public function chegv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chegvd - Function signature:
		  a,w,info = chegvd(a,b,[itype,jobz,uplo,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('F') with bounds (n,n)
		  b : input rank-2 array('F') with bounds (n,n)
		Optional arguments:
		  itype := 1 input int
		  jobz := 'V' input string(len=1)
		  uplo := 'L' input string(len=1)
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  lwork := 2*n+n*n input int
		Return objects:
		  a : rank-2 array('F') with bounds (n,n)
		  w : rank-1 array('f') with bounds (n)
		  info : int
	**/
	static public function chegvd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chegvx - Function signature:
		  w,z,ifail,info = chegvx(a,b,iu,[itype,jobz,uplo,il,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('F') with bounds (n,n)
		  b : input rank-2 array('F') with bounds (n,n)
		  iu : input int
		Optional arguments:
		  itype := 1 input int
		  jobz := 'V' input string(len=1)
		  uplo := 'L' input string(len=1)
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  il := 1 input int
		  lwork := 18*n-1 input int
		Return objects:
		  w : rank-1 array('f') with bounds (n)
		  z : rank-2 array('F') with bounds (n,m)
		  ifail : rank-1 array('i') with bounds (n)
		  info : int
	**/
	static public function chegvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clange - Function signature:
		  n2 = clange(norm,a)
		Required arguments:
		  norm : input string(len=1)
		  a : input rank-2 array('F') with bounds (m,n)
		Return objects:
		  n2 : float
	**/
	static public function clange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clarf - Function signature:
		  c = clarf(v,tau,c,work,[side,incv,overwrite_c])
		Required arguments:
		  v : input rank-1 array('F') with bounds (*)
		  tau : input complex
		  c : input rank-2 array('F') with bounds (m,n)
		  work : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  side := 'L' input string(len=1)
		  incv := 1 input int
		  overwrite_c := 0 input int
		Return objects:
		  c : rank-2 array('F') with bounds (m,n)
	**/
	static public function clarf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clarfg - Function signature:
		  alpha,x,tau = clarfg(n,alpha,x,[incx,overwrite_x])
		Required arguments:
		  n : input int
		  alpha : input complex
		  x : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  incx := 1 input int
		Return objects:
		  alpha : complex
		  x : rank-1 array('F') with bounds (*)
		  tau : complex
	**/
	static public function clarfg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clartg - Function signature:
		  cs,sn,r = clartg(f,g)
		Required arguments:
		  f : input complex
		  g : input complex
		Return objects:
		  cs : float
		  sn : complex
		  r : complex
	**/
	static public function clartg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		claswp - Function signature:
		  a = claswp(a,piv,[k1,k2,off,inc,overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (nrows,n)
		  piv : input rank-1 array('i') with bounds (*)
		Optional arguments:
		  overwrite_a := 0 input int
		  k1 := 0 input int
		  k2 := len(piv)-1 input int
		  off := 0 input int
		  inc := 1 input int
		Return objects:
		  a : rank-2 array('F') with bounds (nrows,n)
	**/
	static public function claswp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clauum - Function signature:
		  a,info = clauum(c,[lower,overwrite_c])
		Required arguments:
		  c : input rank-2 array('F') with bounds (n,n)
		Optional arguments:
		  overwrite_c := 0 input int
		  lower := 0 input int
		Return objects:
		  a : rank-2 array('F') with bounds (n,n) and c storage
		  info : int
	**/
	static public function clauum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cpbsv - Function signature:
		  c,x,info = cpbsv(ab,b,[lower,ldab,overwrite_ab,overwrite_b])
		Required arguments:
		  ab : input rank-2 array('F') with bounds (ldab,n)
		  b : input rank-2 array('F') with bounds (ldb,nrhs)
		Optional arguments:
		  lower := 0 input int
		  overwrite_ab := 0 input int
		  ldab := shape(ab,0) input int
		  overwrite_b := 0 input int
		Return objects:
		  c : rank-2 array('F') with bounds (ldab,n) and ab storage
		  x : rank-2 array('F') with bounds (ldb,nrhs) and b storage
		  info : int
	**/
	static public function cpbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cpbtrf - Function signature:
		  c,info = cpbtrf(ab,[lower,ldab,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('F') with bounds (ldab,n)
		Optional arguments:
		  lower := 0 input int
		  overwrite_ab := 0 input int
		  ldab := shape(ab,0) input int
		Return objects:
		  c : rank-2 array('F') with bounds (ldab,n) and ab storage
		  info : int
	**/
	static public function cpbtrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cpbtrs - Function signature:
		  x,info = cpbtrs(ab,b,[lower,ldab,overwrite_b])
		Required arguments:
		  ab : input rank-2 array('F') with bounds (ldab,n)
		  b : input rank-2 array('F') with bounds (ldb,nrhs)
		Optional arguments:
		  lower := 0 input int
		  ldab := shape(ab,0) input int
		  overwrite_b := 0 input int
		Return objects:
		  x : rank-2 array('F') with bounds (ldb,nrhs) and b storage
		  info : int
	**/
	static public function cpbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cposv - Function signature:
		  c,x,info = cposv(a,b,[lower,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('F') with bounds (n,n)
		  b : input rank-2 array('F') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('F') with bounds (n,n) and a storage
		  x : rank-2 array('F') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function cposv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cpotrf - Function signature:
		  c,info = cpotrf(a,[lower,clean,overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (n,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  lower := 0 input int
		  clean := 1 input int
		Return objects:
		  c : rank-2 array('F') with bounds (n,n) and a storage
		  info : int
	**/
	static public function cpotrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cpotri - Function signature:
		  inv_a,info = cpotri(c,[lower,overwrite_c])
		Required arguments:
		  c : input rank-2 array('F') with bounds (n,n)
		Optional arguments:
		  overwrite_c := 0 input int
		  lower := 0 input int
		Return objects:
		  inv_a : rank-2 array('F') with bounds (n,n) and c storage
		  info : int
	**/
	static public function cpotri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cpotrs - Function signature:
		  x,info = cpotrs(c,b,[lower,overwrite_b])
		Required arguments:
		  c : input rank-2 array('F') with bounds (n,n)
		  b : input rank-2 array('F') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_b := 0 input int
		  lower := 0 input int
		Return objects:
		  x : rank-2 array('F') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function cpotrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cptsv - Function signature:
		  d,du,x,info = cptsv(d,e,b,[overwrite_d,overwrite_e,overwrite_b])
		Required arguments:
		  d : input rank-1 array('f') with bounds (*)
		  e : input rank-1 array('F') with bounds (n - 1)
		  b : input rank-2 array('F') with bounds (*,*)
		Optional arguments:
		  overwrite_d := 0 input int
		  overwrite_e := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  d : rank-1 array('f') with bounds (*)
		  du : rank-1 array('F') with bounds (n - 1) and e storage
		  x : rank-2 array('F') with bounds (*,*) and b storage
		  info : int
	**/
	static public function cptsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		crot - Function signature:
		  x,y = crot(x,y,c,s,[n,offx,incx,offy,incy,overwrite_x,overwrite_y])
		Required arguments:
		  x : input rank-1 array('F') with bounds (*)
		  y : input rank-1 array('F') with bounds (*)
		  c : input float
		  s : input complex
		Optional arguments:
		  n := (len(x)-1-offx)/abs(incx)+1 input int
		  overwrite_x := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  overwrite_y := 0 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  x : rank-1 array('F') with bounds (*)
		  y : rank-1 array('F') with bounds (*)
	**/
	static public function crot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ctgsen - Function signature:
		  a,b,alpha,beta,q,z,m,pl,pr,dif,work,iwork,info = ctgsen(select,a,b,q,z,[lwork,liwork,overwrite_a,overwrite_b,overwrite_q,overwrite_z])
		Required arguments:
		  select : input rank-1 array('i') with bounds (n)
		  a : input rank-2 array('F') with bounds (lda,*)
		  b : input rank-2 array('F') with bounds (ldb,*)
		  q : input rank-2 array('F') with bounds (ldq,*)
		  z : input rank-2 array('F') with bounds (ldz,*)
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  overwrite_q := 0 input int
		  overwrite_z := 0 input int
		  lwork := 2*m*(n-m) input int
		  liwork := n+2 input int
		Return objects:
		  a : rank-2 array('F') with bounds (lda,*)
		  b : rank-2 array('F') with bounds (ldb,*)
		  alpha : rank-1 array('F') with bounds (n)
		  beta : rank-1 array('F') with bounds (n)
		  q : rank-2 array('F') with bounds (ldq,*)
		  z : rank-2 array('F') with bounds (ldz,*)
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
		ctrsyl - Function signature:
		  x,scale,info = ctrsyl(a,b,c,[trana,tranb,isgn,overwrite_c])
		Required arguments:
		  a : input rank-2 array('F') with bounds (m,m)
		  b : input rank-2 array('F') with bounds (n,n)
		  c : input rank-2 array('F') with bounds (m,n)
		Optional arguments:
		  trana := 'N' input string(len=1)
		  tranb := 'N' input string(len=1)
		  isgn := 1 input int
		  overwrite_c := 0 input int
		Return objects:
		  x : rank-2 array('F') with bounds (m,n) and c storage
		  scale : float
		  info : int
	**/
	static public function ctrsyl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ctrtri - Function signature:
		  inv_c,info = ctrtri(c,[lower,unitdiag,overwrite_c])
		Required arguments:
		  c : input rank-2 array('F') with bounds (n,n)
		Optional arguments:
		  overwrite_c := 0 input int
		  lower := 0 input int
		  unitdiag := 0 input int
		Return objects:
		  inv_c : rank-2 array('F') with bounds (n,n) and c storage
		  info : int
	**/
	static public function ctrtri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ctrtrs - Function signature:
		  x,info = ctrtrs(a,b,[lower,trans,unitdiag,lda,overwrite_b])
		Required arguments:
		  a : input rank-2 array('F') with bounds (lda,n)
		  b : input rank-2 array('F') with bounds (ldb,nrhs)
		Optional arguments:
		  lower := 0 input int
		  trans := 0 input int
		  unitdiag := 0 input int
		  lda := shape(a,0) input int
		  overwrite_b := 0 input int
		Return objects:
		  x : rank-2 array('F') with bounds (ldb,nrhs) and b storage
		  info : int
	**/
	static public function ctrtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cunghr - Function signature:
		  ht,info = cunghr(a,tau,[lo,hi,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (n,n)
		  tau : input rank-1 array('F') with bounds (n - 1)
		Optional arguments:
		  lo := 0 input int
		  hi := n-1 input int
		  overwrite_a := 0 input int
		  lwork := hi-lo input int
		Return objects:
		  ht : rank-2 array('F') with bounds (n,n) and a storage
		  info : int
	**/
	static public function cunghr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cunghr_lwork - Function signature:
		  work,info = cunghr_lwork(n,[lo,hi])
		Required arguments:
		  n : input int
		Optional arguments:
		  lo := 0 input int
		  hi := n-1 input int
		Return objects:
		  work : complex
		  info : int
	**/
	static public function cunghr_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cungqr - Function signature:
		  q,work,info = cungqr(a,tau,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (m,n)
		  tau : input rank-1 array('F') with bounds (k)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*n input int
		Return objects:
		  q : rank-2 array('F') with bounds (m,n) and a storage
		  work : rank-1 array('F') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function cungqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cungrq - Function signature:
		  q,work,info = cungrq(a,tau,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (m,n)
		  tau : input rank-1 array('F') with bounds (k)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*m input int
		Return objects:
		  q : rank-2 array('F') with bounds (m,n) and a storage
		  work : rank-1 array('F') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function cungrq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cunmqr - Function signature:
		  cq,work,info = cunmqr(side,trans,a,tau,c,lwork,[overwrite_c])
		Required arguments:
		  side : input string(len=1)
		  trans : input string(len=1)
		  a : input rank-2 array('F') with bounds (lda,k)
		  tau : input rank-1 array('F') with bounds (k)
		  c : input rank-2 array('F') with bounds (ldc,n)
		  lwork : input int
		Optional arguments:
		  overwrite_c := 0 input int
		Return objects:
		  cq : rank-2 array('F') with bounds (ldc,n) and c storage
		  work : rank-1 array('F') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function cunmqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgbsv - Function signature:
		  lub,piv,x,info = dgbsv(kl,ku,ab,b,[overwrite_ab,overwrite_b])
		Required arguments:
		  kl : input int
		  ku : input int
		  ab : input rank-2 array('d') with bounds (2*kl+ku+1,n)
		  b : input rank-2 array('d') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_ab := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  lub : rank-2 array('d') with bounds (2*kl+ku+1,n) and ab storage
		  piv : rank-1 array('i') with bounds (n)
		  x : rank-2 array('d') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function dgbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgbtrf - Function signature:
		  lu,ipiv,info = dgbtrf(ab,kl,ku,[m,n,ldab,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('d') with bounds (ldab,*)
		  kl : input int
		  ku : input int
		Optional arguments:
		  m := shape(ab,1) input int
		  n := shape(ab,1) input int
		  overwrite_ab := 0 input int
		  ldab := shape(ab,0) input int
		Return objects:
		  lu : rank-2 array('d') with bounds (ldab,*) and ab storage
		  ipiv : rank-1 array('i') with bounds (MIN(m,n))
		  info : int
	**/
	static public function dgbtrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgbtrs - Function signature:
		  x,info = dgbtrs(ab,kl,ku,b,ipiv,[trans,n,ldab,ldb,overwrite_b])
		Required arguments:
		  ab : input rank-2 array('d') with bounds (ldab,*)
		  kl : input int
		  ku : input int
		  b : input rank-2 array('d') with bounds (ldb,*)
		  ipiv : input rank-1 array('i') with bounds (n)
		Optional arguments:
		  overwrite_b := 0 input int
		  trans := 0 input int
		  n := shape(ab,1) input int
		  ldab := shape(ab,0) input int
		  ldb := shape(b,0) input int
		Return objects:
		  x : rank-2 array('d') with bounds (ldb,*) and b storage
		  info : int
	**/
	static public function dgbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgebal - Function signature:
		  ba,lo,hi,pivscale,info = dgebal(a,[scale,permute,overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (m,n)
		Optional arguments:
		  scale := 0 input int
		  permute := 0 input int
		  overwrite_a := 0 input int
		Return objects:
		  ba : rank-2 array('d') with bounds (m,n) and a storage
		  lo : int
		  hi : int
		  pivscale : rank-1 array('d') with bounds (n)
		  info : int
	**/
	static public function dgebal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgees - Function signature:
		  t,sdim,wr,wi,vs,work,info = dgees(dselect,a,[compute_v,sort_t,lwork,dselect_extra_args,overwrite_a])
		Required arguments:
		  dselect : call-back function
		  a : input rank-2 array('d') with bounds (n,n)
		Optional arguments:
		  compute_v := 1 input int
		  sort_t := 0 input int
		  dselect_extra_args := () input tuple
		  overwrite_a := 0 input int
		  lwork := 3*n input int
		Return objects:
		  t : rank-2 array('d') with bounds (n,n) and a storage
		  sdim : int
		  wr : rank-1 array('d') with bounds (n)
		  wi : rank-1 array('d') with bounds (n)
		  vs : rank-2 array('d') with bounds (ldvs,n)
		  work : rank-1 array('d') with bounds (MAX(lwork,1))
		  info : int
		Call-back functions:
		  def dselect(arg1,arg2): return dselect
		  Required arguments:
		    arg1 : input float
		    arg2 : input float
		  Return objects:
		    dselect : int
	**/
	static public function dgees(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgeev - Function signature:
		  wr,wi,vl,vr,info = dgeev(a,[compute_vl,compute_vr,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (n,n)
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		  overwrite_a := 0 input int
		  lwork := 4*n input int
		Return objects:
		  wr : rank-1 array('d') with bounds (n)
		  wi : rank-1 array('d') with bounds (n)
		  vl : rank-2 array('d') with bounds (ldvl,n)
		  vr : rank-2 array('d') with bounds (ldvr,n)
		  info : int
	**/
	static public function dgeev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgeev_lwork - Function signature:
		  work,info = dgeev_lwork(n,[compute_vl,compute_vr])
		Required arguments:
		  n : input int
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		Return objects:
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
		
		dgegv - Function signature:
		  alphar,alphai,beta,vl,vr,info = dgegv(a,b,[compute_vl,compute_vr,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('d') with bounds (n,n)
		  b : input rank-2 array('d') with bounds (n,n)
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  lwork := 8*n input int
		Return objects:
		  alphar : rank-1 array('d') with bounds (n)
		  alphai : rank-1 array('d') with bounds (n)
		  beta : rank-1 array('d') with bounds (n)
		  vl : rank-2 array('d') with bounds (ldvl,n)
		  vr : rank-2 array('d') with bounds (ldvr,n)
		  info : int
	**/
	static public function dgegv(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		dgehrd - Function signature:
		  ht,tau,info = dgehrd(a,[lo,hi,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (n,n)
		Optional arguments:
		  lo := 0 input int
		  hi := n-1 input int
		  overwrite_a := 0 input int
		  lwork := MAX(n,1) input int
		Return objects:
		  ht : rank-2 array('d') with bounds (n,n) and a storage
		  tau : rank-1 array('d') with bounds (n - 1)
		  info : int
	**/
	static public function dgehrd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgehrd_lwork - Function signature:
		  work,info = dgehrd_lwork(n,[lo,hi])
		Required arguments:
		  n : input int
		Optional arguments:
		  lo := 0 input int
		  hi := n-1 input int
		Return objects:
		  work : float
		  info : int
	**/
	static public function dgehrd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgelsd - Function signature:
		  x,s,rank,info = dgelsd(a,b,lwork,size_iwork,[cond,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('d') with bounds (m,n)
		  b : input rank-2 array('d') with bounds (maxmn,nrhs)
		  lwork : input int
		  size_iwork : input int
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  cond := -1.0 input float
		Return objects:
		  x : rank-2 array('d') with bounds (maxmn,nrhs) and b storage
		  s : rank-1 array('d') with bounds (minmn)
		  rank : int
		  info : int
	**/
	static public function dgelsd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgelsd_lwork - Function signature:
		  work,iwork,info = dgelsd_lwork(m,n,nrhs,[cond,lwork])
		Required arguments:
		  m : input int
		  n : input int
		  nrhs : input int
		Optional arguments:
		  cond := -1.0 input float
		  lwork := -1 input int
		Return objects:
		  work : float
		  iwork : int
		  info : int
	**/
	static public function dgelsd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgelss - Function signature:
		  v,x,s,rank,work,info = dgelss(a,b,[cond,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('d') with bounds (m,n)
		  b : input rank-2 array('d') with bounds (maxmn,nrhs)
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  cond := -1.0 input float
		  lwork := 3*minmn+MAX(2*minmn,MAX(maxmn,nrhs)) input int
		Return objects:
		  v : rank-2 array('d') with bounds (m,n) and a storage
		  x : rank-2 array('d') with bounds (maxmn,nrhs) and b storage
		  s : rank-1 array('d') with bounds (minmn)
		  rank : int
		  work : rank-1 array('d') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function dgelss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgelss_lwork - Function signature:
		  work,info = dgelss_lwork(m,n,nrhs,[cond,lwork])
		Required arguments:
		  m : input int
		  n : input int
		  nrhs : input int
		Optional arguments:
		  cond := -1.0 input float
		  lwork := -1 input int
		Return objects:
		  work : float
		  info : int
	**/
	static public function dgelss_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgelsy - Function signature:
		  v,x,j,rank,info = dgelsy(a,b,jptv,cond,lwork,[overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('d') with bounds (m,n)
		  b : input rank-2 array('d') with bounds (maxmn,nrhs)
		  jptv : input rank-1 array('i') with bounds (n)
		  cond : input float
		  lwork : input int
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  v : rank-2 array('d') with bounds (m,n) and a storage
		  x : rank-2 array('d') with bounds (maxmn,nrhs) and b storage
		  j : rank-1 array('i') with bounds (n) and jptv storage
		  rank : int
		  info : int
	**/
	static public function dgelsy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgelsy_lwork - Function signature:
		  work,info = dgelsy_lwork(m,n,nrhs,cond,[lwork])
		Required arguments:
		  m : input int
		  n : input int
		  nrhs : input int
		  cond : input float
		Optional arguments:
		  lwork := -1 input int
		Return objects:
		  work : float
		  info : int
	**/
	static public function dgelsy_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgeqp3 - Function signature:
		  qr,jpvt,tau,work,info = dgeqp3(a,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*(n+1) input int
		Return objects:
		  qr : rank-2 array('d') with bounds (m,n) and a storage
		  jpvt : rank-1 array('i') with bounds (n)
		  tau : rank-1 array('d') with bounds (MIN(m,n))
		  work : rank-1 array('d') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function dgeqp3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgeqrf - Function signature:
		  qr,tau,work,info = dgeqrf(a,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*n input int
		Return objects:
		  qr : rank-2 array('d') with bounds (m,n) and a storage
		  tau : rank-1 array('d') with bounds (MIN(m,n))
		  work : rank-1 array('d') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function dgeqrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgerqf - Function signature:
		  qr,tau,work,info = dgerqf(a,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*m input int
		Return objects:
		  qr : rank-2 array('d') with bounds (m,n) and a storage
		  tau : rank-1 array('d') with bounds (MIN(m,n))
		  work : rank-1 array('d') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function dgerqf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgesdd - Function signature:
		  u,s,vt,info = dgesdd(a,[compute_uv,full_matrices,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  compute_uv := 1 input int
		  full_matrices := 1 input int
		  lwork := (compute_uv?4*minmn*minmn+MAX(m,n)+9*minmn:MAX(14*minmn+4,10*minmn+2+25*(25+8))+MAX(m,n)) input int
		Return objects:
		  u : rank-2 array('d') with bounds (u0,u1)
		  s : rank-1 array('d') with bounds (minmn)
		  vt : rank-2 array('d') with bounds (vt0,vt1)
		  info : int
	**/
	static public function dgesdd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgesdd_lwork - Function signature:
		  work,info = dgesdd_lwork(m,n,[compute_uv,full_matrices])
		Required arguments:
		  m : input int
		  n : input int
		Optional arguments:
		  compute_uv := 1 input int
		  full_matrices := 1 input int
		Return objects:
		  work : float
		  info : int
	**/
	static public function dgesdd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgesv - Function signature:
		  lu,piv,x,info = dgesv(a,b,[overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('d') with bounds (n,n)
		  b : input rank-2 array('d') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  lu : rank-2 array('d') with bounds (n,n) and a storage
		  piv : rank-1 array('i') with bounds (n)
		  x : rank-2 array('d') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function dgesv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgetrf - Function signature:
		  lu,piv,info = dgetrf(a,[overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		Return objects:
		  lu : rank-2 array('d') with bounds (m,n) and a storage
		  piv : rank-1 array('i') with bounds (MIN(m,n))
		  info : int
	**/
	static public function dgetrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgetri - Function signature:
		  inv_a,info = dgetri(lu,piv,[lwork,overwrite_lu])
		Required arguments:
		  lu : input rank-2 array('d') with bounds (n,n)
		  piv : input rank-1 array('i') with bounds (n)
		Optional arguments:
		  overwrite_lu := 0 input int
		  lwork := 3*n input int
		Return objects:
		  inv_a : rank-2 array('d') with bounds (n,n) and lu storage
		  info : int
	**/
	static public function dgetri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgetri_lwork - Function signature:
		  work,info = dgetri_lwork(n)
		Required arguments:
		  n : input int
		Return objects:
		  work : float
		  info : int
	**/
	static public function dgetri_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgetrs - Function signature:
		  x,info = dgetrs(lu,piv,b,[trans,overwrite_b])
		Required arguments:
		  lu : input rank-2 array('d') with bounds (n,n)
		  piv : input rank-1 array('i') with bounds (n)
		  b : input rank-2 array('d') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_b := 0 input int
		  trans := 0 input int
		Return objects:
		  x : rank-2 array('d') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function dgetrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgges - Function signature:
		  a,b,sdim,alphar,alphai,beta,vsl,vsr,work,info = dgges(dselect,a,b,[jobvsl,jobvsr,sort_t,ldvsl,ldvsr,lwork,dselect_extra_args,overwrite_a,overwrite_b])
		Required arguments:
		  dselect : call-back function
		  a : input rank-2 array('d') with bounds (lda,*)
		  b : input rank-2 array('d') with bounds (ldb,*)
		Optional arguments:
		  jobvsl := 1 input int
		  jobvsr := 1 input int
		  sort_t := 0 input int
		  dselect_extra_args := () input tuple
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  ldvsl := ((jobvsl==1)?n:1) input int
		  ldvsr := ((jobvsr==1)?n:1) input int
		  lwork := 8*n+16 input int
		Return objects:
		  a : rank-2 array('d') with bounds (lda,*)
		  b : rank-2 array('d') with bounds (ldb,*)
		  sdim : int
		  alphar : rank-1 array('d') with bounds (n)
		  alphai : rank-1 array('d') with bounds (n)
		  beta : rank-1 array('d') with bounds (n)
		  vsl : rank-2 array('d') with bounds (ldvsl,n)
		  vsr : rank-2 array('d') with bounds (ldvsr,n)
		  work : rank-1 array('d') with bounds (MAX(lwork,1))
		  info : int
		Call-back functions:
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
		dggev - Function signature:
		  alphar,alphai,beta,vl,vr,work,info = dggev(a,b,[compute_vl,compute_vr,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('d') with bounds (n,n)
		  b : input rank-2 array('d') with bounds (n,n)
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  lwork := 8*n input int
		Return objects:
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
		dgtsv - Function signature:
		  du2,d,du,x,info = dgtsv(dl,d,du,b,[overwrite_dl,overwrite_d,overwrite_du,overwrite_b])
		Required arguments:
		  dl : input rank-1 array('d') with bounds (n - 1)
		  d : input rank-1 array('d') with bounds (*)
		  du : input rank-1 array('d') with bounds (n - 1)
		  b : input rank-2 array('d') with bounds (*,*)
		Optional arguments:
		  overwrite_dl := 0 input int
		  overwrite_d := 0 input int
		  overwrite_du := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  du2 : rank-1 array('d') with bounds (n - 1) and dl storage
		  d : rank-1 array('d') with bounds (*)
		  du : rank-1 array('d') with bounds (n - 1)
		  x : rank-2 array('d') with bounds (*,*) and b storage
		  info : int
	**/
	static public function dgtsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dlamch - Function signature:
		  dlamch = dlamch(cmach)
		Required arguments:
		  cmach : input string(len=1)
		Return objects:
		  dlamch : float
	**/
	static public function dlamch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dlange - Function signature:
		  n2 = dlange(norm,a)
		Required arguments:
		  norm : input string(len=1)
		  a : input rank-2 array('d') with bounds (m,n)
		Return objects:
		  n2 : float
	**/
	static public function dlange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dlarf - Function signature:
		  c = dlarf(v,tau,c,work,[side,incv,overwrite_c])
		Required arguments:
		  v : input rank-1 array('d') with bounds (*)
		  tau : input float
		  c : input rank-2 array('d') with bounds (m,n)
		  work : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  side := 'L' input string(len=1)
		  incv := 1 input int
		  overwrite_c := 0 input int
		Return objects:
		  c : rank-2 array('d') with bounds (m,n)
	**/
	static public function dlarf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dlarfg - Function signature:
		  alpha,x,tau = dlarfg(n,alpha,x,[incx,overwrite_x])
		Required arguments:
		  n : input int
		  alpha : input float
		  x : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  incx := 1 input int
		Return objects:
		  alpha : float
		  x : rank-1 array('d') with bounds (*)
		  tau : float
	**/
	static public function dlarfg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dlartg - Function signature:
		  cs,sn,r = dlartg(f,g)
		Required arguments:
		  f : input float
		  g : input float
		Return objects:
		  cs : float
		  sn : float
		  r : float
	**/
	static public function dlartg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dlasd4 - Function signature:
		  delta,sigma,work,info = dlasd4(i,d,z,[rho])
		Required arguments:
		  i : input int
		  d : input rank-1 array('d') with bounds (n)
		  z : input rank-1 array('d') with bounds (n)
		Optional arguments:
		  rho := 1.0 input float
		Return objects:
		  delta : rank-1 array('d') with bounds (n)
		  sigma : float
		  work : rank-1 array('d') with bounds (n)
		  info : int
	**/
	static public function dlasd4(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dlaswp - Function signature:
		  a = dlaswp(a,piv,[k1,k2,off,inc,overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (nrows,n)
		  piv : input rank-1 array('i') with bounds (*)
		Optional arguments:
		  overwrite_a := 0 input int
		  k1 := 0 input int
		  k2 := len(piv)-1 input int
		  off := 0 input int
		  inc := 1 input int
		Return objects:
		  a : rank-2 array('d') with bounds (nrows,n)
	**/
	static public function dlaswp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dlauum - Function signature:
		  a,info = dlauum(c,[lower,overwrite_c])
		Required arguments:
		  c : input rank-2 array('d') with bounds (n,n)
		Optional arguments:
		  overwrite_c := 0 input int
		  lower := 0 input int
		Return objects:
		  a : rank-2 array('d') with bounds (n,n) and c storage
		  info : int
	**/
	static public function dlauum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dorghr - Function signature:
		  ht,info = dorghr(a,tau,[lo,hi,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (n,n)
		  tau : input rank-1 array('d') with bounds (n - 1)
		Optional arguments:
		  lo := 0 input int
		  hi := n-1 input int
		  overwrite_a := 0 input int
		  lwork := hi-lo input int
		Return objects:
		  ht : rank-2 array('d') with bounds (n,n) and a storage
		  info : int
	**/
	static public function dorghr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dorghr_lwork - Function signature:
		  work,info = dorghr_lwork(n,[lo,hi])
		Required arguments:
		  n : input int
		Optional arguments:
		  lo := 0 input int
		  hi := n-1 input int
		Return objects:
		  work : float
		  info : int
	**/
	static public function dorghr_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dorgqr - Function signature:
		  q,work,info = dorgqr(a,tau,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (m,n)
		  tau : input rank-1 array('d') with bounds (k)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*n input int
		Return objects:
		  q : rank-2 array('d') with bounds (m,n) and a storage
		  work : rank-1 array('d') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function dorgqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dorgrq - Function signature:
		  q,work,info = dorgrq(a,tau,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (m,n)
		  tau : input rank-1 array('d') with bounds (k)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*m input int
		Return objects:
		  q : rank-2 array('d') with bounds (m,n) and a storage
		  work : rank-1 array('d') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function dorgrq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dormqr - Function signature:
		  cq,work,info = dormqr(side,trans,a,tau,c,lwork,[overwrite_c])
		Required arguments:
		  side : input string(len=1)
		  trans : input string(len=1)
		  a : input rank-2 array('d') with bounds (lda,k)
		  tau : input rank-1 array('d') with bounds (k)
		  c : input rank-2 array('d') with bounds (ldc,n)
		  lwork : input int
		Optional arguments:
		  overwrite_c := 0 input int
		Return objects:
		  cq : rank-2 array('d') with bounds (ldc,n) and c storage
		  work : rank-1 array('d') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function dormqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dpbsv - Function signature:
		  c,x,info = dpbsv(ab,b,[lower,ldab,overwrite_ab,overwrite_b])
		Required arguments:
		  ab : input rank-2 array('d') with bounds (ldab,n)
		  b : input rank-2 array('d') with bounds (ldb,nrhs)
		Optional arguments:
		  lower := 0 input int
		  overwrite_ab := 0 input int
		  ldab := shape(ab,0) input int
		  overwrite_b := 0 input int
		Return objects:
		  c : rank-2 array('d') with bounds (ldab,n) and ab storage
		  x : rank-2 array('d') with bounds (ldb,nrhs) and b storage
		  info : int
	**/
	static public function dpbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dpbtrf - Function signature:
		  c,info = dpbtrf(ab,[lower,ldab,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('d') with bounds (ldab,n)
		Optional arguments:
		  lower := 0 input int
		  overwrite_ab := 0 input int
		  ldab := shape(ab,0) input int
		Return objects:
		  c : rank-2 array('d') with bounds (ldab,n) and ab storage
		  info : int
	**/
	static public function dpbtrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dpbtrs - Function signature:
		  x,info = dpbtrs(ab,b,[lower,ldab,overwrite_b])
		Required arguments:
		  ab : input rank-2 array('d') with bounds (ldab,n)
		  b : input rank-2 array('d') with bounds (ldb,nrhs)
		Optional arguments:
		  lower := 0 input int
		  ldab := shape(ab,0) input int
		  overwrite_b := 0 input int
		Return objects:
		  x : rank-2 array('d') with bounds (ldb,nrhs) and b storage
		  info : int
	**/
	static public function dpbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dposv - Function signature:
		  c,x,info = dposv(a,b,[lower,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('d') with bounds (n,n)
		  b : input rank-2 array('d') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('d') with bounds (n,n) and a storage
		  x : rank-2 array('d') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function dposv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dpotrf - Function signature:
		  c,info = dpotrf(a,[lower,clean,overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (n,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  lower := 0 input int
		  clean := 1 input int
		Return objects:
		  c : rank-2 array('d') with bounds (n,n) and a storage
		  info : int
	**/
	static public function dpotrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dpotri - Function signature:
		  inv_a,info = dpotri(c,[lower,overwrite_c])
		Required arguments:
		  c : input rank-2 array('d') with bounds (n,n)
		Optional arguments:
		  overwrite_c := 0 input int
		  lower := 0 input int
		Return objects:
		  inv_a : rank-2 array('d') with bounds (n,n) and c storage
		  info : int
	**/
	static public function dpotri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dpotrs - Function signature:
		  x,info = dpotrs(c,b,[lower,overwrite_b])
		Required arguments:
		  c : input rank-2 array('d') with bounds (n,n)
		  b : input rank-2 array('d') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_b := 0 input int
		  lower := 0 input int
		Return objects:
		  x : rank-2 array('d') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function dpotrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dptsv - Function signature:
		  d,du,x,info = dptsv(d,e,b,[overwrite_d,overwrite_e,overwrite_b])
		Required arguments:
		  d : input rank-1 array('d') with bounds (*)
		  e : input rank-1 array('d') with bounds (n - 1)
		  b : input rank-2 array('d') with bounds (*,*)
		Optional arguments:
		  overwrite_d := 0 input int
		  overwrite_e := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  d : rank-1 array('d') with bounds (*)
		  du : rank-1 array('d') with bounds (n - 1) and e storage
		  x : rank-2 array('d') with bounds (*,*) and b storage
		  info : int
	**/
	static public function dptsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dsbev - Function signature:
		  w,z,info = dsbev(ab,[compute_v,lower,ldab,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('d') with bounds (ldab,*)
		Optional arguments:
		  overwrite_ab := 1 input int
		  compute_v := 1 input int
		  lower := 0 input int
		  ldab := shape(ab,0) input int
		Return objects:
		  w : rank-1 array('d') with bounds (n)
		  z : rank-2 array('d') with bounds (ldz,ldz)
		  info : int
	**/
	static public function dsbev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dsbevd - Function signature:
		  w,z,info = dsbevd(ab,[compute_v,lower,ldab,liwork,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('d') with bounds (ldab,*)
		Optional arguments:
		  overwrite_ab := 1 input int
		  compute_v := 1 input int
		  lower := 0 input int
		  ldab := shape(ab,0) input int
		  liwork := (compute_v?3+5*n:1) input int
		Return objects:
		  w : rank-1 array('d') with bounds (n)
		  z : rank-2 array('d') with bounds (ldz,ldz)
		  info : int
	**/
	static public function dsbevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dsbevx - Function signature:
		  w,z,m,ifail,info = dsbevx(ab,vl,vu,il,iu,[ldab,compute_v,range,lower,abstol,mmax,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('d') with bounds (ldab,*)
		  vl : input float
		  vu : input float
		  il : input int
		  iu : input int
		Optional arguments:
		  overwrite_ab := 1 input int
		  ldab := shape(ab,0) input int
		  compute_v := 1 input int
		  range := 0 input int
		  lower := 0 input int
		  abstol := 0.0 input float
		  mmax := (compute_v?(range==2?(iu-il+1):n):1) input int
		Return objects:
		  w : rank-1 array('d') with bounds (n)
		  z : rank-2 array('d') with bounds (ldz,mmax)
		  m : int
		  ifail : rank-1 array('i') with bounds ((compute_v?n:1))
		  info : int
	**/
	static public function dsbevx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dsyev - Function signature:
		  w,v,info = dsyev(a,[compute_v,lower,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (n,n)
		Optional arguments:
		  compute_v := 1 input int
		  lower := 0 input int
		  overwrite_a := 0 input int
		  lwork := 3*n-1 input int
		Return objects:
		  w : rank-1 array('d') with bounds (n)
		  v : rank-2 array('d') with bounds (n,n) and a storage
		  info : int
	**/
	static public function dsyev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dsyevd - Function signature:
		  w,v,info = dsyevd(a,[compute_v,lower,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (n,n)
		Optional arguments:
		  compute_v := 1 input int
		  lower := 0 input int
		  overwrite_a := 0 input int
		  lwork := (compute_v?1+6*n+2*n*n:2*n+1) input int
		Return objects:
		  w : rank-1 array('d') with bounds (n)
		  v : rank-2 array('d') with bounds (n,n) and a storage
		  info : int
	**/
	static public function dsyevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dsyevr - Function signature:
		  w,z,info = dsyevr(a,[jobz,range,uplo,il,iu,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (n,n)
		Optional arguments:
		  jobz := 'V' input string(len=1)
		  range := 'A' input string(len=1)
		  uplo := 'L' input string(len=1)
		  overwrite_a := 0 input int
		  il := 1 input int
		  iu := n input int
		  lwork := 26*n input int
		Return objects:
		  w : rank-1 array('d') with bounds (n)
		  z : rank-2 array('d') with bounds (n,m)
		  info : int
	**/
	static public function dsyevr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dsygv - Function signature:
		  a,w,info = dsygv(a,b,[itype,jobz,uplo,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('d') with bounds (n,n)
		  b : input rank-2 array('d') with bounds (n,n)
		Optional arguments:
		  itype := 1 input int
		  jobz := 'V' input string(len=1)
		  uplo := 'L' input string(len=1)
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  a : rank-2 array('d') with bounds (n,n)
		  w : rank-1 array('d') with bounds (n)
		  info : int
	**/
	static public function dsygv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dsygvd - Function signature:
		  a,w,info = dsygvd(a,b,[itype,jobz,uplo,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('d') with bounds (n,n)
		  b : input rank-2 array('d') with bounds (n,n)
		Optional arguments:
		  itype := 1 input int
		  jobz := 'V' input string(len=1)
		  uplo := 'L' input string(len=1)
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  lwork := 1+6*n+2*n*n input int
		Return objects:
		  a : rank-2 array('d') with bounds (n,n)
		  w : rank-1 array('d') with bounds (n)
		  info : int
	**/
	static public function dsygvd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dsygvx - Function signature:
		  w,z,ifail,info = dsygvx(a,b,iu,[itype,jobz,uplo,il,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('d') with bounds (n,n)
		  b : input rank-2 array('d') with bounds (n,n)
		  iu : input int
		Optional arguments:
		  itype := 1 input int
		  jobz := 'V' input string(len=1)
		  uplo := 'L' input string(len=1)
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  il := 1 input int
		  lwork := 8*n input int
		Return objects:
		  w : rank-1 array('d') with bounds (n)
		  z : rank-2 array('d') with bounds (n,m)
		  ifail : rank-1 array('i') with bounds (n)
		  info : int
	**/
	static public function dsygvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dtgsen - Function signature:
		  a,b,alphar,alphai,beta,q,z,m,pl,pr,dif,work,iwork,info = dtgsen(select,a,b,q,z,[lwork,liwork,overwrite_a,overwrite_b,overwrite_q,overwrite_z])
		Required arguments:
		  select : input rank-1 array('i') with bounds (n)
		  a : input rank-2 array('d') with bounds (lda,*)
		  b : input rank-2 array('d') with bounds (ldb,*)
		  q : input rank-2 array('d') with bounds (ldq,*)
		  z : input rank-2 array('d') with bounds (ldz,*)
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  overwrite_q := 0 input int
		  overwrite_z := 0 input int
		  lwork := MAX(4*n+16,2*m*(n-m)) input int
		  liwork := n+6 input int
		Return objects:
		  a : rank-2 array('d') with bounds (lda,*)
		  b : rank-2 array('d') with bounds (ldb,*)
		  alphar : rank-1 array('d') with bounds (n)
		  alphai : rank-1 array('d') with bounds (n)
		  beta : rank-1 array('d') with bounds (n)
		  q : rank-2 array('d') with bounds (ldq,*)
		  z : rank-2 array('d') with bounds (ldz,*)
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
		dtrsyl - Function signature:
		  x,scale,info = dtrsyl(a,b,c,[trana,tranb,isgn,overwrite_c])
		Required arguments:
		  a : input rank-2 array('d') with bounds (m,m)
		  b : input rank-2 array('d') with bounds (n,n)
		  c : input rank-2 array('d') with bounds (m,n)
		Optional arguments:
		  trana := 'N' input string(len=1)
		  tranb := 'N' input string(len=1)
		  isgn := 1 input int
		  overwrite_c := 0 input int
		Return objects:
		  x : rank-2 array('d') with bounds (m,n) and c storage
		  scale : float
		  info : int
	**/
	static public function dtrsyl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dtrtri - Function signature:
		  inv_c,info = dtrtri(c,[lower,unitdiag,overwrite_c])
		Required arguments:
		  c : input rank-2 array('d') with bounds (n,n)
		Optional arguments:
		  overwrite_c := 0 input int
		  lower := 0 input int
		  unitdiag := 0 input int
		Return objects:
		  inv_c : rank-2 array('d') with bounds (n,n) and c storage
		  info : int
	**/
	static public function dtrtri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dtrtrs - Function signature:
		  x,info = dtrtrs(a,b,[lower,trans,unitdiag,lda,overwrite_b])
		Required arguments:
		  a : input rank-2 array('d') with bounds (lda,n)
		  b : input rank-2 array('d') with bounds (ldb,nrhs)
		Optional arguments:
		  lower := 0 input int
		  trans := 0 input int
		  unitdiag := 0 input int
		  lda := shape(a,0) input int
		  overwrite_b := 0 input int
		Return objects:
		  x : rank-2 array('d') with bounds (ldb,nrhs) and b storage
		  info : int
	**/
	static public function dtrtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgbsv - Function signature:
		  lub,piv,x,info = sgbsv(kl,ku,ab,b,[overwrite_ab,overwrite_b])
		Required arguments:
		  kl : input int
		  ku : input int
		  ab : input rank-2 array('f') with bounds (2*kl+ku+1,n)
		  b : input rank-2 array('f') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_ab := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  lub : rank-2 array('f') with bounds (2*kl+ku+1,n) and ab storage
		  piv : rank-1 array('i') with bounds (n)
		  x : rank-2 array('f') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function sgbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgbtrf - Function signature:
		  lu,ipiv,info = sgbtrf(ab,kl,ku,[m,n,ldab,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('f') with bounds (ldab,*)
		  kl : input int
		  ku : input int
		Optional arguments:
		  m := shape(ab,1) input int
		  n := shape(ab,1) input int
		  overwrite_ab := 0 input int
		  ldab := shape(ab,0) input int
		Return objects:
		  lu : rank-2 array('f') with bounds (ldab,*) and ab storage
		  ipiv : rank-1 array('i') with bounds (MIN(m,n))
		  info : int
	**/
	static public function sgbtrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgbtrs - Function signature:
		  x,info = sgbtrs(ab,kl,ku,b,ipiv,[trans,n,ldab,ldb,overwrite_b])
		Required arguments:
		  ab : input rank-2 array('f') with bounds (ldab,*)
		  kl : input int
		  ku : input int
		  b : input rank-2 array('f') with bounds (ldb,*)
		  ipiv : input rank-1 array('i') with bounds (n)
		Optional arguments:
		  overwrite_b := 0 input int
		  trans := 0 input int
		  n := shape(ab,1) input int
		  ldab := shape(ab,0) input int
		  ldb := shape(b,0) input int
		Return objects:
		  x : rank-2 array('f') with bounds (ldb,*) and b storage
		  info : int
	**/
	static public function sgbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgebal - Function signature:
		  ba,lo,hi,pivscale,info = sgebal(a,[scale,permute,overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (m,n)
		Optional arguments:
		  scale := 0 input int
		  permute := 0 input int
		  overwrite_a := 0 input int
		Return objects:
		  ba : rank-2 array('f') with bounds (m,n) and a storage
		  lo : int
		  hi : int
		  pivscale : rank-1 array('f') with bounds (n)
		  info : int
	**/
	static public function sgebal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgees - Function signature:
		  t,sdim,wr,wi,vs,work,info = sgees(sselect,a,[compute_v,sort_t,lwork,sselect_extra_args,overwrite_a])
		Required arguments:
		  sselect : call-back function
		  a : input rank-2 array('f') with bounds (n,n)
		Optional arguments:
		  compute_v := 1 input int
		  sort_t := 0 input int
		  sselect_extra_args := () input tuple
		  overwrite_a := 0 input int
		  lwork := 3*n input int
		Return objects:
		  t : rank-2 array('f') with bounds (n,n) and a storage
		  sdim : int
		  wr : rank-1 array('f') with bounds (n)
		  wi : rank-1 array('f') with bounds (n)
		  vs : rank-2 array('f') with bounds (ldvs,n)
		  work : rank-1 array('f') with bounds (MAX(lwork,1))
		  info : int
		Call-back functions:
		  def sselect(arg1,arg2): return sselect
		  Required arguments:
		    arg1 : input float
		    arg2 : input float
		  Return objects:
		    sselect : int
	**/
	static public function sgees(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgeev - Function signature:
		  wr,wi,vl,vr,info = sgeev(a,[compute_vl,compute_vr,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (n,n)
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		  overwrite_a := 0 input int
		  lwork := 4*n input int
		Return objects:
		  wr : rank-1 array('f') with bounds (n)
		  wi : rank-1 array('f') with bounds (n)
		  vl : rank-2 array('f') with bounds (ldvl,n)
		  vr : rank-2 array('f') with bounds (ldvr,n)
		  info : int
	**/
	static public function sgeev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgeev_lwork - Function signature:
		  work,info = sgeev_lwork(n,[compute_vl,compute_vr])
		Required arguments:
		  n : input int
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		Return objects:
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
		
		sgegv - Function signature:
		  alphar,alphai,beta,vl,vr,info = sgegv(a,b,[compute_vl,compute_vr,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('f') with bounds (n,n)
		  b : input rank-2 array('f') with bounds (n,n)
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  lwork := 8*n input int
		Return objects:
		  alphar : rank-1 array('f') with bounds (n)
		  alphai : rank-1 array('f') with bounds (n)
		  beta : rank-1 array('f') with bounds (n)
		  vl : rank-2 array('f') with bounds (ldvl,n)
		  vr : rank-2 array('f') with bounds (ldvr,n)
		  info : int
	**/
	static public function sgegv(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		sgehrd - Function signature:
		  ht,tau,info = sgehrd(a,[lo,hi,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (n,n)
		Optional arguments:
		  lo := 0 input int
		  hi := n-1 input int
		  overwrite_a := 0 input int
		  lwork := MAX(n,1) input int
		Return objects:
		  ht : rank-2 array('f') with bounds (n,n) and a storage
		  tau : rank-1 array('f') with bounds (n - 1)
		  info : int
	**/
	static public function sgehrd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgehrd_lwork - Function signature:
		  work,info = sgehrd_lwork(n,[lo,hi])
		Required arguments:
		  n : input int
		Optional arguments:
		  lo := 0 input int
		  hi := n-1 input int
		Return objects:
		  work : float
		  info : int
	**/
	static public function sgehrd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgelsd - Function signature:
		  x,s,rank,info = sgelsd(a,b,lwork,size_iwork,[cond,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('f') with bounds (m,n)
		  b : input rank-2 array('f') with bounds (maxmn,nrhs)
		  lwork : input int
		  size_iwork : input int
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  cond := -1.0 input float
		Return objects:
		  x : rank-2 array('f') with bounds (maxmn,nrhs) and b storage
		  s : rank-1 array('f') with bounds (minmn)
		  rank : int
		  info : int
	**/
	static public function sgelsd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgelsd_lwork - Function signature:
		  work,iwork,info = sgelsd_lwork(m,n,nrhs,[cond,lwork])
		Required arguments:
		  m : input int
		  n : input int
		  nrhs : input int
		Optional arguments:
		  cond := -1.0 input float
		  lwork := -1 input int
		Return objects:
		  work : float
		  iwork : int
		  info : int
	**/
	static public function sgelsd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgelss - Function signature:
		  v,x,s,rank,work,info = sgelss(a,b,[cond,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('f') with bounds (m,n)
		  b : input rank-2 array('f') with bounds (maxmn,nrhs)
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  cond := -1.0 input float
		  lwork := 3*minmn+MAX(2*minmn,MAX(maxmn,nrhs)) input int
		Return objects:
		  v : rank-2 array('f') with bounds (m,n) and a storage
		  x : rank-2 array('f') with bounds (maxmn,nrhs) and b storage
		  s : rank-1 array('f') with bounds (minmn)
		  rank : int
		  work : rank-1 array('f') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function sgelss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgelss_lwork - Function signature:
		  work,info = sgelss_lwork(m,n,nrhs,[cond,lwork])
		Required arguments:
		  m : input int
		  n : input int
		  nrhs : input int
		Optional arguments:
		  cond := -1.0 input float
		  lwork := -1 input int
		Return objects:
		  work : float
		  info : int
	**/
	static public function sgelss_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgelsy - Function signature:
		  v,x,j,rank,info = sgelsy(a,b,jptv,cond,lwork,[overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('f') with bounds (m,n)
		  b : input rank-2 array('f') with bounds (maxmn,nrhs)
		  jptv : input rank-1 array('i') with bounds (n)
		  cond : input float
		  lwork : input int
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  v : rank-2 array('f') with bounds (m,n) and a storage
		  x : rank-2 array('f') with bounds (maxmn,nrhs) and b storage
		  j : rank-1 array('i') with bounds (n) and jptv storage
		  rank : int
		  info : int
	**/
	static public function sgelsy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgelsy_lwork - Function signature:
		  work,info = sgelsy_lwork(m,n,nrhs,cond,[lwork])
		Required arguments:
		  m : input int
		  n : input int
		  nrhs : input int
		  cond : input float
		Optional arguments:
		  lwork := -1 input int
		Return objects:
		  work : float
		  info : int
	**/
	static public function sgelsy_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgeqp3 - Function signature:
		  qr,jpvt,tau,work,info = sgeqp3(a,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*(n+1) input int
		Return objects:
		  qr : rank-2 array('f') with bounds (m,n) and a storage
		  jpvt : rank-1 array('i') with bounds (n)
		  tau : rank-1 array('f') with bounds (MIN(m,n))
		  work : rank-1 array('f') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function sgeqp3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgeqrf - Function signature:
		  qr,tau,work,info = sgeqrf(a,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*n input int
		Return objects:
		  qr : rank-2 array('f') with bounds (m,n) and a storage
		  tau : rank-1 array('f') with bounds (MIN(m,n))
		  work : rank-1 array('f') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function sgeqrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgerqf - Function signature:
		  qr,tau,work,info = sgerqf(a,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*m input int
		Return objects:
		  qr : rank-2 array('f') with bounds (m,n) and a storage
		  tau : rank-1 array('f') with bounds (MIN(m,n))
		  work : rank-1 array('f') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function sgerqf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgesdd - Function signature:
		  u,s,vt,info = sgesdd(a,[compute_uv,full_matrices,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  compute_uv := 1 input int
		  full_matrices := 1 input int
		  lwork := (compute_uv?4*minmn*minmn+MAX(m,n)+9*minmn:MAX(14*minmn+4,10*minmn+2+25*(25+8))+MAX(m,n)) input int
		Return objects:
		  u : rank-2 array('f') with bounds (u0,u1)
		  s : rank-1 array('f') with bounds (minmn)
		  vt : rank-2 array('f') with bounds (vt0,vt1)
		  info : int
	**/
	static public function sgesdd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgesdd_lwork - Function signature:
		  work,info = sgesdd_lwork(m,n,[compute_uv,full_matrices])
		Required arguments:
		  m : input int
		  n : input int
		Optional arguments:
		  compute_uv := 1 input int
		  full_matrices := 1 input int
		Return objects:
		  work : float
		  info : int
	**/
	static public function sgesdd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgesv - Function signature:
		  lu,piv,x,info = sgesv(a,b,[overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('f') with bounds (n,n)
		  b : input rank-2 array('f') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  lu : rank-2 array('f') with bounds (n,n) and a storage
		  piv : rank-1 array('i') with bounds (n)
		  x : rank-2 array('f') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function sgesv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgetrf - Function signature:
		  lu,piv,info = sgetrf(a,[overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		Return objects:
		  lu : rank-2 array('f') with bounds (m,n) and a storage
		  piv : rank-1 array('i') with bounds (MIN(m,n))
		  info : int
	**/
	static public function sgetrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgetri - Function signature:
		  inv_a,info = sgetri(lu,piv,[lwork,overwrite_lu])
		Required arguments:
		  lu : input rank-2 array('f') with bounds (n,n)
		  piv : input rank-1 array('i') with bounds (n)
		Optional arguments:
		  overwrite_lu := 0 input int
		  lwork := 3*n input int
		Return objects:
		  inv_a : rank-2 array('f') with bounds (n,n) and lu storage
		  info : int
	**/
	static public function sgetri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgetri_lwork - Function signature:
		  work,info = sgetri_lwork(n)
		Required arguments:
		  n : input int
		Return objects:
		  work : float
		  info : int
	**/
	static public function sgetri_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgetrs - Function signature:
		  x,info = sgetrs(lu,piv,b,[trans,overwrite_b])
		Required arguments:
		  lu : input rank-2 array('f') with bounds (n,n)
		  piv : input rank-1 array('i') with bounds (n)
		  b : input rank-2 array('f') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_b := 0 input int
		  trans := 0 input int
		Return objects:
		  x : rank-2 array('f') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function sgetrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgges - Function signature:
		  a,b,sdim,alphar,alphai,beta,vsl,vsr,work,info = sgges(sselect,a,b,[jobvsl,jobvsr,sort_t,ldvsl,ldvsr,lwork,sselect_extra_args,overwrite_a,overwrite_b])
		Required arguments:
		  sselect : call-back function
		  a : input rank-2 array('f') with bounds (lda,*)
		  b : input rank-2 array('f') with bounds (ldb,*)
		Optional arguments:
		  jobvsl := 1 input int
		  jobvsr := 1 input int
		  sort_t := 0 input int
		  sselect_extra_args := () input tuple
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  ldvsl := ((jobvsl==1)?n:1) input int
		  ldvsr := ((jobvsr==1)?n:1) input int
		  lwork := 8*n+16 input int
		Return objects:
		  a : rank-2 array('f') with bounds (lda,*)
		  b : rank-2 array('f') with bounds (ldb,*)
		  sdim : int
		  alphar : rank-1 array('f') with bounds (n)
		  alphai : rank-1 array('f') with bounds (n)
		  beta : rank-1 array('f') with bounds (n)
		  vsl : rank-2 array('f') with bounds (ldvsl,n)
		  vsr : rank-2 array('f') with bounds (ldvsr,n)
		  work : rank-1 array('f') with bounds (MAX(lwork,1))
		  info : int
		Call-back functions:
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
		sggev - Function signature:
		  alphar,alphai,beta,vl,vr,work,info = sggev(a,b,[compute_vl,compute_vr,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('f') with bounds (n,n)
		  b : input rank-2 array('f') with bounds (n,n)
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  lwork := 8*n input int
		Return objects:
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
		sgtsv - Function signature:
		  du2,d,du,x,info = sgtsv(dl,d,du,b,[overwrite_dl,overwrite_d,overwrite_du,overwrite_b])
		Required arguments:
		  dl : input rank-1 array('f') with bounds (n - 1)
		  d : input rank-1 array('f') with bounds (*)
		  du : input rank-1 array('f') with bounds (n - 1)
		  b : input rank-2 array('f') with bounds (*,*)
		Optional arguments:
		  overwrite_dl := 0 input int
		  overwrite_d := 0 input int
		  overwrite_du := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  du2 : rank-1 array('f') with bounds (n - 1) and dl storage
		  d : rank-1 array('f') with bounds (*)
		  du : rank-1 array('f') with bounds (n - 1)
		  x : rank-2 array('f') with bounds (*,*) and b storage
		  info : int
	**/
	static public function sgtsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		slamch - Function signature:
		  slamch = slamch(cmach)
		Required arguments:
		  cmach : input string(len=1)
		Return objects:
		  slamch : float
	**/
	static public function slamch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		slange - Function signature:
		  n2 = slange(norm,a)
		Required arguments:
		  norm : input string(len=1)
		  a : input rank-2 array('f') with bounds (m,n)
		Return objects:
		  n2 : float
	**/
	static public function slange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		slarf - Function signature:
		  c = slarf(v,tau,c,work,[side,incv,overwrite_c])
		Required arguments:
		  v : input rank-1 array('f') with bounds (*)
		  tau : input float
		  c : input rank-2 array('f') with bounds (m,n)
		  work : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  side := 'L' input string(len=1)
		  incv := 1 input int
		  overwrite_c := 0 input int
		Return objects:
		  c : rank-2 array('f') with bounds (m,n)
	**/
	static public function slarf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		slarfg - Function signature:
		  alpha,x,tau = slarfg(n,alpha,x,[incx,overwrite_x])
		Required arguments:
		  n : input int
		  alpha : input float
		  x : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  incx := 1 input int
		Return objects:
		  alpha : float
		  x : rank-1 array('f') with bounds (*)
		  tau : float
	**/
	static public function slarfg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		slartg - Function signature:
		  cs,sn,r = slartg(f,g)
		Required arguments:
		  f : input float
		  g : input float
		Return objects:
		  cs : float
		  sn : float
		  r : float
	**/
	static public function slartg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		slasd4 - Function signature:
		  delta,sigma,work,info = slasd4(i,d,z,[rho])
		Required arguments:
		  i : input int
		  d : input rank-1 array('f') with bounds (n)
		  z : input rank-1 array('f') with bounds (n)
		Optional arguments:
		  rho := 1.0 input float
		Return objects:
		  delta : rank-1 array('f') with bounds (n)
		  sigma : float
		  work : rank-1 array('f') with bounds (n)
		  info : int
	**/
	static public function slasd4(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		slaswp - Function signature:
		  a = slaswp(a,piv,[k1,k2,off,inc,overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (nrows,n)
		  piv : input rank-1 array('i') with bounds (*)
		Optional arguments:
		  overwrite_a := 0 input int
		  k1 := 0 input int
		  k2 := len(piv)-1 input int
		  off := 0 input int
		  inc := 1 input int
		Return objects:
		  a : rank-2 array('f') with bounds (nrows,n)
	**/
	static public function slaswp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		slauum - Function signature:
		  a,info = slauum(c,[lower,overwrite_c])
		Required arguments:
		  c : input rank-2 array('f') with bounds (n,n)
		Optional arguments:
		  overwrite_c := 0 input int
		  lower := 0 input int
		Return objects:
		  a : rank-2 array('f') with bounds (n,n) and c storage
		  info : int
	**/
	static public function slauum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sorghr - Function signature:
		  ht,info = sorghr(a,tau,[lo,hi,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (n,n)
		  tau : input rank-1 array('f') with bounds (n - 1)
		Optional arguments:
		  lo := 0 input int
		  hi := n-1 input int
		  overwrite_a := 0 input int
		  lwork := hi-lo input int
		Return objects:
		  ht : rank-2 array('f') with bounds (n,n) and a storage
		  info : int
	**/
	static public function sorghr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sorghr_lwork - Function signature:
		  work,info = sorghr_lwork(n,[lo,hi])
		Required arguments:
		  n : input int
		Optional arguments:
		  lo := 0 input int
		  hi := n-1 input int
		Return objects:
		  work : float
		  info : int
	**/
	static public function sorghr_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sorgqr - Function signature:
		  q,work,info = sorgqr(a,tau,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (m,n)
		  tau : input rank-1 array('f') with bounds (k)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*n input int
		Return objects:
		  q : rank-2 array('f') with bounds (m,n) and a storage
		  work : rank-1 array('f') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function sorgqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sorgrq - Function signature:
		  q,work,info = sorgrq(a,tau,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (m,n)
		  tau : input rank-1 array('f') with bounds (k)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*m input int
		Return objects:
		  q : rank-2 array('f') with bounds (m,n) and a storage
		  work : rank-1 array('f') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function sorgrq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sormqr - Function signature:
		  cq,work,info = sormqr(side,trans,a,tau,c,lwork,[overwrite_c])
		Required arguments:
		  side : input string(len=1)
		  trans : input string(len=1)
		  a : input rank-2 array('f') with bounds (lda,k)
		  tau : input rank-1 array('f') with bounds (k)
		  c : input rank-2 array('f') with bounds (ldc,n)
		  lwork : input int
		Optional arguments:
		  overwrite_c := 0 input int
		Return objects:
		  cq : rank-2 array('f') with bounds (ldc,n) and c storage
		  work : rank-1 array('f') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function sormqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		spbsv - Function signature:
		  c,x,info = spbsv(ab,b,[lower,ldab,overwrite_ab,overwrite_b])
		Required arguments:
		  ab : input rank-2 array('f') with bounds (ldab,n)
		  b : input rank-2 array('f') with bounds (ldb,nrhs)
		Optional arguments:
		  lower := 0 input int
		  overwrite_ab := 0 input int
		  ldab := shape(ab,0) input int
		  overwrite_b := 0 input int
		Return objects:
		  c : rank-2 array('f') with bounds (ldab,n) and ab storage
		  x : rank-2 array('f') with bounds (ldb,nrhs) and b storage
		  info : int
	**/
	static public function spbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		spbtrf - Function signature:
		  c,info = spbtrf(ab,[lower,ldab,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('f') with bounds (ldab,n)
		Optional arguments:
		  lower := 0 input int
		  overwrite_ab := 0 input int
		  ldab := shape(ab,0) input int
		Return objects:
		  c : rank-2 array('f') with bounds (ldab,n) and ab storage
		  info : int
	**/
	static public function spbtrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		spbtrs - Function signature:
		  x,info = spbtrs(ab,b,[lower,ldab,overwrite_b])
		Required arguments:
		  ab : input rank-2 array('f') with bounds (ldab,n)
		  b : input rank-2 array('f') with bounds (ldb,nrhs)
		Optional arguments:
		  lower := 0 input int
		  ldab := shape(ab,0) input int
		  overwrite_b := 0 input int
		Return objects:
		  x : rank-2 array('f') with bounds (ldb,nrhs) and b storage
		  info : int
	**/
	static public function spbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sposv - Function signature:
		  c,x,info = sposv(a,b,[lower,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('f') with bounds (n,n)
		  b : input rank-2 array('f') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('f') with bounds (n,n) and a storage
		  x : rank-2 array('f') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function sposv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		spotrf - Function signature:
		  c,info = spotrf(a,[lower,clean,overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (n,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  lower := 0 input int
		  clean := 1 input int
		Return objects:
		  c : rank-2 array('f') with bounds (n,n) and a storage
		  info : int
	**/
	static public function spotrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		spotri - Function signature:
		  inv_a,info = spotri(c,[lower,overwrite_c])
		Required arguments:
		  c : input rank-2 array('f') with bounds (n,n)
		Optional arguments:
		  overwrite_c := 0 input int
		  lower := 0 input int
		Return objects:
		  inv_a : rank-2 array('f') with bounds (n,n) and c storage
		  info : int
	**/
	static public function spotri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		spotrs - Function signature:
		  x,info = spotrs(c,b,[lower,overwrite_b])
		Required arguments:
		  c : input rank-2 array('f') with bounds (n,n)
		  b : input rank-2 array('f') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_b := 0 input int
		  lower := 0 input int
		Return objects:
		  x : rank-2 array('f') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function spotrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sptsv - Function signature:
		  d,du,x,info = sptsv(d,e,b,[overwrite_d,overwrite_e,overwrite_b])
		Required arguments:
		  d : input rank-1 array('f') with bounds (*)
		  e : input rank-1 array('f') with bounds (n - 1)
		  b : input rank-2 array('f') with bounds (*,*)
		Optional arguments:
		  overwrite_d := 0 input int
		  overwrite_e := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  d : rank-1 array('f') with bounds (*)
		  du : rank-1 array('f') with bounds (n - 1) and e storage
		  x : rank-2 array('f') with bounds (*,*) and b storage
		  info : int
	**/
	static public function sptsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ssbev - Function signature:
		  w,z,info = ssbev(ab,[compute_v,lower,ldab,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('f') with bounds (ldab,*)
		Optional arguments:
		  overwrite_ab := 1 input int
		  compute_v := 1 input int
		  lower := 0 input int
		  ldab := shape(ab,0) input int
		Return objects:
		  w : rank-1 array('f') with bounds (n)
		  z : rank-2 array('f') with bounds (ldz,ldz)
		  info : int
	**/
	static public function ssbev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ssbevd - Function signature:
		  w,z,info = ssbevd(ab,[compute_v,lower,ldab,liwork,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('f') with bounds (ldab,*)
		Optional arguments:
		  overwrite_ab := 1 input int
		  compute_v := 1 input int
		  lower := 0 input int
		  ldab := shape(ab,0) input int
		  liwork := (compute_v?3+5*n:1) input int
		Return objects:
		  w : rank-1 array('f') with bounds (n)
		  z : rank-2 array('f') with bounds (ldz,ldz)
		  info : int
	**/
	static public function ssbevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ssbevx - Function signature:
		  w,z,m,ifail,info = ssbevx(ab,vl,vu,il,iu,[ldab,compute_v,range,lower,abstol,mmax,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('f') with bounds (ldab,*)
		  vl : input float
		  vu : input float
		  il : input int
		  iu : input int
		Optional arguments:
		  overwrite_ab := 1 input int
		  ldab := shape(ab,0) input int
		  compute_v := 1 input int
		  range := 0 input int
		  lower := 0 input int
		  abstol := 0.0 input float
		  mmax := (compute_v?(range==2?(iu-il+1):n):1) input int
		Return objects:
		  w : rank-1 array('f') with bounds (n)
		  z : rank-2 array('f') with bounds (ldz,mmax)
		  m : int
		  ifail : rank-1 array('i') with bounds ((compute_v?n:1))
		  info : int
	**/
	static public function ssbevx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ssyev - Function signature:
		  w,v,info = ssyev(a,[compute_v,lower,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (n,n)
		Optional arguments:
		  compute_v := 1 input int
		  lower := 0 input int
		  overwrite_a := 0 input int
		  lwork := 3*n-1 input int
		Return objects:
		  w : rank-1 array('f') with bounds (n)
		  v : rank-2 array('f') with bounds (n,n) and a storage
		  info : int
	**/
	static public function ssyev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ssyevd - Function signature:
		  w,v,info = ssyevd(a,[compute_v,lower,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (n,n)
		Optional arguments:
		  compute_v := 1 input int
		  lower := 0 input int
		  overwrite_a := 0 input int
		  lwork := (compute_v?1+6*n+2*n*n:2*n+1) input int
		Return objects:
		  w : rank-1 array('f') with bounds (n)
		  v : rank-2 array('f') with bounds (n,n) and a storage
		  info : int
	**/
	static public function ssyevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ssyevr - Function signature:
		  w,z,info = ssyevr(a,[jobz,range,uplo,il,iu,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (n,n)
		Optional arguments:
		  jobz := 'V' input string(len=1)
		  range := 'A' input string(len=1)
		  uplo := 'L' input string(len=1)
		  overwrite_a := 0 input int
		  il := 1 input int
		  iu := n input int
		  lwork := 26*n input int
		Return objects:
		  w : rank-1 array('f') with bounds (n)
		  z : rank-2 array('f') with bounds (n,m)
		  info : int
	**/
	static public function ssyevr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ssygv - Function signature:
		  a,w,info = ssygv(a,b,[itype,jobz,uplo,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('f') with bounds (n,n)
		  b : input rank-2 array('f') with bounds (n,n)
		Optional arguments:
		  itype := 1 input int
		  jobz := 'V' input string(len=1)
		  uplo := 'L' input string(len=1)
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  a : rank-2 array('f') with bounds (n,n)
		  w : rank-1 array('f') with bounds (n)
		  info : int
	**/
	static public function ssygv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ssygvd - Function signature:
		  a,w,info = ssygvd(a,b,[itype,jobz,uplo,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('f') with bounds (n,n)
		  b : input rank-2 array('f') with bounds (n,n)
		Optional arguments:
		  itype := 1 input int
		  jobz := 'V' input string(len=1)
		  uplo := 'L' input string(len=1)
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  lwork := 1+6*n+2*n*n input int
		Return objects:
		  a : rank-2 array('f') with bounds (n,n)
		  w : rank-1 array('f') with bounds (n)
		  info : int
	**/
	static public function ssygvd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ssygvx - Function signature:
		  w,z,ifail,info = ssygvx(a,b,iu,[itype,jobz,uplo,il,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('f') with bounds (n,n)
		  b : input rank-2 array('f') with bounds (n,n)
		  iu : input int
		Optional arguments:
		  itype := 1 input int
		  jobz := 'V' input string(len=1)
		  uplo := 'L' input string(len=1)
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  il := 1 input int
		  lwork := 8*n input int
		Return objects:
		  w : rank-1 array('f') with bounds (n)
		  z : rank-2 array('f') with bounds (n,m)
		  ifail : rank-1 array('i') with bounds (n)
		  info : int
	**/
	static public function ssygvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		stgsen - Function signature:
		  a,b,alphar,alphai,beta,q,z,m,pl,pr,dif,work,iwork,info = stgsen(select,a,b,q,z,[lwork,liwork,overwrite_a,overwrite_b,overwrite_q,overwrite_z])
		Required arguments:
		  select : input rank-1 array('i') with bounds (n)
		  a : input rank-2 array('f') with bounds (lda,*)
		  b : input rank-2 array('f') with bounds (ldb,*)
		  q : input rank-2 array('f') with bounds (ldq,*)
		  z : input rank-2 array('f') with bounds (ldz,*)
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  overwrite_q := 0 input int
		  overwrite_z := 0 input int
		  lwork := MAX(4*n+16,2*m*(n-m)) input int
		  liwork := n+6 input int
		Return objects:
		  a : rank-2 array('f') with bounds (lda,*)
		  b : rank-2 array('f') with bounds (ldb,*)
		  alphar : rank-1 array('f') with bounds (n)
		  alphai : rank-1 array('f') with bounds (n)
		  beta : rank-1 array('f') with bounds (n)
		  q : rank-2 array('f') with bounds (ldq,*)
		  z : rank-2 array('f') with bounds (ldz,*)
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
		strsyl - Function signature:
		  x,scale,info = strsyl(a,b,c,[trana,tranb,isgn,overwrite_c])
		Required arguments:
		  a : input rank-2 array('f') with bounds (m,m)
		  b : input rank-2 array('f') with bounds (n,n)
		  c : input rank-2 array('f') with bounds (m,n)
		Optional arguments:
		  trana := 'N' input string(len=1)
		  tranb := 'N' input string(len=1)
		  isgn := 1 input int
		  overwrite_c := 0 input int
		Return objects:
		  x : rank-2 array('f') with bounds (m,n) and c storage
		  scale : float
		  info : int
	**/
	static public function strsyl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		strtri - Function signature:
		  inv_c,info = strtri(c,[lower,unitdiag,overwrite_c])
		Required arguments:
		  c : input rank-2 array('f') with bounds (n,n)
		Optional arguments:
		  overwrite_c := 0 input int
		  lower := 0 input int
		  unitdiag := 0 input int
		Return objects:
		  inv_c : rank-2 array('f') with bounds (n,n) and c storage
		  info : int
	**/
	static public function strtri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		strtrs - Function signature:
		  x,info = strtrs(a,b,[lower,trans,unitdiag,lda,overwrite_b])
		Required arguments:
		  a : input rank-2 array('f') with bounds (lda,n)
		  b : input rank-2 array('f') with bounds (ldb,nrhs)
		Optional arguments:
		  lower := 0 input int
		  trans := 0 input int
		  unitdiag := 0 input int
		  lda := shape(a,0) input int
		  overwrite_b := 0 input int
		Return objects:
		  x : rank-2 array('f') with bounds (ldb,nrhs) and b storage
		  info : int
	**/
	static public function strtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgbsv - Function signature:
		  lub,piv,x,info = zgbsv(kl,ku,ab,b,[overwrite_ab,overwrite_b])
		Required arguments:
		  kl : input int
		  ku : input int
		  ab : input rank-2 array('D') with bounds (2*kl+ku+1,n)
		  b : input rank-2 array('D') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_ab := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  lub : rank-2 array('D') with bounds (2*kl+ku+1,n) and ab storage
		  piv : rank-1 array('i') with bounds (n)
		  x : rank-2 array('D') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function zgbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgbtrf - Function signature:
		  lu,ipiv,info = zgbtrf(ab,kl,ku,[m,n,ldab,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('D') with bounds (ldab,*)
		  kl : input int
		  ku : input int
		Optional arguments:
		  m := shape(ab,1) input int
		  n := shape(ab,1) input int
		  overwrite_ab := 0 input int
		  ldab := shape(ab,0) input int
		Return objects:
		  lu : rank-2 array('D') with bounds (ldab,*) and ab storage
		  ipiv : rank-1 array('i') with bounds (MIN(m,n))
		  info : int
	**/
	static public function zgbtrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgbtrs - Function signature:
		  x,info = zgbtrs(ab,kl,ku,b,ipiv,[trans,n,ldab,ldb,overwrite_b])
		Required arguments:
		  ab : input rank-2 array('D') with bounds (ldab,*)
		  kl : input int
		  ku : input int
		  b : input rank-2 array('D') with bounds (ldb,*)
		  ipiv : input rank-1 array('i') with bounds (n)
		Optional arguments:
		  overwrite_b := 0 input int
		  trans := 0 input int
		  n := shape(ab,1) input int
		  ldab := shape(ab,0) input int
		  ldb := shape(b,0) input int
		Return objects:
		  x : rank-2 array('D') with bounds (ldb,*) and b storage
		  info : int
	**/
	static public function zgbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgebal - Function signature:
		  ba,lo,hi,pivscale,info = zgebal(a,[scale,permute,overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (m,n)
		Optional arguments:
		  scale := 0 input int
		  permute := 0 input int
		  overwrite_a := 0 input int
		Return objects:
		  ba : rank-2 array('D') with bounds (m,n) and a storage
		  lo : int
		  hi : int
		  pivscale : rank-1 array('d') with bounds (n)
		  info : int
	**/
	static public function zgebal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgees - Function signature:
		  t,sdim,w,vs,work,info = zgees(zselect,a,[compute_v,sort_t,lwork,zselect_extra_args,overwrite_a])
		Required arguments:
		  zselect : call-back function
		  a : input rank-2 array('D') with bounds (n,n)
		Optional arguments:
		  compute_v := 1 input int
		  sort_t := 0 input int
		  zselect_extra_args := () input tuple
		  overwrite_a := 0 input int
		  lwork := 3*n input int
		Return objects:
		  t : rank-2 array('D') with bounds (n,n) and a storage
		  sdim : int
		  w : rank-1 array('D') with bounds (n)
		  vs : rank-2 array('D') with bounds (ldvs,n)
		  work : rank-1 array('D') with bounds (MAX(lwork,1))
		  info : int
		Call-back functions:
		  def zselect(arg): return zselect
		  Required arguments:
		    arg : input complex
		  Return objects:
		    zselect : int
	**/
	static public function zgees(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgeev - Function signature:
		  w,vl,vr,info = zgeev(a,[compute_vl,compute_vr,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (n,n)
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		  overwrite_a := 0 input int
		  lwork := 2*n input int
		Return objects:
		  w : rank-1 array('D') with bounds (n)
		  vl : rank-2 array('D') with bounds (ldvl,n)
		  vr : rank-2 array('D') with bounds (ldvr,n)
		  info : int
	**/
	static public function zgeev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgeev_lwork - Function signature:
		  work,info = zgeev_lwork(n,[compute_vl,compute_vr])
		Required arguments:
		  n : input int
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		Return objects:
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
		
		zgegv - Function signature:
		  alpha,beta,vl,vr,info = zgegv(a,b,[compute_vl,compute_vr,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('D') with bounds (n,n)
		  b : input rank-2 array('D') with bounds (n,n)
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  lwork := 2*n input int
		Return objects:
		  alpha : rank-1 array('D') with bounds (n)
		  beta : rank-1 array('D') with bounds (n)
		  vl : rank-2 array('D') with bounds (ldvl,n)
		  vr : rank-2 array('D') with bounds (ldvr,n)
		  info : int
	**/
	static public function zgegv(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		zgehrd - Function signature:
		  ht,tau,info = zgehrd(a,[lo,hi,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (n,n)
		Optional arguments:
		  lo := 0 input int
		  hi := n-1 input int
		  overwrite_a := 0 input int
		  lwork := MAX(n,1) input int
		Return objects:
		  ht : rank-2 array('D') with bounds (n,n) and a storage
		  tau : rank-1 array('D') with bounds (n - 1)
		  info : int
	**/
	static public function zgehrd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgehrd_lwork - Function signature:
		  work,info = zgehrd_lwork(n,[lo,hi])
		Required arguments:
		  n : input int
		Optional arguments:
		  lo := 0 input int
		  hi := n-1 input int
		Return objects:
		  work : complex
		  info : int
	**/
	static public function zgehrd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgelsd - Function signature:
		  x,s,rank,info = zgelsd(a,b,lwork,size_rwork,size_iwork,[cond,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('D') with bounds (m,n)
		  b : input rank-2 array('D') with bounds (maxmn,nrhs)
		  lwork : input int
		  size_rwork : input int
		  size_iwork : input int
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  cond := -1.0 input float
		Return objects:
		  x : rank-2 array('D') with bounds (maxmn,nrhs) and b storage
		  s : rank-1 array('d') with bounds (minmn)
		  rank : int
		  info : int
	**/
	static public function zgelsd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgelsd_lwork - Function signature:
		  work,rwork,iwork,info = zgelsd_lwork(m,n,nrhs,[cond,lwork])
		Required arguments:
		  m : input int
		  n : input int
		  nrhs : input int
		Optional arguments:
		  cond := -1.0 input float
		  lwork := -1 input int
		Return objects:
		  work : complex
		  rwork : float
		  iwork : int
		  info : int
	**/
	static public function zgelsd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgelss - Function signature:
		  v,x,s,rank,work,info = zgelss(a,b,[cond,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('D') with bounds (m,n)
		  b : input rank-2 array('D') with bounds (maxmn,nrhs)
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  cond := -1.0 input float
		  lwork := 2*minmn+MAX(maxmn,nrhs) input int
		Return objects:
		  v : rank-2 array('D') with bounds (m,n) and a storage
		  x : rank-2 array('D') with bounds (maxmn,nrhs) and b storage
		  s : rank-1 array('d') with bounds (minmn)
		  rank : int
		  work : rank-1 array('D') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function zgelss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgelss_lwork - Function signature:
		  work,info = zgelss_lwork(m,n,nrhs,[cond,lwork])
		Required arguments:
		  m : input int
		  n : input int
		  nrhs : input int
		Optional arguments:
		  cond := -1.0 input float
		  lwork := -1 input int
		Return objects:
		  work : complex
		  info : int
	**/
	static public function zgelss_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgelsy - Function signature:
		  v,x,j,rank,info = zgelsy(a,b,jptv,cond,lwork,[overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('D') with bounds (m,n)
		  b : input rank-2 array('D') with bounds (maxmn,nrhs)
		  jptv : input rank-1 array('i') with bounds (n)
		  cond : input float
		  lwork : input int
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  v : rank-2 array('D') with bounds (m,n) and a storage
		  x : rank-2 array('D') with bounds (maxmn,nrhs) and b storage
		  j : rank-1 array('i') with bounds (n) and jptv storage
		  rank : int
		  info : int
	**/
	static public function zgelsy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgelsy_lwork - Function signature:
		  work,info = zgelsy_lwork(m,n,nrhs,cond,[lwork])
		Required arguments:
		  m : input int
		  n : input int
		  nrhs : input int
		  cond : input float
		Optional arguments:
		  lwork := -1 input int
		Return objects:
		  work : complex
		  info : int
	**/
	static public function zgelsy_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgeqp3 - Function signature:
		  qr,jpvt,tau,work,info = zgeqp3(a,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*(n+1) input int
		Return objects:
		  qr : rank-2 array('D') with bounds (m,n) and a storage
		  jpvt : rank-1 array('i') with bounds (n)
		  tau : rank-1 array('D') with bounds (MIN(m,n))
		  work : rank-1 array('D') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function zgeqp3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgeqrf - Function signature:
		  qr,tau,work,info = zgeqrf(a,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*n input int
		Return objects:
		  qr : rank-2 array('D') with bounds (m,n) and a storage
		  tau : rank-1 array('D') with bounds (MIN(m,n))
		  work : rank-1 array('D') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function zgeqrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgerqf - Function signature:
		  qr,tau,work,info = zgerqf(a,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*m input int
		Return objects:
		  qr : rank-2 array('D') with bounds (m,n) and a storage
		  tau : rank-1 array('D') with bounds (MIN(m,n))
		  work : rank-1 array('D') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function zgerqf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgesdd - Function signature:
		  u,s,vt,info = zgesdd(a,[compute_uv,full_matrices,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  compute_uv := 1 input int
		  full_matrices := 1 input int
		  lwork := (compute_uv?2*minmn*minmn+MAX(m,n)+2*minmn:2*minmn+MAX(m,n)) input int
		Return objects:
		  u : rank-2 array('D') with bounds (u0,u1)
		  s : rank-1 array('d') with bounds (minmn)
		  vt : rank-2 array('D') with bounds (vt0,vt1)
		  info : int
	**/
	static public function zgesdd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgesdd_lwork - Function signature:
		  work,info = zgesdd_lwork(m,n,[compute_uv,full_matrices])
		Required arguments:
		  m : input int
		  n : input int
		Optional arguments:
		  compute_uv := 1 input int
		  full_matrices := 1 input int
		Return objects:
		  work : complex
		  info : int
	**/
	static public function zgesdd_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgesv - Function signature:
		  lu,piv,x,info = zgesv(a,b,[overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('D') with bounds (n,n)
		  b : input rank-2 array('D') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  lu : rank-2 array('D') with bounds (n,n) and a storage
		  piv : rank-1 array('i') with bounds (n)
		  x : rank-2 array('D') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function zgesv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgetrf - Function signature:
		  lu,piv,info = zgetrf(a,[overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		Return objects:
		  lu : rank-2 array('D') with bounds (m,n) and a storage
		  piv : rank-1 array('i') with bounds (MIN(m,n))
		  info : int
	**/
	static public function zgetrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgetri - Function signature:
		  inv_a,info = zgetri(lu,piv,[lwork,overwrite_lu])
		Required arguments:
		  lu : input rank-2 array('D') with bounds (n,n)
		  piv : input rank-1 array('i') with bounds (n)
		Optional arguments:
		  overwrite_lu := 0 input int
		  lwork := 3*n input int
		Return objects:
		  inv_a : rank-2 array('D') with bounds (n,n) and lu storage
		  info : int
	**/
	static public function zgetri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgetri_lwork - Function signature:
		  work,info = zgetri_lwork(n)
		Required arguments:
		  n : input int
		Return objects:
		  work : complex
		  info : int
	**/
	static public function zgetri_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgetrs - Function signature:
		  x,info = zgetrs(lu,piv,b,[trans,overwrite_b])
		Required arguments:
		  lu : input rank-2 array('D') with bounds (n,n)
		  piv : input rank-1 array('i') with bounds (n)
		  b : input rank-2 array('D') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_b := 0 input int
		  trans := 0 input int
		Return objects:
		  x : rank-2 array('D') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function zgetrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgges - Function signature:
		  a,b,sdim,alpha,beta,vsl,vsr,work,info = zgges(zselect,a,b,[jobvsl,jobvsr,sort_t,ldvsl,ldvsr,lwork,zselect_extra_args,overwrite_a,overwrite_b])
		Required arguments:
		  zselect : call-back function
		  a : input rank-2 array('D') with bounds (lda,*)
		  b : input rank-2 array('D') with bounds (ldb,*)
		Optional arguments:
		  jobvsl := 1 input int
		  jobvsr := 1 input int
		  sort_t := 0 input int
		  zselect_extra_args := () input tuple
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  ldvsl := ((jobvsl==1)?n:1) input int
		  ldvsr := ((jobvsr==1)?n:1) input int
		  lwork := 2*n input int
		Return objects:
		  a : rank-2 array('D') with bounds (lda,*)
		  b : rank-2 array('D') with bounds (ldb,*)
		  sdim : int
		  alpha : rank-1 array('D') with bounds (n)
		  beta : rank-1 array('D') with bounds (n)
		  vsl : rank-2 array('D') with bounds (ldvsl,n)
		  vsr : rank-2 array('D') with bounds (ldvsr,n)
		  work : rank-1 array('D') with bounds (MAX(lwork,1))
		  info : int
		Call-back functions:
		  def zselect(alpha,beta): return zselect
		  Required arguments:
		    alpha : input complex
		    beta : input complex
		  Return objects:
		    zselect : int
	**/
	static public function zgges(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zggev - Function signature:
		  alpha,beta,vl,vr,work,info = zggev(a,b,[compute_vl,compute_vr,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('D') with bounds (n,n)
		  b : input rank-2 array('D') with bounds (n,n)
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  lwork := 2*n input int
		Return objects:
		  alpha : rank-1 array('D') with bounds (n)
		  beta : rank-1 array('D') with bounds (n)
		  vl : rank-2 array('D') with bounds (ldvl,n)
		  vr : rank-2 array('D') with bounds (ldvr,n)
		  work : rank-1 array('D') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function zggev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgtsv - Function signature:
		  du2,d,du,x,info = zgtsv(dl,d,du,b,[overwrite_dl,overwrite_d,overwrite_du,overwrite_b])
		Required arguments:
		  dl : input rank-1 array('D') with bounds (n - 1)
		  d : input rank-1 array('D') with bounds (*)
		  du : input rank-1 array('D') with bounds (n - 1)
		  b : input rank-2 array('D') with bounds (*,*)
		Optional arguments:
		  overwrite_dl := 0 input int
		  overwrite_d := 0 input int
		  overwrite_du := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  du2 : rank-1 array('D') with bounds (n - 1) and dl storage
		  d : rank-1 array('D') with bounds (*)
		  du : rank-1 array('D') with bounds (n - 1)
		  x : rank-2 array('D') with bounds (*,*) and b storage
		  info : int
	**/
	static public function zgtsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zhbevd - Function signature:
		  w,z,info = zhbevd(ab,[compute_v,lower,ldab,lrwork,liwork,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('D') with bounds (ldab,*)
		Optional arguments:
		  overwrite_ab := 1 input int
		  compute_v := 1 input int
		  lower := 0 input int
		  ldab := shape(ab,0) input int
		  lrwork := (compute_v?1+5*n+2*n*n:n) input int
		  liwork := (compute_v?3+5*n:1) input int
		Return objects:
		  w : rank-1 array('d') with bounds (n)
		  z : rank-2 array('D') with bounds (ldz,ldz)
		  info : int
	**/
	static public function zhbevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zhbevx - Function signature:
		  w,z,m,ifail,info = zhbevx(ab,vl,vu,il,iu,[ldab,compute_v,range,lower,abstol,mmax,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('D') with bounds (ldab,*)
		  vl : input float
		  vu : input float
		  il : input int
		  iu : input int
		Optional arguments:
		  overwrite_ab := 1 input int
		  ldab := shape(ab,0) input int
		  compute_v := 1 input int
		  range := 0 input int
		  lower := 0 input int
		  abstol := 0.0 input float
		  mmax := (compute_v?(range==2?(iu-il+1):n):1) input int
		Return objects:
		  w : rank-1 array('d') with bounds (n)
		  z : rank-2 array('D') with bounds (ldz,mmax)
		  m : int
		  ifail : rank-1 array('i') with bounds ((compute_v?n:1))
		  info : int
	**/
	static public function zhbevx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zheev - Function signature:
		  w,v,info = zheev(a,[compute_v,lower,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (n,n)
		Optional arguments:
		  compute_v := 1 input int
		  lower := 0 input int
		  overwrite_a := 0 input int
		  lwork := 2*n-1 input int
		Return objects:
		  w : rank-1 array('d') with bounds (n)
		  v : rank-2 array('D') with bounds (n,n) and a storage
		  info : int
	**/
	static public function zheev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zheevd - Function signature:
		  w,v,info = zheevd(a,[compute_v,lower,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (n,n)
		Optional arguments:
		  compute_v := 1 input int
		  lower := 0 input int
		  overwrite_a := 0 input int
		  lwork := (compute_v?2*n+n*n:n+1) input int
		Return objects:
		  w : rank-1 array('d') with bounds (n)
		  v : rank-2 array('D') with bounds (n,n) and a storage
		  info : int
	**/
	static public function zheevd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zheevr - Function signature:
		  w,z,info = zheevr(a,[jobz,range,uplo,il,iu,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (n,n)
		Optional arguments:
		  jobz := 'V' input string(len=1)
		  range := 'A' input string(len=1)
		  uplo := 'L' input string(len=1)
		  overwrite_a := 0 input int
		  il := 1 input int
		  iu := n input int
		  lwork := 18*n input int
		Return objects:
		  w : rank-1 array('d') with bounds (n)
		  z : rank-2 array('D') with bounds (n,m)
		  info : int
	**/
	static public function zheevr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zhegv - Function signature:
		  a,w,info = zhegv(a,b,[itype,jobz,uplo,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('D') with bounds (n,n)
		  b : input rank-2 array('D') with bounds (n,n)
		Optional arguments:
		  itype := 1 input int
		  jobz := 'V' input string(len=1)
		  uplo := 'L' input string(len=1)
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  a : rank-2 array('D') with bounds (n,n)
		  w : rank-1 array('d') with bounds (n)
		  info : int
	**/
	static public function zhegv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zhegvd - Function signature:
		  a,w,info = zhegvd(a,b,[itype,jobz,uplo,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('D') with bounds (n,n)
		  b : input rank-2 array('D') with bounds (n,n)
		Optional arguments:
		  itype := 1 input int
		  jobz := 'V' input string(len=1)
		  uplo := 'L' input string(len=1)
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  lwork := 2*n+n*n input int
		Return objects:
		  a : rank-2 array('D') with bounds (n,n)
		  w : rank-1 array('d') with bounds (n)
		  info : int
	**/
	static public function zhegvd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zhegvx - Function signature:
		  w,z,ifail,info = zhegvx(a,b,iu,[itype,jobz,uplo,il,lwork,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('D') with bounds (n,n)
		  b : input rank-2 array('D') with bounds (n,n)
		  iu : input int
		Optional arguments:
		  itype := 1 input int
		  jobz := 'V' input string(len=1)
		  uplo := 'L' input string(len=1)
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  il := 1 input int
		  lwork := 18*n-1 input int
		Return objects:
		  w : rank-1 array('d') with bounds (n)
		  z : rank-2 array('D') with bounds (n,m)
		  ifail : rank-1 array('i') with bounds (n)
		  info : int
	**/
	static public function zhegvx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zlange - Function signature:
		  n2 = zlange(norm,a)
		Required arguments:
		  norm : input string(len=1)
		  a : input rank-2 array('D') with bounds (m,n)
		Return objects:
		  n2 : float
	**/
	static public function zlange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zlarf - Function signature:
		  c = zlarf(v,tau,c,work,[side,incv,overwrite_c])
		Required arguments:
		  v : input rank-1 array('D') with bounds (*)
		  tau : input complex
		  c : input rank-2 array('D') with bounds (m,n)
		  work : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  side := 'L' input string(len=1)
		  incv := 1 input int
		  overwrite_c := 0 input int
		Return objects:
		  c : rank-2 array('D') with bounds (m,n)
	**/
	static public function zlarf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zlarfg - Function signature:
		  alpha,x,tau = zlarfg(n,alpha,x,[incx,overwrite_x])
		Required arguments:
		  n : input int
		  alpha : input complex
		  x : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  incx := 1 input int
		Return objects:
		  alpha : complex
		  x : rank-1 array('D') with bounds (*)
		  tau : complex
	**/
	static public function zlarfg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zlartg - Function signature:
		  cs,sn,r = zlartg(f,g)
		Required arguments:
		  f : input complex
		  g : input complex
		Return objects:
		  cs : float
		  sn : complex
		  r : complex
	**/
	static public function zlartg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zlaswp - Function signature:
		  a = zlaswp(a,piv,[k1,k2,off,inc,overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (nrows,n)
		  piv : input rank-1 array('i') with bounds (*)
		Optional arguments:
		  overwrite_a := 0 input int
		  k1 := 0 input int
		  k2 := len(piv)-1 input int
		  off := 0 input int
		  inc := 1 input int
		Return objects:
		  a : rank-2 array('D') with bounds (nrows,n)
	**/
	static public function zlaswp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zlauum - Function signature:
		  a,info = zlauum(c,[lower,overwrite_c])
		Required arguments:
		  c : input rank-2 array('D') with bounds (n,n)
		Optional arguments:
		  overwrite_c := 0 input int
		  lower := 0 input int
		Return objects:
		  a : rank-2 array('D') with bounds (n,n) and c storage
		  info : int
	**/
	static public function zlauum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zpbsv - Function signature:
		  c,x,info = zpbsv(ab,b,[lower,ldab,overwrite_ab,overwrite_b])
		Required arguments:
		  ab : input rank-2 array('D') with bounds (ldab,n)
		  b : input rank-2 array('D') with bounds (ldb,nrhs)
		Optional arguments:
		  lower := 0 input int
		  overwrite_ab := 0 input int
		  ldab := shape(ab,0) input int
		  overwrite_b := 0 input int
		Return objects:
		  c : rank-2 array('D') with bounds (ldab,n) and ab storage
		  x : rank-2 array('D') with bounds (ldb,nrhs) and b storage
		  info : int
	**/
	static public function zpbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zpbtrf - Function signature:
		  c,info = zpbtrf(ab,[lower,ldab,overwrite_ab])
		Required arguments:
		  ab : input rank-2 array('D') with bounds (ldab,n)
		Optional arguments:
		  lower := 0 input int
		  overwrite_ab := 0 input int
		  ldab := shape(ab,0) input int
		Return objects:
		  c : rank-2 array('D') with bounds (ldab,n) and ab storage
		  info : int
	**/
	static public function zpbtrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zpbtrs - Function signature:
		  x,info = zpbtrs(ab,b,[lower,ldab,overwrite_b])
		Required arguments:
		  ab : input rank-2 array('D') with bounds (ldab,n)
		  b : input rank-2 array('D') with bounds (ldb,nrhs)
		Optional arguments:
		  lower := 0 input int
		  ldab := shape(ab,0) input int
		  overwrite_b := 0 input int
		Return objects:
		  x : rank-2 array('D') with bounds (ldb,nrhs) and b storage
		  info : int
	**/
	static public function zpbtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zposv - Function signature:
		  c,x,info = zposv(a,b,[lower,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('D') with bounds (n,n)
		  b : input rank-2 array('D') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('D') with bounds (n,n) and a storage
		  x : rank-2 array('D') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function zposv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zpotrf - Function signature:
		  c,info = zpotrf(a,[lower,clean,overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (n,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  lower := 0 input int
		  clean := 1 input int
		Return objects:
		  c : rank-2 array('D') with bounds (n,n) and a storage
		  info : int
	**/
	static public function zpotrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zpotri - Function signature:
		  inv_a,info = zpotri(c,[lower,overwrite_c])
		Required arguments:
		  c : input rank-2 array('D') with bounds (n,n)
		Optional arguments:
		  overwrite_c := 0 input int
		  lower := 0 input int
		Return objects:
		  inv_a : rank-2 array('D') with bounds (n,n) and c storage
		  info : int
	**/
	static public function zpotri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zpotrs - Function signature:
		  x,info = zpotrs(c,b,[lower,overwrite_b])
		Required arguments:
		  c : input rank-2 array('D') with bounds (n,n)
		  b : input rank-2 array('D') with bounds (n,nrhs)
		Optional arguments:
		  overwrite_b := 0 input int
		  lower := 0 input int
		Return objects:
		  x : rank-2 array('D') with bounds (n,nrhs) and b storage
		  info : int
	**/
	static public function zpotrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zptsv - Function signature:
		  d,du,x,info = zptsv(d,e,b,[overwrite_d,overwrite_e,overwrite_b])
		Required arguments:
		  d : input rank-1 array('d') with bounds (*)
		  e : input rank-1 array('D') with bounds (n - 1)
		  b : input rank-2 array('D') with bounds (*,*)
		Optional arguments:
		  overwrite_d := 0 input int
		  overwrite_e := 0 input int
		  overwrite_b := 0 input int
		Return objects:
		  d : rank-1 array('d') with bounds (*)
		  du : rank-1 array('D') with bounds (n - 1) and e storage
		  x : rank-2 array('D') with bounds (*,*) and b storage
		  info : int
	**/
	static public function zptsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zrot - Function signature:
		  x,y = zrot(x,y,c,s,[n,offx,incx,offy,incy,overwrite_x,overwrite_y])
		Required arguments:
		  x : input rank-1 array('D') with bounds (*)
		  y : input rank-1 array('D') with bounds (*)
		  c : input float
		  s : input complex
		Optional arguments:
		  n := (len(x)-1-offx)/abs(incx)+1 input int
		  overwrite_x := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  overwrite_y := 0 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  x : rank-1 array('D') with bounds (*)
		  y : rank-1 array('D') with bounds (*)
	**/
	static public function zrot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ztgsen - Function signature:
		  a,b,alpha,beta,q,z,m,pl,pr,dif,work,iwork,info = ztgsen(select,a,b,q,z,[lwork,liwork,overwrite_a,overwrite_b,overwrite_q,overwrite_z])
		Required arguments:
		  select : input rank-1 array('i') with bounds (n)
		  a : input rank-2 array('D') with bounds (lda,*)
		  b : input rank-2 array('D') with bounds (ldb,*)
		  q : input rank-2 array('D') with bounds (ldq,*)
		  z : input rank-2 array('D') with bounds (ldz,*)
		Optional arguments:
		  overwrite_a := 0 input int
		  overwrite_b := 0 input int
		  overwrite_q := 0 input int
		  overwrite_z := 0 input int
		  lwork := 2*m*(n-m) input int
		  liwork := n+2 input int
		Return objects:
		  a : rank-2 array('D') with bounds (lda,*)
		  b : rank-2 array('D') with bounds (ldb,*)
		  alpha : rank-1 array('D') with bounds (n)
		  beta : rank-1 array('D') with bounds (n)
		  q : rank-2 array('D') with bounds (ldq,*)
		  z : rank-2 array('D') with bounds (ldz,*)
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
		ztrsyl - Function signature:
		  x,scale,info = ztrsyl(a,b,c,[trana,tranb,isgn,overwrite_c])
		Required arguments:
		  a : input rank-2 array('D') with bounds (m,m)
		  b : input rank-2 array('D') with bounds (n,n)
		  c : input rank-2 array('D') with bounds (m,n)
		Optional arguments:
		  trana := 'N' input string(len=1)
		  tranb := 'N' input string(len=1)
		  isgn := 1 input int
		  overwrite_c := 0 input int
		Return objects:
		  x : rank-2 array('D') with bounds (m,n) and c storage
		  scale : float
		  info : int
	**/
	static public function ztrsyl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ztrtri - Function signature:
		  inv_c,info = ztrtri(c,[lower,unitdiag,overwrite_c])
		Required arguments:
		  c : input rank-2 array('D') with bounds (n,n)
		Optional arguments:
		  overwrite_c := 0 input int
		  lower := 0 input int
		  unitdiag := 0 input int
		Return objects:
		  inv_c : rank-2 array('D') with bounds (n,n) and c storage
		  info : int
	**/
	static public function ztrtri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ztrtrs - Function signature:
		  x,info = ztrtrs(a,b,[lower,trans,unitdiag,lda,overwrite_b])
		Required arguments:
		  a : input rank-2 array('D') with bounds (lda,n)
		  b : input rank-2 array('D') with bounds (ldb,nrhs)
		Optional arguments:
		  lower := 0 input int
		  trans := 0 input int
		  unitdiag := 0 input int
		  lda := shape(a,0) input int
		  overwrite_b := 0 input int
		Return objects:
		  x : rank-2 array('D') with bounds (ldb,nrhs) and b storage
		  info : int
	**/
	static public function ztrtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zunghr - Function signature:
		  ht,info = zunghr(a,tau,[lo,hi,lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (n,n)
		  tau : input rank-1 array('D') with bounds (n - 1)
		Optional arguments:
		  lo := 0 input int
		  hi := n-1 input int
		  overwrite_a := 0 input int
		  lwork := hi-lo input int
		Return objects:
		  ht : rank-2 array('D') with bounds (n,n) and a storage
		  info : int
	**/
	static public function zunghr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zunghr_lwork - Function signature:
		  work,info = zunghr_lwork(n,[lo,hi])
		Required arguments:
		  n : input int
		Optional arguments:
		  lo := 0 input int
		  hi := n-1 input int
		Return objects:
		  work : complex
		  info : int
	**/
	static public function zunghr_lwork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zungqr - Function signature:
		  q,work,info = zungqr(a,tau,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (m,n)
		  tau : input rank-1 array('D') with bounds (k)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*n input int
		Return objects:
		  q : rank-2 array('D') with bounds (m,n) and a storage
		  work : rank-1 array('D') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function zungqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zungrq - Function signature:
		  q,work,info = zungrq(a,tau,[lwork,overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (m,n)
		  tau : input rank-1 array('D') with bounds (k)
		Optional arguments:
		  overwrite_a := 0 input int
		  lwork := 3*m input int
		Return objects:
		  q : rank-2 array('D') with bounds (m,n) and a storage
		  work : rank-1 array('D') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function zungrq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zunmqr - Function signature:
		  cq,work,info = zunmqr(side,trans,a,tau,c,lwork,[overwrite_c])
		Required arguments:
		  side : input string(len=1)
		  trans : input string(len=1)
		  a : input rank-2 array('D') with bounds (lda,k)
		  tau : input rank-1 array('D') with bounds (k)
		  c : input rank-2 array('D') with bounds (ldc,n)
		  lwork : input int
		Optional arguments:
		  overwrite_c := 0 input int
		Return objects:
		  cq : rank-2 array('D') with bounds (ldc,n) and c storage
		  work : rank-1 array('D') with bounds (MAX(lwork,1))
		  info : int
	**/
	static public function zunmqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
}