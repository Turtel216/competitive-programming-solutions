;
; Problem Statement from HackerRank
;
; You can read the full problem state here: https://www.hackerrank.com/challenges/the-birthday-bar/problem
;

;
; Complete the 'birthday' function below.
;
; The function is expected to return an INTEGER.
; The function accepts following parameters:
;  1. INTEGER_ARRAY s
;  2. INTEGER d
;  3. INTEGER m
;

(defn birthday [s d m]
  (->> s
       (partition m 1)
       (filter #(= (apply + %) d))
       count))

(def fptr (get (System/getenv) "OUTPUT_PATH"))

(def n (Integer/parseInt (clojure.string/trim (read-line))))

(def s (vec (map #(Integer/parseInt %) (clojure.string/split (clojure.string/trimr (read-line)) #" "))))

(def first-multiple-input (clojure.string/split (clojure.string/trimr (read-line)) #" "))

(def d (Integer/parseInt (nth first-multiple-input 0)))

(def m (Integer/parseInt (nth first-multiple-input 1)))

(def result (birthday s d m))

(spit fptr (str result "\n") :append true)
