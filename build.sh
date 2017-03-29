#!/bin/sh

# requires lumo 1.2.0 (`brew install --HEAD lumo` on macOS)
lumo --classpath src build.cljs

# XXX Currently produces the following error:

#error {:message "failed compiling file:out/cljs/core.cljs", :data {:file "out/cljs/core.cljs"}, :cause #error {:message "failed compiling file:out/cljs/nodejs.cljs", :data {:file "out/cljs/nodejs.cljs"}, :cause #error {:message "Could not parse ns form cljs.nodejs", :data {:tag :cljs/analysis-error}, :cause #error {:message "failed compiling file:src/lumo_test/core.cljs", :data {:file "src/lumo_test/core.cljs"}, :cause #error {:message "Could not analyze dep cljs.nodejs", :data {:tag :cljs/analysis-error}, :cause #error {:message "Could not analyze dep left-pad", :data {:tag :cljs/analysis-error}, :cause #error {:message "No such namespace: left-pad, could not locate left_pad.cljs, left_pad.cljc, or Closure namespace \"left-pad\"", :data {:tag :cljs/analysis-error}}}}}}}}

# Missing the step that fetches, compiles, and links the left-pad npm dependency
# into the project?
