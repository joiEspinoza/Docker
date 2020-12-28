const { response } = require( "express" );

////

const actionOne = async ( request, response = response ) =>
{
    try 
    {
        return response.status( 200 ).json( { ok : true, msg : "Action 1" } );
    } 
    catch( error ) 
    {
        console.log( error );  
    };
};

////

module.exports = { actionOne };