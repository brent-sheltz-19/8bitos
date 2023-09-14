#pragma once
template<typename D>
class Node
{
public:
	D data;
	Node* next;
	Node();
	Node(D);
	void setData(D);
	void setNext(Node*);
	D getData();
	Node* getNext();


};

template<typename D>
inline Node<D>::Node()
{
}

template<typename D>
inline Node<D>::Node(D data)
{
	this->data = data;
}
template<typename D>
inline void Node<D>::setData(D d)
{
	data = d;
}

template<typename D>
inline void Node<D>::setNext(Node* n)
{
	next = n;
}

template<typename D>
inline D Node<D>::getData()
{
	return D();
}

template<typename D>
inline Node<D>* Node<D>::getNext()
{
	return next;
}
