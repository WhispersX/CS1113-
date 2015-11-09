module Fashion

import bool
import relation
import pair
import list

record Fashion where
       constructor mkFashion
       brand : String
       EST: Nat
       ilike: bool

chanel: Fashion
chanel= mkFashion "Chanel" 1909 true

ysl: Fashion
ysl = mkFashion "YSL" 1961 true

bur: Fashion
bur = mkFashion "Burberry" 1856 false

setBrand: Fashion -> String -> Fashion
setBrand f b = record {brand = b} f

WFashion: list Fashion
WFashion = chanel::ysl::bur::nil

brands: String
brands = query2 WFashion ilike brand (++)""

Tyears: Nat
Tyears = query2 WFashion ilike EST plus 0

numberbrand: Nat
numberbrand = query2 WFashion ilike countOne plus 0

aveEST: pair Nat Nat
aveEST = mkPair Tyears numberbrand







