# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!([
  {username: "corine_flatley", email: "cleve@murphy.biz", password_digest: "$2a$10$n3oFQEkZrOyo1tH4oBp5C.XlpyUJkYbffs49/rlFpSPEUL4MCFGCy", session_token: "580U_87jXeI6hi1hrlmJdQ", university_id: 3},
  {username: "paula.farrell", email: "kaycee@reillyfeeney.org", password_digest: "$2a$10$hyW/Ojn7wfkLMhG9bjNc9OwC8N5qNttQUQeI5fIXzmAKxVqqIU8ei", session_token: "tf9EkDBcxtqUbzy4KNzsRA", university_id: 4},
  {username: "roman_block", email: "chanelle.wisoky@lebsack.io", password_digest: "$2a$10$7dIJvJxsMBeDDWSX1Bj2zuJF5t3MgXbsiip2zzdD6yzufiV2HUSlu", session_token: "8C7ysyj0Kh9tiFlxDNYdgA", university_id: 4},
  {username: "gordon.crooks", email: "casandra_volkman@ratkehilpert.info", password_digest: "$2a$10$iFeEi.xIueZm7Xcp5VMwAuqqCm7yHogpQp8MdLkivsfjWsDqLHZyS", session_token: "ptH2PZnamndyCiwgBCSz5A", university_id: 4},
  {username: "pamela", email: "kenyon_sawayn@jacobi.net", password_digest: "$2a$10$JTjvYYk2xFPz0XWPo6xf1uQLa7yPJG82wJlCxJ2P1RBiG..iVdClm", session_token: "qb-0wV5nYOa5NESgfzMZeg", university_id: 1},
  {username: "edwardo", email: "baylee@zboncak.com", password_digest: "$2a$10$HAFczAH4cfC/A5.dMgu2xOKAMLnDOevJ1i91RVwvJrEn7a4PAxNt.", session_token: "AMgxncqpgkjl2k3FfuN7Xg", university_id: 4},
  {username: "jarret_anderson", email: "verda_weinat@hintz.com", password_digest: "$2a$10$bFSXzYKnmPgP1LGaLfR/Yeuvj3t8KNITdnX1NQ6b0Xucl079q5eqK", session_token: "weTiEg1kVSyZt7Ry_dyIbg", university_id: 5},
  {username: "sam.greenholt", email: "lilliana@damore.net", password_digest: "$2a$10$QfPGnMlskN4cW5.6p1GCFukaQ23hzPvtyTYf8b8UWAXdNdCgam2sy", session_token: "LoOnmSVQEbqQnifMvJvx9A", university_id: 2},
  {username: "jonathan.feest", email: "delphia_eichmann@adams.info", password_digest: "$2a$10$rZUJFbU3BMeiTBuF4OGo/.BQCyNYgcfZpXTgsYbYIeaNEpuLfXiee", session_token: "ysTtlMSAvuq53ohOCen7NA", university_id: 3},
  {username: "nathan", email: "viva_stiedemann@grant.biz", password_digest: "$2a$10$9x7URVYgomWUNhHE7dTrxep3Je7RhY3xa1guSWULOPG54tTcp6sry", session_token: "B7WaGpFDnKAut8PSARSZmw", university_id: 5},
  {username: "giuseppe_frami", email: "margaretta_friesen@cole.net", password_digest: "$2a$10$vtL17f9jShDN53riW4t10uEsOf1aKnWPaZRAZ2BxzgJH3iipxZhfq", session_token: "MnUOrRZ3l2kAGwmWmMGuxQ", university_id: 3},
  {username: "heidi", email: "oliver@ankundingokeefe.info", password_digest: "$2a$10$LwuPIGrzVYeoolPoU82WLuzAIhWJgvyKTjhI/ReW5azDEoEpuOhS6", session_token: "uNuXko35L-fcYRaBTwFRoA", university_id: 3},
  {username: "felicita", email: "glennie@luettgenhuels.net", password_digest: "$2a$10$DoXuMhd28f1fmwQyBh5.XuHIxPw61U9DHDfTnjpBseHepi4Hx/wMy", session_token: "gt6d8eUpJ0bp9wOBYpPfxQ", university_id: 2},
  {username: "claudine", email: "camille_heaney@stanton.io", password_digest: "$2a$10$OJ0XGa3e4yR7qy71zQcdC.YUd6UVaGpautnSAnLuC1B0zEuO1CopC", session_token: "32hgwFz1rKeesmcfB6d1aQ", university_id: 2},
  {username: "maribel", email: "caterina_willms@deckow.net", password_digest: "$2a$10$XxKAgHFDGABtSAb4VlTfles3OvJfbh7BAOInV4Zfb68EJTogx7jpm", session_token: "oUIMDa9_zgduQwj5UDtnyg", university_id: 2},
  {username: "alva.maggio", email: "kiera@grahamsimonis.io", password_digest: "$2a$10$Wzj6ngXY01x6K.x9UM8zKexgVnevu1jGXeJS30b1fF5GXes2Ln9WW", session_token: "_qoYeTD2XHIisa6j2jRS_w", university_id: 4},
  {username: "shawn.tillman", email: "curtis@wisoky.info", password_digest: "$2a$10$rHY9OI2ZkJT2MyzsqPTQSuEAOILm.8cg85lEz/PGRPZVwK6tu3pPu", session_token: "9M86hoSLxPeV6tJat_eK7w", university_id: 4},
  {username: "shany", email: "pierre.hilpert@parker.com", password_digest: "$2a$10$SH9rcKibAYRE/K/thKekw.ia.0G071gNgNn5nPh/x2TZhVZXBx6LS", session_token: "hbGdT0FFA6aii-U8QXWr-Q", university_id: 5},
  {username: "lenny_jaskolski", email: "stevie@leannonpadberg.info", password_digest: "$2a$10$Jd6b5yMh/niiQ3qj3FS4sesXlVnoZahpAtyn7qKjPR5iO7c.6NTbC", session_token: "4jjGZtx4K5dGTL9LJlAWew", university_id: 2},
  {username: "tierra", email: "kaya@brakus.name", password_digest: "$2a$10$GU/mfKD.fP.Gyq8vmHCFnOADZ48S/2wwItS/31xgKWRT/3BHvw9Sq", session_token: "JL6q2mkJSLr1wiDxrXEFVA", university_id: 5},
  {username: "karina.marks", email: "carolyne.corkery@rolfson.biz", password_digest: "$2a$10$hIo3asZyV7w.v6ESFrafBu2ipseuLjKTkn6oZ3HrVcZnjcj6NFBDi", session_token: "w0mau1_QlCo19D08UTwZcg", university_id: 4},
  {username: "mafalda", email: "daron.wiza@klein.net", password_digest: "$2a$10$RIDTBFFOgfflOofgQTnx0ejsxn47HO9TOYo1erhNqfUn4ZcGAlPqa", session_token: "hSeBOMzMb7AsaFLFW6eRkQ", university_id: 2},
  {username: "arvel", email: "rahul.feeney@mraz.name", password_digest: "$2a$10$j.4SfA3dj7sYGKDFoYd9.u5jr9f6fBojJ8k3GbEEgo.ibDYiffCDG", session_token: "TQ0h2PdYscbI16d10MAG-w", university_id: 2},
  {username: "madonna_nader", email: "adonis@gleichner.info", password_digest: "$2a$10$gILGb2Q2.Xos1pMRh1WnueeOtAtwVdvYU9d3Eq7dT1/DCsDZOz3/6", session_token: "NVDc_XKpxLuUKNnHnt1MnA", university_id: 5},
  {username: "quinton", email: "lera_daugherty@jacobihilll.net", password_digest: "$2a$10$IOQBo7j.yVf5Asy/G.NPre5TuflktrbCBIz1lr7Dug9XR4pGB0yVi", session_token: "Jq8ERepTT55oSDnSYocoTw", university_id: 5},
  {username: "charity", email: "stanford@hickleledner.biz", password_digest: "$2a$10$110DlM0sHLx9MPginhXbs.OEQQWa3FKngZ8qU4WYy9gnCStCqlSu6", session_token: "j2RSK7vysbbV3SklaPzm5Q", university_id: 1},
  {username: "tyreek_padberg", email: "reid_jones@leuschke.biz", password_digest: "$2a$10$81pLROIpU0RUy.Sk0rn2WeQ74Hs7yAjtRQy.atpqgCPm77dKzUWwC", session_token: "af1igLQfncaDYGT4mKWJtA", university_id: 2},
  {username: "cornelius", email: "nick_hammes@volkman.io", password_digest: "$2a$10$uaYAIpLkr93.r8Ki9E.yteVm6Vj7CDMEi/mnDR60zpAQUW1Hhk.Du", session_token: "VSfZ8XiW8eZNWh2oGq5RZw", university_id: 4},
  {username: "jermain.ernser", email: "amelia.tremblay@beahan.net", password_digest: "$2a$10$t1rsMRKqH9JvVia72uOarOMDlmJzEeyWMFV6ovcpAnwKtitn1.5T2", session_token: "N_tnQiEuPAYp9c6Xt3WchA", university_id: 4},
  {username: "lenna", email: "fae_lang@breitenberg.org", password_digest: "$2a$10$OeOMH01ZqCOQtQ1KrZErC.kRh0/JTvJrZ1iW6cUk4U5HJh9L3ofmu", session_token: "wLu6qrPYRzjVAiMXDGSP8A", university_id: 1},
  {username: "nova", email: "kenny.herzog@kirlintreutel.co", password_digest: "$2a$10$UMG6jBxxz02jDNGTkVFjaungzIfWGF4eGjwCTc5Rd0nLRedScrkB6", session_token: "yB7OMhQjY_lUx-yrW8mrdw", university_id: 5},
  {username: "helen_willms", email: "alford.ledner@wuckert.org", password_digest: "$2a$10$b5wk5mfZhSpxUp/klerbLOW.VnmmBKS8jL8STEb9N0/tMEWorx1nm", session_token: "b5s1oyskULsGT8S3mGEpvg", university_id: 4},
  {username: "floy", email: "sadye.dubuque@wilkinsonebert.com", password_digest: "$2a$10$LV2jEvcKHH34vVQxuDMLQOVaL/4CAov3hyTvlrHPTeVzPFu/zTpOi", session_token: "lGZ69nAbTQQIuzWK664T-A", university_id: 5},
  {username: "malvina", email: "monica@streich.biz", password_digest: "$2a$10$n24cTzEqwFLM.BX6jUBqaOE2esJoIU5nGFnviW98s3040v75g0bjy", session_token: "T1m0S-_DsbcmJOm_vyHI3Q", university_id: 5},
  {username: "coleman_harris", email: "tre@volkman.biz", password_digest: "$2a$10$0kBn.3EPyesf30C2Lphfve7671cwmqidvnYIvhYCuNSo2sawTHgW2", session_token: "gv4FOGhLcdUpl3AX9PvveA", university_id: 4},
  {username: "justina", email: "faustino_turcotte@leuschkejacobi.info", password_digest: "$2a$10$xpym3.nphbqnuBVxj13HU./cOzvmGE.QzO6G1XYPlqq3ykSzjQEhG", session_token: "MDMeRjlOnyxs9FP123Ei9Q", university_id: 4},
  {username: "kira", email: "luna_goodwin@schmidt.biz", password_digest: "$2a$10$CoB/aPIxUZRxyooxeuM2GOKZESAqYmVMGAtUgNu31BH.9GpL6iWzu", session_token: "qIQ4_n5NS8sYyADJb_N0lA", university_id: 3},
  {username: "darron_schuppe", email: "geovanni@klocko.co", password_digest: "$2a$10$TuifsA2Z1MvunNCBaFxa5.ZDGhKXz5Y8gNmTf02hEvnZrmG8BDOG2", session_token: "96zSNdcRo-d-26iNS7gC0Q", university_id: 4},
  {username: "keyshawn.hansen", email: "laurence@emard.info", password_digest: "$2a$10$looE8dBlktHoDoj5DHGSb.78v0Ti06LkdpZTlp2w45QVF7bD3BO9W", session_token: "kADSjkf0RJ4OVaPX8h1bBQ", university_id: 3},
  {username: "rowland", email: "hermina_zemlak@batz.biz", password_digest: "$2a$10$a4ZBrpL8JMuav.9N1.b78O70nsiaWoOLIJgcbR2uTKj3eBVT2O3Ba", session_token: "ztXQ-lco8nRbuqE_rZR_lQ", university_id: 2},
  {username: "lisa", email: "noah@von.info", password_digest: "$2a$10$6bj9GNJi40zuXmnPF/Z4pevlsWtfrEJe0bJWcd8gsas24H4TRpGZ6", session_token: "U658eKzymt1tdUfIMhWSfQ", university_id: 2},
  {username: "damion_keeling", email: "lonzo@brownkaulke.io", password_digest: "$2a$10$qGrISZvWRhIuyUk2dBFyaeR5xBVcKMKwODBGnzYb8Bq2ks/Na/jc2", session_token: "tt67TLphR6EzQT9RyjrDrg", university_id: 3},
  {username: "ania", email: "isac@christiansen.net", password_digest: "$2a$10$DdfS02S7DsQJyBA/t1Was..cAPOMAtMvuRMeJM0hI0ZWNveb58aPC", session_token: "ixJYIiOamppdb2I18wKuXA", university_id: 2},
  {username: "otilia", email: "alda.ziemann@abbott.biz", password_digest: "$2a$10$kYkDj4tr3hHFjvhlnVAfKe45GSOIr1E.syK0MBUQNeelUSHDOMgfu", session_token: "64OXGi08qqWLxYOFyKva2w", university_id: 4},
  {username: "josie", email: "trudie_gleason@gorczanydach.com", password_digest: "$2a$10$frUEfu0BCuUiFvq4gM08S.nVTbDtHtU3XSdhCyTWxDWoyqrMrY2sK", session_token: "Rot--Pzca-OBTetOBpqWIQ", university_id: 1},
  {username: "jakob", email: "adriel_hintz@wintheiser.org", password_digest: "$2a$10$vZzpicL9F4kRAUwRdWnmFOpVOuJ08mxsq6QxKeW7Eb/Swn1uCSwIm", session_token: "bdqb9i4KkSWwT5ql5GL_Ow", university_id: 2},
  {username: "cleta", email: "daisha@kreigerfritsch.name", password_digest: "$2a$10$s4GEpzmewSRnraaEpJImieSFzJLy./bdXJggluUb43BCoKKZw1fX2", session_token: "vlfm2nRCfi4vttYMrsJMgg", university_id: 2},
  {username: "jayda", email: "erick@blick.co", password_digest: "$2a$10$m4tpFN9FPT7ppsU.PUyOZOBZbrHu8Iy8NUF1vsVU2sRDBRKAUL.Zy", session_token: "BpMdUlnpoX_6APmHWYKjKg", university_id: 4},
  {username: "leopoldo", email: "shayna.fay@franecki.co", password_digest: "$2a$10$DzIo/ZyPc4d2dm35Mfo7fuUTPQ/poUmkT6phEJueFrcVEtqjmHp6u", session_token: "EccDQ6IHfUd8GbDm1ffemw", university_id: 4},
  {username: "immanuel", email: "erna.purdy@renneroconner.info", password_digest: "$2a$10$dsg.6sFYAwv6YpEBEOxRPe0x1Xg4xHQHcU0YVJrV106rxvh6owExe", session_token: "Ljlu8k-_fS7R02CmeaJhQQ", university_id: 5},
  {username: "rosario_kub", email: "felicita@stoltenbergtoy.co", password_digest: "$2a$10$2vn60hvUlhhgynpH4WCeF.oFVE5QvipgMpIaWN1NW9A.putzDw5zC", session_token: "HcsX0-4CJvdiAYfWCBfpuQ", university_id: 2},
  {username: "elnora.hansen", email: "zula_medhurst@krajcikkrajcik.com", password_digest: "$2a$10$anO2K0ev6Gg9FJIDh7UvceEZXvFajyxajnASKPcoqrQPMHSVIm/I2", session_token: "FSeZbQPDIBl6sfNIJir4TQ", university_id: 3},
  {username: "dagmar.turner", email: "jordyn@rempel.com", password_digest: "$2a$10$/9luLIioZuK7.R2mePni8uTRQwNkUAI.b2jFAL3W4x0FPk0L3I8Zu", session_token: "QaAGbpAvu7bLfnVN2EaJWA", university_id: 4},
  {username: "abbie", email: "mireille@altenwerth.name", password_digest: "$2a$10$S5.vCDjCh5NMSWH7N9F3wOYpHxvIr4MaiuXvT21nVbdmZBGHS/aQ.", session_token: "flCqk-HL73ZxlTxdSSIG9w", university_id: 3},
  {username: "franco.johnson", email: "maximilian@macejkovic.biz", password_digest: "$2a$10$kQMQC4IUPaun16M4TF9wu.ZtNSJ1NMQ3uZd7zW7wncCb2tfCP7JL.", session_token: "ly7mPxufqPhYybGK_tGFIA", university_id: 1},
  {username: "lia", email: "kobe@murazik.biz", password_digest: "$2a$10$4/C8u52Dzje3ARCNmTHAg.RC59KnY.22UVY./9qZvXJdhxeZIi3i.", session_token: "HlHWJ4YVfX5itKq8AHh75w", university_id: 5},
  {username: "lina.marvin", email: "enola_lindgren@smitham.name", password_digest: "$2a$10$iafqsT.Gx.HBOpMJ6t/z6OB5mKwHOcsit.jogVFulNk2g6uH8pSby", session_token: "eLBSzh1ztV3YtdlpXd5_TA", university_id: 4},
  {username: "clementina", email: "alfreda.terry@kundeadams.co", password_digest: "$2a$10$lyIvv4tigPXm7CADlEOtMOAKLqpF2HfAaIDezAxNP33d3VgpkcmEa", session_token: "3HBDq7piQ82cR_4Nif-PzQ", university_id: 5},
  {username: "guadalupe.schiller", email: "ethelyn@auer.name", password_digest: "$2a$10$sHKd5P6F/L4RxFzbC5/ZT.A5iOQUai6ElC92umNECbPTCrjsazF5S", session_token: "jcDIM1mvfuxY_Z2nAm1j2g", university_id: 4},
  {username: "adelle", email: "guie@bradtke.com", password_digest: "$2a$10$1a.1VsQK7GTtGrHQB1Q4r.xdfcv2PJXZvShTCdVUfufN0wAxWRXwC", session_token: "1mXlJcljsyG2BMdSG3Q-Wg", university_id: 5},
  {username: "adrienne", email: "madonna@veumweber.biz", password_digest: "$2a$10$jIBjLy3ddtJwL1n9ZEkyCOYeabXHwQn8B29EMUfiRdNe5JQva7ihy", session_token: "RX79mJV5v4CmlwCs3TpamQ", university_id: 2},
  {username: "kole_trantow", email: "helena.bartell@larsonkozey.org", password_digest: "$2a$10$f6Mu8W/DcA4scdEwUvbcqeqKIm3na8rOu.a8669GirJwU8TyU1JLe", session_token: "p09ML8t05fp0rdarmp_BZA", university_id: 2},
  {username: "thora_bogisich", email: "therese@gibson.com", password_digest: "$2a$10$d./iQSAkrK8KH9oUFrbvYuoh0jFCPGT46E4ZxBFS04638xScNw0gK", session_token: "Wldyi9D4-UupnzKN7nGsMQ", university_id: 4},
  {username: "orlo_ward", email: "amelia.tromp@jacobs.name", password_digest: "$2a$10$eSRLWYqQzaHvp6tvnQYHAuQAhUheIL.4xI/jHtqd.6XRa1S/fgH8O", session_token: "v73b__sdUbBI9HwlYR6bGA", university_id: 1},
])

University.create!([
  {name: "UCLA"},
  {name: "Berkeley"},
  {name: "UCSB"},
  {name: "NYU"},
  {name: "Duke"}
])

Category.create!([
  {category_name: "Books" },
  {category_name: "Furniture" },
  {category_name: "Housing" },
  {category_name: "Clothes" },
  {category_name: "Electronics" },
  {category_name: "Free" },
  {category_name: "Services" },
  {category_name: "Jobs/Internships" },
  {category_name: "Music" },
  {category_name: "Other" }
  ])

Listing.create!([
  {title: "Of Mice and Men", description: "It's about Lenny and George. They do stuff.", price: 3, university_id: 1, category_id: 1, user_id: 1, archived: true},
  {title: "Lamp", description: "Fiat Lux", price: 10, university_id: 1, category_id: 2, user_id: 2, archived: true},
  {title: "Pink Palace", description: "Where the princess live", price: 4900, university_id: 1, category_id: 3, user_id: 3, archived: true},
  {title: "nice dress", description: "staring at the sunset ;)", price: 20, university_id: 1, category_id: 4, user_id: 4, archived: true},
  {title: "iPod", description: "plays music", price: 1000, university_id: 1, category_id: 5, user_id: 5, archived: true},
  {title: "air", description: "head", price: 2, university_id: 1, category_id: 6, user_id: 6, archived: true},
  {title: "services", description: "professional cuddler", price: 60, university_id: 1, category_id: 7, user_id: 7, archived: true},
  {title: "in house cook", description: "professional", price: 100, university_id: 1, category_id: 8, user_id: 8, archived: true},
  {title: "taylor swift", description: "YES", price: 10, university_id: 1, category_id: 9, user_id: 9, archived: true},
  {title: "self portrait", description: "of laurie", price: 1000000, university_id: 1, category_id: 10, user_id: 1, archived: true}
  ])
