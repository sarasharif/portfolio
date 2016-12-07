module Projects exposing (..)


type alias Project =
    { name : String
    , image_link : String
    , url : String
    , description : String
    , tech : List String
    }


culturemap : Project
culturemap =
    { name = "Culturemap"
    , image_link = "img/cm.png"
    , url = "http://culturemap.site"
    , description = "this is a game"
    , tech = [ "rails", "react", "flux" ]
    }


wedding : Project
wedding =
    { name = "Wedding"
    , image_link = "img/sm.png"
    , url = "http://otherwedding.herokuapp.com"
    , description = "a wedding website with RSVPs"
    , tech = [ "mondodb", "express", "angular.js", "node.js" ]
    }


connect4 : Project
connect4 =
    { name = "Connect4"
    , image_link = "img/c4.png"
    , url = "http://sarasharif.github.io/connect4"
    , description = "this is a game"
    , tech = [ "javascript", "jquery", "minimax" ]
    }


xylophone : Project
xylophone =
    { name = "Xylophone"
    , image_link = "img/xy.png"
    , url = "http://xylophone.herokuapp.com"
    , description = "a xylophone and a harmonica had a baby"
    , tech = [ "rails", "react", "flux" ]
    }


projects =
    [ culturemap
    , connect4
    , wedding
    , xylophone
    ]
