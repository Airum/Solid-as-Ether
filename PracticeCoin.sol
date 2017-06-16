// Practice Coin
// Sets balance, transfers, retrieves balance

pragma solidity ^0.4.11;
contract practicecoin {
address public owner;
 mapping (address => uint) balances;

 function practice(){
     owner=msg.sender;
     balances[owner]=1000;
 }

 function transfer(address _to,uint _value) returns (bool success){
     if(balances[msg.sender] < _value){
       return false;
      }

     balances[msg.sender] -= _value;
     balances[_to] += _value;
    }
 function getbalance(address _user) constant returns (uint _balance){
        return balances[_user];

      }

}
