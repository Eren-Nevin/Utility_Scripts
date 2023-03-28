#! /usr/bin/env python3
import string
with open('./my_new_file', 'r') as f:
    words = filter(lambda word: word not in string.punctuation, f.read(-1).split())
    m_dict = {}
    for word in words:
        m_dict[word] = m_dict[word] + 1 if word in m_dict.keys() else 1
    result = list(m_dict.items())
    result.sort(key= lambda item: item[1], reverse=True)
    print("\n".join(map(lambda item: f"{item[0]}: {item[1]}", result)))
