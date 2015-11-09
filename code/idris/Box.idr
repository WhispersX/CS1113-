module Box

import eq
import Serialize

data Box t = mkBox t

unbox: Box t -> t
unbox (mkBox b) = b

eql_box: (eq a)=> Box a -> Box a -> bool
eql_box (mkBox v1) (mkBox v2)= eql v1 v2

--instance (eq a)=> eq (Box a) where
  --eql b1 b2 = eql_box b1 b2

instance (eq a)=> eq (Box a) where
  eql (mkBox b1) (mkBox b2) = eql b1 b2

instance (Serialize a)=> Serialize (Box a) where
  toString (mkBox b) = "(" ++(toString b)++",)"
