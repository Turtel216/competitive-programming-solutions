;
; Problem Statement from HackerRank
;
; You can read the full problem state here: https://www.hackerrank.com/challenges/time_conversion/problem
;

;
; Complete the 'timeConversion' function below.
;
; The function is expected to return a STRING.
; The function accepts STRING s as parameter.
;
(require '[clojure.string :as str])

; Get the postfix of the time string
(defn get-postf [s]
  (if (str/ends-with? s "AM") :AM :PM))

(defn parse-int [s]
  (Integer. (re-find #"\d+" s)))

; Parse the time string into hours:minutes:seconds and Postfix
(defn parse-time [s]
  (let [spl (str/split s #":")]
    [(nth spl 0)
     (nth spl 1)
     (subs (nth spl 2) 0 2)
     (get-postf s)]))

; Convert an am value to a pm value
(defn conv-pm [am]
  (+ (parse-int am) 12))

(defn timeConversion [s]
  (let [parsed (parse-time s)
        hours (parse-int (nth parsed 0))
        mins (nth parsed 1)
        secs (nth parsed 2)
        period (nth parsed 3)
        new-hours (cond
                    (and (= period :AM) (= hours 12)) "00"
                    (and (= period :PM) (not= hours 12)) (str (+ hours 12))
                    :else (format "%02d" hours))]
    (str new-hours ":" mins ":" secs)))

(def fptr (get (System/getenv) "OUTPUT_PATH"))

(def s (read-line))

(def result (timeConversion s))

(println result)
