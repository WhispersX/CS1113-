module colors

import pair
import bool

%default total

data colors = red|green|blue|cyan|magenta|yellow

complement: colors->colors
complement red=cyan
complement cyan=red
complement blue=yellow
complement yellow=blue
complement green=magenta
complement magenta=green

additive: colors->bool
additive green=true
additive red=true
additive blue=true
additive _ =false

subtractive:colors->bool
subtractive c =not (additive c)
--subtractive green=false
--subtractive red=false
--subtractive blue=false
--subtractive _ =true

complements: pair colors colors->bool
complements (mkPair red cyan) = true
complements (mkPair cyan red)=true
complements (mkPair blue yellow)=true
complements (mkPair yellow blue) =true
complements (mkPair green magenta)=true
complements (mkPair magenta green)=true
complements (mkPair _ _) =false

mixink: pair colors colors-> colors
mixink (mkPair magenta yellow) = red
mixink (mkPair yellow magenta) =red
mixink (mkPair magenta cyan) =blue
mixink (mkPair cyan magenta) =blue
mixink (mkPair yellow cyan) = green
mixink (mkPair cyan yellow) = green
