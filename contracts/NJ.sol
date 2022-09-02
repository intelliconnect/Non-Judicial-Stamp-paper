
pragma solidity ^0.8.16;

// Creating a Smart Contract
contract nonJudicialpaper{

// Structure of contract
struct contents{
	
	// State variables
	int id;
	string firstPartyname;
	string counterPartyname;
	string purpose;
}

contents []emps;

// Function to add
// contract details
function addContractDetails(
	int id, string memory firstPartyname,
	string memory counterPartyname,
	string memory purpose
) public{
	contents memory e
		=contents(id,
				firstPartyname,
				counterPartyname,
				purpose);
	emps.push(e);
}

// Function to get
// details of contract
function getContractdetails(
	int id
) public view returns(
	string memory,
	string memory,
	string memory){
	uint i;
	for(i=0;i<emps.length;i++)
	{
		contents memory e
			=emps[i];
		
		// Looks for a matching
		// employee id
		if(e.id==id)
		{
				return(e.firstPartyname,
					e.counterPartyname,
					e.purpose);
		}
	}
	
	// If provided with contract
	// id and it is not present,
	// it returns Not
	// Found
	return("Not Found",
			"Not Found",
			"Not Found");
}
}
