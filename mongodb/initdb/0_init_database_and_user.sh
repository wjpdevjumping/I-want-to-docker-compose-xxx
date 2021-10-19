#!/bin/bash
echo "creating my-app database and user"
mongosh -u jumping -p jumping123 <<EOF

use wjp-app;
db.createUser({ user: 'wjp-app', pwd: 'wjp-app123!!!', roles: [{role:'dbOwner', db:'wjp-app'}]});
db.createCollection('user');
EOF

echo "database and user created"
