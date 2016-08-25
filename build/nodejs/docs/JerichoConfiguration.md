# BombbombNodejsOpenapi.JerichoConfiguration

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**clientGroupId** | **String** |  | [optional] 
**sendDate** | **Date** | When the email should be sent. | [optional] 
**isPrompt** | **Boolean** | Determines whether this is a static or prompted send. | 
**emailId** | **String** | Static send: The Email to send on behalf of the group members. | [optional] 
**promptSubject** | **String** | Video Prompt: The subject line prompting the user to record a video. | [optional] 
**promptBody** | **String** | Video Prompt: The HTML body of the email prompting the user to record a video. | [optional] 
**emailSubject** | **String** | Video Prompt: The subject line of the final sent email | [optional] 
**emailBody** | **String** | Video Prompt: The HTML body of the final sent email. | [optional] 
**sendWithoutVideo** | **Boolean** | Video Prompt: Whether to send the final email if no video was recorded. | [optional] 


