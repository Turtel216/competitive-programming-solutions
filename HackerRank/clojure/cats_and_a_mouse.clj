;
; Problem Statement from HackerRank
;
; You can read the full problem state here: https://www.hackerrank.com/challenges/cats-and-a-mouse/problem
;

; Complete the catAndMouse function below.
(defn catAndMouse [x y z]
  (let [abx (Math/abs (- x z))
        aby (Math/abs (- y z))]
    (cond (< abx aby) "Cat A" (> abx aby) "Cat B" :else "Mouse C")))

(def fptr (get (System/getenv) "OUTPUT_PATH"))

(def q (Integer/parseInt (clojure.string/trim (read-line))))

(doseq [q-itr (range q)]
  (def xyz (vec (map #(Integer/parseInt %) (clojure.string/split (clojure.string/trimr (read-line)) #" "))))

  (def x (nth xyz 0))

  (def y (nth xyz 1))

  (def z (nth xyz 2))

  (println (catAndMouse x y z)))
