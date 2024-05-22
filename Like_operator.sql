USE people;

-- '%' wildcard can be used to match any number of characters
/*
Task 1 :
        Apply a pattern that fetches all the character strings starting with 'A' 
        Pattern : 'A%'
        Matching Examples : (A) , (A)udacious , (A)nomaly etc..
*/

-- Q1. Fetch all records whose first name starts with 'A' in the field 'FirstName' of our citizens table

SELECT *
FROM citizen
WHERE first_name LIKE "A%";

-- Common Tasks
/*
Task 2 :
        Apply a pattern that fetches all the character strings Ending with 'A'
        Pattern : '%A'
        Matching Examples : (A) , CINEM(A) , PIZZ(A) , CAMER(A) etc..
        
 Task 3 :
        Apply a pattern that fetches all the character strings that have 'A' in it 
        Pattern : '%A%'
        Examples : (A) , DR(A)W , TE(A) , (A)RTIST etc..
        
Task 4 :
        Apply a pattern that fetches all the character strings that Starts with 'A' and Ends with 'K'
        Pattern : 'A%K'
        Matching Examples : (A)S(K) , (A)TTAC(K) etc.. 
*/

-- Challenge : Fetch all the records from the Citizens table , whose last name starts with 'a' and contains 'c' in it.

SELECT *
FROM citizen
WHERE last_name LIKE "a%c%";

-- Wildcard '_' represents a single charater

/*
Task :
      Fetch all the strings that start with 'A' and have exactly 3 characters
      Pattern : 'A__'
      Matching Examples : (A)SK , (A)CT , (A)CE etc..
*/

/*
Task 1 : 
	 Fetch all the strings that Starts with 'A' , ends with 'b' and length 4
     Pattern :A__b'
     Matching Examples : (A)ra(b)

Task 2 :
		Fetch all the strings whose 2nd character should be 'a' and ends with 'b'
        Pattern : '_a%b'
        Matching Examples : H(a)bi(b)
      
Task 3 : 
        Fetch all the strings which 'd' as 3rd character from last 
        Pattern : '%d__'
        Matching Examples : Had(d)en
*/

/*
Challenge : Fetch all the records from the citizens table whose FirstName has 2nd and 3rd characters 
            as 'a' and 'd' respectively and then 'd' as 2nd character from last.
*/

SELECT *
FROM citizen
WHERE last_name LIKE "_ac%d_";
            
        


