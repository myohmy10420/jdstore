class Encryption
  require "openssl"
  def initialize(order)
    @order = order
    @timestamp = order.created_at.to_i
    @merchant_order_no = "#{order.id}s#{Time.now.strftime("%Y%m%d%H%M%S")}"
    @total_price = order.total
  end

  def aes_encrypt
    cipher = OpenSSL::Cipher::AES128.new(:CBC)
    cipher.encrypt
    cipher.key = Pay2go.hash_key
    cipher.iv = Pay2go.hash_iv
    encrypted = cipher.update(url_params) + cipher.final
    # encrypted_base64 = Base64.encode64(encrypted)
    # return encrypted_base64
    return encrypted
  end

  def add_padding(source, size = 32)
    len = source.length
    pad = size - (len % size)
    return source + (pad.chr * pad)
  end

  def url_params
    "HashKey=#{Pay2go.hash_key}&
    Amt=#{@total_price}&
    ItemDesc=test&
    MerchantID=#{Pay2go.merchant_id}&
    MerchantOrderNo=#{@merchant_order_no}&
    TimeStamp=#{@timestamp}&
    Version=1.0&
    HashIV=#{Pay2go.hash_iv}"
  end
end
