;
; Problem Statement from HackerRank
;
; You can read the full problem state here: https://www.hackerrank.com/challenges/staircase/problem
;
                                        ;
; Complete the 'staircase' function below.
;
; The function accepts INTEGER n as parameter.
;

(defn staircase [n]
  (doseq [i (range 1 (inc n))]
    (println
     (str (apply str (repeat (- n i) " "))
          (apply str (repeat i "#"))))))

(def n (Integer/parseInt (clojure.string/trim (read-line))))

(staircase n)
