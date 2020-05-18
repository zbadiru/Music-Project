# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Song.create([
    {   title: "Teaneger fever",
        artist_id: 1,
        genre_id: 2
    },
    {   title: "God's plan",
        artist_id: 1,
        genre_id: 2
    },
    {   title: "Feelings",
        artist_id: 1,
        genre_id: 2
    },
    {   title: "This is love",
        artist_id: 2,
        genre_id: 3
    },
    {   title: "three little birds",
        artist_id: 2,
        genre_id: 3
    },
    {   title: "bob marley no woman no cry",
        artist_id: 2,
        genre_id: 3
    },
    {   title: "Power trip",
        artist_id: 3,
        genre_id: 1
    },
    {   title: "She knows",
        artist_id: 3,
        genre_id: 1
    },
    {   title: "Wet Dreamz",
        artist_id: 3,
        genre_id: 1
    },
    {   title: "G.O.M.D",
        artist_id: 3,
        genre_id: 2
    },
    {   title: "God is a woman",
        artist_id: 4,
        genre_id: 2
    },
    {   title: "Thank u, next",
        artist_id: 4,
        genre_id: 2
    }
    ])

Genre.create([
    {   title: "Hip Hop"
    },
    {   title: "Pop"
    },
    {   title: "Reggae"
    }
    ]) 

Artist.create([
    {name: "Drake"
    },
    {name: "Bob Marley"    
    },
    {name: "J.Cole"    
    },
    {name: "Ariana Grande"    
    }
    ])