;;
;; Problem Statement from HackerRank
;;
;; You can read the full problem state here: https://www.hackerrank.com/challenges/apple-and-orange/problem
;;

;;
;; Complete the 'compareTriplets' function below.
;;
;; The function is expected to return an INTEGER_ARRAY.
;; The function accepts following parameters:
;;  1. INTEGER_ARRAY a
;;  2. INTEGER_ARRAY b
;;

(defn compareTriplets [a b]
  (let [result (frequencies (map (fn [x y] (cond (> x y) :a (< x y) :b :else :none)) a b))] [(get result :a 0) (get result :b 0)]))

(def fptr (get (System/getenv) "OUTPUT_PATH"))

(def a (vec (map #(Integer/parseInt %) (clojure.string/split (clojure.string/trimr (read-line)) #" "))))

(def b (vec (map #(Integer/parseInt %) (clojure.string/split (clojure.string/trimr (read-line)) #" "))))

(def result (compareTriplets a b))

(spit fptr (clojure.string/join " " result) :append true)
(spit fptr "\n" :append true)
