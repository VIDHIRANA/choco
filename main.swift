import Foundation;
class Chocolate
{
	
     func findMinDiff(_ A: [Int], _ N: Int, _ M: Int)->Int
	{
		// if there are no chocolates or
		// number of students is 0
		if (M == 0 || N == 0)
		{
			return 0;
		}
		// Sort the given packets
		A.sorted();
		// Number of students cannot be
		// more than number of packets
		if (N < M)
		{
			return -1;
		}
		// Largest number of chocolates
		var min_diff: Int = Int.max;
		do {
			var i: Int = 0;
			
			while (i + M - 1 < N)
			{
				let diff: Int = A[i + M - 1] - A[i];
				if (diff < min_diff)
				{
					min_diff = diff;
				}
				i += 1;
			}
		}
		return min_diff;
	}
	
	 func main(_ args: [String])
	{
		let A: [Int] = [12, 4, 7, 9, 2, 23, 25, 41, 30, 40, 28, 42, 30, 44, 48, 43, 50];
		let M: Int = 7;
		// Number of students
		let N: Int = A.count;
		print("Minimum difference is "
			+ String(Chocolate.findMinDiff(A, N, M)));
	}
}
Chocolate.main([String]());