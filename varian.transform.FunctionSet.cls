class varian.transform.FunctionSet extends Ens.Rule.FunctionSet
{

classmethod xMap(Version,Type,Path,ByRef source) as %RegisteredObject {

  if ( '$data(^varian.maps(Version,Type) ) ) {
    throw ##class(%Exception.General).%New("varian",,,"No map for "_Version_" type="_Type)
  }
  merge map=^varian.maps(Version,Type)
  set targetObject=$classmethod(map,"%New")
  set fromProperty=$order(map("names",""))
  while ( fromProperty'="" ) {
    set toProperty = map("names",fromProperty)
    set path=Path_"."_fromProperty
    //write "path=",path,"     "
    set value=source.GetValueAt(path)
    //write toProperty,"=",value,!
    set $property(targetObject,toProperty)=value
    set fromProperty=$order(map("names",fromProperty))
  }
  //zw targetObject
  return targetObject

}

}
