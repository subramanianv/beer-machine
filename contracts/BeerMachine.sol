pragma solidity ^0.4.3;

contract owned {
  function owned() {
    owner = msg.sender;
  }

  modifier onlyowner() {
    if (msg.sender == owner) {
      _;
    }
  }

  address public owner;
}

contract Proxy {
  function forward_transaction(address _destination, uint _value, bytes _calldata) public {}
}

contract OwnedProxy is owned, Proxy {
  modifier onlyowner {
    if (msg.sender == address(this) || msg.sender == owner) {
      _;
    }
  }

  /// @notice The contract fallback function
  function () payable public {}

  function OwnedProxy(address _owner) {
    owner = _owner;
  }

  function forward_transaction(address _destination, uint _value, bytes _calldata) public onlyowner {
    if (!_destination.call.value(_value)(_calldata)) {
      throw;
    }
  }

  function transfer_ownership(address _owner) public onlyowner {
    owner = _owner;
  }
}

contract BeerMachine is OwnedProxy {
  modifier valueGreaterThanPrice() {
    if (msg.value >= price) {
      _;
    } else {
      throw;
    }
  }

  function () valueGreaterThanPrice() payable public {
    amount[msg.sender] += msg.value;
    AmountPayed(msg.sender, msg.value);
  }

  function BeerMachine(address _owner, address _payoutDestination, uint _price) {
    owner = _owner;
    price = _price;
    payoutDestination = _payoutDestination;
  }

  function setPrice(uint _price) onlyowner public {
    price = _price;
  }

  function setPayoutDestination(address _payoutDestination) onlyowner public {
    payoutDestination = _payoutDestination;
  }

  function payout() onlyowner public {
    forward_transaction(payoutDestination, this.balance, 0);
  }

  event AmountPayed(address _sender, uint _amount);

  uint public price;
  address public payoutDestination;
  mapping(address => uint) public amount;
}
