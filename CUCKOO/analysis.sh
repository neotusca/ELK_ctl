
API_KEY=87529469b60ba8bddab24201963dc92b1f77545bcf44b6c7f9f2b3f9c270506d
MD5_aa=256d50d433cd004f7b3a09c3ba8c259a
MD5_bb=cfe9b5c742d6aa8990530a7e4291b01a


curl --request GET \
     --url 'https://www.virustotal.com/vtapi/v2/file/report?apikey=/"$API_KEY/"&resource=/"$MD5_aa/"'

#     --url 'https://www.virustotal.com/vtapi/v2/file/report?apikey=\$API_KEY&resource=\$MD5_aa'

exit




curl --request POST \
     --url 'https://www.virustotal.com/vtapi/v2/file/scan' \
     --form 'apikey=87529469b60ba8bddab24201963dc92b1f77545bcf44b6c7f9f2b3f9c270506d' \
     --form 'file=@/root/CUCKOO/Invoice_1900246.7z'

     #--form 'file=@/root/CUCKOO'
     #--form 'file=@Invoice_1900246.7z'




#### md5sum
256d50d433cd004f7b3a09c3ba8c259a  Invoice_1900246.7z
cfe9b5c742d6aa8990530a7e4291b01a  CCE28122017_008030.7z

#### sha1sum
d2107f506e401e29d520f78cc37c2ec5c1c2f6ac  CCE28122017_008030.7z
edec1bcdae1d075041cccf8580e8f818b2312a08  Invoice_1900246.7z
