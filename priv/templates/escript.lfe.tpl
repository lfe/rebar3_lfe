(defmodule {{name}}
  (export (main 1)))

(defun main (args)
  (lfe_io:format "Got args: ~p~n" `(,args))
  (lfe_io:format "Answer: ~s~n" `(,(answer)))
  (erlang:halt 0))

(defun answer ()
  (lists:reverse 
    (erlang:integer_to_list 
      (lists:foldl #'*/2 1 '(1 2 3 4)))))
