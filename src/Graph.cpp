//
// Created by sylvain on 14/10/2021.
//
#include "Graph.hpp"
using namespace std;
void Graph::printGraph(){
    for (size_t i = 0; i < this->mAdjancencyList.size(); ++i) {
        cout << i<<"->";
        for (size_t j = 0; j < this->mAdjancencyList.at(i).size(); ++j) {
            if(j!=0)
                cout<<", ";
            cout<<this->mAdjancencyList.at(i).at(j);
        }
    }
}
void Graph::ProcessDistances(){
    lemon::ListDigraph::NodeMap<double> nodeColor(*this->mGraph);
    for (size_t i = 0; i < this->mVerticesColors.size(); ++i) {
        nodeColor[this->mNodes->at(i)] = this->mVerticesColors.at(i);
    }
    lemon::ListDigraph::ArcMap<double> arcColor(*this->mGraph);
    for (int i = 0; i < this->mGraph->maxArcId(); ++i) {
        lemon::ListDigraph::Arc arc = this->mGraph->arcFromId(i);
        arcColor[arc] = nodeColor[this->mGraph->source(this->mGraph->arcFromId(i))] + nodeColor[this->mGraph->target(this->mGraph->arcFromId(i))];
    }
}
void Graph::generateDigraph(){
    // Generate node list.
    this->mNodes = new vector<lemon::ListDigraph::Node>(this->mAdjancencyList.size());
    for (size_t i = 0; i < this->mAdjancencyList.size(); ++i) {
        this->mNodes->at(i) = this->mGraph->addNode();
    }

    // Generate Digraph.
    this->mGraph = new lemon::ListDigraph();
    for (size_t i = 0; i < this->mAdjancencyList.size(); ++i) {
        for (size_t j = 0; j < this->mAdjancencyList.at(i).size(); ++j) {
            this->mGraph->addArc(this->mNodes->at(i),this->mNodes->at(mAdjancencyList.at(i).at(j)));
            this->mGraph->addArc(this->mNodes->at(mAdjancencyList.at(i).at(j)), this->mNodes->at(i));
        }
    }
    this->ProcessDistances();
}