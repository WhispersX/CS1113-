module Box

import unit

data Box = mkBox Unit

unbox: Box -> Unit
unbox (mkBox b) = b
