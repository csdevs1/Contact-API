== README

## This API is useful to send a mail to an email account.

***

It can be used to create a 'Contact us' page and send the form data to the API hosted somewhere and let it do everything else. This way we can build an app that can communicate with this API through JSON. And entirely separate the back-end from the front-end.

The following code is an example to send data from AngularJS:

```angularjS
$http({
            method  : 'POST',
            url     : 'http://localhost:3000/api/v1/messages',
           // data    :  $httpParamSerializerJQLike($scope.message),
            data    :  {'message': $scope.message},
            //forms user object
            headers : {'Content-Type': 'application/json'}
        })
```




