describe 'fazer uma requisição' do
    it 'get' do
    @melhoropcao = Contato.get('/contacts/1399')
    #puts @melhoropcao
    #puts @melhoropcao.code
    #expect(@melhoropcao.code).to eq 200
    puts @melhoropcao.body
    #puts @melhoropcao.body['data']['attributes']['name']
    #puts @melhoropcao.parsed_response['data']['attributes']['name']
    expect(@melhoropcao.parsed_response['data']['attributes']['name']).to eq "Pikachu Pokemon"
    expect(@melhoropcao.parsed_response['data']['attributes']['email']).to eq "pikachu2@reillysd.com"
    end
end