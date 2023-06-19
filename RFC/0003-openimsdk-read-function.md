# [RFC OpenIMSDK/Open-IM-Server#438] OpenIMSDK implement the read function proposal
<!--
🤖 design template: https://github.com/OpenIMSDK/community/blob/main/0000-template.md
⚠️ Please submit a PR to https://github.com/OpenIMSDK/community/tree/main/RFC according to the specification after the design is completed
-->
## goal
[meta]: #meta
- Implement the read function



## 📇Topics
- Read function
  - [Function introduction](#summary)
  - [How it works](#definitions)


## Function intoduction
[summary]: #summary

Read refers to the state of clicking the specific content after receiving a message. Read can convey certain information, such as the other person's intention or attitude. Read can also be a two-way social function, allowing users to confirm in real time whether the other party has seen their messages. The sender of the message can see who has read the message and how many people have read the message.

## Method
[definitions]: #definitions

Make a list of the definitions that may be useful for those reviewing. Include phrases and words that OpenIMSDK authors or other interested parties may not be familiar with.

## How it Works
[how-it-works]: #how-it-works
![image](https://github.com/OpenIMSDK/Open-IM-Server/assets/68671759/b974b73a-d4fd-40d0-a079-2939568bcf21)

1. Access the /msg/read interface via ws protocol.

2. Invoke the ```SendMsg``` grpc service with ```readReq{conversationID, seqs,userID,IsReadGroup}``` .

3. In msg service, message is pulled from redis. If the message is existed in redis:

     - Check whether this group open group chat read function
     - Get a list of ```SenderID``` of these messages. 
     - Add userID to the ```MsgReadSet``` in redis.
     - Expire the ```MsgReadSet```.

4. If the message is not existed in redis, pull the message from mongoDB:

     - Occupy a position for this message.  
     - Get a list of ```SenderID``` of these messages. 
     - Add userID to the ```MsgReadDoc``` in mongoDB.

5. Msg service public these messages to kafka with topic ```Ws2mschat```.

6. Transfer service will obtain these message as a consummer of  topic ```Ws2mschat```.

7. Tansfer service public messages to kafka with topic ```Ws2pschat```

8. Push service will obtain messages as a consummer of  topic ```Ws2pschat```.

9. push service invoke ```SuperGroupOnlineBatchPushOneMsg``` to send the notification message to ws server.


<!--
## Prior Art
[prior-art]: #prior-art

Discuss prior art, both the good and bad.


Why was this amendment necessary?
--->
