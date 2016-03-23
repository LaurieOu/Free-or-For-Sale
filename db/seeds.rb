# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!([
  {username: "TaylorSwift", email: "cleve@murphy.biz", password_digest: "$2a$10$n3oFQEkZrOyo1tH4oBp5C.XlpyUJkYbffs49/rlFpSPEUL4MCFGCy", session_token: "580U_87jXeI6hi1hrlmJdQ", university_id: 3, image: "http://www.dailytimesgazette.com/wp-content/uploads/2015/10/do-no-reuse-taylor-swift-the-beat-bb36-sarah-barlow-billboard-6501.jpg"},
  {username: "WaltDisney", email: "kaycee@reillyfeeney.org", password_digest: "$2a$10$hyW/Ojn7wfkLMhG9bjNc9OwC8N5qNttQUQeI5fIXzmAKxVqqIU8ei", session_token: "tf9EkDBcxtqUbzy4KNzsRA", university_id: 4, image: "http://static.tumblr.com/4acd176d51f8ae414a59339b080e7a8f/klwodll/LY7ntxy81/tumblr_static_8qb04cf5tawwcs8scko44gs84.jpg"},
  {username: "ElonMusk", email: "chanelle.wisoky@lebsack.io", password_digest: "$2a$10$7dIJvJxsMBeDDWSX1Bj2zuJF5t3MgXbsiip2zzdD6yzufiV2HUSlu", session_token: "8C7ysyj0Kh9tiFlxDNYdgA", university_id: 4, image: "http://thumbs.media.smithsonianmag.com//filer/Ingenuity-Awards-Elon-Musk-631.jpg__800x600_q85_crop.jpg"},
  {username: "MarissaMayer", email: "casandra_volkman@ratkehilpert.info", password_digest: "$2a$10$iFeEi.xIueZm7Xcp5VMwAuqqCm7yHogpQp8MdLkivsfjWsDqLHZyS", session_token: "ptH2PZnamndyCiwgBCSz5A", university_id: 4, image: "http://epmgaa.media.lionheartdms.com/img/photos/2015/12/10/222977-marissa-mayer.jpg"},
  {username: "TimCook", email: "kenyon_sawayn@jacobi.net", password_digest: "$2a$10$JTjvYYk2xFPz0XWPo6xf1uQLa7yPJG82wJlCxJ2P1RBiG..iVdClm", session_token: "qb-0wV5nYOa5NESgfzMZeg", university_id: 1, image: "http://godfatherpolitics.com/wp-content/uploads/2015/03/Tim-Cook-CEO.jpg"},
  {username: "SteveJobs", email: "baylee@zboncak.com", password_digest: "$2a$10$HAFczAH4cfC/A5.dMgu2xOKAMLnDOevJ1i91RVwvJrEn7a4PAxNt.", session_token: "AMgxncqpgkjl2k3FfuN7Xg", university_id: 4, image: "http://images.huffingtonpost.com/2015-07-17-1437155465-1424656-SteveJobs.jpg"},
  {username: "Stella", email: "verda_weinat@hintz.com", password_digest: "$2a$10$bFSXzYKnmPgP1LGaLfR/Yeuvj3t8KNITdnX1NQ6b0Xucl079q5eqK", session_token: "weTiEg1kVSyZt7Ry_dyIbg", university_id: 5, image: "http://www.madcatphotography.com/images/portfolio/faces_ms_chinatown_2014/Laurie-Ou-FINAL.jpg"},
  {username: "LeeMinHo", email: "lilliana@damore.net", password_digest: "$2a$10$QfPGnMlskN4cW5.6p1GCFukaQ23hzPvtyTYf8b8UWAXdNdCgam2sy", session_token: "LoOnmSVQEbqQnifMvJvx9A", university_id: 2, image: "https://www.dramafever.com/st/news/images/LMH_Personal_Taste.jpg"},
  {username: "SuzyBae", email: "delphia_eichmann@adams.info", password_digest: "$2a$10$rZUJFbU3BMeiTBuF4OGo/.BQCyNYgcfZpXTgsYbYIeaNEpuLfXiee", session_token: "ysTtlMSAvuq53ohOCen7NA", university_id: 3, image: "https://s-media-cache-ak0.pinimg.com/736x/c4/ef/50/c4ef5050745e5f6348f8a6e744156566.jpg"},
  {username: "Targaryen", email: "viva_stiedemann@grant.biz", password_digest: "$2a$10$9x7URVYgomWUNhHE7dTrxep3Je7RhY3xa1guSWULOPG54tTcp6sry", session_token: "B7WaGpFDnKAut8PSARSZmw", university_id: 5, image: "http://i.lv3.hbo.com/assets/images/series/game-of-thrones/character/s5/daenarys-1024.jpg"},
  {username: "BarrackObama", email: "margaretta_friesen@cole.net", password_digest: "$2a$10$vtL17f9jShDN53riW4t10uEsOf1aKnWPaZRAZ2BxzgJH3iipxZhfq", session_token: "MnUOrRZ3l2kAGwmWmMGuxQ", university_id: 3, image: "http://cp91279.biography.com/1000509261001/1000509261001_2008586720001_BIO-Barack-Obama-SF-FIX-Retry.jpg"},
  {username: "JuliaChild", email: "oliver@ankundingokeefe.info", password_digest: "$2a$10$LwuPIGrzVYeoolPoU82WLuzAIhWJgvyKTjhI/ReW5azDEoEpuOhS6", session_token: "uNuXko35L-fcYRaBTwFRoA", university_id: 3, image: "http://thumbs.media.smithsonianmag.com//filer/Julia-Childs-Kitchen-631.jpg__800x600_q85_crop.jpg"},
  {username: "AnnaKendrick", email: "glennie@luettgenhuels.net", password_digest: "$2a$10$DoXuMhd28f1fmwQyBh5.XuHIxPw61U9DHDfTnjpBseHepi4Hx/wMy", session_token: "gt6d8eUpJ0bp9wOBYpPfxQ", university_id: 2, image: "http://cdn2-www.craveonline.com/assets/uploads/2014/12/Into-the-Woods-Anna-Kendrick.jpg"},
  {username: "Halsey", email: "camille_heaney@stanton.io", password_digest: "$2a$10$OJ0XGa3e4yR7qy71zQcdC.YUd6UVaGpautnSAnLuC1B0zEuO1CopC", session_token: "32hgwFz1rKeesmcfB6d1aQ", university_id: 2, image: "http://ell.h-cdn.co/assets/15/20/980x490/landscape-1431357851-elle-womeninmusic-halsey.jpg"},
  {username: "cutieChris", email: "caterina_willms@deckow.net", password_digest: "$2a$10$XxKAgHFDGABtSAb4VlTfles3OvJfbh7BAOInV4Zfb68EJTogx7jpm", session_token: "oUIMDa9_zgduQwj5UDtnyg", university_id: 2, image: "https://pbs.twimg.com/profile_images/680301383979958272/3rx5gnK0.jpg"},
  {username: "SherlockHolmes", email: "kiera@grahamsimonis.io", password_digest: "$2a$10$Wzj6ngXY01x6K.x9UM8zKexgVnevu1jGXeJS30b1fF5GXes2Ln9WW", session_token: "_qoYeTD2XHIisa6j2jRS_w", university_id: 4, image: "http://matthewkadish.com/wp-content/uploads/2014/05/Benedict.jpg"},
  {username: "Heisenberg", email: "curtis@wisoky.info", password_digest: "$2a$10$rHY9OI2ZkJT2MyzsqPTQSuEAOILm.8cg85lEz/PGRPZVwK6tu3pPu", session_token: "9M86hoSLxPeV6tJat_eK7w", university_id: 4, image: "http://www.konbini.com/us/wp-content/blogs.dir/9/files/2015/11/heisenberg.jpeg"},
  {username: "JessePinkman", email: "pierre.hilpert@parker.com", password_digest: "$2a$10$SH9rcKibAYRE/K/thKekw.ia.0G071gNgNn5nPh/x2TZhVZXBx6LS", session_token: "hbGdT0FFA6aii-U8QXWr-Q", university_id: 5, image: "http://vignette4.wikia.nocookie.net/villains/images/5/55/Jesse_Pinkman.jpg/revision/latest?cb=20130826002521"},
  {username: "Jessica", email: "stevie@leannonpadberg.info", password_digest: "$2a$10$Jd6b5yMh/niiQ3qj3FS4sesXlVnoZahpAtyn7qKjPR5iO7c.6NTbC", session_token: "4jjGZtx4K5dGTL9LJlAWew", university_id: 2, image: "http://24.media.tumblr.com/tumblr_m2wsbqfcOt1qfk6eto1_500.jpg"},
  {username: "TonyStark", email: "kaya@brakus.name", password_digest: "$2a$10$GU/mfKD.fP.Gyq8vmHCFnOADZ48S/2wwItS/31xgKWRT/3BHvw9Sq", session_token: "JL6q2mkJSLr1wiDxrXEFVA", university_id: 5, image: "http://orig01.deviantart.net/d9f8/f/2015/099/c/f/bowtie__tony_x_reader__one_shot_by_savrom-d8p0ecz.jpg"},
  {username: "Malcolm", email: "carolyne.corkery@rolfson.biz", password_digest: "$2a$10$hIo3asZyV7w.v6ESFrafBu2ipseuLjKTkn6oZ3HrVcZnjcj6NFBDi", session_token: "w0mau1_QlCo19D08UTwZcg", university_id: 4, image: "https://d8a8a12b527478184df8-1fd282026c3ff4ae711d11ecc95a1d47.ssl.cf1.rackcdn.com/wp-content/uploads/2013/11/lessons-book-gladwell-may-open-forum-embed.jpg"},
  {username: "MarkCuban", email: "daron.wiza@klein.net", password_digest: "$2a$10$RIDTBFFOgfflOofgQTnx0ejsxn47HO9TOYo1erhNqfUn4ZcGAlPqa", session_token: "hSeBOMzMb7AsaFLFW6eRkQ", university_id: 2, image: "http://i.huffpost.com/gen/1717888/images/o-MARK-CUBAN-SHARK-TANK-facebook.jpg"},
  {username: "Mr.Wonderful", email: "rahul.feeney@mraz.name", password_digest: "$2a$10$j.4SfA3dj7sYGKDFoYd9.u5jr9f6fBojJ8k3GbEEgo.ibDYiffCDG", session_token: "TQ0h2PdYscbI16d10MAG-w", university_id: 2, image: "http://www.ctv.ca/getattachment/fda58e7f-a141-4da6-80ff-3a8e28148d3d/SharkTank/Cast/Kevin-O-Leary.aspx/634522092767530000"},
  {username: "LaurieGreiner", email: "adonis@gleichner.info", password_digest: "$2a$10$gILGb2Q2.Xos1pMRh1WnueeOtAtwVdvYU9d3Eq7dT1/DCsDZOz3/6", session_token: "NVDc_XKpxLuUKNnHnt1MnA", university_id: 5, image: "https://assets.entrepreneur.com/content/16x9/822/lori-greiner-invention-store-shelves.jpg"},
  {username: "Jen", email: "lera_daugherty@jacobihilll.net", password_digest: "$2a$10$IOQBo7j.yVf5Asy/G.NPre5TuflktrbCBIz1lr7Dug9XR4pGB0yVi", session_token: "Jq8ERepTT55oSDnSYocoTw", university_id: 5, image: "http://www.thelegendarytrend.com/wp-content/uploads/2016/03/jennifer_lawrence_look_smile_81669_3840x2160.jpg"},
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
  {category_name: "Jobs" },
  {category_name: "Music" },
  {category_name: "Other" }
  ])

Listing.create!([
  {title: "Plays, books, and textbooks", description: "Fun reads for a good price", price: 5, university_id: 1, category_id: 1, user_id: 13, archived: true},
  {title: "Lamp and decorative lanterns", description: "Fiat Lux, from ikea, relatively new", price: 10, university_id: 1, category_id: 2, user_id: 2, archived: true},
  {title: "Pink Palace", description: "Where the princesses live, has two balconies, 3 parking spaces, and 7 miles from Santa Monica beach", price: 4900, university_id: 1, category_id: 3, user_id: 7, archived: true},
  {title: "nice dresses", description: "ate too much, doesn't fit anymore, only worn once", price: 20, university_id: 1, category_id: 4, user_id: 4, archived: true},
  {title: "iPod", description: "plays music, comes in a plethora of colors", price: 1000, university_id: 1, category_id: 5, user_id: 5, archived: true},
  {title: "cats", description: "my cat just had 23 babies and I don't know what to do with all these kittens in need of tlc", price: 0, university_id: 1, category_id: 6, user_id: 6, archived: true},
  {title: "services", description: "professional cuddler for those cold winter nights", price: 60, university_id: 1, category_id: 7, user_id: 8, archived: true},
  {title: "in house cook", description: "includes the price of groceries. The best of the best chefs from 3 Michelin star restaurants", price: 100, university_id: 1, category_id: 8, user_id: 12, archived: true},
  {title: "taylor swift", description: "1989 album, Grammy award winning album", price: 10, university_id: 1, category_id: 9, user_id: 1, archived: true},
  {title: "self portrait of laurie", description: "personal masterpiece", price: 1000000, university_id: 1, category_id: 10, user_id: 7, archived: true},

  {title: "Disneyland Tickets", description: "Happiest place on earth!", price: 150, university_id: 1, category_id: 10, user_id: 3, archived: true},
  {title: "Superhero costumes", description: "Buy your Halloween costume early! Or wear it casually because you're an everyday superhero", price: 30, university_id: 1, category_id: 4, user_id: 9, archived: true},
  {title: "Autobiographical books", description: "Steve Jobs, Elon Musk, Walt Disney", price: 4900, university_id: 1, category_id: 1, user_id: 10, archived: true},
  {title: "Kanye West tickets", description: "you'll love this concert as much as Kanye loves Kanye", price: 1200, university_id: 1, category_id: 9, user_id: 11, archived: true},
  {title: "Free Denny's Pancake", description: "National free pancake day!", price: 0, university_id: 1, category_id: 6, user_id: 14, archived: true},
  {title: "Google full stack engineer", description: "send a reply to laurieou@gmail.com", price: 0, university_id: 1, category_id: 8, user_id: 15, archived: true},
  {title: "Math 131A tutor needed", description: "Math analysis with professor Brown", price: 60, university_id: 1, category_id: 7, user_id: 16, archived: true},
  {title: "Tables for sale", description: "Moving out, please pick up", price: 100, university_id: 1, category_id: 2, user_id: 17, archived: true},
  {title: "Dishes", description: "For eating or throwing at your ex boyfriends", price: 10, university_id: 1, category_id: 3, user_id: 18, archived: true},
  {title: "Videogames", description: "I have a lot of video games that I'm trying to get rid of", price: 15, university_id: 1, category_id: 5, user_id: 19, archived: true},

  {title: "Robots", description: "They clean your house, wash your car, heal your health, and do your homework!", price: 60000, university_id: 1, category_id: 5, user_id: 20, archived: true},
  {title: "Grand piano", description: "makes beautiful sound", price: 500, university_id: 1, category_id: 9, user_id: 21, archived: true},
  {title: "Looking for job", description: "Will do work for money", price: 0, university_id: 1, category_id: 8, user_id: 22, archived: true},
  {title: "Stuffed animals", description: "If you just need somebody to hug", price: 15, university_id: 1, category_id: 10, user_id: 23, archived: true},
  {title: "Wedding gowns", description: "By Vera Wang", price: 15000, university_id: 1, category_id: 4, user_id: 24, archived: true},
  {title: "Laughter", description: "Don't worry, be happy.", price: 0, university_id: 1, category_id: 6, user_id: 25, archived: true}

  ])

Comment.create!([
  {body: "I love this play" , user_id: 11, listing_id: 1},
  {body: "I want to buy the lanterns. Can we meet on campus?" , user_id: 10, listing_id: 2},
  {body: "I paid too much for rent :(" , user_id: 7, listing_id: 3},
  {body: "I'm interested in the first dress." , user_id: 8, listing_id: 4},
  {body: "dawwww they're so cute. I want 5 please." , user_id: 9, listing_id: 6},
  {body: "Taylor, you're so perfect." , user_id: 7, listing_id: 9},
  {body: "woah, they're way too expensive man" , user_id: 1, listing_id: 5},
  {body: "winter is coming..." , user_id: 2, listing_id: 7},
  {body: "wow, that Child can really cook!" , user_id: 13, listing_id: 8},
  {body: "yeah you go Taylor, show Kanye who's boss" , user_id: 4, listing_id: 9},
  {body: "amazing, belongs in a museum." , user_id: 5, listing_id: 10},
  {body: "you're a work of art <3" , user_id: 10, listing_id: 10}
])

Like.create!([
  {user_id: 1, listing_id: 1},
  {user_id: 2, listing_id: 1},
  {user_id: 2, listing_id: 2},
  {user_id: 3, listing_id: 3},
  {user_id: 4, listing_id: 4},
  {user_id: 5, listing_id: 3},
  {user_id: 6, listing_id: 5},
  {user_id: 7, listing_id: 6},
  {user_id: 8, listing_id: 7},
  {user_id: 9, listing_id: 8},
  {user_id: 10, listing_id: 9},
  {user_id: 11, listing_id: 10},

  ])

Image.create!([
  {listing_id: 1, url: "https://upload.wikimedia.org/wikipedia/en/b/b0/Gatsby_1925_jacket.gif"},
  {listing_id: 1, url: "http://askjohnkremer.com/wp-content/uploads/2011/04/college-textbooks.png"},
  {listing_id: 1, url: "http://harrypotteraudiobooks.org/wp-content/uploads/2015/10/harry-potter-audiobooks.jpg"},
  {listing_id: 1, url: "http://cdn.shopify.com/s/files/1/0764/0187/products/920_How_To_Be_Interesting_grande.JPG?v=1431029718"},
  {listing_id: 2, url: "http://abeachcottage.com/wp-content/uploads/2013/08/20130822-01-ikea-foto-light-abeachcottage.com-hanging-pendant-lighting-lights-.jpg"},
  {listing_id: 2, url: "https://s-media-cache-ak0.pinimg.com/736x/64/8a/57/648a572a33d9698e9219f5f967bf4741.jpg"},
  {listing_id: 2, url: "http://data.whicdn.com/images/4917080/original.jpg"},
  {listing_id: 3, url: "https://scontent-ord1-1.xx.fbcdn.net/hphotos-xfa1/t31.0-0/p180x540/11538995_1100528549960497_7943241846538922013_o.jpg"},
  {listing_id: 3, url: "https://scontent-ord1-1.xx.fbcdn.net/hphotos-xfa1/t31.0-0/p180x540/11034936_1100527456627273_1503040513939342577_o.jpg"},
  {listing_id: 3, url: "https://scontent-ord1-1.xx.fbcdn.net/hphotos-xaf1/v/t1.0-0/s600x600/11695784_1100526323294053_8744840761754531698_n.jpg?oh=2ea707890e8ffa7e3424c8cb47e29d0a&oe=574D3458"},
  {listing_id: 4, url: "http://data1.whicdn.com/images/14944908/tumblr_lrpy1mMsRL1r31i71o1_500_large.jpg"},
  {listing_id: 4, url: "http://40.media.tumblr.com/tumblr_m7xfdvPW1U1r0gq4mo1_500.png"},
  {listing_id: 4, url: "http://40.media.tumblr.com/9dc5b16d239f996b0ac859a35313502e/tumblr_mhmg9wxAHZ1r44qrfo1_1280.jpg"},
  {listing_id: 5, url: "http://photos2.appleinsidercdn.com/iPodNano7.101212.001.jpg"},
  {listing_id: 6, url: "http://www.southernhillsanimalhospital.com/sites/site-1450/images/kittens.jpg"},
  {listing_id: 6, url: "http://doublemesh.com/wp-content/uploads/2013/11/Curious-Kittens-Wallpaper-1.jpg"},
  {listing_id: 6, url: "http://36.media.tumblr.com/2abf01e36ebfeebd2fb92245e3562df6/tumblr_mtzpn3giYX1simh4uo1_1280.jpg"},
  {listing_id: 7, url: "http://ciogiart.com/blog/wp-content/uploads/2014/08/natural-sleeping-twin-babies-cuddling-basket-1024x683.jpg"},
  {listing_id: 8, url: "http://graphics8.nytimes.com/images/2004/08/13/obituaries/child.cook.583.jpg"},
  {listing_id: 8, url: "http://planet47.si/images/articles/PrehranapriDownovemsindromu_si_5.jpg"},
  {listing_id: 8, url: "http://img.clasf.co/2015/07/02/Cali-Vendo-Fabrica-de-Helados-y-Cremas-y-Su-Punto-de-Venta-20150702211957.jpg"},
  {listing_id: 9, url: "https://i.ytimg.com/vi/L6T6_ZFreMU/maxresdefault.jpg"},
  {listing_id: 9, url: "http://www.peoplegreece.com/wp-content/uploads/2016/02/16/grammy-2016-taylor-swift.jpg"},
  {listing_id: 10, url: "https://scontent.cdninstagram.com/hphotos-xap1/t51.2885-15/s640x640/sh0.08/e35/12331809_1835804949979499_801447339_n.jpg"},

  {listing_id: 11, url: "https://www.subachcocoon.com/wp-content/uploads/2016/03/3756beb5-095f-48ef-8e45-01461ff6bedd.jpg"},
  {listing_id: 11, url: "http://www.hotel-peppertree.com/d/hotel-peppertree/media/dland_tix.png"},
  {listing_id: 12, url: "https://cdn3.vox-cdn.com/thumbor/0wGSHzMZ_oWvb5_GVwxhXslupnY=/cdn0.vox-cdn.com/uploads/chorus_asset/file/2359250/iron_man_and_war_machine.0.jpeg"},
  {listing_id: 12, url: "http://www.theamazingspidermangame.com/etc/designs/atvi/amazing-spiderman-game/amazing-spiderman-game-2/images/features/img5.jpg"},
  {listing_id: 12, url: "http://images.techtimes.com/data/images/full/145982/thor-the-dark-world.jpg?w=600"},
  {listing_id: 12, url: "http://cdn1-www.comingsoon.net/assets/uploads/gallery/ant-man-1400875860/antman0002.jpg"},
  {listing_id: 13, url: "http://i2.cdn.turner.com/cnnnext/dam/assets/111006034753-steve-jobs-book-cover-horizontal-large-gallery.jpg"},
  {listing_id: 13, url: "http://ecx.images-amazon.com/images/I/5174GQsw2oL._SX329_BO1,204,203,200_.jpg"},
  {listing_id: 13, url: "http://ecx.images-amazon.com/images/I/71vThtjjvhL.jpg"},
  {listing_id: 14, url: "http://i.dailymail.co.uk/i/pix/2014/09/15/1410737142293_wps_2_Kanye_West_concert_grab_W.jpg"},
  {listing_id: 15, url: "http://www.adweek.com/files/imagecache/node-detail/news_article/unknown-13_2.jpeg"},
  {listing_id: 15, url: "http://www.commonsensewithmoney.com/wp-content/uploads/2011/02/free-stack-of-pancakes-at-dennys-coupon.png"},
  {listing_id: 16, url: "http://img.talkandroid.com/uploads/2013/05/Googleplex.jpg"},
  {listing_id: 16, url: "http://www.blogcdn.com/www.engadget.com/media/2012/08/google8-27-1346091708.jpg"},
  {listing_id: 17, url: "http://davidsoncenter.com/wp-content/uploads/2013/05/Tutoring1.jpg"},
  {listing_id: 18, url: "http://www.encoreeventsrentals.com/wp-content/uploads/2013/11/Thanksgiving-table-design-4.jpg"},
  {listing_id: 19, url: "http://media-cdn.tripadvisor.com/media/photo-s/06/24/b5/9b/cluny-bistro.jpg"},
  {listing_id: 19, url: "http://www.laurelleaffarm.com/item-photos/vintage-handpainted-china-plates-with-flowers-pretty-floral-dishes-for-wedding-tea-party-Laurel-Leaf-Farm-item-no-s1021192t.jpg"},
  {listing_id: 19, url: "http://1.bp.blogspot.com/-4nKuzKCr87s/UR3NnDa3w7I/AAAAAAAAAek/rfx3iCb-chc/s1600/PrettyTable512039.jpg"},
  {listing_id: 20, url: "http://cdn.playbuzz.com/cdn/7e328584-c1af-42ab-8fec-a5d22aa81311/7f0b4bc0-6a3a-4858-adfb-6f9fa5110fae.jpg"},
  {listing_id: 20, url: "https://i.kinja-img.com/gawker-media/image/upload/hvkhczj1c4qqn5edap0e.jpg"},
  {listing_id: 20, url: "https://i.ytimg.com/vi/FTy7uUEAaTA/maxresdefault.jpg"},

  {listing_id: 21, url: "http://vignette2.wikia.nocookie.net/pixar/images/c/ce/Wall-E_Cubecolors.jpg/revision/latest?cb=20090615011459"},
  {listing_id: 21, url: "http://vignette2.wikia.nocookie.net/characters/images/e/e7/Baymax.jpg/revision/latest?cb=20141228235951"},
  {listing_id: 21, url: "http://guardianlv.com/wp-content/uploads/2014/02/Robot-Inventions-Shape-the-World.jpg"},
  {listing_id: 22, url: "http://charlottesvillepiano.com/wp-content/uploads/2016/02/steinway_grand_pianos_c.jpg"},
  {listing_id: 22, url: "http://img13.deviantart.net/c1c4/i/2008/126/0/f/grand_piano_by_wolfgirl17591.jpg"},
  {listing_id: 23, url: "http://www.cornellcurrent.com/wp-content/uploads/2014/11/looking-for-job-sign.jpg"},
  {listing_id: 24, url: "http://answers.getwashio.com/wp-content/uploads/2014/08/washing-stuffed-animals-1728x800_c.jpg"},
  {listing_id: 24, url: "http://www.tsumtsumcentral.com/assets/img/upload/f625/PoshPawsTangledPreview_1.jpg"},
  {listing_id: 24, url: "http://ecx.images-amazon.com/images/I/51pR-pYNmNL.jpg"},
  {listing_id: 25, url: "http://423492106503fbf03a79-cfef2651b6c6ce3093cfde54a26719d2.r14.cf2.rackcdn.com/veraunveiled/wp-content/uploads/2015/08/sarah-jessica-parker-sex-and-the-city-movie-vera-wang-still-559.jpg"},
  {listing_id: 25, url: "http://www.oncewed.com/wp-content/dressListingsPhotos/2012Theme/173188/Vera-Wang-Wedding-Dress.jpg"},
  {listing_id: 26, url: "https://wallpaperscraft.com/image/friends_girls_guy_happiness_laughter_67513_2560x1600.jpg"},
  {listing_id: 26, url: "https://62e528761d0685343e1c-f3d1b99a743ffa4142d9d7f1978d9686.ssl.cf2.rackcdn.com/files/23361/area14mp/rw9xqn6s-1367993109.jpg"}
  ])
