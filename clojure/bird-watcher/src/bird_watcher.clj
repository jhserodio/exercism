(ns bird-watcher)

(def last-week
  [0 2 5 3 7 8 4])

(defn today [birds]
  (last birds))

(defn inc-bird [birds]
  (update birds 6 inc))

(defn day-without-birds? [birds]
  (.contains birds 0))

(defn n-days-count [birds n]
  (apply + (take n birds)))

(defn busy-days [birds]
  (count (filterv #(> % 4) birds)))

(defn odd-week? [birds]
  (and
    (= (count (partition-by #(= % 1) birds)) 7)
    (= (count (partition-by #(= % 0) birds)) 7)))
