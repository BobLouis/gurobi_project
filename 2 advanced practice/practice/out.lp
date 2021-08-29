\ Model knap
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  16 item1 + 19 item2 + 23 item3 + 28 item4
Subject To
 constraint_on_weight_and_value: 2 item1 + 3 item2 + 4 item3 + 5 item4
   <= 7
 constraint_on_weight_and_value: 3000 item1 + 3500 item2 + 5100 item3
   + 7200 item4 <= 20000
Bounds
Binaries
 item1 item2 item3 item4
End
