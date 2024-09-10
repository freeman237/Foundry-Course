// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // Solidity version

contract SimpleStorage{
    // Basic Types: boolean, uint, int, address, bytes
    // bool hasFavoriteNumber = true; // false
    uint256 public myFavoriteNumber = 8; // 0
    // string favoriteNumberInText = "eight";
    // int256 favoriteInt = -8;
    // address myAddress = 0xb86B3D56BD19dAd6394953fc970FB484566b223d;
    // bytes32 favoriteBytes32 = "Ghost";

    // unit256[] listOfFavoriteNumbers;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function addPerson( string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person( _favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256)  {
        return myFavoriteNumber;
    }

}

contract SimpleStorage2 {}
contract SimpleStorage3 {}
contract SimpleStorage4 {}
contract SimpleStorage5 {}
