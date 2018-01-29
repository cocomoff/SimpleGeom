# -*- coding: utf-8 -*-

include("simplegeom.jl")
using SimpleGeom

l1 = frompoints(0., 1., 6., 4.)
l2 = frompoints(3., 6., 5., 0.)
p = getintersect(l1, l2)
println(p)


l = frompoints(-2., 5., 3., -4.)
ls = LineSegment(-1., -1., 2., 3.)
println(isintersects(l, ls))
