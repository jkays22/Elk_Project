grep 05:00:00 0310_Dealer_schedule | grep AM | awk -F' ' '{print $5, $6}' >> Dealers_working_during_losses.txt
grep 08:00:00 0310_Dealer_schedule | grep AM | awk -F' ' '{print $5, $6}' >> Dealers_working_during_losses.txt
grep 02:00:00 0310_Dealer_schedule | grep PM | awk -F' ' '{print $5, $6}' >> Dealers_working_during_losses.txt
grep 08:00:00 0310_Dealer_schedule | grep PM | awk -F' ' '{print $5, $6}' >> Dealers_working_during_losses.txt
grep 11:00:00 0310_Dealer_schedule | grep PM | awk -F' ' '{print $5, $6}' >> Dealers_working_during_losses.txt
grep 05:00:00 0312_Dealer_schedule | grep AM | awk -F' ' '{print $5, $6}' >> Dealers_working_during_losses.txt
grep 08:00:00 0312_Dealer_schedule | grep AM | awk -F' ' '{print $5, $6}' >> Dealers_working_during_losses.txt
grep 02:00:00 0312_Dealer_schedule | grep PM | awk -F' ' '{print $5, $6}' >> Dealers_working_during_losses.txt
grep 08:00:00 0312_Dealer_schedule | grep PM | awk -F' ' '{print $5, $6}' >> Dealers_working_during_losses.txt
grep 11:00:00 0312_Dealer_schedule | grep PM | awk -F' ' '{print $5, $6}' >> Dealers_working_during_losses.txt
grep 05:00:00 0315_Dealer_schedule | grep AM | awk -F' ' '{print $5, $6}' >> Dealers_working_during_losses.txt
grep 08:00:00 0315_Dealer_schedule | grep AM | awk -F' ' '{print $5, $6}' >> Dealers_working_during_losses.txt
grep 02:00:00 0315_Dealer_schedule | grep PM | awk -F' ' '{print $5, $6}' >> Dealers_working_during_losses.txt
