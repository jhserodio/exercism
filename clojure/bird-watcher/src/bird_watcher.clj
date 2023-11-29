(ns bird-watcher)

(def last-week
  [0 2 5 3 7 8 4])

(defn today [birds]
  (last birds))

(defn inc-bird [birds]
  (conj (pop birds) (+ (last birds) 1)))

(defn day-without-birds? [birds]
  (.contains birds 0))

(defn n-days-count [birds n]
  (reduce + (subvec birds 0 n)))

(defn busy-days [birds]
  (count (filterv #(> % 4) birds)))

(defn odd-week? [birds]
  (and
    (= (count (partition-by #(= % 1) birds)) 7)
    (= (count (partition-by #(= % 0) birds)) 7)))