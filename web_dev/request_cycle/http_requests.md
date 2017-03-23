Common types of HTTP status codes?
	- 404 NOT FOUND
	- 403 FORBIDDEN
	- 500 Internal Server Error
	- 503 Service Unavailable
	- 504 Gateway Timeout 
	- 200 OK
	- 302 Not Found

GET requests generally retrieve data and is idempotent (repeating the query does not have side-effects) and can only send a limited about of data to the server.

POST sends data to be processed to the indentified resource. The data is included in the body of the request and may result in the create of a new resource, updates of an exisiting resource or both.

POST is used for destructive actions such as creation, editing and deletion. GET is used when to call informaiton (bookmarking a page).

A cookie is a text file that is stored by a browser on a user's computer/phone/device. They do not contain executable code. The infomation stored in the file allows web serves to use the inofrmation to identify users. A cookie is stored by sending an HTTP header caled Set_cookie. 

Release 1

