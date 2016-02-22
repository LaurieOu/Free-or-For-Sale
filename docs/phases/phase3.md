# Phase 3: Posts and Messages (2 days)

## Rails
### Models
* University
* Post
* Messages

### Controllers
* UniversityController (create, new)
* MessagesController (create, new, index, show, update, destroy )
* Api::PostController (create, destroy, index, show, update)


### Views
* university/posts/index.json.jbuilder
* user/messages/index.json.jbuilder
* user/message/show.json.jbuilder

## Flux
### Views (React Components)
* PostsIndex
  - PostIndexItem
* PostForm
* SearchIndex

### Stores
* Post

### Actions
* ApiActions.receiveAllPosts -> triggered by ApiUtil
* ApiActions.receiveSinglePosts
* ApiActions.deletePosts
* PostActions.fetchAllPosts -> triggers ApiUtil
* PostActions.fetchSinglePost
* PostActions.createPosts
* PostActions.editPosts
* PostActions.destroyPosts

### ApiUtil
* ApiUtil.fetchAllPosts
* ApiUtil.fetchSinglePost
* ApiUtil.createPost
* ApiUtil.editPost
* ApiUtil.destroyPost

## Gems/Libraries
