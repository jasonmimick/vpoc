class varian.util.MapXData extends (%XML.Adaptor, %RegisteredObject) [ Final ]
{
Parameter XMLNAME = "Map";

Property From As %String(MAXLEN = "", XMLPROJECTION="ATTRIBUTE");
Property To As %String(MAXLEN = "", XMLPROJECTION="ATTRIBUTE");
Property Maps As list of varian.util.MapXData;
}
