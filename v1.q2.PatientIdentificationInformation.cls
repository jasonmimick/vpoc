/// Created from: C:\Users\Administrator\Downloads\puvmmichiganADTServiceWSDL\puvmmichiganADTServiceWSDL.XML
Class v1.q2.PatientIdentificationInformation Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://services.varian.com/AriaConnect/HL7";

Parameter XMLNAME = "PatientIdentificationInformation";

Parameter XMLSEQUENCE = 1;

Property AccountNumbers As list Of v1.q2.AccountNumber(XMLITEMNAME = "AccountNumber", XMLNAME = "AccountNumbers", XMLPROJECTION = "COLLECTION");

Property Addresses As list Of v1.q2.Address(XMLITEMNAME = "Address", XMLNAME = "Addresses", XMLPROJECTION = "COLLECTION");

Property Citizenship As %String(MAXLEN = "", XMLNAME = "Citizenship");

Property DateOfBirthInIso801Format As %String(MAXLEN = "", XMLNAME = "DateOfBirthInIso801Format");

Property FirstName As %String(MAXLEN = "", XMLNAME = "FirstName");

Property LastName As %String(MAXLEN = "", XMLNAME = "LastName");

Property MaritalStatus As %String(MAXLEN = "", XMLNAME = "MaritalStatus");

Property MiddleName As %String(MAXLEN = "", XMLNAME = "MiddleName");

Property MothersMaidenName As %String(MAXLEN = "", XMLNAME = "MothersMaidenName");

Property PassportNumber As %String(MAXLEN = "", XMLNAME = "PassportNumber");

Property PatientDeathDateInIso6801Format As %String(MAXLEN = "", XMLNAME = "PatientDeathDateInIso6801Format");

Property PatientId1 As %String(MAXLEN = "", XMLNAME = "PatientId1");

Property PatientId2 As %String(MAXLEN = "", XMLNAME = "PatientId2");

Property PatientUniversalId As %String(MAXLEN = "", XMLNAME = "PatientUniversalId");

Property PhoneNumbers As list Of v1.q2.PhoneNumber(XMLITEMNAME = "PhoneNumber", XMLNAME = "PhoneNumbers", XMLPROJECTION = "COLLECTION");

Property PrimaryLanguage As %String(MAXLEN = "", XMLNAME = "PrimaryLanguage");

Property Race As %String(MAXLEN = "", XMLNAME = "Race");

Property Religion As %String(MAXLEN = "", XMLNAME = "Religion");

Property Sex As %String(MAXLEN = "", XMLNAME = "Sex");

Property SocialSecurityNumber As %String(MAXLEN = "", XMLNAME = "SocialSecurityNumber");

<Storage name="Default">
<Data name="PatientIdentificationInformationDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>AccountNumbers</Value>
</Value>
<Value name="3">
<Value>Addresses</Value>
</Value>
<Value name="4">
<Value>Citizenship</Value>
</Value>
<Value name="5">
<Value>DateOfBirthInIso801Format</Value>
</Value>
<Value name="6">
<Value>FirstName</Value>
</Value>
<Value name="7">
<Value>LastName</Value>
</Value>
<Value name="8">
<Value>MaritalStatus</Value>
</Value>
<Value name="9">
<Value>MiddleName</Value>
</Value>
<Value name="10">
<Value>MothersMaidenName</Value>
</Value>
<Value name="11">
<Value>PassportNumber</Value>
</Value>
<Value name="12">
<Value>PatientDeathDateInIso6801Format</Value>
</Value>
<Value name="13">
<Value>PatientId1</Value>
</Value>
<Value name="14">
<Value>PatientId2</Value>
</Value>
<Value name="15">
<Value>PatientUniversalId</Value>
</Value>
<Value name="16">
<Value>PhoneNumbers</Value>
</Value>
<Value name="17">
<Value>PrimaryLanguage</Value>
</Value>
<Value name="18">
<Value>Race</Value>
</Value>
<Value name="19">
<Value>Religion</Value>
</Value>
<Value name="20">
<Value>Sex</Value>
</Value>
<Value name="21">
<Value>SocialSecurityNumber</Value>
</Value>
</Data>
<DataLocation>^v1.q2.PatientIden5C22D</DataLocation>
<DefaultData>PatientIdentificationInformationDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^v1.q2.PatientIden5C22D</IdLocation>
<IndexLocation>^v1.q2.PatientIden5C22I</IndexLocation>
<StreamLocation>^v1.q2.PatientIden5C22S</StreamLocation>
<Type>%Library.CacheStorage</Type>
</Storage>
}

