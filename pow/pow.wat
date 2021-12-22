(module
    ;; use no additional locals
    (func $pow2
        (param $base i32) 
        (param $exponent i32) 
        (result i32) 
        i32.const 1 ;; result = 1
        (loop $main 
            (param i32) ;; result
            (result i32) ;; result
            get_local $exponent
            i32.const 0
            i32.gt_u ;; exponent > 0
            (if 
                (param i32) ;; result
                (result i32) ;; result
                (then
                    get_local $exponent
                    i32.const 1
                    i32.sub ;; exponent - 1
                    set_local $exponent
                    get_local $base
                    i32.mul ;; result = result * base
                    br $main))))
    ;; use only locals
    (func $pow 
        (param $base i32) 
        (param $exponent i32) 
        (result i32) 
        (local $result i32)
        i32.const 1
        set_local $result
        (loop $main
            get_local $exponent
            i32.const 0
            i32.gt_u
            (if 
                (then
                    get_local $exponent
                    i32.const 1
                    i32.sub
                    set_local $exponent
                    get_local $result
                    get_local $base
                    i32.mul
                    set_local $result
                    br $main)))
        get_local $result)
    (export "pow" (func $pow))
    (export "pow2" (func $pow2))
)