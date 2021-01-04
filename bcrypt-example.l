(load "bcrypt.l")
(symbols '(pico bcrypt))

(let (Password "Example"
      WrongPwd "example"
      Hash (generate-hash 5 Password))
  (prinl "hash: " Hash)
  (prin "compare T: ")
  (println (compare-with-hash Password Hash))
  (prin "compare NIL: ")
  (println (compare-with-hash WrongPwd Hash)))

