class Currency < ApplicationRecord

  def calculate_value(amount)
    (current_price.to_f * amount.to_f).round(4)
  end

  def current_price
     headers = {
      "X-CMC_PRO_API_KEY" => "54496509-c9c0-415f-a178-6441129d31e3"
    }
    url = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?slug=#{self.slug}"
    request = HTTParty.get(url,
      'Content-Type' => 'application/json',
      :headers => headers
    )
    response = JSON.parse(request.body)
    id = get_id(response.dig('data')).first
    usd_price = response.dig('data', id, 'quote', 'USD', 'price')
  end

  def get_id(data)
    id = data.keys
  end
end
