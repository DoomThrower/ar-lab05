import org.apache.spark._
import org.apache.spark.graphx._
import org.apache.spark.graphx.lib._
import org.apache.spark.graphx.util.GraphGenerators


/** Graph Generator. */
object SparkGraphGenerator {
	def main(args: Array[String]) {
		if (args.length < 1) {
			System.err.println("Usage: SparkGraphGenerator <vertex-count>")
			System.exit(1)
		}
		val vertexCount = args(0).toInt

		val conf = new SparkConf()
		val sc = new SparkContext(conf.setAppName("SparkGraphGenerator(" + vertexCount + ")"))
		
		val graph = GraphGenerators.logNormalGraph(sc, numVertices = vertexCount)

		graph.vertices.collect().sortBy(_._2).foreach{
			case (v1, v2) => println(v1 + " " + v2)
		}

        sc.stop()
	}
}
