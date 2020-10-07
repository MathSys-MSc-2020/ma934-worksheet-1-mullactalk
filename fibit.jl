module fibit
    function fib2(n)
        if n==1 || n==2
            return 1
        else
            a = zeros(Int64,n)
            a[1] = 1
            a[2] = 1
            for i in 3:n
                a[i]=a[i-1]+a[i-2]
            end
            return a[n]
        end
    end
end