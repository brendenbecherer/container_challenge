![Logo of the project](logo.png)

# Container Challenge Exercise

Container challenge that showcases Python, Github Actions, and Docker.

## Test the application

You can test the application with the following commands.

```shell
curl -X GET http://localhost:5000 
curl -X POST -H "Content-Type: application/json" -d '{"name": "John Doe", "age": 30, "city": "New York"}' http://localhost:5000 
```

The first command should return {"message": "success" }. 

The second command should return the posted data {"name": "John Doe", "age": 30, "city": "New York"}.
