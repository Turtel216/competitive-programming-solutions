;;
;; Problem Statement from HackerRank
;;
;; You can read the full problem state here: https://www.hackerrank.com/challenges/apple-and-orange/problem
;;


(defn solve [input]
  (let [[s t a b m n & rest] input
        apple-distances (take m rest)
        orange-distances (drop m rest)
        apples-in-range (count (filter #(<= s % t) (map #(+ a %) apple-distances)))
        oranges-in-range (count (filter #(<= s % t) (map #(+ b %) orange-distances)))]
    [apples-in-range oranges-in-range]))

(let [input (->> (slurp *in*)
                 (clojure.string/trim)
                 (clojure.string/split-lines)
                 (mapcat #(clojure.string/split % #"\s+"))
                 (map #(Integer/parseInt %)))
      results (solve input)]
  (doseq [result results]
    (println result)))
