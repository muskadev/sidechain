# 5. Transfer MEETONE to *.m accounts

cd ~

cleos system newaccount eosio foundation.m EOS7enq7SL9AUhBYgkYMksj34LPKtAr7iu56KKrNTcUPTRqTp5VaN EOS7enq7SL9AUhBYgkYMksj34LPKtAr7iu56KKrNTcUPTRqTp5VaN --stake-net "10.0000 MEETONE" --stake-cpu "10.0000 MEETONE" --buy-ram "10.0000 MEETONE"
cleos system newaccount eosio m EOS7enq7SL9AUhBYgkYMksj34LPKtAr7iu56KKrNTcUPTRqTp5VaN EOS7enq7SL9AUhBYgkYMksj34LPKtAr7iu56KKrNTcUPTRqTp5VaN --stake-net "10.0000 MEETONE" --stake-cpu "10.0000 MEETONE" --buy-ram "10.0000 MEETONE"

cleos push action eosio.token transfer '[ "eosio", "foundation.m", "2499999940.0000 MEETONE", "" ]' -p eosio@active

cleos push action eosio.token transfer '[ "foundation.m", "eosio.vpay", "500000000.0000 MEETONE", "" ]' -p eosio@active
cleos push action eosio.token transfer '[ "foundation.m", "eosio.bpay", "500000000.0000 MEETONE", "" ]' -p eosio@active
cleos push action eosio.token transfer '[ "foundation.m", "m", "10000000.0000 MEETONE", "" ]' -p foundation.m@active
cleos push action eosio delegatebw '[ "m", "m", "50000.0000 MEETONE", "50000.0000 MEETONE", 0]' -p m@active

cleos system newaccount eosio meetone.m EOS7enq7SL9AUhBYgkYMksj34LPKtAr7iu56KKrNTcUPTRqTp5VaN EOS7enq7SL9AUhBYgkYMksj34LPKtAr7iu56KKrNTcUPTRqTp5VaN --stake-net "0.0000 MEETONE" --stake-cpu "0.0000 MEETONE" --buy-ram "10.0000 MEETONE"
cleos push action eosio delegatebw '[ "eosio", "meetone.m", "1250000000.0000 MEETONE", "1250000000.0000 MEETONE", 1 ]' -p eosio@active

cleos system newaccount eosio bank.m EOS7enq7SL9AUhBYgkYMksj34LPKtAr7iu56KKrNTcUPTRqTp5VaN EOS7enq7SL9AUhBYgkYMksj34LPKtAr7iu56KKrNTcUPTRqTp5VaN --stake-net "100.0000 MEETONE" --stake-cpu "100.0000 MEETONE" --buy-ram "10.0000 MEETONE"
cleos push action eosio.token transfer '[ "eosio", "bank.m", "5000000000.0000 MEETONE", "" ]' -p eosio@active

cleos system newaccount eosio producers.m EOS7enq7SL9AUhBYgkYMksj34LPKtAr7iu56KKrNTcUPTRqTp5VaN EOS7enq7SL9AUhBYgkYMksj34LPKtAr7iu56KKrNTcUPTRqTp5VaN --stake-net "1000.0000 MEETONE" --stake-cpu "1000.0000 MEETONE" --buy-ram "100.0000 MEETONE"
cleos system newaccount eosio proxies.m EOS7enq7SL9AUhBYgkYMksj34LPKtAr7iu56KKrNTcUPTRqTp5VaN EOS7enq7SL9AUhBYgkYMksj34LPKtAr7iu56KKrNTcUPTRqTp5VaN --stake-net "1000.0000 MEETONE" --stake-cpu "1000.0000 MEETONE" --buy-ram "100.0000 MEETONE"

cleos push action eosio.token transfer '[ "foundation.m", "eosio.m", "10000000.0000 MEETONE", "" ]' -p foundation.m@active
