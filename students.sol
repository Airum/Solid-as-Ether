pragma solidity ^0.4.11;
/ Adds students to a list, also able to return
/ that list on the chain
contract students
{

  person[] public people;

  struct person
  {
    bytes32 firstname;
    bytes32 lastname;
    uint age;
  }

  function addperson(bytes32 _firstname, bytes32 _lastname, uint _age) returns (bool success)
  {
    person memory newperson;
    newperson.firstname=_firstname;
    newperson.lastname=_lastname;
    newperson.age=_age;

    people.push(newperson);
    return true;
  }

  function getpeople() constant returns(bytes32[],bytes32[],uint[])
  {
  uint length=people.length;

   bytes32[] memory firstnames = new bytes32[](length);
   bytes32[] memory lastnames = new bytes32[](length);
   uint[] memory ages = new uint[](length);

    for(uint i=0; i<people.length; i++)
    {
      person memory currentperson;
      currentperson=people[i];

      firstnames[i]=currentperson.firstname;
      lastnames[i]=currentperson.lastname;
      ages[i]=currentperson.age;
    }
    return(firstnames,lastnames,ages);
  }

}
