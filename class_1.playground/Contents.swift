import UIKit
import Foundation

/*
 * Complete the 'compareTriplets' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY a
 *  2. INTEGER_ARRAY b
 */

func compareTripleta(a: [Int], b: [Int]) -> [Int] {
    // Write your code here
    
}
// Baterry Test
compareTripleta(a: [1,2,400], b: [4,4,4]) // [0,0]
compareTripleta(a: [1,2,10], b: [4,4,4]) // [1,2]
compareTripleta(a: [1,2,4], b: [4,4,5]) // [0,3]
compareTripleta(a: [1,2,4], b: [4,4,4]) // [0,2]
compareTripleta(a: [-1,2,4], b: [4,4,4]) // [0,0]
compareTripleta(a: [-1,2,4], b: [4,4,101]) // [0,0]
