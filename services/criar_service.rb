module Criar
    include HTTParty
    base_uri CONFIG['url_padrao']
    format:json
end  