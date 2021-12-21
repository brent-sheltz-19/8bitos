#pragma once
template<typename K, typename V>
class keyvaluepair
{
private:
	K key;
	V val;
public:
	keyvaluepair();

	keyvaluepair(K,V);
	V getValue(K key);
	void setValue(V val);
	K getKey();

};

template<typename K, typename V>
inline keyvaluepair<K, V>::keyvaluepair()
{

}
template<typename K, typename V>
inline keyvaluepair<K, V>::keyvaluepair(K key, V value)
{
	this->key = key;
	this->val = value;
}
template<typename K, typename V>
inline V keyvaluepair<K, V>::getValue(K key)
{
	return val;
}

template<typename K, typename V>
inline void keyvaluepair<K, V>::setValue(V val)
{
}
