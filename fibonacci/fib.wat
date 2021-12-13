(module
    (func $fib (param $a i32) (result i32)
        get_local $a
        (if (result i32)
            (then
                get_local $a
                i32.const 1
                i32.sub
                (if (result i32)
                    (then
                        get_local $a
                        i32.const 1
                        i32.sub
                        call $fib
                        get_local $a
                        i32.const 2
                        i32.sub
                        call $fib
                        i32.add)
                    (else
                        i32.const 1)))
            (else
                i32.const 0)))
    (export "fib" (func $fib))
)