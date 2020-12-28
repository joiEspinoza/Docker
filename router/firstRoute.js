const { Router } = require( "express" );
const { actionOne } = require("../controls/controls");
const router = Router();

////

router.post( "/", [], actionOne );

////

module.exports = router;