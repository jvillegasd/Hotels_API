<html>
<head>
    <title>
    </title>
</head>
    <body>
        <b>API hoteles Documentation</br></b>
        <p>
            The explanation of how is done each point in the lab follows the next structure:
            <ul>
                <li>Example of the url address: "/api_key/hotelCreate?.....".</li>
                <li>Necessary notations of the service.</li>
            </ul>
            The  API consists of 10 differents services, in which 3 of them the implementation of an API key is necessary,</br> 
            below are the explanations of each one of the services given by our API following the mentioned structure.</br>
            The input of parameters in the URL must be made through the notation with the question mark and concatenate with “&”.
        </p>
        <p>
            Request hotel (1th point, GET)</br>
            Example:</br>
            &nbsp;&nbsp;&nbsp;&nbsp;search/hotels?name=hill&size=small</br>
            &nbsp;&nbsp;&nbsp;&nbsp;means that you are searching for hotels with “hill”  in their names and “small” size.</br>
            Notations search:
            <ul>
                <li>name-> hotel’s name</li>
                <li>state-> name of the city/state</li>
                <li>type-> hotel’s typel</li>
                <li>size-> hotels’s size</li>
            </ul>
        </p>
        <p>
            Request hotel with coordinates (2nd point, GET)</br>
            Example:</br>
            &nbsp;&nbsp;&nbsp;&nbsp;search/hotels?lat=9.1&long&=10.1&range=5</br>
            &nbsp;&nbsp;&nbsp;&nbsp;means that you are searching for hotels within this coordinates with a 5 km radius</br>
            Notations search:
            <ul>
                <li>lat-> latitude</li>
                <li>long-> longitude</li>
                <li>range-> distance of the area</li>
            </ul>
        </p>
        <p>
            Reservation request (3rd point, GET)</br>
            Example:</br> 
            &nbsp;&nbsp;&nbsp;&nbsp;reservation/check?state=hill&start=2018-5-11&end=2018-5-12</br> 
            &nbsp;&nbsp;&nbsp;&nbsp;search for hotels from the state "hill"with reservations from 2018-5-11 to 2018-5-12</br>
            Notations to review reservations:
            <ul>
                <li>state-> state where the search is done.</li>
                <li>start-> start date of the reservation with format Y-m-d</li>
                <li>end-> end date of the reservation with format Y-m-d</li>
            </ul>
        </p>
        <p>
            User creation (4th point, POST)</br>
            Example:</br>
            &nbsp;&nbsp;&nbsp;&nbsp;users/create?email=aa@aa.com&pass=123&name=laura&lname=posada&addr=cll47b</br>
            &nbsp;&nbsp;&nbsp;&nbsp;it creates a user with those specifications</br>
            Notations for the creation:
            <ul>
                <li>email-> user’s email </li>
                <li>pass->user’s password</li>
                <li>name-> user’s name</li>
                <li>lname-> user’s last name</li>
                <li>addr-> user’s address</li>
            </ul>
        </p>
        <p>
            Users update (5th point, PUT)</br>
            Example:</br>
            &nbsp;&nbsp;&nbsp;&nbsp;users/update?id=2&pass=1234&addr=cll47b</br>
            &nbsp;&nbsp;&nbsp;&nbsp;It means that the users updates a new password and address</br>
            Notations for the creation:
            <ul>
                <li>id-> unique user id</li>
                <li>pass-> new password</li>
                <li>addr-> new address</li>
            </ul>
        </p>
        <p>
            Making reservations (6th point, POST)</br>
            Example:</br> 
            &nbsp;&nbsp;&nbsp;&nbsp;reservation/make?hid=1&uid=2&start=2018-10-10&end=2018-10-12&no=2</br>
            &nbsp;&nbsp;&nbsp;&nbsp;means that the user with id is making 2 reservations to the hotel with id 1 with the respective start and end dates.</br>
            Notations to make reservations:
            <ul>
                <li>hid-> hote id</li>
                <li>uid-> user id </li>
                <li>start-> start date of the reservation with format Y-m-d</li>
                <li>end-> end date of the reservation with format Y-m-d</li>
            </ul>
        </p>
        <p>
            Creation of api keys (7th point, POST)</br>
            Example:</br>
            &nbsp;&nbsp;&nbsp;&nbsp;api_key/create?cname=hola&comp=compañia&email=aa@aa.com</br>
            &nbsp;&nbsp;&nbsp;&nbsp; means that it creates an API key to the contact hola of the company “compañia” with the email aa@aa.com </br>
            Notations for creation:
            <ul>
                <li>cname-> contact name</li>
                <li>comp-> name of the company</li>
                <li>email-> email of the company</li>
            </ul>
        </p>
        <p>
            New hotel creation (8th point, POST)</br>
            Example:</br>
            &nbsp;&nbsp;&nbsp;&nbsp;api_key/hotelCreate?apikey=apk&name=n&addr=a&type=a&room=1&state=s</br>
            &nbsp;&nbsp;&nbsp;&nbsp;(or with this additional data->) phone=123&fax=123&email=a@a.com&web=w.com&size=s&lat=1.1&lon=2.2</br>
            from the last example: the first line are mandatory data, second line are optional data.</br>
            Notation for creation:
            <ul>
                <li>name-> hotel name</li>
                <li>addr-> hotel address</li>
                <li>type-> hotel type</li>
                <li>room-> numer of rooms</li>
                <li>state-> name of the state where the hotel is from.</li>
                <li>phone-> telephone number</li>
                <li>fax-> fax</li>
                <li>email-> hotel email</li>
                <li>web-> web page of the hotel</li>
                <li>size-> hotel size</li>
                <li>lat-> latitude</li>
                <li>lon-> longitude</li>
                <li>apikey-> api key of the user</li>
            </ul>
        </p>
        <p>
            Hotel update (9th point, PUT)</br>
            Example:</br>
            &nbsp;&nbsp;&nbsp;&nbsp;api_key/hotelUpdate?apikey=1asda&id=1&type=a&room=10&phone=123&web=a.com&email=a@a.com</br>
            Notation for the update:
            <ul>
                <li>id-> unique id hotel for the update</li>
                <li>type-> hotel type</li>
                <li>room-> number of room in the hotel</li>
                <li>phone-> hotel telephone number</li>
                <li>web->hotel web page</li>
                <li>email-> hotel email</li>
            </ul>
        </p>
        <p>
            Delete Hotel (10th point, DELETE)</br>
            Example:</br>
            &nbsp;&nbsp;&nbsp;&nbsp;api_key/hotelDelete?apikey=seed123&hid=303</br>
            Elimination notations:
            <ul>
                <li>apikey-> valid api key</li>
                <li>hid-> id hotel to eliminate</li>
            </ul>
        </p>
    </body>
</html>