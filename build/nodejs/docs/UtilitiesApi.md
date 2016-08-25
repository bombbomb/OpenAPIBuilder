# BombbombNodejsOpenapi.UtilitiesApi

All URIs are relative to *https://dev.api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOAuthClient**](UtilitiesApi.md#createOAuthClient) | **POST** /oauthclient | Create an OAuth Client
[**deleteOAuthClient**](UtilitiesApi.md#deleteOAuthClient) | **DELETE** /oauthclient/{id} | Delete an OAuth Client
[**getOAuthClients**](UtilitiesApi.md#getOAuthClients) | **GET** /oauthclient | Lists OAuth Clients
[**getSpec**](UtilitiesApi.md#getSpec) | **GET** /spec | Describes this api


<a name="createOAuthClient"></a>
# **createOAuthClient**
> createOAuthClient(name, redirectUri)

Create an OAuth Client

Creates an OAuth Client managed by the user

### Example
```javascript
var BombbombNodejsOpenapi = require('bombbomb-nodejs-openapi');
var defaultClient = BombbombNodejsOpenapi.ApiClient.default;

// Configure OAuth2 access token for authorization: BBOAuth2
var BBOAuth2 = defaultClient.authentications['BBOAuth2'];
BBOAuth2.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new BombbombNodejsOpenapi.UtilitiesApi();

var name = "name_example"; // String | The name of the OAuth client. e.g. MyCrm DEV, or MyCrm PROD

var redirectUri = "redirectUri_example"; // String | The URI to direct the client to after logging in.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.createOAuthClient(name, redirectUri, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the OAuth client. e.g. MyCrm DEV, or MyCrm PROD | 
 **redirectUri** | **String**| The URI to direct the client to after logging in. | 

### Return type

null (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="deleteOAuthClient"></a>
# **deleteOAuthClient**
> deleteOAuthClient(id)

Delete an OAuth Client

Deletes an OAuth Client managed by the user

### Example
```javascript
var BombbombNodejsOpenapi = require('bombbomb-nodejs-openapi');
var defaultClient = BombbombNodejsOpenapi.ApiClient.default;

// Configure OAuth2 access token for authorization: BBOAuth2
var BBOAuth2 = defaultClient.authentications['BBOAuth2'];
BBOAuth2.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new BombbombNodejsOpenapi.UtilitiesApi();

var id = "id_example"; // String | The id of the OAuth Client


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.deleteOAuthClient(id, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the OAuth Client | 

### Return type

null (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getOAuthClients"></a>
# **getOAuthClients**
> getOAuthClients()

Lists OAuth Clients

Enumerates OAuth Clients managed by the user

### Example
```javascript
var BombbombNodejsOpenapi = require('bombbomb-nodejs-openapi');
var defaultClient = BombbombNodejsOpenapi.ApiClient.default;

// Configure OAuth2 access token for authorization: BBOAuth2
var BBOAuth2 = defaultClient.authentications['BBOAuth2'];
BBOAuth2.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new BombbombNodejsOpenapi.UtilitiesApi();

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.getOAuthClients(callback);
```

### Parameters
This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSpec"></a>
# **getSpec**
> getSpec()

Describes this api

Describes methods available through the API.

### Example
```javascript
var BombbombNodejsOpenapi = require('bombbomb-nodejs-openapi');

var apiInstance = new BombbombNodejsOpenapi.UtilitiesApi();

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.getSpec(callback);
```

### Parameters
This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

