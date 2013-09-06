//This file was generated from (Academic) UPPAAL 4.1.14 (rev. 5212), March 2013

/*

*/
A<> forall (i:int[1,10]) (CHI_Buffer_send[i].length>0)

/*

*/
(CHI_Buffer_send[1].length>0) --> (CHI_Buffer_receive[1].length>0)

/*

*/
(CHI_Buffer_send[1].length>0)  --> (CHI_Buffer_send[1].length==0)

/*

/*
When a receiver buffer in CHI has data came in, the buffer id and slot id are the same. (Message sending\/receiving follows slot id ordering)
*/
A[] forall (i:int[1,10]) ((CHI_Buffer_receive[i].length>0) imply (vSS.vSlotCounter==i))

/*
If two receiving buffer in CHI have data came in at the same time, their ids are the same. (Only one buffer receives the sent message)
*/
A[] forall (i:int[1,10])  forall (j:int[1,10]) (CHI_Buffer_receive[i].length>0 && CHI_Buffer_receive[j].length>0) imply (j==i)

/*

*/
A[] not deadlock

/*
Existing two receiving buffers in CHI have data came in at the same time while their ids are the different. (Two buffers receive a message at the same time\/slot)
*/
E<> forall (i:int[1,10])  forall (j:int[1,10]) (CHI_Buffer_receive[i].length>0 && CHI_Buffer_receive[j].length>0 && (j!=i))

/*

*/
E<> MAC_dynamic.zMinislot > gNumberOfMinislots

/*

*/
E<> (vSS.vSlotCounter > cSlotIDMax)

/*

*/
A[] (MAC_dynamic.wait_for_the_AP_transmission_start imply (vSS.vSlotCounter <= cSlotIDMax))
