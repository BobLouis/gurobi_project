\ Model facility
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  23 y(1) + 10 x(1,1) + 24 x(1,2) + 36 x(1,3) + 12 y(2) + 20 x(2,1)
   + 16 x(2,2) + 14 x(2,3) + 18 y(3) + 30 x(3,1) + 22 x(3,2) + 12 x(3,3)
   + 32 y(4) + 40 x(4,1) + 30 x(4,2) + 8 x(4,3)
Subject To
 supply_constraint: - 28 y(1) + x(1,1) + x(1,2) + x(1,3) <= 0
 supply_constraint: - 20 y(2) + x(2,1) + x(2,2) + x(2,3) <= 0
 supply_constraint: - 24 y(3) + x(3,1) + x(3,2) + x(3,3) <= 0
 supply_constraint: - 24 y(4) + x(4,1) + x(4,2) + x(4,3) <= 0
 demand_constraint: x(1,1) + x(2,1) + x(3,1) + x(4,1) >= 22
 demand_constraint: x(1,2) + x(2,2) + x(3,2) + x(4,2) >= 14
 demand_constraint: x(1,3) + x(2,3) + x(3,3) + x(4,3) >= 26
Bounds
Binaries
 y(1) y(2) y(3) y(4)
End
