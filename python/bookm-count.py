with open('bookmarks.html', encoding='utf-8') as bf:
	count = len(bf.read().split('http://'))
	print(count)
