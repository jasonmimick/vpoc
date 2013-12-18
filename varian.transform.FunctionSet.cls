class varian.transform.FunctionSet extends Ens.Rule.FunctionSet
{

classmethod vAddress(AD as %String) as v1.q2.Address{
	set addr=##class(v1.q2.Address).%New()
	// parse out AD from ^EnsHL7.Schema(....
	return addr
}

}
