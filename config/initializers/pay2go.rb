Pay2go.setup do |pay2go|
  if Rails.env.development?
    pay2go.merchant_id = "MS13762752"  # 放測試站的 key

    pay2go.hash_key    = "xWw6Na2wP4bcNaxa4Tu7Z08u5Xqxvgtc"
    pay2go.hash_iv     = "P19B3VVzyMsRnnwP"
    pay2go.service_url = "https://ccore.spgateway.com/MPG/mpg_gateway"
  else
    pay2go.merchant_id = "1234567"  # 放正式站的 key

    pay2go.hash_key    = "xxxxxxxx"
    pay2go.hash_iv     = "xxxxxxxx"
    pay2go.service_url = "https://payment.pay2go.com/MPG/mpg_gateway"
  end
end
