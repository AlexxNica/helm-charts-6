# Integration into Vault

To integrate Goldfish with vault, I had to run the following:

1. `vault auth-enable approle`
1. `vault mount -path=goldfish kv`
1. `vault write auth/approle/role/goldfish role_name=goldfish policies=default,goldfish secret_id_num_uses=1 secret_id_ttl=5m period=24h token_ttl=0 token_max_ttl=0`
1. `vault write auth/approle/role/goldfish/role-id role_id=goldfish`
1. `vault write goldfish DefaultSecretPath="secrets/" BulletinPath="goldfish/bulletins/"`
1. `vault write -f -wrap-ttl=5m auth/approle/role/goldfish/secret-id`
