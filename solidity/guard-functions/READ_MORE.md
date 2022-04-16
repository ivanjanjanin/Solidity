ABOUT REVERT :

    It allows us to return a value, and refund gas to user


ABOUT ASSERT : 

    The Assert function should only be used to check for internal errors and to check invariants


ABOUT REQUIRE : 

   The Require function should be used to ensure valid conditions, such as inputs, or contract state variables are met, or to validate return values from calls to external contracts.




USE REQUIRE TO :

    1)- Validate user inputs ..... require(input < 20);

    2)- Validate the response from external contracts ..... require(external.send(amount))

    3)- Validate state condition prior to execution ..... require(block.number > some_block_number) or require(balance[msg.sender] >= amount);

    4)- Generally we should use require most often

    5)- Generally it is used towards the beginning of the function


USE ASSERT TO :

    1)- Check for overflow/underflow..... c = a+b; assert(c > b);

    2)- Check for invariants..... assert(this.balance >= totalSupply);

    3)-Validate state after making changes 

    4)- Prevent conditions which should never, ever be possible

    5)- Generally we will probably use assert less often

    6)- Generally it is is used towards the end of the function


USE REVERT TO : 

    1)- Handle the same type of situations as require(), but with more complex logic





NOTE: Keep require() as a go to function for checking conditions, assert should just prevent something bad from happening
