import UIKit

class Graph {
  var V = 0               // number of vertices
  var adj = [[Int]]()     // adjacency list
  
  init(_ V: Int){
    self.V = V
    for _ in 0..<V{
      adj.append([Int]())  // create empty array of adjacency list
    }
  }
  
  func addEdge(v: Int, w: Int) {
    adj[v].append(w)
  }
}


let g = Graph(3)
print(g.adj)
g.addEdge(v: 0, w: 1)
g.addEdge(v: 0, w: 6)
g.addEdge(v: 0, w: 3)
print(g.adj)
