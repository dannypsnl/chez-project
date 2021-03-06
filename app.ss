(import (scheme)
        (hello))

(say-hello)
(printf "~a\n" (+ 1 2 3))
(printf "~a\n" '(a b c))

(case 1
  [(0) (printf "zero\n")]
  [(1) (printf "one\n" )]
  [else (printf "else\n")])
