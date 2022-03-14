// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0; // choose version

// create a class
contract Transactions {
    uint256 transactionCount; // interger in solidity

    // function to emit later, parameter(type, variable name)
    event Transfer(
        address from,
        address receiver,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keyword
    );

    // create an object
    struct TransferStruct {
        address sender; // type = properties
        address receiver;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions; // transactions will be an array inside TransferStruct

    function addToBlockchain(
        address payable receiver,
        uint256 amount,
        string memory message,
        string memory keyword
    ) public {
        transactionCount += 1;
        transactions.push( // push into TransferStrut array
            TransferStruct(
                msg.sender,
                receiver,
                amount,
                message,
                block.timestamp,
                keyword
            )
        );

        // emit the event function
        emit Transfer(
            msg.sender,
            receiver,
            amount,
            message,
            block.timestamp,
            keyword
        );
    }

    // return all transactions record from transactionStrut from memory
    function getAllTransactions()
        public
        view
        returns (TransferStruct[] memory)
    {
        return transactions;
    }

    // return number
    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}
