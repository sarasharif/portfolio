module Details exposing (..)


name : String
name =
    "Sara Sharif"


occupation : String
occupation =
    "Software Engineer"


profile_picture : String
profile_picture =
    "img/sara.jpg"


my_projects : List Project
my_projects =
    [ culturemap
    , connect4
    , xylophone
    , wedding
    ]


type alias Project =
    { name : String
    , image_link : String
    , url : String
    , description : String
    , tech_stack : List String
    }


culturemap : Project
culturemap =
    { name = "Culturemap"
    , image_link = "img/cm.png"
    , url = "http://culturemap.site"
    , description = "this is a game"
    , tech_stack = [ "rails", "react", "flux" ]
    }


wedding : Project
wedding =
    { name = "Wedding"
    , image_link = "img/sm.png"
    , url = "http://otherwedding.herokuapp.com"
    , description = "a wedding website with RSVPs"
    , tech_stack = [ "mondodb", "express", "angular", "node" ]
    }


connect4 : Project
connect4 =
    { name = "Connect4"
    , image_link = "img/c4.png"
    , url = "http://sarasharif.github.io/connect4"
    , description = "the classic kid's game"
    , tech_stack = [ "javascript", "jquery", "minimax" ]
    }


xylophone : Project
xylophone =
    { name = "Xylophone"
    , image_link = "img/xy.png"
    , url = "http://xylophone.herokuapp.com"
    , description = "a xylophone and a harmonica had a baby"
    , tech_stack = [ "rails", "react", "flux" ]
    }
