(library (hello)
  (export say-hello)
  (import (scheme))
  (define (say-hello)
    (printf "Hello\n")))