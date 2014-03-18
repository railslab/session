# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Session::Application.config.secret_key_base = 'eed0fb13400a01cb924c0ac4253cec0f9c215c4fe33a6f484d70db7c2dab8c5c683b858a81cc8ceee66e3adc6e8ca6cb9f89c26306cc536ac495440edd5d6d09'
