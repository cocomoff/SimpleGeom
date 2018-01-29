# -*- coding: utf-8 -*-

include("simplegeom.jl")
using SimpleGeom

l1 = frompoints(0., 1., 6., 4.)
l2 = frompoints(3., 6., 5., 0.)
p = getintersect(l1, l2)
println(p)
