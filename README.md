Usage of app:
<br/><br/>
GET     /users(.:format)        users#index <br/>
    -> Success -> render json: User.all, status: 200 ('OK') <br/><br/>
POST	/users(.:format)    	users#create <br/>
    -> Success -> render json: user, status: 201 ('Created') <br/>
    -> Failure -> render json: {message: 'User creation failed'}, status: 400 ('Bad Request') <br/><br/>
GET	    /users/:id(.:format)	users#show<br/>
    -> Success -> render json: user, status: 200 ('OK')<br/>
    -> Failure -> render json: {message: "User doesn't exists"}, status: 404 ('Not Found')<br/><br/>
PATCH	/users/:id(.:format)    users#update<br/>
    -> Success -> render json: user, status: 202<br/>
    -> Failure -> render json: {message: 'User creation failed'}, status: 422 ('Unprocessable Entity')<br/><br/>
DELETE	/users/:id(.:format)	users#destroy<br/>
    -> Success -> render json: user, status: 200 ('OK')<br/>
    -> Failure -> render json: {message: 'User destroy failed'}, status: 422 ('Unprocessable Entity')<br/>
