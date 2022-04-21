#pragma once
#include <iostream>
#include "Node.h";
template<typename d>
class linkedlist
{
	Node<d>* head = NULL;
public:

	linkedlist()
	{
		head = new Node<d>();
	}
	void add(Node<d>* n)
	{
		if (head.next == NULL)
		{
			head.setNext(n);
		}
		else
		{
			Node ptr = head;
			while (ptr != NULL)
			{
				if (ptr.getNext() == NULL)
				{
					ptr.setNext(n);
					return;
				}
				ptr = ptr.getNext();

			}
		}
	}
	bool contains(d datatofind)
	{
		Node ptr = head;
		while (ptr != NULL)
		{
			if (ptr.getVal() == datatofind)
			{
				return true;
			}
			ptr = ptr.getNext();

		}
		return false;
	}
	Node<d> getHead()
	{
		return *head;
	}
};

