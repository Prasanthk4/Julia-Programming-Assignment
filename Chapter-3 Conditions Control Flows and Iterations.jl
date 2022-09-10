using Pkg
pkg"activate ."
pkg"instantiate"

z = begin
    x = 4
    y = 8
    x + y
end

z = (x = 2; y = 4; x+y)

z =(x = 9;
    y = 7;
    x - y)

z = begin x=7; y=8; x-y end

if 1
    println("Hello! How are you?")
end 

if Bool(1)
    println("Hello! How are you?")
end

i = 1
str = if i > 1
    "Greater"
else
    "Less"
end

str = i > 1 ? "Greater" : "Less"

str = i > 1? "Greater" : "Less"

str = i > 1 ? "Greater": "Less"

val = 4
if val == 1
    "one"
elseif val == 2
    "two"
elseif val == 3
    "three"
elseif val == 4
    "four"
else
    "unknown"
end

if val == 1
    "one"
elseif val == 2
    "two"
elseif val == 3
    "three"
elseif val == 4
    "four"
else if val >= 5

if val == 1
    "one"
elseif val == 2
    "two"
elseif val == 3
    "three"
elseif val == 4
    "four"
else
    if val >= 5
        "above five"
    else
        "below five"
    end
end

begin
    s = 0
    n = 10
@label loop
    s = s + n
    n = n - 1
    if n > 0
        @goto loop
    end
    s
end

s = 0
for i = 1:10
    s = s + i
end
s

s = 0
for i = 2:10
    s = s + i
end
s

s = 0;
for i = 1:3:10
    println(i)
    s = s + i
end
s

s = 0;
for i = 4:10
    if i % 3 == 0
        continue
    end
    println(i)
    s = s + i
end
s

s = 0;
for i = 1:10
    if i % 4 == 0
        break
    end
    println(i)
    s = s + i
end
s

for i in [4 8 15]
    println(i)
end

for i=1:4, j=1:2
    println((i, j))
end

for i=1:4, j=1:i
    println((i, j))
end


for i=1:4, j=1:2
    println((i, j))
    if i == j
        break
    end
end

for i=1:4
    for j=1:2
        println((i, j))
        if i == j
            break
        end
    end
end

s, n = 0, 10;
while n > 0
    s = s + n
    n = n - 1
end
s


try
    sqrt(-4)
catch e
    println(e)
end


sqrt(-4)

try 
    sqrt(-4)
catch e
    rethrow()
end


try
    throw(4)
catch e
    println(typeof(e))
end

sqrt(-4)

try
    sqrt(-1)
catch e
    stacktrace(catch_backtrace())
end




