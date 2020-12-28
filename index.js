const express = require( "express" );
var cors = require( 'cors' )

////

const serverApp = express();

serverApp.use( express.json() );

serverApp.use( cors() );

serverApp.listen( 4030, ()=>{ console.log( "Servidor correindo" ) } );

/////

serverApp.use( express.static( "./public" ) );

serverApp.use( "/api/actions", require( "./router/firstRoute" ) );

