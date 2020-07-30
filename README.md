# HTTP Status Codes for 1C:Enterprise Platform

[![Quality Gate Status](https://sonar.openbsl.ru/api/project_badges/measure?project=HTTPStatusCodes&metric=alert_status)](https://sonar.openbsl.ru/dashboard?id=HTTPStatusCodes)
[![Maintainability Rating](https://sonar.openbsl.ru/api/project_badges/measure?project=HTTPStatusCodes&metric=sqale_rating)](https://sonar.openbsl.ru/dashboard?id=HTTPStatusCodes)

*HTTP Status Codes* module defines a set of HTTP status codes, reason phrases, long descriptions written in English, and some operations on it. "Magic" numbers killer!

See also:
* [HTTPConnector](https://github.com/vbondarevsky/Connector)

## Features

* Getting the numerical values of the HTTP status codes by the short identifier;
* Getting short identifiers by three-digit numeric HTTP status code;
* Getting reason phrase of of the HTTP status codes;
* Checking the values of variables through the functions;
* Determination the string representation of the HTTP status code class by its three-digit numeric code (informational, success, redirection, client error, server error);

## How it works

Copy *HTTPStatusCodesClientServerCached* (en) **or** *КодыСостоянияHTTPКлиентСерверПовтИсп* (ru) module to your configuration.

Use *Public* region's methods in both the client or server contexts.

### Examples

```bash
# it was...
If ( HTTPResponse.StatusCode = 201 ) Then
    Raise NStr("en = 'do anything...'");
EndIf;

# became...
If ( HTTPStatusCodesClientServerCached.isCreated(HTTPResponse.StatusCode) ) Then
    Raise NStr("en = 'do anything...'");
EndIf;
```

```bash
Value = 400;
Result = HTTPStatusCodesClientServerCached.IsClientError( Value );
# Result = True
```

```bash
Value = 400;
Result = HTTPStatusCodesClientServerCached.StatusCodesClass( Value );
# Result = "ClientError"
```

```bash
Value = 400;
Result = HTTPStatusCodesClientServerCached.FindIdByCode( Value );
# Result = "BAD_REQUEST"
```

```bash
Value = "BAD_REQUEST";
Result = HTTPStatusCodesClientServerCached.FindCodeById( Value );
# Result = 400
```

```bash
Value = "BAD_REQUEST";
Result = HTTPStatusCodesClientServerCached.FindReasonPhraseById( Value );
# Result = "Bad Request"
```
## Status Codes

RFC 2068, 2518, 3229, 4918, 5842, 6585, 7231-7233

| Code | Id                               | Reason Phrase                     |
| ---- | -------------------------------- |---------------------------------- |
| 100  | "CONTINUE"                        | "Continue"                        |
| 101  | "SWITCHING_PROTOCOLS"             | "Switching Protocols              |
| 102  | "PROCESSING"                      | "Processing"                      |
| 103  | "CHECKPOINT"                      | "Checkpoint"                      |
| 200  | "OK"                              | "OK"                              |
| 201  | "CREATED"                         | "Created"                         |
| 202  | "ACCEPTED"                        | "Accepted"                        |
| 203  | "NON_AUTHORITATIVE_INFORMATION"   | "Non-Authoritative Information"   |
| 204  | "NO_CONTENT"                      | "No Content"                      |
| 205  | "RESET_CONTENT"                   | "Reset Content"                   |
| 206  | "PARTIAL_CONTENT"                 | "Partial Content"                 |
| 207  | "MULTI_STATUS"                    | "Multi-Status"                    |
| 208  | "ALREADY_REPORTED"                | "Already Reported"                |
| 226  | "IM_USED"                         | "IM Used"                         |
| 300  | "MULTIPLE_CHOICES"                | "Multiple сhoices"                |
| 301  | "MOVED_PERMANENTLY"               | "Moved Permanently"               |
| 302  | "FOUND"                           | "Found"                           |
| 303  | "SEE_OTHER"                       | "See Other"                       |
| 304  | "NOT_MODIFIED"                    | "Not Modified"                    |
| 305  | "USE_PROXY"                       | "Use Proxy"                       |
| 307  | "TEMPORARY_REDIRECT"              | "Temporary Redirect"              |
| 308  | "PERMANENT_REDIRECT"              | "Permanent Redirect"              |
| 400  | "BAD_REQUEST"                     | "Bad Request"                     |
| 401  | "UNAUTHORIZED"                    | "Unauthorized"                    |
| 402  | "PAYMENT_REQUIRED"                | "Payment Required"                |
| 403  | "FORBIDDEN"                       | "Forbidden"                       |
| 404  | "NOT_FOUND"                       | "Not Found"                       |
| 405  | "METHOD_NOT_ALLOWED"              | "Method Not Allowed"              |
| 406  | "NOT_ACCEPTABLE"                  | "Not Acceptable"                  |
| 407  | "PROXY_AUTHENTICATION_REQUIRED"   | "Proxy Authentication Required"   |
| 408  | "REQUEST_TIMEOUT"                 | "Request Timeout"                 |
| 409  | "CONFLICT"                        | "Conflict"                        |
| 410  | "GONE"                            | "Gone"                            |
| 411  | "LENGTH_REQUIRED"                 | "Length Required"                 |
| 412  | "PRECONDITION_FAILED"             | "Precondition Failed"             |
| 413  | "PAYLOAD_TOO_LARGE"               | "Payload Too Large"               |
| 414  | "URI_TOO_LONG"                    | "URI Too Long"                    |
| 415  | "UNSUPPORTED_MEDIA_TYPE"          | "Unsupported Media Type"          |
| 416  | "REQUESTED_RANGE_NOT_SATISFIABLE" | "Requested range not satisfiable" |
| 417  | "EXPECTATION_FAILED"              | "Expectation Failed"              |
| 418  | "I_AM_A_TEAPOT"                   | "I'm a teapot"                    |
| 421  | "DESTINATION_LOCKED"              | "Destination Locked"              |
| 422  | "UNPROCESSABLE_ENTITY"            | "Unprocessable Entity"            |
| 423  | "LOCKED"                          | "Locked"                          |
| 424  | "FAILED_DEPENDENCY"               | "Failed Dependency"               |
| 426  | "UPGRADE_REQUIRED"                | "Upgrade Required"                |
| 428  | "PRECONDITION_REQUIRED"           | "Precondition Required"           |
| 429  | "TOO_MANY_REQUESTS"               | "Too Many Requests"               |
| 431  | "REQUEST_HEADER_FIELDS_TOO_LARGE" | "Request Header Fields Too Large" |
| 451  | "UNAVAILABLE_FOR_LEGAL_REASONS"   | "Unavailable For Legal Reasons"   |
| 500  | "INTERNAL_SERVER_ERROR"           | "Internal Server Error"           |
| 501  | "NOT_IMPLEMENTED"                 | "Not Implemented"                 |
| 502  | "BAD_GATEWAY"                     | "Bad Gateway"                     |
| 503  | "SERVICE_UNAVAILABLE"             | "Service Unavailable"             |
| 504  | "GATEWAY_TIMEOUT"                 | "Gateway Timeout"                 |
| 505  | "HTTP_VERSION_NOT_SUPPORTED"      | "HTTP Version not supported"      |
| 506  | "VARIANT_ALSO_NEGOTIATES"         | "Variant Also Negotiates"         |
| 507  | "INSUFFICIENT_STORAGE"            | "Insufficient Storage"            |
| 508  | "LOOP_DETECTED"                   | "Loop Detected"                   |
| 509  | "BANDWIDTH_LIMIT_EXCEEDED"        | "Bandwidth Limit Exceeded"        |
| 510  | "NOT_EXTENDED"                    | "Not Extended"                    |
| 511  | "NETWORK_AUTHENTICATION_REQUIRED" | "Network Authentication Required" |

## Project build dependencies

The project built with:

1. [1C:Enterprise](https://1c-dn.com) 8.3.14.1993 (8.3.14 compatibility mode);
2. [1C:Enterprise Development Tools](https://edt.1c.ru) 2020.4 RC1
3. [1Unit](https://github.com/DoublesunRUS/ru.capralow.dt.unit.launcher) 0.4.0+
4. [vanessa-automation](https://github.com/Pr-Mex/vanessa-automation)
5. [dt.bslls.validator](https://github.com/DoublesunRUS/ru.capralow.dt.bslls.validator)
6. [BSL Language Server](https://github.com/1c-syntax/bsl-language-server)
