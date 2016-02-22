# Flux Stores

### PostStore

Holds all persisted note data.

##### Actions:
- `receiveAllPosts`
- `receiveSinglePost`
- `removePost`

##### Listeners:
- `PostsIndex` (passes to `PostIndexItem` via props)
- `PostDetail`

### PostFormStore

Holds un-persisted note data to send to the API.

##### Actions:
- `receivePostFormParams`

##### Listeners:
- `PostForm`

### PostStore

Holds all persisted notebook data.

##### Actions:
- `receiveAllPosts`
- `receiveSinglePost`
- `removePost`

##### Listeners:
- `PostIndex`

### NotebookFormStore

Holds un-persisted notebook data to send to the API.

##### Actions:
- `receivePostFormParams`

##### Listeners:
- `PostForm`

### SearchStore

Holds search parameters to send to the API.

##### Actions:
- `receiveSearchParams`

##### Listeners:
- `SearchIndex`

### SearchSuggestionStore

Holds typeahead suggestions for search.

##### Actions:
- `receiveSearchSuggestions`

##### Listeners:
- `SearchSuggestions`
