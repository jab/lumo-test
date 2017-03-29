(require '[lumo.build.api :as b])

(b/build "src"
  {:main 'lumo-test.core
   :output-to "main.js"
   ;:optimizations :advanced
   :optimizations :none
   :npm-deps {:left-pad "1.1.3"}
   :target :nodejs})
