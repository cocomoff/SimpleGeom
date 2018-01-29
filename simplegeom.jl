module SimpleGeom

# data structures

export Point, Line

struct Point
    # represent a point (x, y)
    x::Float64
    y::Float64
end

struct Line
    # represent a line ax + by + c = 0
    a::Float64
    b::Float64
    c::Float64
end

# functions
export frompoints, getintersect

frompoints(p1::Point, p2::Point) = frompoints(p1.x, p1.y, p2.x, p2.y)
function frompoints(x1::Float64, y1::Float64, x2::Float64, y2::Float64)
    dx = x2 - x1
    dy = y2 - y1
    return Line(dy, -dx, dx * y1 - dy * x1)
end

function getintersect(l1::Line, l2::Line)
    d = l1.a * l2.b - l2.a * l1.b
    if d == 0
        return nothing
    end
    x = (l1.b * l2.c - l2.b * l1.c) / d
    y = (l2.a * l1.c - l1.a * l2.c) / d
    return (x, y)
end

end
