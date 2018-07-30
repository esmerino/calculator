## Running

```
docker-compose build
docker-compose up --build
```

## Testing

```
docker-compose run --rm app rspec
```

## Using witth [httpie](https://github.com/jakubroztocil/httpie)

additon
```
http POST http://localhost:3000/calculators algorithim="1+3="
```
multiplication
```
http POST http://localhost:3000/calculators algorithim="1*3="
```
subtraction
```
http POST http://localhost:3000/calculators algorithim="1-3="
````

division
```
http POST http://localhost:3000/calculators algorithim="1/3="
```

results
```
http GET http://localhost:3000/calculators
```

# :metal: Using funny way with [httpie](https://github.com/jakubroztocil/httpie)

```
http POST https://limitless-tundra-70503.herokuapp.com/calculators algorithim="1/1="
```