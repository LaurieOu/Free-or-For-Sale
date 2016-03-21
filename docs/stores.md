# Flux Stores

### ListingStore

Holds all persisted note data.

##### Actions:
- `receiveAllListings`
- `receiveSingleListing`

##### Listeners:
- `ListingsIndex` (passes to `ListingIndexItem` via props)

### ListingFormStore

Holds un-persisted note data to send to the API.

##### Actions:
- `receiveListingFormParams`

##### Listeners:
- `ListingForm`

### ListingStore

Holds all persisted notebook data.

##### Actions:
- `receiveAllListings`
- `receiveSingleListing`

##### Listeners:
- `ListingIndex`

### NotebookFormStore

Holds un-persisted notebook data to send to the API.

##### Actions:
- `receiveListingFormParams`

##### Listeners:
- `ListingForm`
