describe 'usando' do
    it 'token' do
        @email = Faker::Internet.email

        @body = {
            user: {
                email: @email,
                password: '123456',
                password_confirmation: '123456'
            }.to_json
        }

        @header = {
             Accept: 'application/vnd.tasksmanager.v2',
            'Content-Type': 'application/json'
        }

        # cria o usuario para fazer o login
        @criar = Criar.post('/users', body: @body, headers: @headers)
        puts @criar.body
        puts @criar.parsed_response['data']['attributes']['auth-token']

        #efetua o login
        @body_one = { 
            session: {
                email: @email,
                password: '123456'
            }
        }.to_json

        @header_one={
            Accept: 'application/vnd.tasksmanager.v2',
            'Content-Type': 'application/json',
            # token aleatorio
            Authorization: "#{@criar.parsed_response['data']['attributes']['auth-token']}"
            #token unico  Authorization: "hwudfhuwe881288832e8"

        }

        @login = Cria.post('/session', body: @body_one, headers: @header_one)
        puts @login.body

    end
end