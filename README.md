Root url: https://gentle-citadel-96441.herokuapp.com/

Usage of app:
<br/><br/>
https://gentle-citadel-96441.herokuapp.com/users<br/>
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


https://gentle-citadel-96441.herokuapp.com/parking_locations
GET     /parking_locations(.:format)        parking_locations#index <br/>
    -> Success -> render json: ParkingLocation.all, status: 200 ('OK') <br/><br/>
POST	/parking_locations(.:format)    	parking_locations#create <br/>
    -> Success -> render json: parking_location, status: 201 ('Created') <br/>
    -> Failure -> render json: {message: 'ParkingLocation creation failed'}, status: 400 ('Bad Request') <br/><br/>
GET	    /parking_locations/:id(.:format)	parking_locations#show<br/>
    -> Success -> render json: parking_locations, status: 200 ('OK')<br/>
    -> Failure -> render json: {message: "ParkingLocation doesn't exists"}, status: 404 ('Not Found')<br/><br/>