pragma solidity ^0.8.0;

contract SentimentVoting {
    mapping(address => bool) public hasVoted;
    uint256 public positiveVotes;
    uint256 public negativeVotes;
    
    function vote(bool _isPositive) public {
        require(!hasVoted[msg.sender], "You have already voted.");
        hasVoted[msg.sender] = true;
        
        if (_isPositive) {
            positiveVotes++;
        } else {
            negativeVotes++;
        }
    }
    
    function getVotes() public view returns (uint256, uint256) {
        return (positiveVotes, negativeVotes);
    }
}
```


