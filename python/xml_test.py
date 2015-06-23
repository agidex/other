import xml.etree.ElementTree as etree
tree = etree.parse('sankaku0.txt')
root = tree.getroot()
print('root: ',root.tag)
for child in root:
    print(child.tag, child.attrib)

print('name:', root[0].text)
