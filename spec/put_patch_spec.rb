describe 'fazer requisicao' do
    context 'para alterar dados com' do
    
        it 'put' do
            @body_put = {
                "id": 1398,
                "name": "Bubassauro",
                "last-name": "Pokemon",
                "email": "bub@reilly.com",
                "age": "24",
                "phone": "12990000000",
                "address": "Rua dos bobos pokemon",
                "state": "SP",
                "city": "Franca"
            }.to_json
           @requisicao_put = Contato.put('/contacts/1398', body: @body_put)
           puts @requisicao_put
        end

        it 'patch' do
            @body_patch = {
                "id": 1399,
                "name": "Pikachu Pokemon",
                "last-name": "Pikachu Pokemon",
                "email": "pikachu2@reillysd.com"
            }.to_json
            @requisicao_patch =  Contato.patch('/contacts/1399', body: @body_patch)
            puts @requisicao_patch
        end
        
    end
end


