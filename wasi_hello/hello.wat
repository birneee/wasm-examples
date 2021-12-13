 (module 
    (import "wasi_unstable" "fd_write" (func $fd_write (param i32 i32 i32 i32) (result i32)))
    (memory $memory 1) ;; one memory page
    (data (i32.const 0) "hello world\n") ;; at memory address 0
    (func $main
        ;; create io vector
        i32.const 12 ;; pointer addr
        i32.const 0 ;; string addr
        i32.store ;; store pointer of string
        i32.const 16 ;; length addr
        i32.const 12 ;; string length
        i32.store ;; store length of string
        ;; call write
        i32.const 1 ;; stdout file descriptor
        i32.const 12 ;; addr of the io vector
        i32.const 1 ;; number of io vectors
        i32.const 20 ;; addr to store number of bytes written
        call $fd_write
        drop ;; drop number of bytes written
    )
    (start $main)
    (export "memory" (memory $memory))
)