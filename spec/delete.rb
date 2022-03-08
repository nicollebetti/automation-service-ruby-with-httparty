describe 'fazer requisicao' do
    it 'delete' do
        Contato.delete('/contacts/1398')
    end
end