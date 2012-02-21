# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_user_session',
  :secret      => '20372863a63de04674a50e0c2139712d877469ff912b4061e9b41c8175adab1e48dbe5064766b444ef1006d733d1c4e8a471ea15406a62325a5c5353a5a9f5b0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
