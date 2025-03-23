;
; Problem Statement from HackerRank
;
; You can read the full problem state here: https://www.hackerrank.com/challenges/mini-max-sum/problem
;

;
; Complete the 'miniMaxSum' function below.
;
; The function accepts INTEGER_ARRAY arr as parameter.
;

(defn miniMaxSum [arr]
  (let [sorted (sort arr)]
    [(apply + (take 4 sorted)) (apply + (take 4 (reverse sorted)))]))

(def arr (vec (map #(Integer/parseInt %) (clojure.string/split (clojure.string/trimr (read-line)) #" "))))

(let [[min-sum max-sum] (miniMaxSum arr)]
  (println (str min-sum " " max-sum)))
