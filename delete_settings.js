db = connect( 'mongodb://localhost:27017/jarvis' );
db.general_settings.deleteOne( { } )
