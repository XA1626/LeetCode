object Solution {
    def twoSum(nums: Array[Int], target: Int): Array[Int] = {
        nums.zipWithIndex
            .foldLeft((Map.empty[Int, Int], Option.empty[Array[Int]])) {
                case ((seen, result @ Some(_)), _) => (seen, result) // result already found
                case ((seen, None), (num, idx)) =>
                    val complement = target - num
                    seen.get(complement) match {
                        case Some(prevIdx) => (seen, Some(Array(prevIdx, idx)))
                        case None => (seen + (num -> idx), None)
                    }
            }._2.getOrElse(throw new IllegalArgumentException("No two sum solution"))
    }
}