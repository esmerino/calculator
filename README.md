## Running

```
docker-compose build
docker-compose up
```

## Testing

```
docker-compose run --rm app rspec
```

## Using

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

# Using funny way :meral:

```
http POST https://limitless-tundra-70503.herokuapp.com/calculators algorithim="1/1="
```