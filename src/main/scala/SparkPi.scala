import org.apache.spark.rdd.RDD
import org.apache.spark.sql.SparkSession

import scala.math.random

object SparkPi extends App {
  val spark: SparkSession = SparkSession
    .builder
    .appName("Spark Pi")
    .getOrCreate()

  val slices: Int = if (args.length > 0) args(0).toInt else 2

  val n: Int = math.min(100000L * slices, Int.MaxValue).toInt // avoid overflow

  val value: RDD[Int] = spark.sparkContext.parallelize(1 until n, slices)

  val count = value.map { i =>
    val x = random * 2 - 1
    val y = random * 2 - 1
    if (x * x + y * y <= 1) 1 else 0
  }.reduce(_ + _)

  println(s"Pi is roughly ${4.0 * count / (n - 1)}")

  spark.stop()

}
