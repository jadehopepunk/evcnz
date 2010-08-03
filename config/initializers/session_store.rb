# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_evcnz2_session',
  :secret      => '65ada10c64c0b8a171e0ac1619ef7b49ff5d1c457483968ca43241664f3d9ddd00d9bde3697bfddb24954ea6f91b26db003da00097f2c2e80ac0dfcfae5b2aa8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
