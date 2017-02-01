fibonacci :: Integer -> Integer
helper :: Integer -> Integer -> Integer -> Integer

helper a1 a2 n | abs(n)==1 = a2
		| n>0 = helper a2 (a1+a2) (n-1)
		| n<0 = helper a2 (a1-a2) (n+1)

fibonacci n | n==0 || n==1 || n==(-1) = abs(n) 
		| otherwise = helper 0 1 n
