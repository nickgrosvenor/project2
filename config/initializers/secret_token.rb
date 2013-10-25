# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Auth::Application.config.secret_key_base = '72de92f7d9ce2bebe84880a54a903f4dae1b80d9c9e0dfbccd77133804153478c97424fbb2c7ad30fe6ffcbf3d7a96430d1d9a0502eafe3ae1911237f2edf34a'
