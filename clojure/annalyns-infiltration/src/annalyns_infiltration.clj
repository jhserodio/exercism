(ns annalyns-infiltration)

(defn can-fast-attack?
  "Returns true if a fast-attack can be made, false otherwise."
  [knight-awake?]
  (not knight-awake?))

(defn can-spy?
  "Returns true if the kidnappers can be spied upon, false otherwise."
  [knight-awake? archer-awake? prisoner-awake?]
  (not= (some true? [knight-awake? archer-awake? prisoner-awake?]) nil))

(defn can-signal-prisoner?
  "Returns true if the prisoner can be signalled, false otherwise."
  [archer-awake? prisoner-awake?]
  (every? true? [(not archer-awake?) prisoner-awake?]))

(defn can-free-prisoner?
  "Returns true if prisoner can be freed, false otherwise."
  [knight-awake? archer-awake? prisoner-awake? dog-present?]
  (or 
    (and (not archer-awake?) dog-present?)
    (every? true? [(not archer-awake?) (not knight-awake?) prisoner-awake?])))
  
