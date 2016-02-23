# Phase 3: Posts and Messages (2 days)

## Rails
### Models
* Messages  

### Controllers
* Api::MessagesController (create, destroy, index, show, update)
* Api::Conversation (create, show)


### Views
* conversation/index.json.jbuilder


## Flux
### Views (React Components)
* App -> Main -> Chat -> Messages


### Stores
* Conversations
* Messages


### Actions
* ApiActions.receiveConversation
* ApiActions.receiveMessages



### ApiUtil
* ApiUtil.fetchConversation
* ApiUtil.fetchAllMessages


## Gems/Libraries
