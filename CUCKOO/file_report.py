#!/usr/bin/python


import requests


API_KEY = '87529469b60ba8bddab24201963dc92b1f77545bcf44b6c7f9f2b3f9c270506d'
MD5_aafile = 'cfe9b5c742d6aa8990530a7e4291b01a'
aafile= 'CCE28122017_008030.7z'




#url = 'https://www.virustotal.com/vtapi/v2/file/report'
#params = {'apikey': API_KEY, 'resource': MD5_aafile}
  #params = {'apikey': '87529469b60ba8bddab24201963dc92b1f77545bcf44b6c7f9f2b3f9c270506d', 'resource': 'cfe9b5c742d6aa8990530a7e4291b01a'}
#response = requests.get(url, params=params)
#print(response.json())


#url = 'https://www.virustotal.com/vtapi/v2/file/scan'
#params = {'apikey': API_KEY}
#files = {'file': (aafile, open(aafile, 'rb'))}
#response = requests.post(url, files=files, params=params)
#print(response.json())




url = 'https://www.virustotal.com/vtapi/v2/file/behaviour'
params = {'apikey': API_KEY,'hash': MD5_aafile}
response = requests.get(url, params=params)
print(response.json())



##########
#API_KEY=87529469b60ba8bddab24201963dc92b1f77545bcf44b6c7f9f2b3f9c270506d
#MD5_aa=256d50d433cd004f7b3a09c3ba8c259a
#MD5_bb=cfe9b5c742d6aa8990530a7e4291b01a

#### md5sum
# 256d50d433cd004f7b3a09c3ba8c259a  Invoice_1900246.7z
# cfe9b5c742d6aa8990530a7e4291b01a  CCE28122017_008030.7z

#### sha1sum
# d2107f506e401e29d520f78cc37c2ec5c1c2f6ac  CCE28122017_008030.7z
# edec1bcdae1d075041cccf8580e8f818b2312a08  Invoice_1900246.7z
