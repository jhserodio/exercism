(ns cars-assemble)

(def cars 221.0)

(defn production-rate
  "Returns the assembly line's production rate per hour,
   taking into account its success rate"
  [speed]
  (cond (<= speed 4) (* cars speed)
        (= speed 9) (* 0.8 (* cars speed))
        (= speed 10) (* 0.77 (* cars speed))
        :else (* (* cars 0.9) speed)))

(defn working-items
  "Calculates how many working cars are produced per minute"
  [speed]
  (int (/ (production-rate speed) 60))
  )
