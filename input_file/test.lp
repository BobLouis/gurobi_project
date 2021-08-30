\ Model lo1
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  15 item_1 + 18 item_2 + 30 item_3
Subject To
 R0: 2 item_1 + item_2 + item_3 <= 60
 R1: item_1 + 2 item_2 + item_3 <= 60
 R2: 2 item_1 + item_2 + item_3 <= 60
 R3: item_1 + 2 item_2 + item_3 <= 60
Bounds
 item_3 <= 30
End
