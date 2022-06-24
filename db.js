var mysql = require('mysql');

module.exports = {
    getData: function(sql, param, callback){
        var connection = mysql.createConnection({
            host: 'pharmacy.cvhqkkyrqcea.eu-central-1.rds.amazonaws.com',
            port: '3306',
            user: 'admin',
            password: 'adminadmin',
            database: 'pharmacy'
        });

        connection.connect(function(err){
            if(err)
            {
                console.log('error connecting database ...');
            }
            console.log("Database Connected");
        });
        if(param == null)
        {
            connection.query(sql, function(err, result){
                callback(result);
            });
        }
        else
        {
            connection.query(sql, param, function(err,result){
                callback(result);
            });
        }
    }
};
