class varian.util.HL7DataTypeMap extends %Projection.AbstractProjection [ abstract ]
{

Projection Dummy As varian.util.HL7DataTypeMap;

/// For each XData in the class
/// Build out the ^varian.maps global
/// That global is consulted by the custom
/// FunctionSet from data transforms to 
/// nicely handle HL7 Data Types to object
/// uniformly
classmethod CreateProjection(classname as %String, byref parameters, modified as %String) as %Status
{
  //write !,"classname=",classname,!
  return:classname="varian.util.HL7DataTypeMap" $$$OK
  set cdef=##class(%Dictionary.ClassDefinition).%OpenId(classname)
  for i=1:1:cdef.XDatas.Count() {
    set xdata=cdef.XDatas.GetAt(i)
    try {
      do ..processMapXData(xdata)
    } catch error {
      do error.OutputToDevice() 
    }
  }
  return $$$OK
}

classmethod RemoveProjection(classname as %String, byref parameters, recompile as %Boolean) as %Status
{

  return $$$OK
}

classmethod processMapXData(xdata as %Dictionary.XDataDefinition) [ Private ]
{
  try {
    set reader = ##class(%XML.Reader).%New()
    do reader.OpenStream( xdata.Data )
    do reader.Correlate("Map","varian.util.MapXData")
    // only ONE Map per XData block
    set found=reader.Next(.map, .sc)  
    write "found=",found,!
    zw map
    if ( 1 ) {
      zw map
      set from=map.From
      set to=map.To
      set version=$piece(from,":",1),hl7Type=$piece(from,":",2)
      kill ^varian.maps(version,hl7Type)
      set ^varian.maps(version,hl7Type)=to
      for i=1:1:map.Maps.Count() {
        set pmap=map.Maps.GetAt(i)
        set ^varian.maps(version,hl7Type,"names",pmap.From)=pmap.To
      }
        
    } else {
      do $system.Status.DisplayError(sc)
    }
  } catch error {
    throw error
  }
}

}
