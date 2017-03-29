(ns lumo-test.core
  (:require [cljs.nodejs :as nodejs]
            [left-pad :as left-pad]))

(nodejs/enable-util-print!)

(defn -main [& args]
  (println (left-pad 42 5 0)))

(set! *main-cli-fn* -main)
