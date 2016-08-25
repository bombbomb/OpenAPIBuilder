# BombbombNodejsOpenapi.PromptsApi

All URIs are relative to *https://dev.api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createVideoEmailPrompt**](PromptsApi.md#createVideoEmailPrompt) | **POST** /prompt | Prompts user to send a video
[**getVideoEmailPrompt**](PromptsApi.md#getVideoEmailPrompt) | **GET** /prompt/{id} | Gets a prompt
[**respondToVideoEmailPrompt**](PromptsApi.md#respondToVideoEmailPrompt) | **POST** /prompt/{id}/response | Respond to a prompt


<a name="createVideoEmailPrompt"></a>
# **createVideoEmailPrompt**
> createVideoEmailPrompt(prompt)

Prompts user to send a video

Sends the account holder an email prompting them to add a video to a scheduled outgoing message. Recipients, content and timing is all preset for the user.

### Example
```javascript
var BombbombNodejsOpenapi = require('bombbomb-nodejs-openapi');

var apiInstance = new BombbombNodejsOpenapi.PromptsApi();

var prompt = new BombbombNodejsOpenapi.JerichoConfiguration(); // JerichoConfiguration | The Video Email Prompt to be created


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.createVideoEmailPrompt(prompt, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prompt** | [**JerichoConfiguration**](JerichoConfiguration.md)| The Video Email Prompt to be created | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getVideoEmailPrompt"></a>
# **getVideoEmailPrompt**
> getVideoEmailPrompt(id)

Gets a prompt

Gets a prompt

### Example
```javascript
var BombbombNodejsOpenapi = require('bombbomb-nodejs-openapi');
var defaultClient = BombbombNodejsOpenapi.ApiClient.default;

// Configure OAuth2 access token for authorization: BBOAuth2
var BBOAuth2 = defaultClient.authentications['BBOAuth2'];
BBOAuth2.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new BombbombNodejsOpenapi.PromptsApi();

var id = "id_example"; // String | The Id of the prompt


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.getVideoEmailPrompt(id, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The Id of the prompt | 

### Return type

null (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="respondToVideoEmailPrompt"></a>
# **respondToVideoEmailPrompt**
> respondToVideoEmailPrompt(id, choice, opts)

Respond to a prompt

Respond to a prompt by either adding a video, sending without a video or cancelling the prompt.

### Example
```javascript
var BombbombNodejsOpenapi = require('bombbomb-nodejs-openapi');

var apiInstance = new BombbombNodejsOpenapi.PromptsApi();

var id = "id_example"; // String | The id of the prompt.

var choice = "choice_example"; // String | The users' selection. Can be: WithVideo, WithoutVideo, Cancel

var opts = { 
  'videoId': "videoId_example" // String | The id of the video.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.respondToVideoEmailPrompt(id, choice, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the prompt. | 
 **choice** | **String**| The users&#39; selection. Can be: WithVideo, WithoutVideo, Cancel | 
 **videoId** | **String**| The id of the video. | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

