module Storage where

import Native.LocalForage

import Array (Array)
import Dict (Dict)
import Promise (Promise)

type Storable =
  Number Float |
  String String |
  Array (Array Storable) |
  Object (Dict String Storable)

getItem : String -> Promise error Storable
getItem = Native.LocalForage.getItem

setItem : String -> Storable -> Promise error ()
setItem = Native.LocalForage.setItem

removeItem : String -> Promise error ()
removeItem = Native.LocalForage.removeItem

clear : Promise error ()
clear = Native.LocalForage.clear

length : Promise error Int
length = Native.LocalForage.length

key : Promise error String
key = Native.LocalForage.key

keys : Promise error (Array String)
keys = Native.LocalForage.keys

iterate : (String -> Storable -> Promise error value) -> Promise error value
iterate = Native.LocalForage.iterate
