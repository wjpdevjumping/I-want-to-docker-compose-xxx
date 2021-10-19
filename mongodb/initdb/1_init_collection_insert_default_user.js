var url = "mongodb://localhost:27017/wjp-app";
var db = connect(url);

db.getCollection("user").insert({
        "_id": NumberLong(1001),
        "name": "admin",
        "nickname": "Administrator",
        "password": "admin"
    }
)
