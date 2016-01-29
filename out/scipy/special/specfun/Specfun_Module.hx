/* This file is generated, do not edit! */
package scipy.special.specfun;
@:pythonImport("scipy.special.specfun") extern class Specfun_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		airyzo - Function signature:
		  xa,xb,xc,xd = airyzo(nt,[kf])
		Required arguments:
		  nt : input int
		Optional arguments:
		  kf := 1 input int
		Return objects:
		  xa : rank-1 array('d') with bounds (nt)
		  xb : rank-1 array('d') with bounds (nt)
		  xc : rank-1 array('d') with bounds (nt)
		  xd : rank-1 array('d') with bounds (nt)
	**/
	static public function airyzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		aswfb - Function signature:
		  s1f,s1d = aswfb(m,n,c,x,kd,cv)
		Required arguments:
		  m : input int
		  n : input int
		  c : input float
		  x : input float
		  kd : input int
		  cv : input float
		Return objects:
		  s1f : float
		  s1d : float
	**/
	static public function aswfb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bernoa - Function signature:
		  bn = bernoa(n)
		Required arguments:
		  n : input int
		Return objects:
		  bn : rank-1 array('d') with bounds (n + 1)
	**/
	static public function bernoa(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bernob - Function signature:
		  bn = bernob(n)
		Required arguments:
		  n : input int
		Return objects:
		  bn : rank-1 array('d') with bounds (n + 1)
	**/
	static public function bernob(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cerzo - Function signature:
		  zo = cerzo(nt)
		Required arguments:
		  nt : input int
		Return objects:
		  zo : rank-1 array('D') with bounds (nt)
	**/
	static public function cerzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chgm - Function signature:
		  hg = chgm(a,b,x)
		Required arguments:
		  a : input float
		  b : input float
		  x : input float
		Return objects:
		  hg : float
	**/
	static public function chgm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clpmn - Function signature:
		  cpm,cpd = clpmn(m,n,x,y,ntype)
		Required arguments:
		  m : input int
		  n : input int
		  x : input float
		  y : input float
		  ntype : input int
		Return objects:
		  cpm : rank-2 array('D') with bounds (m + 1,n + 1)
		  cpd : rank-2 array('D') with bounds (m + 1,n + 1)
	**/
	static public function clpmn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clpn - Function signature:
		  cpn,cpd = clpn(n,z)
		Required arguments:
		  n : input int
		  z : input complex
		Return objects:
		  cpn : rank-1 array('D') with bounds (n + 1)
		  cpd : rank-1 array('D') with bounds (n + 1)
	**/
	static public function clpn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clqmn - Function signature:
		  cqm,cqd = clqmn(m,n,z)
		Required arguments:
		  m : input int
		  n : input int
		  z : input complex
		Return objects:
		  cqm : rank-2 array('D') with bounds (mm + 1,n + 1)
		  cqd : rank-2 array('D') with bounds (mm + 1,n + 1)
	**/
	static public function clqmn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clqn - Function signature:
		  cqn,cqd = clqn(n,z)
		Required arguments:
		  n : input int
		  z : input complex
		Return objects:
		  cqn : rank-1 array('D') with bounds (n + 1)
		  cqd : rank-1 array('D') with bounds (n + 1)
	**/
	static public function clqn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cpbdn - Function signature:
		  cpb,cpd = cpbdn(n,z)
		Required arguments:
		  n : input int
		  z : input complex
		Return objects:
		  cpb : rank-1 array('D') with bounds (abs(n)+2)
		  cpd : rank-1 array('D') with bounds (abs(n)+2)
	**/
	static public function cpbdn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		csphik - Function signature:
		  nm,csi,cdi,csk,cdk = csphik(n,z)
		Required arguments:
		  n : input int
		  z : input complex
		Return objects:
		  nm : int
		  csi : rank-1 array('D') with bounds (n + 1)
		  cdi : rank-1 array('D') with bounds (n + 1)
		  csk : rank-1 array('D') with bounds (n + 1)
		  cdk : rank-1 array('D') with bounds (n + 1)
	**/
	static public function csphik(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		csphjy - Function signature:
		  nm,csj,cdj,csy,cdy = csphjy(n,z)
		Required arguments:
		  n : input int
		  z : input complex
		Return objects:
		  nm : int
		  csj : rank-1 array('D') with bounds (n + 1)
		  cdj : rank-1 array('D') with bounds (n + 1)
		  csy : rank-1 array('D') with bounds (n + 1)
		  cdy : rank-1 array('D') with bounds (n + 1)
	**/
	static public function csphjy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cva1 - Function signature:
		  cv = cva1(kd,m,q)
		Required arguments:
		  kd : input int
		  m : input int
		  q : input float
		Return objects:
		  cv : rank-1 array('d') with bounds (m)
	**/
	static public function cva1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cyzo - Function signature:
		  zo,zv = cyzo(nt,kf,kc)
		Required arguments:
		  nt : input int
		  kf : input int
		  kc : input int
		Return objects:
		  zo : rank-1 array('D') with bounds (nt)
		  zv : rank-1 array('D') with bounds (nt)
	**/
	static public function cyzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eulera - Function signature:
		  en = eulera(n)
		Required arguments:
		  n : input int
		Return objects:
		  en : rank-1 array('d') with bounds (n + 1)
	**/
	static public function eulera(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eulerb - Function signature:
		  en = eulerb(n)
		Required arguments:
		  n : input int
		Return objects:
		  en : rank-1 array('d') with bounds (n + 1)
	**/
	static public function eulerb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fcoef - Function signature:
		  fc = fcoef(kd,m,q,a)
		Required arguments:
		  kd : input int
		  m : input int
		  q : input float
		  a : input float
		Return objects:
		  fc : rank-1 array('d') with bounds (251)
	**/
	static public function fcoef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fcszo - Function signature:
		  zo = fcszo(kf,nt)
		Required arguments:
		  kf : input int
		  nt : input int
		Return objects:
		  zo : rank-1 array('D') with bounds (nt)
	**/
	static public function fcszo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		herzo - Function signature:
		  x,w = herzo(n)
		Required arguments:
		  n : input int
		Return objects:
		  x : rank-1 array('d') with bounds (n)
		  w : rank-1 array('d') with bounds (n)
	**/
	static public function herzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		jdzo - Function signature:
		  n,m,pcode,zo = jdzo(nt)
		Required arguments:
		  nt : input int
		Return objects:
		  n : rank-1 array('i') with bounds (1400)
		  m : rank-1 array('i') with bounds (1400)
		  pcode : rank-1 array('i') with bounds (1400)
		  zo : rank-1 array('d') with bounds (1401)
	**/
	static public function jdzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		jyzo - Function signature:
		  rj0,rj1,ry0,ry1 = jyzo(n,nt)
		Required arguments:
		  n : input int
		  nt : input int
		Return objects:
		  rj0 : rank-1 array('d') with bounds (nt)
		  rj1 : rank-1 array('d') with bounds (nt)
		  ry0 : rank-1 array('d') with bounds (nt)
		  ry1 : rank-1 array('d') with bounds (nt)
	**/
	static public function jyzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		klvnzo - Function signature:
		  zo = klvnzo(nt,kd)
		Required arguments:
		  nt : input int
		  kd : input int
		Return objects:
		  zo : rank-1 array('d') with bounds (nt)
	**/
	static public function klvnzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lagzo - Function signature:
		  x,w = lagzo(n)
		Required arguments:
		  n : input int
		Return objects:
		  x : rank-1 array('d') with bounds (n)
		  w : rank-1 array('d') with bounds (n)
	**/
	static public function lagzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lamn - Function signature:
		  nm,bl,dl = lamn(n,x)
		Required arguments:
		  n : input int
		  x : input float
		Return objects:
		  nm : int
		  bl : rank-1 array('d') with bounds (n + 1)
		  dl : rank-1 array('d') with bounds (n + 1)
	**/
	static public function lamn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lamv - Function signature:
		  vm,vl,dl = lamv(v,x)
		Required arguments:
		  v : input float
		  x : input float
		Return objects:
		  vm : float
		  vl : rank-1 array('d') with bounds ((int)v+1)
		  dl : rank-1 array('d') with bounds ((int)v+1)
	**/
	static public function lamv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		legzo - Function signature:
		  x,w = legzo(n)
		Required arguments:
		  n : input int
		Return objects:
		  x : rank-1 array('d') with bounds (n)
		  w : rank-1 array('d') with bounds (n)
	**/
	static public function legzo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lpmn - Function signature:
		  pm,pd = lpmn(m,n,x)
		Required arguments:
		  m : input int
		  n : input int
		  x : input float
		Return objects:
		  pm : rank-2 array('d') with bounds (m + 1,n + 1)
		  pd : rank-2 array('d') with bounds (m + 1,n + 1)
	**/
	static public function lpmn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lpmns - Function signature:
		  pm,pd = lpmns(m,n,x)
		Required arguments:
		  m : input int
		  n : input int
		  x : input float
		Return objects:
		  pm : rank-1 array('d') with bounds (n + 1)
		  pd : rank-1 array('d') with bounds (n + 1)
	**/
	static public function lpmns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lpn - Function signature:
		  pn,pd = lpn(n,x)
		Required arguments:
		  n : input int
		  x : input float
		Return objects:
		  pn : rank-1 array('d') with bounds (n + 1)
		  pd : rank-1 array('d') with bounds (n + 1)
	**/
	static public function lpn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lpni - Function signature:
		  pn,pd,pl = lpni(n,x)
		Required arguments:
		  n : input int
		  x : input float
		Return objects:
		  pn : rank-1 array('d') with bounds (n + 1)
		  pd : rank-1 array('d') with bounds (n + 1)
		  pl : rank-1 array('d') with bounds (n + 1)
	**/
	static public function lpni(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lqmn - Function signature:
		  qm,qd = lqmn(m,n,x)
		Required arguments:
		  m : input int
		  n : input int
		  x : input float
		Return objects:
		  qm : rank-2 array('d') with bounds (mm + 1,n + 1)
		  qd : rank-2 array('d') with bounds (mm + 1,n + 1)
	**/
	static public function lqmn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lqmns - Function signature:
		  qm,qd = lqmns(m,n,x)
		Required arguments:
		  m : input int
		  n : input int
		  x : input float
		Return objects:
		  qm : rank-1 array('d') with bounds (n + 1)
		  qd : rank-1 array('d') with bounds (n + 1)
	**/
	static public function lqmns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lqna - Function signature:
		  qn,qd = lqna(n,x)
		Required arguments:
		  n : input int
		  x : input float
		Return objects:
		  qn : rank-1 array('d') with bounds (n + 1)
		  qd : rank-1 array('d') with bounds (n + 1)
	**/
	static public function lqna(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lqnb - Function signature:
		  qn,qd = lqnb(n,x)
		Required arguments:
		  n : input int
		  x : input float
		Return objects:
		  qn : rank-1 array('d') with bounds (n + 1)
		  qd : rank-1 array('d') with bounds (n + 1)
	**/
	static public function lqnb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		othpl - Function signature:
		  pl,dpl = othpl(kf,n,x)
		Required arguments:
		  kf : input int
		  n : input int
		  x : input float
		Return objects:
		  pl : rank-1 array('d') with bounds (n + 1)
		  dpl : rank-1 array('d') with bounds (n + 1)
	**/
	static public function othpl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pbdv - Function signature:
		  dv,dp,pdf,pdd = pbdv(v,x)
		Required arguments:
		  v : input float
		  x : input float
		Return objects:
		  dv : rank-1 array('d') with bounds (abs((int)v)+2)
		  dp : rank-1 array('d') with bounds (abs((int)v)+2)
		  pdf : float
		  pdd : float
	**/
	static public function pbdv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pbvv - Function signature:
		  vv,vp,pvf,pvd = pbvv(v,x)
		Required arguments:
		  v : input float
		  x : input float
		Return objects:
		  vv : rank-1 array('d') with bounds (abs((int)v)+2)
		  vp : rank-1 array('d') with bounds (abs((int)v)+2)
		  pvf : float
		  pvd : float
	**/
	static public function pbvv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rctj - Function signature:
		  nm,rj,dj = rctj(n,x)
		Required arguments:
		  n : input int
		  x : input float
		Return objects:
		  nm : int
		  rj : rank-1 array('d') with bounds (n + 1)
		  dj : rank-1 array('d') with bounds (n + 1)
	**/
	static public function rctj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rcty - Function signature:
		  nm,ry,dy = rcty(n,x)
		Required arguments:
		  n : input int
		  x : input float
		Return objects:
		  nm : int
		  ry : rank-1 array('d') with bounds (n + 1)
		  dy : rank-1 array('d') with bounds (n + 1)
	**/
	static public function rcty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		segv - Function signature:
		  cv,eg = segv(m,n,c,kd)
		Required arguments:
		  m : input int
		  n : input int
		  c : input float
		  kd : input int
		Return objects:
		  cv : float
		  eg : rank-1 array('d') with bounds (n-m+2)
	**/
	static public function segv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sphi - Function signature:
		  nm,si,di = sphi(n,x)
		Required arguments:
		  n : input int
		  x : input float
		Return objects:
		  nm : int
		  si : rank-1 array('d') with bounds (n + 1)
		  di : rank-1 array('d') with bounds (n + 1)
	**/
	static public function sphi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sphj - Function signature:
		  nm,sj,dj = sphj(n,x)
		Required arguments:
		  n : input int
		  x : input float
		Return objects:
		  nm : int
		  sj : rank-1 array('d') with bounds (n + 1)
		  dj : rank-1 array('d') with bounds (n + 1)
	**/
	static public function sphj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sphk - Function signature:
		  nm,sk,dk = sphk(n,x)
		Required arguments:
		  n : input int
		  x : input float
		Return objects:
		  nm : int
		  sk : rank-1 array('d') with bounds (n + 1)
		  dk : rank-1 array('d') with bounds (n + 1)
	**/
	static public function sphk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sphy - Function signature:
		  nm,sy,dy = sphy(n,x)
		Required arguments:
		  n : input int
		  x : input float
		Return objects:
		  nm : int
		  sy : rank-1 array('d') with bounds (n + 1)
		  dy : rank-1 array('d') with bounds (n + 1)
	**/
	static public function sphy(args:haxe.extern.Rest<Dynamic>):Dynamic;
}