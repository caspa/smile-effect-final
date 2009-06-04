# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_smile_effect_final_session',
  :secret      => '27fc9c9d9607ebeb974955332df9c0ae05fb8b65dd062195414bf20df7a154b446e420c148f8ff520ca9f5ab4db8cee96097c4a1897a9dd67713c44afa16b8a8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
