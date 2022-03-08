describe 'fazer uma requisição' do
    it 'get' do
    #@primeiraopcao = HTTParty.get('https://api-de-tarefas.herokuapp.com/contacts')
    #puts @primeiraopcao

    @melhoropcao = Contato.get('/contacts/1399')
    puts @melhoropcao
    end
end