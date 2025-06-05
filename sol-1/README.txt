Homework 5
You will need to use python to generate the test cases, but the goal is to write solidity code that leverages the precompiles to accomplish the following:
Problem 1: Rational numbers
We’re going to do zero knowledge addition again.
Claim: “I know two rational numbers that add up to num/den”
Proof: ([A], [B], num, den)

Here, num is the numerator of the rational number and den is the denominator.
struct ECPoint {
	uint256 x;
	uint256 y;
}

function rationalAdd(ECPoint calldata A, ECPoint calldata B, uint256 num, uint256 den) public view returns (bool verified) {
	
	// return true if the prover knows two numbers that add up to num/den
}
​
Solidity/EVM has two functions you may find handy: mulmod (which does multiplication modulo p) and the precompile modExp which does modular exponentiation.
Although modExp does not let you raise to the power of -1, you can accomplish the same thing by raising a number to curve_order - 2.
The following identity will be handy:
pow(a, -1, curve_order) == pow(a, curve_order - 2, curve_order)
​
(This is Fermat’s little theorem, you can ask a chatbot AI to further explain this, but it isn’t necessary to understand this)
To accomplish pow the precompile modExp may be handy.