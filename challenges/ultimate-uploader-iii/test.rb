require 'rubygems'
require 'cgi'
require 'active_support'

def decrypt_session_cookie(cookie, key)
  cookie = CGI::unescape(cookie)
  
  # Default values for Rails 4 apps
  key_iter_num = 1000
  key_size     = 64
  salt         = "encrypted cookie"         
  signed_salt  = "signed encrypted cookie"  

  key_generator = ActiveSupport::KeyGenerator.new(key, iterations: key_iter_num)
  secret = key_generator.generate_key(salt)
  sign_secret = key_generator.generate_key(signed_salt)

  encryptor = ActiveSupport::MessageEncryptor.new(secret, sign_secret)
  puts encryptor.decrypt_and_verify(cookie)
end


# Time to test ... (With data from Arbeit327)
cookie = "dVladnd2VmNkems2OVBXUEUvRDZNRk96ZzQyeDhMYkRPVi9taW1aTXRzeXFMeE9UR1QwNVdMMjE1MzNIbGlyOG5hNE1udEMySE1QTlM4K2tING4wTiszbWo5UTBBaCtUVnZDWE9DaXBLV3BGNjFGZFpwTFcybVNnODdtVXdVUkFqQVBUaWUxNEo0cDVFT3ZiMFpjUk03UGRCb0hBRisvQ0tIaTRHbStGM280dWhJeHg1MEJqY1VlLzJNMTBSYk5ELS1TampaVm9uSm85bE1aTWl4ZVFoTGdBPT0"
key = "33039b5229a2065e62b424bdefb1ee1f70389a1dd4ae145e350cacac7a33348770b387ab5189a095a78d284405428f5deb6b02d38d11adcc91a0dde39848bf7a"

decrypt_session_cookie(cookie, key)