# Collection

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collectionId** | **String** | The ID of the collection. This is assigned by the backend. | [optional] 
**teamId** | **String** | The team ID that owns the collection. This field is required. When you create new collections the default is to use your private team ID. | [optional] 
**firmware** | [**CollectionFirmware**](CollectionFirmware.md) |  | [optional] 
**tags** | **[String: String]** | Tags for the collection. Tags are metadata fields that you can assign to the collection. | [optional] 
**upstreamTimestamps** | **[String]** |  | [optional] 
**downstreamTimestamps** | **[String]** |  | [optional] 
**enabled** | **Bool** | Disabled flag for collection. If the collection is disabled it is in effect read only and inactive. You can&#39;t update a disabled collection. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


