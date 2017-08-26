# encoding: UTF-8
# This file is auto-generated from the current content of the database. Instead
# of editing this file, please use the migrations feature of Seed Migration to
# incrementally modify your database, and then regenerate this seed file.
#
# If you need to create the database on another system, you should be using
# db:seed, not running all the migrations from scratch. The latter is a flawed
# and unsustainable approach (the more migrations you'll amass, the slower
# it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Base.transaction do

  Airline.create({"airline"=>nil, "airline_code"=>"CX", "created_at"=>"2016-05-07T09:27:16.533Z", "id"=>1, "pax_team_id"=>1, "updated_at"=>"2016-05-07T09:27:16.533Z"})

  Airline.create({"airline"=>nil, "airline_code"=>"PR", "created_at"=>"2016-05-07T09:27:16.536Z", "id"=>2, "pax_team_id"=>1, "updated_at"=>"2016-05-07T09:27:16.536Z"})

  Airline.create({"airline"=>nil, "airline_code"=>"KE", "created_at"=>"2016-05-07T09:27:16.537Z", "id"=>3, "pax_team_id"=>2, "updated_at"=>"2016-05-07T09:27:16.537Z"})

  Airline.create({"airline"=>nil, "airline_code"=>"CI", "created_at"=>"2016-05-07T09:27:16.538Z", "id"=>4, "pax_team_id"=>2, "updated_at"=>"2016-05-07T09:27:16.538Z"})

  Airline.create({"airline"=>nil, "airline_code"=>"SU", "created_at"=>"2016-05-07T09:27:16.539Z", "id"=>5, "pax_team_id"=>2, "updated_at"=>"2016-05-07T09:27:16.539Z"})

  Airline.create({"airline"=>nil, "airline_code"=>"BR", "created_at"=>"2016-05-07T09:27:16.540Z", "id"=>6, "pax_team_id"=>3, "updated_at"=>"2016-05-07T09:27:16.540Z"})

  Airline.create({"airline"=>nil, "airline_code"=>"AF", "created_at"=>"2016-05-07T09:27:16.541Z", "id"=>7, "pax_team_id"=>3, "updated_at"=>"2016-05-07T09:27:16.541Z"})

  Airline.create({"airline"=>nil, "airline_code"=>"SQ", "created_at"=>"2016-05-07T09:27:16.552Z", "id"=>8, "pax_team_id"=>4, "updated_at"=>"2016-05-07T09:27:16.552Z"})

  Airline.create({"airline"=>nil, "airline_code"=>"JL", "created_at"=>"2016-05-07T09:27:16.554Z", "id"=>9, "pax_team_id"=>4, "updated_at"=>"2016-05-07T09:27:16.554Z"})

  Airline.create({"airline"=>nil, "airline_code"=>"ML", "created_at"=>"2016-05-07T09:27:16.555Z", "id"=>10, "pax_team_id"=>4, "updated_at"=>"2016-05-07T09:27:16.555Z"})
  # ActiveRecord::Base.connection.reset_pk_sequence!('airlines')

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:17.858Z", "activation_digest"=>"$2a$10$uuvCEtyCxOGGwHD8V.W9EOQ.x0agnXubfeRCTa1lETfo1urhvimfu", "admin"=>true, "created_at"=>"2016-05-07T09:12:18.004Z", "email"=>"example@railstutorial.org", "id"=>1, "name"=>"Example User", "password_digest"=>"$2a$10$GIwXbhz363F4KY97Yex17O7OR3oQ5X1gY.C8M5aGq.hXyZodVEFeS", "remember_digest"=>nil, "staff_id"=>"9999", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:18.004Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:18.458Z", "activation_digest"=>"$2a$10$PfoUlO7XBiJ9CAO3nEkS3eOo/WuUQcG93TexwbuFVUl6iZyGAH9Rm", "admin"=>nil, "created_at"=>"2016-05-07T09:12:18.531Z", "email"=>"example-1@railstutorial.org", "id"=>2, "name"=>"Brennon Kovacek", "password_digest"=>"$2a$10$JRIo0iXfm2yuTz3nvagsl.NjUgzEz.ZWUVvDpPCuxlU3jTvxSdjwG", "remember_digest"=>nil, "staff_id"=>"1", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:18.531Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:18.602Z", "activation_digest"=>"$2a$10$VcpN6bhEvd.6mTNW.8DBM.SnxQo8p0mOji4eASuV4g2dtJolyi7nW", "admin"=>nil, "created_at"=>"2016-05-07T09:12:18.674Z", "email"=>"example-2@railstutorial.org", "id"=>3, "name"=>"Nedra Heaney", "password_digest"=>"$2a$10$rYAPLNsViETz8b4s2UAXtO6Q2gUq1YApnpV8I.6izOXcefVJilzji", "remember_digest"=>nil, "staff_id"=>"2", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:18.674Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:18.747Z", "activation_digest"=>"$2a$10$tEIqw/ARiM.cyOr7GHIFeOmSCJQ/woDBGOd2nbanUYd3IeEIIQU1u", "admin"=>nil, "created_at"=>"2016-05-07T09:12:18.819Z", "email"=>"example-3@railstutorial.org", "id"=>4, "name"=>"Liza Friesen", "password_digest"=>"$2a$10$RiwHrV/wWyWN4UN5XIgexOJmX2/cpULrfbiAVNEs1xWHDXxmQPBby", "remember_digest"=>nil, "staff_id"=>"3", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:18.819Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:18.890Z", "activation_digest"=>"$2a$10$xNbEm0MdzJzEX.YTr2gbBOk1vkU1TdCofcN1evIlNzOuegUr7LRVe", "admin"=>nil, "created_at"=>"2016-05-07T09:12:18.962Z", "email"=>"example-4@railstutorial.org", "id"=>5, "name"=>"Brett Vandervort", "password_digest"=>"$2a$10$8Ky2nPba9yQFfq/TjlH.dOfn8fjGi2U2VClp7UyR7hUjTDIaAwsp6", "remember_digest"=>nil, "staff_id"=>"4", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:18.962Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:19.032Z", "activation_digest"=>"$2a$10$GbBE3QESPj9.3ro8yZZsHOdT5wP06cQAhmBn.3E27aVDX13GZH9QG", "admin"=>nil, "created_at"=>"2016-05-07T09:12:19.104Z", "email"=>"example-5@railstutorial.org", "id"=>6, "name"=>"Stephanie Romaguera", "password_digest"=>"$2a$10$gcXbgy1HCF9.pOX4otxmiu.UR5nSX656IYKbFlbih8312qwW.dube", "remember_digest"=>nil, "staff_id"=>"5", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:19.104Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:19.175Z", "activation_digest"=>"$2a$10$vNeA44Sm7/amrZK.CPYn9u/YNwm/0ZjfJGca/RUa0lZYDUw4MZ2lG", "admin"=>nil, "created_at"=>"2016-05-07T09:12:19.249Z", "email"=>"example-6@railstutorial.org", "id"=>7, "name"=>"Norwood Franecki", "password_digest"=>"$2a$10$2W5hwqw01r2iFd41m.e12uCTtMuOrX2G/7izwC1fSH/1O.UJUymaO", "remember_digest"=>nil, "staff_id"=>"6", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:19.249Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:19.322Z", "activation_digest"=>"$2a$10$pqaZjq2QqKPLCahHJWwwf.uio0kTbtiIm1.miW0KaRDL6mSWgO/NO", "admin"=>nil, "created_at"=>"2016-05-07T09:12:19.396Z", "email"=>"example-7@railstutorial.org", "id"=>8, "name"=>"Dr. Kelli Hilpert", "password_digest"=>"$2a$10$NuH8oB6Dwm81oTR8BK1M2.9pCH7x93ovmv225bSADM4NAsBA00jki", "remember_digest"=>nil, "staff_id"=>"7", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:19.396Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:19.467Z", "activation_digest"=>"$2a$10$3ko3bkS80irfLGQtycCmoOxAGGBTd/IkXnvr3JJkRtXWTIs9VgM/W", "admin"=>nil, "created_at"=>"2016-05-07T09:12:19.540Z", "email"=>"example-8@railstutorial.org", "id"=>9, "name"=>"Yessenia Kautzer", "password_digest"=>"$2a$10$0iJ9DDwP9rzrC0hylAd8G.71jW5G2mTS/NO8o4SUbVLl3w2Yvx346", "remember_digest"=>nil, "staff_id"=>"8", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:19.540Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:19.613Z", "activation_digest"=>"$2a$10$PuWEd/n2NN49Ksp.sa1cMe15AYJOOGplJRFudpX9pTEM/bmvlCSx6", "admin"=>nil, "created_at"=>"2016-05-07T09:12:19.687Z", "email"=>"example-9@railstutorial.org", "id"=>10, "name"=>"Madge Torphy", "password_digest"=>"$2a$10$4b7xmMqAaWQAHsR5sNx3i.3W6r1IL6qzuJtEh8wANlllqmaK9Huuu", "remember_digest"=>nil, "staff_id"=>"9", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:19.687Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:19.760Z", "activation_digest"=>"$2a$10$H9S3.u5y7fS8BMn0Drt9BO9SuIpCXTbGTAMR3OBUfXWb3DaWpfvzu", "admin"=>nil, "created_at"=>"2016-05-07T09:12:19.834Z", "email"=>"example-10@railstutorial.org", "id"=>11, "name"=>"Ms. Reva Stark", "password_digest"=>"$2a$10$0pROwdBYcTo2XxBIBs7Pz./9pLkqS5VQFlSY1ooOzrk8vIFUc7B7y", "remember_digest"=>nil, "staff_id"=>"10", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:19.834Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:19.907Z", "activation_digest"=>"$2a$10$248Yuo3H8R3xS0l7pJU0ZuOB5UXMSAW8XA4c6OHAojqU6rp20R9Ze", "admin"=>nil, "created_at"=>"2016-05-07T09:12:19.983Z", "email"=>"example-11@railstutorial.org", "id"=>12, "name"=>"Gustave Nienow", "password_digest"=>"$2a$10$5H1bFPnYUu0QJ12VkarCgelHbrvQthh9ii/yTgz54EeWF9EwZlDDq", "remember_digest"=>nil, "staff_id"=>"11", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:19.983Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:20.056Z", "activation_digest"=>"$2a$10$xoChtynosOqQcu1yLD4X2O4AroZ9rZ8tq2tP2dH2HxGegQs6yAW2.", "admin"=>nil, "created_at"=>"2016-05-07T09:12:20.128Z", "email"=>"example-12@railstutorial.org", "id"=>13, "name"=>"Norberto Nikolaus", "password_digest"=>"$2a$10$5Jbr9RWD6LvkG2GhULUvRetvh.US50OETzY1ZkuEzKCGRPXNHQPKe", "remember_digest"=>nil, "staff_id"=>"12", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:20.128Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:20.200Z", "activation_digest"=>"$2a$10$1oWywXwkTODclz2qlBZ19eYMZZtkjgZ56knkcCoLXQlnca8qfX4ru", "admin"=>nil, "created_at"=>"2016-05-07T09:12:20.274Z", "email"=>"example-13@railstutorial.org", "id"=>14, "name"=>"Romaine Rodriguez", "password_digest"=>"$2a$10$NG2FXvxaDqreJpZIa.N7P.Fd5wjHEt0kcm8iqNLxZiX797NtUTGpy", "remember_digest"=>nil, "staff_id"=>"13", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:20.274Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:20.348Z", "activation_digest"=>"$2a$10$zHZZEamD/VMY9Wm9Z0Sw1ewpZpaaCijuPDFwJt8vcuIAhLwQUSn6K", "admin"=>nil, "created_at"=>"2016-05-07T09:12:20.421Z", "email"=>"example-14@railstutorial.org", "id"=>15, "name"=>"Dejah Waelchi", "password_digest"=>"$2a$10$wjntcZagi2T18nBZ.iti.uNeKAoCrKTsTUeCip9yFBvEsL7P86AlG", "remember_digest"=>nil, "staff_id"=>"14", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:20.421Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:20.492Z", "activation_digest"=>"$2a$10$RJYtCEUIp1tMp0yeN4Fv3OxazUlOcpm8TbN4vbXHJg1fc.75qLDGG", "admin"=>nil, "created_at"=>"2016-05-07T09:12:20.564Z", "email"=>"example-15@railstutorial.org", "id"=>16, "name"=>"Miss Axel O'Keefe", "password_digest"=>"$2a$10$5ef/ma0qQLzyYPtD4KEroueAq9nV3vDbjbYhymiLF79bg1jI.FzU6", "remember_digest"=>nil, "staff_id"=>"15", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:20.564Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:20.635Z", "activation_digest"=>"$2a$10$XPbzJK.n.gTTXk3qSTNULueM7kIx8JOZTNZzUx3IWeQElKiGcJMw.", "admin"=>nil, "created_at"=>"2016-05-07T09:12:20.706Z", "email"=>"example-16@railstutorial.org", "id"=>17, "name"=>"Patsy Mertz", "password_digest"=>"$2a$10$6oE..f/rOltWru9bluoUjuBv.rFXpQ/4Dp1q/yHudsDtU4ZSsKcHe", "remember_digest"=>nil, "staff_id"=>"16", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:20.706Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:20.777Z", "activation_digest"=>"$2a$10$K20Fhrc4fkfew1ljL9mGf.Gwo1fDc7QsWDE4rRzz1f0h1vam1B1uC", "admin"=>nil, "created_at"=>"2016-05-07T09:12:20.848Z", "email"=>"example-17@railstutorial.org", "id"=>18, "name"=>"Katheryn Tillman V", "password_digest"=>"$2a$10$W7oM1SJeGqt2QmOO69JLYetqMmxGjh5522n5ygD7g4kCaXV092s.u", "remember_digest"=>nil, "staff_id"=>"17", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:20.848Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:20.919Z", "activation_digest"=>"$2a$10$KZoeALOYR7l5RDr9Y4nlYuWPA6NIdqv/G3w65QFPIkdjae2mL1Jrq", "admin"=>nil, "created_at"=>"2016-05-07T09:12:20.991Z", "email"=>"example-18@railstutorial.org", "id"=>19, "name"=>"Frieda Rippin III", "password_digest"=>"$2a$10$YMyEBQXqbp6NM7utFBZRpuzPi0dfUwDyogECl7Mn0oGNBOHgxr0aO", "remember_digest"=>nil, "staff_id"=>"18", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:20.991Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:21.062Z", "activation_digest"=>"$2a$10$7D16C5IjM3N138eN5cVwLOTAWr6nt82fLhi4mUhAwUKsB7cLSRFIm", "admin"=>nil, "created_at"=>"2016-05-07T09:12:21.134Z", "email"=>"example-19@railstutorial.org", "id"=>20, "name"=>"Richard Ruecker PhD", "password_digest"=>"$2a$10$tNLwk/yeGgY1b0RyF82j9.r7YGFql8aWBDZxgAVEAjuB8B4jPnZKq", "remember_digest"=>nil, "staff_id"=>"19", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:21.134Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:21.205Z", "activation_digest"=>"$2a$10$24Ad3nX8xu.lUpZbCfNif.IBe7gGUroeQo2mNtApvqPk5j8qd38jy", "admin"=>nil, "created_at"=>"2016-05-07T09:12:21.279Z", "email"=>"example-20@railstutorial.org", "id"=>21, "name"=>"Max Waelchi", "password_digest"=>"$2a$10$/kFpiAV6zRr5aiZ3tP22/e8Atv75q9K32sIKTFWiaB2UMBn0sk1Rm", "remember_digest"=>nil, "staff_id"=>"20", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:21.279Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:21.353Z", "activation_digest"=>"$2a$10$4oJ9yJSkFiKN1LJcL/U75.4H0Bie4IsEv4XK887mKpG2maQH8VcG6", "admin"=>nil, "created_at"=>"2016-05-07T09:12:21.426Z", "email"=>"example-21@railstutorial.org", "id"=>22, "name"=>"Nora Schultz", "password_digest"=>"$2a$10$yem9m76EbXcyweleEPTGDOiFEm0DzU0MyWFxs4pmDi9TbnINcZJ2i", "remember_digest"=>nil, "staff_id"=>"21", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:21.426Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:21.498Z", "activation_digest"=>"$2a$10$g7J./wrKNT6oU4wUQpbDC.1zhjSSZwekTF1K5xRtY9Y5W1hxAA236", "admin"=>nil, "created_at"=>"2016-05-07T09:12:21.570Z", "email"=>"example-22@railstutorial.org", "id"=>23, "name"=>"Heath Barton V", "password_digest"=>"$2a$10$n36lJf1OcGyz3.k8Py1Og.S2Dyu11xFJWWFZeo30ZeFPEb1wXyfwi", "remember_digest"=>nil, "staff_id"=>"22", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:21.570Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:21.641Z", "activation_digest"=>"$2a$10$dGkf2YVoj6VUv/w2VoVpx.STLmdxcq0qBMmId6xA8G8QkNEbnIzFO", "admin"=>nil, "created_at"=>"2016-05-07T09:12:21.714Z", "email"=>"example-23@railstutorial.org", "id"=>24, "name"=>"Ms. Frederick Klein", "password_digest"=>"$2a$10$YJ4Yg7jyHoipH4SjZ/TLyeZZpyBUp10npjSjKrRi2YTlFzMgzujhS", "remember_digest"=>nil, "staff_id"=>"23", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:21.714Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:21.786Z", "activation_digest"=>"$2a$10$Zu7PFlksHL3DA9.PIGgc5upc5Ajfb/U4Z4AStqJrmPbK.dvPV.VqS", "admin"=>nil, "created_at"=>"2016-05-07T09:12:21.858Z", "email"=>"example-24@railstutorial.org", "id"=>25, "name"=>"Mrs. Clark Rodriguez", "password_digest"=>"$2a$10$XNZg44tdie2rAoriq.H8KeBPa/aaogWhZhPOmwNy8Bq.taMPsN8i.", "remember_digest"=>nil, "staff_id"=>"24", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:21.858Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:21.930Z", "activation_digest"=>"$2a$10$JjJY6yTXGXlbs44pwMc8L.e/K6q3VGHaeue3KgMu/2ggGyi9.t9S6", "admin"=>nil, "created_at"=>"2016-05-07T09:12:22.003Z", "email"=>"example-25@railstutorial.org", "id"=>26, "name"=>"Larue Upton", "password_digest"=>"$2a$10$NGgLMUlZyz6gaWTrdHMsgesdrLdrv4qJ.qEyASewnrk6Yd8JVQJu2", "remember_digest"=>nil, "staff_id"=>"25", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:22.003Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:22.074Z", "activation_digest"=>"$2a$10$cfo4zBWF64mYBWk0sbCfa.WARCMkgWZasKi8zqfe4yD7/Hqg8Xh9u", "admin"=>nil, "created_at"=>"2016-05-07T09:12:22.148Z", "email"=>"example-26@railstutorial.org", "id"=>27, "name"=>"Ms. Annabel Hoppe", "password_digest"=>"$2a$10$t4SC5xGmmFEfhSBgaFJOSOPhbwQ0Y2FtCvuxkgWgEVBl5DwbZtp5O", "remember_digest"=>nil, "staff_id"=>"26", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:22.148Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:22.219Z", "activation_digest"=>"$2a$10$QbM.PaJ8H3jCahpVHifgEe.yWJUaXcwAnLqmzo4cWccZNnPfomgkG", "admin"=>nil, "created_at"=>"2016-05-07T09:12:22.295Z", "email"=>"example-27@railstutorial.org", "id"=>28, "name"=>"Afton Kunde", "password_digest"=>"$2a$10$d4N9kCqO/C4.efY4KBQsNuDcnYaCUNfq5shSwaynv.jxBtV5TTiGS", "remember_digest"=>nil, "staff_id"=>"27", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:22.295Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:22.369Z", "activation_digest"=>"$2a$10$E9Xt4LwTGaYlWKF.nVFzKuhP1/vv/21AR3s.ogwVxnevTaTUOIu2K", "admin"=>nil, "created_at"=>"2016-05-07T09:12:22.442Z", "email"=>"example-28@railstutorial.org", "id"=>29, "name"=>"Vince Carter III", "password_digest"=>"$2a$10$MF4n98h4Dr.R79qOmGb4zOr7KcBGhvkIn1dt30W26F5asWJyX3zoW", "remember_digest"=>nil, "staff_id"=>"28", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:22.442Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:22.514Z", "activation_digest"=>"$2a$10$HeasfeTlX.E9jjWwO7LciO03z7DCCk/DREnuJJlebK1S1oE9rt1lu", "admin"=>nil, "created_at"=>"2016-05-07T09:12:22.587Z", "email"=>"example-29@railstutorial.org", "id"=>30, "name"=>"Ms. Lavina Emard", "password_digest"=>"$2a$10$Gpsh0/mxD23t7z9dKrq./.OpobpPo08nzlinWsxcdy/qN.Wj.l9.W", "remember_digest"=>nil, "staff_id"=>"29", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:22.587Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:22.660Z", "activation_digest"=>"$2a$10$.y7NB7foe4Yoz.evJuwIheD/2hTIZd32Uodzxba6wsDDQH3Fo1ht2", "admin"=>nil, "created_at"=>"2016-05-07T09:12:22.733Z", "email"=>"example-30@railstutorial.org", "id"=>31, "name"=>"Mrs. Kaitlin Romaguera", "password_digest"=>"$2a$10$6nbgR1wssLcSCNbovXhw8.tyi4X8vE.iuJqR5IsQUZj2j1yj3Uk/e", "remember_digest"=>nil, "staff_id"=>"30", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:22.733Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:22.805Z", "activation_digest"=>"$2a$10$mpOnEhtup2gXn0BLFX8EkuwaYjcNILKalmLVahOPlqY3YCVbQKKa.", "admin"=>nil, "created_at"=>"2016-05-07T09:12:22.878Z", "email"=>"example-31@railstutorial.org", "id"=>32, "name"=>"Isabella Wisoky", "password_digest"=>"$2a$10$RE0bsxUPoB1UO7MgZA6OtOWkSR1ZpOTuIPfbQ3DGveopS6SgDjHpe", "remember_digest"=>nil, "staff_id"=>"31", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:22.878Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:22.949Z", "activation_digest"=>"$2a$10$UInODbglMIzTL/1br3zR7O0pYOCDte7jM6hlMbBH97UT/TgtkDdVe", "admin"=>nil, "created_at"=>"2016-05-07T09:12:23.022Z", "email"=>"example-32@railstutorial.org", "id"=>33, "name"=>"Afton Cronin", "password_digest"=>"$2a$10$HS2xYYFfehHP2nCBq7y1m.wAHh1lb5Vc1T7kTC17P48N0cxML.zDS", "remember_digest"=>nil, "staff_id"=>"32", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:23.022Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:23.093Z", "activation_digest"=>"$2a$10$2MaH/fy8QaB2WNqX/.lLUehZBz1kSISxcrnndIQGw.bdkD4UKUyhi", "admin"=>nil, "created_at"=>"2016-05-07T09:12:23.164Z", "email"=>"example-33@railstutorial.org", "id"=>34, "name"=>"Jadon Renner", "password_digest"=>"$2a$10$9kbfKaW1Fg3U3bL1STAaieinKp1qrC8Xmx.z3s91pY51PlaUfu9h6", "remember_digest"=>nil, "staff_id"=>"33", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:23.164Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:23.235Z", "activation_digest"=>"$2a$10$qlHyM8W4kk9nzS7jM0iVvOX6sPiR08XXNzdt.8PpH9VmaUSYb.PdK", "admin"=>nil, "created_at"=>"2016-05-07T09:12:23.313Z", "email"=>"example-34@railstutorial.org", "id"=>35, "name"=>"Adonis Kautzer", "password_digest"=>"$2a$10$wu9uvMRlCnW6tFVjInfrsebFxNrSh0Gey1PJUxlPYaZ7YJWg5pDPe", "remember_digest"=>nil, "staff_id"=>"34", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:23.313Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:23.385Z", "activation_digest"=>"$2a$10$kRp1q2K1VaoX0DDL5nG4FuPhgPX/COP3JaGdZ4He53lT9Ir1r7pgq", "admin"=>nil, "created_at"=>"2016-05-07T09:12:23.457Z", "email"=>"example-35@railstutorial.org", "id"=>36, "name"=>"Alvis Koch", "password_digest"=>"$2a$10$U2j/qsSp4leOFhr9s4OfauMt4Wby.ZLNdG.9BSbRxRBdIQLhmTawO", "remember_digest"=>nil, "staff_id"=>"35", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:23.457Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:23.528Z", "activation_digest"=>"$2a$10$JCPOsPVRB3.EnG8XU5hOn.LP0c521QFuvZq4cPiGCINuJ4HW8c4W2", "admin"=>nil, "created_at"=>"2016-05-07T09:12:23.600Z", "email"=>"example-36@railstutorial.org", "id"=>37, "name"=>"Einar Adams", "password_digest"=>"$2a$10$qbHkPGvVhmr7vJ4own8B6eM/cBClqJO8bBPTQCSo.79HHrhdDOOji", "remember_digest"=>nil, "staff_id"=>"36", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:23.600Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:23.670Z", "activation_digest"=>"$2a$10$pn78PeQg0OUh0NBfyxNlBufD/Wy6cI/t/CTJeSugbQlbhlfWKpBGK", "admin"=>nil, "created_at"=>"2016-05-07T09:12:23.744Z", "email"=>"example-37@railstutorial.org", "id"=>38, "name"=>"Sister Torp", "password_digest"=>"$2a$10$AcjfCyuqbCPcnnk764zdYeDinTaft7dECZsRqdc8PUZjgd8WqKq0e", "remember_digest"=>nil, "staff_id"=>"37", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:23.744Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:23.814Z", "activation_digest"=>"$2a$10$ysxXDmUCNwAXqBRFe.SAquVCy9URdckSFLsG/JB/qLuhFnTx46SYa", "admin"=>nil, "created_at"=>"2016-05-07T09:12:23.886Z", "email"=>"example-38@railstutorial.org", "id"=>39, "name"=>"Guadalupe Jast", "password_digest"=>"$2a$10$dVQqI3cApM9UMfICLGjVJucyeTJaDYDJpcHlKbsO2m7.SAVaO4Mmq", "remember_digest"=>nil, "staff_id"=>"38", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:23.886Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:23.958Z", "activation_digest"=>"$2a$10$CFilrq9g2IcbCaab.iJzQOGl1.Ek4eIMLzCZN7O4YCn3JpO1Dbnei", "admin"=>nil, "created_at"=>"2016-05-07T09:12:24.030Z", "email"=>"example-39@railstutorial.org", "id"=>40, "name"=>"Rigoberto Labadie", "password_digest"=>"$2a$10$Nv.9rB5toyHAKD7zwf/cI.7zPDNySDsNPIpMdTnh2ers2HrPPRaWa", "remember_digest"=>nil, "staff_id"=>"39", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:24.030Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:24.101Z", "activation_digest"=>"$2a$10$2X2V44Mo5Xg6abaVI7f6KObC95IlwZ6yzyOEkT5IHADLs2cMxawSu", "admin"=>nil, "created_at"=>"2016-05-07T09:12:24.175Z", "email"=>"example-40@railstutorial.org", "id"=>41, "name"=>"Ransom Pfeffer", "password_digest"=>"$2a$10$5DZv2kqvcbQlTDoueKC7dej/AmZUHsMkT/TnIs3ltXjrT4NcHwJbW", "remember_digest"=>nil, "staff_id"=>"40", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:24.175Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:24.247Z", "activation_digest"=>"$2a$10$H8VfQSUyWtseFBHS0N3xXOjhc3l5WFLIkJz0eM.Puj2dDbPVACOl6", "admin"=>nil, "created_at"=>"2016-05-07T09:12:24.324Z", "email"=>"example-41@railstutorial.org", "id"=>42, "name"=>"Rickie Armstrong", "password_digest"=>"$2a$10$r/onRBUN8B76GKA7S5nBSe/pNEbm8ky4e093k6/jfMCVSib6Y8G/2", "remember_digest"=>nil, "staff_id"=>"41", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:24.324Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:24.396Z", "activation_digest"=>"$2a$10$vHvSwUJU9gj7aHs5MscU9uk4FgCE176TurPuXknviGmQifEnZcm3a", "admin"=>nil, "created_at"=>"2016-05-07T09:12:24.470Z", "email"=>"example-42@railstutorial.org", "id"=>43, "name"=>"Miss Henriette Heathcote", "password_digest"=>"$2a$10$APXwHewxRempaeAuecvjteMTChgeV5ilvnE5kpP5rHG4Oxca8MDAm", "remember_digest"=>nil, "staff_id"=>"42", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:24.470Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:24.543Z", "activation_digest"=>"$2a$10$hqJgshvQTk55CspCWXybWOfk6jeO/0AYfiB05rR8.XHfNp2IAxlBW", "admin"=>nil, "created_at"=>"2016-05-07T09:12:24.618Z", "email"=>"example-43@railstutorial.org", "id"=>44, "name"=>"Viola Fadel", "password_digest"=>"$2a$10$0fuhp1x7GX47ceYR9q8wjeANlVvyXvVRRqGFtaIlNokuWmVFYSq/q", "remember_digest"=>nil, "staff_id"=>"43", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:24.618Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:24.692Z", "activation_digest"=>"$2a$10$1H4w4qLsHk0o/FwhyWmO8uwejpGBH0EhPWgtQTUsbFmr/gVlFtv0e", "admin"=>nil, "created_at"=>"2016-05-07T09:12:24.765Z", "email"=>"example-44@railstutorial.org", "id"=>45, "name"=>"Grady Pollich MD", "password_digest"=>"$2a$10$CZ3GdhiPsCYce.6oTyui4O8fXM/0NkZa7Zkiaqcr7oFLCiKYd3FqC", "remember_digest"=>nil, "staff_id"=>"44", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:24.765Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:24.837Z", "activation_digest"=>"$2a$10$vx2oj/whFzFuEiIMWi6g1Oq4VCGUWX/zvmGldSrQjzMGJkfbnKWk2", "admin"=>nil, "created_at"=>"2016-05-07T09:12:24.910Z", "email"=>"example-45@railstutorial.org", "id"=>46, "name"=>"Aditya Feeney V", "password_digest"=>"$2a$10$ZPFzSBmuPkuR4uO/ZoPgrehrRLR5VfMWkDSnMymLOAmm5pNo04NES", "remember_digest"=>nil, "staff_id"=>"45", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:24.910Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:24.983Z", "activation_digest"=>"$2a$10$VM/LyYhsVHMS.s1uBWWMj.v9rNiOgHSz/IjmMa4yCqmh.AcoKnGAm", "admin"=>nil, "created_at"=>"2016-05-07T09:12:25.057Z", "email"=>"example-46@railstutorial.org", "id"=>47, "name"=>"Darian Stracke", "password_digest"=>"$2a$10$dXPNz3fguULwFbcR2M7Nse/Gv7CaVACX9F.C5FttVK.9pom/0Ou7i", "remember_digest"=>nil, "staff_id"=>"46", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:25.057Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:25.132Z", "activation_digest"=>"$2a$10$1VV1iUAPJnKeOVfvEYdo8e4lzj60ksWh8whcGOrKIbNaWqtM1r8v2", "admin"=>nil, "created_at"=>"2016-05-07T09:12:25.209Z", "email"=>"example-47@railstutorial.org", "id"=>48, "name"=>"Ms. Corbin Runolfsson", "password_digest"=>"$2a$10$nYSs.OVYVXrALPUzM3MPV.GKWiqloEtomfLqUzhjUsyAx/SBgPY9K", "remember_digest"=>nil, "staff_id"=>"47", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:25.209Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:25.284Z", "activation_digest"=>"$2a$10$PpOOYB3boI94SkJxU.Iewue1ZLNVeXnHAxA9Gu3y/MoAnCKrzCNxa", "admin"=>nil, "created_at"=>"2016-05-07T09:12:25.362Z", "email"=>"example-48@railstutorial.org", "id"=>49, "name"=>"Elroy Rice", "password_digest"=>"$2a$10$RBkCSHZAlLWBSfgDcGIWFez8wb4foA9O.WhH0PGoo0TzIIC.NDW4O", "remember_digest"=>nil, "staff_id"=>"48", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:25.362Z"})

  User.create({"activated"=>true, "activated_at"=>"2016-05-07T09:12:25.442Z", "activation_digest"=>"$2a$10$nevAP3vlk6kK/dY2GFwW3.EOBDvXs6muujZkfNTqaW0NQlE7kWV8y", "admin"=>nil, "created_at"=>"2016-05-07T09:12:25.518Z", "email"=>"example-49@railstutorial.org", "id"=>50, "name"=>"Rozella Rowe", "password_digest"=>"$2a$10$WccKVVz4cJxca9cxC5N2nOC9bYxj0kPol9OnQH0CQ5cNu7SF5mKKC", "remember_digest"=>nil, "staff_id"=>"49", "team_id"=>nil, "updated_at"=>"2016-05-07T09:12:25.518Z"})
  # ActiveRecord::Base.connection.reset_pk_sequence!('users')

  CsSopQuestion.create({"created_at"=>"2016-05-07T09:12:25.618Z", "id"=>1, "is_active"=>true, "question"=>"Stand up. Greeting and smiling at passengers", "question_type"=>"cssop00", "updated_at"=>"2016-05-07T09:12:25.618Z"})

  CsSopQuestion.create({"created_at"=>"2016-05-07T09:12:25.623Z", "id"=>2, "is_active"=>true, "question"=>"Receiving documents with two hands", "question_type"=>"cssop00", "updated_at"=>"2016-05-07T09:12:25.623Z"})

  CsSopQuestion.create({"created_at"=>"2016-05-07T09:12:25.625Z", "id"=>3, "is_active"=>true, "question"=>"Explaining DGR instructions for passengers", "question_type"=>"cssop00", "updated_at"=>"2016-05-07T09:12:25.625Z"})

  CsSopQuestion.create({"created_at"=>"2016-05-07T09:12:25.629Z", "id"=>4, "is_active"=>true, "question"=>"Indicating the final destination of baggage", "question_type"=>"cssop00", "updated_at"=>"2016-05-07T09:12:25.629Z"})

  CsSopQuestion.create({"created_at"=>"2016-05-07T09:12:25.631Z", "id"=>5, "is_active"=>true, "question"=>"Stand up. Explain boarding pass's details", "question_type"=>"cssop00", "updated_at"=>"2016-05-07T09:12:25.631Z"})

  CsSopQuestion.create({"created_at"=>"2016-05-07T09:12:25.633Z", "id"=>6, "is_active"=>true, "question"=>"Smile and return all documents to passengers", "question_type"=>"cssop00", "updated_at"=>"2016-05-07T09:12:25.633Z"})

  CsSopQuestion.create({"created_at"=>"2016-05-07T09:12:25.635Z", "id"=>7, "is_active"=>true, "question"=>"Show passengers go through CIQ", "question_type"=>"cssop00", "updated_at"=>"2016-05-07T09:12:25.635Z"})
  # ActiveRecord::Base.connection.reset_pk_sequence!('cs_sop_questions')
end

SeedMigration::Migrator.bootstrap(20160508015530)
