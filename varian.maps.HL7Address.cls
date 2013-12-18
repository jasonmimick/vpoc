class varian.maps.HL7Address extends varian.util.HL7DataTypeMap
{

XData AddressMap {

  <Map From="2.5:AD" To="v1.q2.Address">
    <Maps>
      <Map From="City" To="CityOrTownship" />
      <Map From="Country" To="Country" />
      <Map From="StreetAddress" To="Line1" />
      <Map From="ZiporPostalCode" To="PostalCode" />
      <Map From="StateorProvince" To="Line2" />
      <Map From="AddressType" To="Type" />
    </Maps>
  </Map>

}

}
