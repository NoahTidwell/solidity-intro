// Use Remix to compile and deploy
pragma solidity ^0.6.0;

contract MappingContract {
    // Mappings
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }


    constructor() public {
        names[1] = "Eric";
        names[2] = "Mark";
        names[3] = "Noah";
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }
    
    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }

} 