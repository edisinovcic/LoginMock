Usage of app:

GET     /users(.:format)        users#index
    -> Success -> render json: User.all, status: 200 ('OK')
POST	/users(.:format)    	users#create
    -> Success -> render json: user, status: 201 ('Created')
    -> Failure -> render json: {message: 'User creation failed'}, status: 400 ('Bad Request')
GET	    /users/:id(.:format)	users#show
    -> Success -> render json: user, status: 200 ('OK')
    -> Failure -> render json: {message: "User doesn't exists"}, status: 404 ('Not Found')
PATCH	/users/:id(.:format)    users#update
    -> Success -> render json: user, status: 202
    -> Failure -> render json: {message: 'User creation failed'}, status: 422 ('Unprocessable Entity')
DELETE	/users/:id(.:format)	users#destroy
    -> Success -> render json: user, status: 200 ('OK')
    -> Failure -> render json: {message: 'User destroy failed'}, status: 422 ('Unprocessable Entity')
