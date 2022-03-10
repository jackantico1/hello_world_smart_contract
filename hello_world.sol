// SPDX-License-Identifier: MIT

pragma solidity ^0.7.3;

contract HelloWorld {

   event UpdatedMessages(string oldStr, string newStr);
   string public message;

   function update(string memory newMessage) public {
      string memory oldMsg = message;
      message = newMessage;
      emit UpdatedMessages(oldMsg, newMessage);
   }

   function return_message() public view returns(string memory _message){
     return message;
   }
}