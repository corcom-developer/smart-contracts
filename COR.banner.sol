pragma solidity ^0.4.0;

/* Cor Utility Banner */

contract mortal {
    /* Define variable owner of the type address */
    address owner;

    /* This function is executed at initialization and sets the owner of the contract */
    function mortal() { owner = msg.sender; }

    /* Function to recover the funds on the contract */
    function kill() { if (msg.sender == owner) selfdestruct(owner); }
}

contract displayer is mortal {
    /* Define variable greeting of the type string */
    string banner;
    
    /* This runs when the contract is executed */
    function displayer(string _banner) public {
        banner = _banner;
    }

    /* Main function */
    function display() constant returns (string) {
        return "The Core Component Matrix is here! www.corcom.io ";
        /* return banner */
     }
}