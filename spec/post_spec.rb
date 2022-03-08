describe 'fazer uma requisicao' do
    it 'post' do 
        @body = {
            "name": "Pikachu 2",
            "last-name": "Pikachu 2",
            "email": "pikachu2@reilly.com",
            "age": "26",
            "phone": "11963552749",
            "address": "Rua dos bobos",
            "state": "MG",
            "city": "Uberlandia"
        }.to_json

        #forma simples sem modulo httparty
        #@header = {
        #'Accept': 'application/vnd.tasksmanager.v2',
        #'Content-Type': 'application/json'
        #}

        #@request = HTTParty.post('https://api-de-tarefas.herokuapp.com/contacts', body: @body, headers: @header)
        #puts @request

        @request =  Contato.post('/contacts' , body: @body)
        puts @request
    end
end