;;
;; Problem Statement from HackerRank
;;
;; You can read the full problem state here: https://www.hackerrank.com/challenges/plus-minus
;;

;
; Complete the 'plusMinus' function below.
;
; The function accepts INTEGER_ARRAY arr as parameter.
;

(defn calcRatio [arr len]
  [(double (/ (get arr :pos 0) len))
   (double (/ (get arr :neg 0) len))
   (double (/ (get arr :zero 0) len))])

(defn plusMinus [arr]
  (let
   [frq (frequencies (map (fn [n] (cond (< n 0) :neg (> n 0) :pos :else :zero)) arr))]
    (calcRatio frq (count arr))))

(def n (Integer/parseInt (clojure.string/trim (read-line))))

(def arr (vec (map #(Integer/parseInt %) (clojure.string/split (clojure.string/trimr (read-line)) #" "))))

(doseq [result (plusMinus arr)]
  (println (format "%.6f" result)))
