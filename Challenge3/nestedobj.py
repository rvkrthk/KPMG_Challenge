import json
import sys

myobj={
   "status": "SUCCESS",
   "device": [
         {
             "name":"ravi",
             "username": "login1",
         },
         {
             "name":"karthik",
             "username": "login2",
         }
    ]
}
json_str = json.dumps(myobj)
resp = json.loads(json_str)

print (resp['device'][0]['username'])