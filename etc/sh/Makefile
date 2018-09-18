.PHONY: encrypt decrypt

target=
encrypt: secret
	@openssl aes-256-cbc -e -in ${target} -out ${target}.encrypted -kfile secret

decrypt: secret
	@openssl aes-256-cbc -d -in ${target}.encrypted -out ${target} -kfile secret
