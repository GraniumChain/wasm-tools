;; RUN: dump %

(module
  (import "m" "n" (func (param i32)))
  (table 1 funcref)
  (memory (export "m") 1)
  (start 0)
  (global i32 (i32.const 0))
  (elem (i32.const 3) 0)
  (elem funcref (ref.null func))
  (elem declare funcref (ref.null func))
  ;;(elem (i32.const 3) (ref.null func))
  ;;(elem funcref (ref.null func))
  ;;(elem declare funcref (ref.null func) (ref.func 0))
  (func)
  (func (local i32))
  (func (local i32) i32.const 0)
  (data (i32.const 8) "y")
  (data "x")
  (@custom "name-of-section" "content")
)
