// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let modelMenu = try? JSONDecoder().decode(ModelMenu.self, from: jsonData)

import Foundation

// MARK: - ModelMenu
struct ModelMenu: Codable {
    let dishes: [Dish]
}

// MARK: - Dish
struct Dish: Codable {
    let id: Int
    let name: String
    let price, weight: Int
    let description: String
    let imageURL: String
    let tegs: [Teg]

    enum CodingKeys: String, CodingKey {
        case id, name, price, weight, description
        case imageURL = "image_url"
        case tegs
    }
}

enum Teg: String, Codable, CaseIterable {
    case всеМеню = "Все меню"
    case сРисом = "С рисом"
    case сРыбой = "С рыбой"
    case салаты = "Салаты"
}




/*
 
 {
   "dishes": [
     {
       "id": 1,
       "name": "Рис с овощами",
       "price": 799,
       "weight": 560,
       "description": "В китайской кухне рис с овощами готовят с добавлением грибов, бамбуковых побегов, моркови, лука и гороха. Эти ингредиенты быстро обжариваются на сковороде с соевым соусом и специями.",
       "image_url": "https://lh3.googleusercontent.com/fife/APg5EOb3-gGunBAb_3E7L5qZLGIx0Wm8kh4UjNn2yow-7Kvf50D7eFb9Iw5g_7W7TQLGKF29-G6VNa7dHS_zEWY8VaSMh9EqUql8UEFISB_WWgiO8nf_mt0YtUhsWFB5uzw-Bfi_eS9Cs-0vLUMiqaqTGgGFDvVhUvak4AypPMEbt2-3mEkxeZNcClEy29x8gEmUU6e9G8s5GDyCxR404OIsgnGHqtIaGIGD7afRoz7PtgtmZdlXC5v7dHujDNh5l28v249qxjpa1rqxoorBb-ywkRsu1bzqDEHGbRDnFNLXHwEGlHoLS1krz9KcD3opkmQckg7-m7PXzEhnQlayqMPiNGP-WpnFYrthFVfJ0TY4zsYFx1azSJZTLa59Xuqr32eagNn9xF6mCPpGqRbunBKrbD-oWidQ_iAXZRRrgjZrv280Joe8z73AluN0A-mXcqRkpVwQo1n3szZ00wX7sD44PriRwHGUfEenTC5IyLVv3MBsYMNXJ9ALa6FZgTrnUhO_ePGoPftELYGNp4yn-xkzfM_GvnQR8A6od0bR8AqqpNketd0kBavJTkaJXBwsfvxinTdLfOTfWsZAhF97XYNEA_9SmTgnnOjt3N8YUxmUeWcor174r7bNdDuDQqq7vWRgFZNorh5v6LANRk0CVsq6B9tVxP2R1zTCc1yXgpu4kNGJsEvNyxMRy-yM3cBvhu01ZUFSalvwAqcS2M9_eBoPCu00KVtcEvyFPoqm_QNHBEkDLjUdtJC7BGcmv7SPa-rV6oH_3zeIYstyKLrgN-Dzewe816A6J7IN4YxSvCIOWbNV9Q6O3hxua_ZrGSk6ijSoBKE0XHUC04cr1O6BzRxL9lwVUhzvBzYfzmBzMPb84Pq-WwBtfCxN2j34NReGu5iABuA1iDNgz0r8WE2Dvvz0XsD6Uc8neX57A7_19J6vyJEhuARJREXGs4tFWHMmjqg-xwYOOPJhxF1BkCaQrUEKtFYBq1pT2N7_h9fMV8JOLP92grJFHRP6TmNrEjPAf9HjfYRFouBAqFMRy614VrJu5hyweBcy-4WbJNYqrvKZH_bXIQyZ6qlv4omHhGTSMMT9cAYTyiMm12bEH5ccThAygPaXlfx6ydA3towLnMpoq0ieByM2-Nql2uh4xPxgAHcmzipRgEqlYDflDKNSfeTVFKKQ4vtTWa43wR505BTjdO3mk5CVoK4sOzwcF1mQA2joVXdW63wbUWtw4wtfa3e9EP1TV01b5M02KKPcr2yxZpNQCo8-Igp6M8t_vqWSKlkq-Z7NaRswW-xQyuFWjCufwgpd1m8i5Z4tnL72DhelmIiI2cXufJb70_eobyMV5VsMUab1nLKWoKwggolnEjl2A1PLrv6T0aRTYmjt3JqFDEV58aIjZhhyrcX6h6Bb_AJzc-OFvFPw1uAuswJaimihZUfYoVuwtNRI27BD7KGnXzMHKthOM4fArK3ICIt61g91DNHAu9qhpWxsj0FrcmujdWE2vJpBf7XoOcgxiRlRKpljQ2c3M6ULTdS1nuypZleouOtwIHOUoxGtT5HJeC8ZcsgI3przMt97iGmSv5Us7xL0j42wVNZbQnyQ6EsIyIG1ZOo2ah9CyA7RqixQUevdzbPhSnJk2w6weuuRCDkdC4H97doLyAV_=w1366-h617",
       "tegs": [
         "Все меню",
         "С рисом",
         "Салаты"
       ]
     },
     {
       "id": 2,
       "name": "Салат по восточному",
       "price": 699,
       "weight": 360,
       "description": "Салат по восточному - это здоровое и вкусное блюдо, которое мы готовим в нашем ресторане. Он состоит из свежей зелени, овощей, таких как огурцы, помидоры, красный лук и оливки, а также сыра фета и пряных специй, которые придают ему уникальный вкус и аромат. Наше блюдо хорошо сочетается с другими блюдами нашего меню, а также может служить отдельным легким обедом или перекусом.",
       "image_url": "https://lh3.googleusercontent.com/fife/APg5EOafwbErJPvjpg_yUmo7-sLRLWZF08C8k6VCCW3lGRyMVGbSnmfUxl1sNzL0oVfwT2cBZDlCMhNi6XBmrMU3zfX_wCbuT3dXN-dVGbl5ccr0NZyKwmee6geavwEEjDPIpAI0TSSoSIW5ESD42sxXblAKnt4vpETfa4MZYRBj6_0FIY9z2iPJHViTigN-vDdCPnq5RgC3f2-HZ1Algs_e5iSbauXwknae6sINa8JiZY9XdGT-qwsXivIrNakp5X4SkYUXTPfm4B9iBBuoO2SlLzDmPU8i6gglA1hNCM6ou2A0OK4x-to0plYfCz3Gpbl3c42iNqyBDi6wgiEKNP5DwyMCwrlQvfCdiXOinp6zXHqGBhV-54nl1bySMOB7oTd-iIIiG9b-P6OkNdpeMXb6INgW2looGoM_LXbEoD9HZ_QsopwtqGF5eDbeNTm4n6D7wiZX4rCpkukKNhS48Ne-cUIPAonEs0LfBEReGhiPBAsieaGqKxCS3ovW93w72qsGehL6hg_Wmxe_LOkwu-UHXyjPbUX8LfMLcL0ZdME2VOSkNnqbnR70TPBk3SJHlH3UOfsEzkxra1voEtM9hVJHgiX8kPm5Ym2V7CPYIXxaAN268ui47S07NUu1vhTOrYcdmn2zmJR8k0l1-zcG1WAx1fgKbnqbtezZ9VfYKRlLAtlsD8h86C4yUhQt74DkbfENrHZmLzVORTlYCi40wlIlAL1UsOzvR26163HYl-ZkRA-71199d3Dxr2T2Nv5IPoJmDuJACqu6FzxT71t_Q3-ZKPzNgt7fGpDf_4Xc9dC7G9lvQKpCMv8d3AVkZjf6czQoETmC7Hf6-9GdAp4jqGGztYRmR7wN11mrucEUzg63Mh5hh5bmbt93SctR_gnlt6rbyqo1aYu0p7xw6z02kyQWspnCPpinOMxLmeOI0TIsaqjq7-2VMWD04vMsYA1uVY3gYaST8IXA62ltb1ngSF6A4Qo3FtBgm1LS2yC-KxywiWSCCWwuv0WOc79dUxMl22XcUt4J_bIB0uyjIOmqD-uPGzger-dP6ZiM8_rBhNz40pJ0gWblxWoc6tpWgbhpTPBCCK7e91t3_pmlbh56EQrsKycQHHfTIVe7clQblWHI-Y9qX12WW5jn8QgmAbeAcjEBiqGLfMpWWdCs97HTZAgNYXhikTBXcqCRayvTvZRK5SiNeDzcxSdpLRyG72H6glEyYBL96KuSB1VuylT1APbBcABbDzEvTyNZWZER_NQwu9X5qDxeLmTwyHr0xq_igNaFxMxYDyYqiaAaIuFwG5yQ9d8fnMVo4QYa1HjoB8vVJrHtd2EJltEKe8KgVxjAVQyaSI7ZWwAzJXt4_3bsIgqKzY8ZLdY-xQHtorLRa_GaCaX-KasXOKJKm7nUNQuX3uJS8BlnS_HqJZoIbjRfHEkC2bXEhT7o2NBwMb4Cr87CBQIDjKsXQs8P6bTDsUH96YC4IOiqCL9kVsl6S2rPXd-WDGjk1p9Eqeq6dNUKZVrhalk_dkbsFO6fvGVK3iI8ARoJYbrCThL8EFEUqY58iAYLjDnmmaJH8fN0Odi-QOCLolKiAXg3idpp_hbkqIsncxcmVXYOOSvm1xpMTxq93rV8w_hDEA4Sxi4EjSiom6m3uTWHo0CBtLPa=w1366-h617",
       "tegs": [
         "Все меню",
         "Салаты"
       ]
     },
     {
       "id": 3,
       "name": "Рыба с овощами и рисом",
       "price": 899,
       "weight": 470,
       "description": "Рыба с овощами и рисом - это блюдо, которое является незаменимым в здоровом и питательном рационе. Оно состоит из свежей рыбы (обычно лосося или красного окуня), овощей (обычно брокколи, моркови и кабачки) и риса. Рыба и овощи обычно обжариваются на сковороде с использованием оливкового масла и простых пряностей, приобретая свежий вкус и аромат. Рис же готовится отдельно на плите до состояния готовности.",
       "image_url": "https://lh3.googleusercontent.com/fife/APg5EOaSblNRXMPgDlLF2qWvWp0VsGv1OIVNgaGi44naVRSSGRXwj4PMzdHOXgxfAl_2oi_SZI7FNxIZMP8WbCCR85SwkX0bwsx10EeFy9eJ6jX58h-d7Lkuozafqad72jXrGFYXSgeIGoELeaRFj3ruE44NikGegMxOlrLBoNwRwi2UeV1uyAyQ_6DhWN0IdRWlgTRzYmXy8n1hKYUimjMy5IN5eKA73dcCpKBikxJzePGE8td20IH0DRuqccn8h_kc5FzNrF6Cyb_biFtfnWnxpHk9OAGvVflAD4AETlP2BwhMmM7E0pygrDa26cOE3PVCGbk28aqrb0eO3tBCXWqvDTjAR-MtQLe0OGRf_Cnhn5whhvY3q3VH6SPF36pDg8Tf6VyyiHVwQlQ-HGbGKg9LnD4M9isoK7bNiRy9zpCF-OJQNmVF_S1JupK6nN_Xerhl53E-zlnhdsBdy9A-BL_KWtsWvj5TVU85JMc1a2cc-RAG85cBg8jWYC59M0ekBIG6cmNsFOygdd-S286hxjO8ARdi8Uz0U7R84-k65i7CLFtJGqWppR8qyN0RArXHMl1-Eh0cMxfYLL1Od62xD2U1WGqNKlBQ7Iv0MzFo1AiGFZKk9__huj08_nNQQ7yzwLLTNHSGZBWturGu2waY-t3xYWJfLchVaM6j3YH2saf6n612aQbQUtpQrY5UJ0Cs_t--vOqhdpX2j_nD3AKJWwrG9vaQzRAbq7RXGTVTWH_Q42aY4kcpKox9xh0jbeq2jOYbKbetnO56lfDwR7QTsSt5bTcXYxtkxbdRNTz_cR9oGK3CNeLQJlL4vN4yCBB8uhg502BsX9JlvjEWbYEpfd3z0BS428f_rH4TgiDkH1LpEBUr_pT7IBcdUsEkB9ZmeEx1dZ4OTtzuHmVALF_WMHwWylEQO4DgtkYIKGo6Z2gZGDStDneuuJgk_BacgoIhkGCIqHPq2kqDR7yO5MHxTWf2Vmg2eRKm9Ebl8JwOOGCtX7t5H5Ce9Iw0_apio9moSPe_BR8bcgRGH8IvXroOo3rJudmroTX-TY_Lb7lzZ5YTir-9yVOis31kPGPm_9xuRVqcwVGoLo3K_NSHFz_quUEur6g8IMfuVYsYry-arZVxgf15sKLzytjdpU6edeCReJ1vpvYAb2nEOUc_gunhGw2SFmHKZ1QmpW1Vsvvh2RyDA0l8vXADkL5Jh5xP6CTGdMpn6txRiEpPnP2X9xwgVzIZf0NOizrn4_la39bB6nSCYW3m3-n44KlZcVM6o5zC1YYTK621XFwbmeavAx6dwkCkis_uub5deIsFCZMEq48LFwMJHoYfRhs4ybdoLwrKUps6mhW65KLN9krJjOUQ5T1AdCVRQhOABTz2QozeytI81MwHQKX2ONdPFquIu8YpyL0oqjPmfRMxNn2lcv1WYahTbmX5lAAcS1Qp1RQBV-6M-BrZ3CK9ujc7bbY_XmIRLA8QUq3m1QS0hOHz1bdBqgmPeCY-onmxkI_yOfAUyTy6fm_6uvdowgB_Gds4AQ6I_ACj7JEw6bjTGkDUBf9X3auUOpDDxGOileFDsXvkw4JHGeizI2zU5iMOgc9AFqqRSVY0UliCiqbCCUl0VVIeO9qjwrw5hXh8Lvv-iaVDGRS-4BmSfLzhtIlJ=w1366-h617",
       "tegs": [
         "Все меню",
         "С рыбой",
         "С рисом"
       ]
     },
     {
       "id": 4,
       "name": "Тортеллини",
       "price": 699,
       "weight": 360,
       "description": "Тортеллини - это итальянское блюдо, состоящее из тонкой пасты, которая обычно заполнена различными начинками, например, мясом, сыром, овощами или рыбой. Тортеллини могут быть сварены в горячей воде или обжарены на сковороде с маслом или соусом.",
       "image_url": "https://lh3.googleusercontent.com/fife/APg5EOZxaJHst9Os1LUjMFl25XLi7ovwfL2PPCqu9lZ2u7RWDFZ1atghe1x97ByLV34HkWzcPDgKcNitF-QRYemrWiGScP7renro3u_FeXZQP3RWKppDy8rm5MoN2ZkyZnoP4uro4A9bEoPQcS_DJmB5qJC_80WdxbyfXlIdl4_1pGyo4Asyvzu0p_Bx0WI9m6euxxWWfX_0GfQG6eBhOsE5qIiw-0YNef6hrGlYHHpyWJ_RcVksdS3Eeo2-vunM-btR7lDMyLGnn33ICHJV49Vc7qsEgDtsDbGJz6c7-li1kDTsO6D4LtGTLl2suwKqsgLeqgj8KyCuvXxzgxIVFdtNRha-svzpEBKjLDX77gZ9VvaDI14CU4cRdFRzcBcEHsbPhO1aV9NevMplP2HaloJHu0nRAprjhM4gxsFB4z1T4Azs-olVuecT7AVTujZLjrnWX0R5Z8_OI-bnwxUNEhFoUR32WbfZvjWVZLGJ1mK2jP_qadUTDULtyJeQhyigf4gvwheDSt14xzMXXshRpPWHP75EXgltSlEXVmgMjbz6aFTWdccxTbE3hKkIzIYkjSPFXKm-ZQPXr9ZdDxBEs54FPCO8M7kzVA4qdf2Pm9gv0p31WvwLUa2OAHMFKAuWsaYzAc9wnZD_NVTAxl1-6TJQjV6WvkdGREvvgTiBu9bdYE6v_cP2TeakxbT-Y6Ul1NcCOjpSY4tgvlewvSV2RxljfHLqIXIO4omR19z9f3nTYC6XRbSRbRz5ItNHMsIkziRY2sHT6u4zKXRrtWiZfWWcRhx3E6gNgT3Bu0tw7pZdYLF7PGF3Bq9Byv9rV-V0yfsnknYvEKoTkjocvrJNfAp-zjDaqALD8vuaZ65JJvtNyGxxqxOn08oi5YVOrtIXyeCAM6CGCS6YVfEp_EBEY3AAfV1y48mHkmwt2Pem9okpsKnuXpFxfY0kTOIPxs8ldAaqoyUJnyOic0NpCN2sWUaBk5foNycw2UQnPewo0BP-VA66xtAD5Zp3mCJ16gcbUsCfaFVH055o5Mxeuyn7HBkG0bthBLfz2DdSxOfD_o3HBFi7FgUja-2EBoHy-je_ikCLITQIYJDDLL4M4LHz2buSqQCzSacRFjRF5hV7FatZfMMpRFNxjj03pJ82AtRtwiHQ3VxYgoHXEOHUbUSVh9uGz_VObVzy4HIgHcRUebGyqLcz9FQX1z6r_72wj2YCekLxKdKDNOcPeBqnWBAgIxuddWCxgNhB7ve0nx_z5ypXznzC88-1Wk9jsqIOf9VNI5NLaqToDS8S06BN1uTv0XJbUxkEqCHmk-Q9q3LKzn8erUpgg8ietbhZ_dLUxqeYhHwer8mdwlibi0jpY4xl1nan_D5Wspy18D2tBnyPcP-zx-HVVmW0ANvrNH1hH9186NdhNH_E8y86hV7cAzRlt61keubzV-IW46BFSwxorpO2tCbcxGf2GlJWfO74-i-aSRaAly-kMdbmj7mEcb4C9rLSdH0nRla9hu_vXOe7rpwzjTMHwpQulxRsDq831OJKCgQAL6-1dIGebl2zn-kiHgYirWIne8ThQg8gFxd_LQX7XlrQYg1L1jQs0ajdqUGP1Ps63h2nUHR1JGCxrx-GQCe-t7ogFQ28nTv3qWKcZZQLiXTVJEilICeg=w1366-h617",
       "tegs": [
         "Все меню",
         "С рыбой",
         "С рисом"
       ]
     },
     {
       "id": 5,
       "name": "Зеленый салат",
       "price": 589,
       "weight": 350,
       "description": "Зеленый салат - это свежее и здоровое блюдо, доступное в нашем кафе. Салат состоит из различных видов зелени, включая свежий листовой салат, рукколу, цикорий и шпинат, а также дополнительных ингредиентов, таких как огурцы, томаты, морковь и лук.",
       "image_url": "https://lh3.googleusercontent.com/fife/APg5EOaUlM5LIJ7RJAgnA_O260Q9EBTqlKUSR258lZFimED04hgD8ks7jYrhMLrp_atad3KPdx_jrnZCfyLNUh5dejumo5rNJfFFdLx_S0t_AJh09BwSjszu82QKFrwiwNdqw8OKbKGLnbcy8c4ZOGcuSL79ZRUyiFZKvQ-E230L5_S-fT4yEOKuQwwtnq2w66KBkqbNGV0p_moe_Be1cuezoz2xcYyfj7FbkXw8wl1vwOORgvXqQs7cY2qKpbTDU8jg4L5aHVoX4Y6GZfLmNwV-kBRUVXgwKRXurjkmrReoO05fauwwjK7OxQV4WEng88hkMdhXUmm4Cq_WyE2L-oNfiKfZyMrOG1r_7xx-G49mmpCnGI0Ct4aXWhW6drGtpu1mR1B51vs61AhlPz0nLsIPMwZvu7C62dTVXNSpPFT5n3pDdsOdTMo1Cora0r-ClhX2OCyYdg_vkgJRGagfYooM17ZIfc73H5NP6Cf4FizDkJl1UE4T2AdOq2qt2Z3GDY3R-0Do-U83sM0G-InegZLrE-Uqh0xEz8mPa8NE-yLvyjKf8lcPc7g2loSPOtnxhhTvKciORuZVajA5-Ee3y8BvisKuhxVnGMbkf-eQyBWBk7I4KCrTjunaq5SLr7Bhm1roE9zaEBC6YJYfvbrACXiymnH5DBK8XaW0yb8vy3NUPnCv-WnyqN4XIg0S1Qy_qmpY8iIVF9L32rvoLBVzkawlFpT4JUU_lqpj4KZrAOYeHk6CQi5W3MkcT2jz1ieN_GkTvrY3WhQPcw0pCxEqf375pV71JQn8NzlTVJKPtjTPhJ4TF_8MHzfY5V1_M9WhN4HO3CPg0xvY-tvWRDzzSwsuulyM_2kD7Lz63uzYmUAVjY4HoPDC1F-Q9Po0vjijUjvlTqOK9g60cGUFpurNFCgvwDLMg4rO-jPDh_YBBxhkv1DHWINUvIWhcar3r8VJDPkH0VYUF8HBKmgJwj-wf5GlEoarsADYj4j_ep5C7hu1Vj1AaTr9DMGglvQ1GAwLBZFrqLkj4WPMn0CvFY7sG4o7-sfRaKD6k5MwSy4riqILwRbQzgbzmu5WYsOEAAhB-pLyDpiOY2v9YQoStI_G45CObq8PAsl_BbjPz3R1gZaImsydjW9YJAtuzlPDxFAgG7mo16aRnMi_PoYrPS7EYKrDVMNVietx-yS4MlWZ_BktwWA-7zo4I1SAEPsPinyptTFMwgUAAi0tF1uqSEXBTpdoCQuik9SwhX77943m62loncliGr5MElnsncrtVeRtvtlGQowIgX4Cfvpph3C1ljZBX24TUp3UQHAuGYFw2kZ9nDM4wvhWQufh_RxsBlB4JYjLVQU0wask61jk9p7gwCo7089PFL7SRu5fN5cBAowwxipBpeujf9pZBIa4iTZxdj9mCqfavEuxGWSe_rCC4I_rdt5IbrVfaLR_sw4lh7QCkrvAnGVxitGrDXnyPsKkH1-vGUIregl4qohL_XJQsys51l-Mm040P3ufZCBGnXNtVUC5cezMi-PeEgQceWc1t9UAO666iqF_rcXacSBVxm7dwQQZbl2GjnX81FVDq0wCc6r0hL8DU0wlwwBMKg1gQ9KYB_2NGxoc5uqOb1u-KiOdPEjmtJF8seVW-9E41XEK-AP6NhuDqHbJ=w1366-h617",
       "tegs": [
         "Все меню",
         "Салаты"
       ]
     },
     {
       "id": 6,
       "name": "Рулет из ветчины",
       "price": 789,
       "weight": 550,
       "description": "Рулет из ветчины - это аппетитное и сытное блюдо, которое может стать отличным горячим или холодным закусочным блюдом на любой праздник или вечеринку. Рулет из ветчины готовится из куска ветчины, который выполняет роль основы, и которая обычно обжаривается или запекается.",
       "image_url": "https://lh3.googleusercontent.com/fife/APg5EOZonD0kIAl8PMZw81_eRnbshomH14CBDOf22F8MdalF8do5hXWhMH-uPoRvjEmUU58I16fyFL0tKKxq2uPowwehpX7w7gKTtljrecf6PUvbQ9tU1z6h0Pz3L8ZL6Q7oqL2o6Lpvi5dCKwi-Po96PbFfkJLJSVsyX4vTw55POm6PTcKId1oP2q7NtPcYnTbPFyx2jYiG9CpS6GgNRU2cAPzKqAMzEqteek-Sjn461WC2AF-dSwVwXOo8G5X9cO_aHa_IoX_W-vVn_6E5J_KltWL6X05dv7ANSdzSUif-glHBmdDThn1wd-lizNokTZ52ADFmmkMPp7TQ6ox0vYsIgP3ZcjwSxr9VUNnLEIi5XxWG_kCSW1Oqif79GYsy_Yc2WBUzp4JIlWh3vk_iQZ6AS1z0QOEzwFUrREQdYd6gezptwv0S-N8dg2CpS_9Xckiy4vU4nQao6PoAKiqnxZtt-yWQAqxt-D3LQjz8EaXJ7Ei2msg44xSNZpHb22jz50NfGmA8aMd4mObhEC7hNNykeehqICEW46DfWdMZLMMd5D8b6VEnAk0mlLvu70PH8tFzbC3BeWy16xXh8eEKDwHWsfdaQXGb-YlmBVIgHdBJeO7p6aNgrsiBH4GvXj9ggXptCnU21rnrkJoGCDTBV2N3EocqotGaeP7vbDewBF1FgnJojRIlN_d4poUo92gp3JFk25QB1z5eI0EmWNCk_KSm5I8WbFxtikZiQZSfuzKjv6M7ahu1T87wtgDTbTWZhDOZ955glsrb19oc_VQu8S_BQt9WN6B8yKbYxZcLl8h40_LBFIryFgmEh1a3mdVbB3gHX_TB6Enwng9SY9PgcMgFj-2fGWzeolH0Whh1zxHG7_QlCCsCrhjJVbx28ef7y54tAPPRtIN56W8kzdSuJoWRIxdgx0gcCW643SHxV5GKJDLKAH5pslZ4fO3lQEAO-wSFaWq_CUbByw9gs6Cek1FfaCdNpS_QhDPnCkMicaG0zQrhyWj4txwDvYCPWkeEyKeZ2fcHudWmbN0wplOlAEbz22nYf_clnbCoDjGeMu7WB47-oEYX_aQK8cj5dg8FayiGLiHL9qIF30lBoLZLFzIoIe3QO3UA6WUYpDkLrHHxI3VnVbkAMgFi_i7R3QCqbjTBvtnaj6fpRsGSoMYWSAuoBZ6xw2eX0na_u-yXjdp1_wAv4l6wN10satoLG-8pIXrnmAh0fIEPxKgBHONy1fmsyCX8Qd52xL_tqg430KjEkCZMREFSjZCa1eu9EhZjfPtt5HzdxiW36naiWU3LtogjdomHDICDIJP7jVa1D36aY7iJXl4e1bPGOG81IdmtUHoeY19JpL8q-4srypKA_M7YAjoy2xlhgEoZR3pXR69sRVSn7cmD5VbmWV-53-soaPCRW0YsEj_qf82GFaz26I8h1aQK2E40Ayz_T-5Hkou3EBjfjT7vvYvPZGgayk8rULzPxEeWgs9OEEyGuJmgfR4aIQmHwj0qUGxIGini_MLZfIuy5OVKYD9G2xMVoRV6suqTUZ0nc0INyhMsBGKUE_U-T3Z71X7V6Fdjf_X0eY2WVRTMTn4vW0FD9583WE4PqUu94T0cDrHTyKljLcV3KJAlT7u19Ju0_3HOSEsowsNBoSy1X7vBswNj=w1366-h617",
       "tegs": [
         "Все меню"
       ]
     },
     {
       "id": 7,
       "name": "Фетучинни с грибами",
       "price": 589,
       "weight": 450,
       "description": "Фетучинни с грибами - это блюдо, которое известно в Италии под названием Fettuccine ai Funghi. Оно состоит из свежих фетучинни, которые обжариваются на сковороде с различными грибами, такими как шампиньоны, портобелло или шиитаке. Грибы обогащают блюдо своим неповторимым вкусом и ароматом, а сочетание с фетучинни создает насыщенный и довольно плотный вкус.",
       "image_url": "https://lh3.googleusercontent.com/fife/APg5EOatxUXJokFvtqIboC2jyGK_BR7S7v55SPTSaq48QfB2ECOWf-JFr_iL--ZMfyk6tP-r1q6bYeINzsIl2bVOzkXeR1yS6o_FvAxRj7hrDCsxU52SyTTszdJs72UTGKWcZPIr2QytxvDirzD_dPy-Ui1t_-9t4l5PqGvTsELUQRd-ApeA64BjqTVUNTUgXbS060O9HeBuYeA4Y12oo1eWukk2ykWQxWAPc3XMO4oYMoK0cKJoMhIzjqQx2OwZCc90NoDX7hu3NIaFrYoQN7car5pO1Lq0xxhs1JeaxMOwafrFhGyE78_1X8-4NrjL5o4QMUPHVcH_AK9U9hQXnjWYaQa4ZxMsV1NseECKI8ky4RsPyHSydXS9zde6XswY4ntTAD8M4oz0lrKC_g22L5VjQ3cffcIR3xnxLjQa-V5HhXN5A2apzELglBpSZV5OimCEXhknZ968-NBk_4BLUe2POAsdO71hMfeEg5pDTrkf2We-e76q8qE6xpKygVHDY-R69X46XgSp7tvRBiJrhdcB7Pd3b13NaUx4bQecV1MxnTGbb46xIX-VYP1urGSZcdN7rpp7AUKtYSOjUtWj2qvOQb04B29jV35CZt9gbgve-fiBfTjBXLX0zILxEQ9US4QsgTkxMRWSYfJpkVHSn9Mb9Pfp_8N5nr2BHh4859IofVHcZTWug_q5wcpBQ5rjpQJYJ6XCv6TAPUA7o5mNq0ee3j7GloJyghECqaRYSlkucuU43Gt8jkblx1uW3GCsU_Mr83mjJzdagl3tHn5O_XXXsGw5uTnDwfmjeW1YuuTI9AaID1cLCzu42X0eqNEaLwp8Onn9OnntKYCKJr3gvlnLtt-JN8h-epkMnADcP4KTYumUMznwzEzBY9_G0Sf5e_viXEef1LlHKx-QavgNz8QpinOVMHmuDhqzlp7Saa-WcPLEKBzzzMQR2slEsZZd_xUTrLqjPPUey402sYwmOKB6Rpk4UG7pKLmzKJEk3e-U1Qn6OCPldPAzHtvOVjvPaDs8TxnBmPsTy1g9iDsX_9ueNCKqGn5NVV-rogJC28UdTdFK1FguysN1T_iRj_R-99jo-O04-S67ZG2nZpExrkPj6e3EfVdfrEXVcRhNKD1g8BQpXHwBMRu4jBEGytN3p8VovOMzluBABVRpjo74ciCpNdQKxizyvgCJok7MY0-JLPEglTYHIJwXcsOiv8SmfFpboSus_Luft1jCriw_4uGkzaitZHsF4i3BDaWsaZdatm98dSxVXzwNmPa6YRz00yXtxNLdbB38POD8bPqKwt8SO3K4s8HHXQC9NJs9RI00WR8J48U3rrxu_LqWz7J6RlX0Hw9Wn0LdrOfO6sl_vkvGbyGj0mXIHrsDSKOhZvcQhUNxKa2mqyDiCA6Deivf95jX1Pyyr8LnbHFTYL_-xzhh5p0Kag16Jo8P_hi_gI99tvjZ2pecaNlhoPMWVKWHnkCKzNCPkpB5kMYFAlX3AmUHsN70tVdu8ZQ0QA1wyvI2oZ1zix-8IcvpCsNomRMH2E_EMPHcSp5sYg6eRmPmhykrH9g79iradOBLG7ghulAWr-jfZAHD2ssxu5UBdhW1Wbg6Uw9yCtjHQOYQQ3qTTIo8huBViKQ_WiBiy0Rp9NGpAgsLXKWdmHVn=w1366-h617",
       "tegs": [
         "Все меню",
         "Салаты"
       ]
     },
     {
       "id": 8,
       "name": "Паэлья",
       "price": 889,
       "weight": 490,
       "description": "Паэлья - это испанское блюдо, состоящее из риса, морепродуктов, курицы, овощей, специй и традиционного шафрана. Приготовление паэльи - это настоящее искусство, и это блюдо можно найти в большинстве ресторанов Испании.",
       "image_url": "https://lh3.googleusercontent.com/fife/APg5EObmQK91yywL6fTgsnyCzkPrDIJ63Xl-uHeVGn4_emydx3zd5rf3ZhG4i0F_yqOJgrHcJLXMfTzjOSoNysfprZnO8hXyWJwIxkV2ZsgbLX425QfCXexve6_MvT6e5Gu4tJ2OmSorIwpVgPkgC3fXjWPQSHiSslNAqYj3YGvDWt9S906ag5UD1EF2tQTVxnMPGIEkcsvNfL0hbrNcZS7PSpCALeXSQY8iCGFVtvcVFH4tTIf4cfrrG-_r0DhO9EBBZG0Jqeo98s33aFTCTMVxsuO_3-mSgbHxQXD5NPV7T2H_dcT7kaGlheO3l6TwJzPI41VnPBthNaecNhFUSuuEis_4xJSHnzms_e74gWOlhNdAX3vT9-XM7coL5npWSJc5djZvgXAAzu97P_9UhUO91XDbtW4c7D3mJybj6fo9ifpYJNLQiR5v6X7foufWWZ0WcM-ixuO4OFhwWh18aNSPtJ4sYHs_JrIivlPBarDDvciCQVCQkS0zC79WdiBd2ZcmYbgs2q9wLyC3bdfhcPIIBCY1SU0IJNHpxFxf_IOou0FRUqbkon9Agd5Xqw7FzRb6i_8ZZiJF78anh_xLKrfeQmCX55L30ALn345f3Y7u2U97jwfT8bHmmeWm9ef9UN3p3eVZV_g4nGyvUZ7jpr2pViQJhNdGeDr5awsV9oW4_xkVi8xUMI7ERbVi_y71eHhoHCZeowFNV_XykdkaH59uqnWH0x_et01sdopWi7S5RLt_Z3ximNa8etbIW9bCh-lQxMMMvWNXDBDrCbShHmPANCrYuDKRSK-UOdsnD2oEhaRFmA4xq4ObIzCbawsduHaChAGXlW3C9AHKjX4lmP-zKV-L2AhCgISZj9KuitnvsH7SqlivUUhGnq0R0WyXOuiFU4nu2mdGcPPqnKJ1UyTTsaBqxaHy1P3f_rMSqocFgOnklUsxdU6RQi4_DPyg6G3hlm9ioYmrPWGJX_ZWgXVUylDFILB-Ug2oneTw5r8H-Vy0_POrOICaxc-sSvbaDys2daE8KGFxaa-qFHg73hRQ4cYLNEi9VjotY2a_4PiU4t8vVHOs4ScIirEnzC-DM6xZGBOmAul4NPfZxOySxn16uqiArm13FJ_7bm8LaRHscq31hC9RP9LG_r_IsBJ3yixDdAn49Txin-CSQrtoMJ45BmjUG8gUt4IcjImDdICkzBCpYRaEbk9nClcfGxK0mt055vKG4f6QdkYbdsfy-nv7J8Zj1Mgq8qW-wHtzoaVUyinj4_6IaGE-VPvyKVWGNOD1iEMusssC684Vs8oAmtZkD2rwJUlwmcLQ54BSa1RrFrAq4bZq5a1hVP77fwtTEzaQD5EMvYvSyoAH2obQV_wydrzlRmOgMHxviHS4k8Zor7FYguGionglFXpnMnjR10jHF1qLpKMFHl7YLiyYfum75-ge_7NLfOfkHeQLcoYB2Ry7CF4HXRirUYPAC0wjFjd6YhXA44zNQTjdZHf1-FaGJD4cFRZa8fenY_EeEPJISzItmw4jEBXvcewVoamNMeJXCosadl7jERl7kdC-xz7op0o4ZoizmG-5Rjnn8_jbP8d5bGtYEM8wdwZBu2Bf0qFuQrG8_hiQ29ehaJC4Md6T9nl-WNFNZInrkUmcAInh94MoYyUdHoGE=w1366-h617",
       "tegs": [
         "Все меню",
         "С рисом"
       ]
     },
     {
       "id": 9,
       "name": "Рататуй",
       "price": 799,
       "weight": 530,
       "description": "Рататуй - это французское блюдо, готовое из обжаренных овощей - баклажанов, цукини, лука, красного, желтого и зеленого перца, промаринованных в травах. Рататуй может быть подается как самостоятельное блюдо, а также в качестве гарнира к мясу или рыбе.",
       "image_url": "https://lh3.googleusercontent.com/fife/APg5EOaLWcbpHE0FUlQQ1SZwKMLTc1RcWsZnh7OS_GfCXU2r538v-pk5Hdar1zEBXBL6eUO1dWLw1XlGIvdNJsX3K6z3koKoeraaiUPbB85RiUbAPVuKSZomK6Cj0eTBmIQWAvmB6eLoJNJKzZ4rMlNw92Ddsi6_Bo1EqdMrjFVq7Dayt-YvzfL_zxrBH5680f9xCZPsUgbPtIKel_929KBVlxQdOzpzzsfodsKgs1g7VaCdf7ZAn6lxf4o218DYvJdFeLFwqu4JlShN2bx4Dt-5luy4ID0YDV23-7NLboCoE0dJToNe8umKY9I6ViS0XybW7WuEcLJZ0tsSw7ouANq8YSzWi0b6P5jELKthmz0-8GereEPPfQ_P-1-AWmTjNyHh6-Cv7rHEUG3bInqjBIfcb-zhUknBJ33ORpdB1M-wD-fG5bmQHKbZhHlLe576vDEGepT1zC2YOvcuHcOWqJ1Q1yLb8xlNbq0VU7VUrevmY4VdNAGuQRjCiZK0JHQs996EiMucSITgGY43Vbgo_LqaL-p6ZYK2bdIEPaw-OD1QXf5u5oNKzGaPhrj_MkInICSDfLDxzZPz4Z-gE2BYQv0gYrLr_Y_VC4JvXKOzoRjBFsrouV3tMdLftM0TKKX2QdWIrn8f6qL_UThHi7Dvdiu2-MynOKTo9SCvflysGHZ6h32_r_RFNbYvlDDpgYzmj1_8J5L0p4tqlX9PCWIPoRhhbIkQjojcnYExhrZPJdUz-OXE2vOV2uVAeP2Ya5Nl97AuPvfEGJohrBqi2n8M4cYqOu2K_JhN-Dtb1oQtGfknhU2rsiZpkpmKwvK-TLRQAxGo0slHuqdJ_GWlYEMqdT2CfCj8B4BqPIUlfvDIQ04w8iePh3UFTh__DWvNZuPrbV1gBoPhTaHKvSQBkdlAPtUwV3rRFcuBlrkvNepBymiSRjxTFZ2ZvM30VCyuUYL4fDZRco1ps5-FVKqscFVV9T7fMIgAwgdiSwzfeKDDoYUQ19FQMGAvxCIiuIYqImbjBaInqUpKLvbB4hL6ptm_5703eKasaj83-lO-qV63V-IFpQm93xo4EBPx14m-4BR4VLrEdU3fSypjlg3620uG04Kst29g46Q3WNolZiZoyBx-WdMm8UexzBE9WcZsNMCNpQxk9DndQ0DNwZSHyflK207A66yf6e9p29vVwxhHisfXWwk3xL_mOIL94NOaGMgZ2co2t25YccnSNBfH3pSobSGK1qhhrdXi867F8uEN3pT7LioEAZpA3npYGB9xk1SNQO9hTU2GVuW75WWI-RPd0P3g60po1Kgu7CvqsqroD7cXu968humurg6f2oN7ycaO-9LaM9_fPfv_BW9hZvn-o9MBpUYcRfIL66MMLfvcJKKymQJedtuJr4_V4X3T8JU5V6NU_pSwSpXtcL_3EeQ4wB-842yYW3-nIgF3Ff6pyn8akGbBYrJfriGDLcnw4eO7j59JWrBCLwRMHqrqlEQ_-H8GXTsy2SM_IucKJzmrM1A5an10rW7cF39i91XEU8K4DI7YUJwA1ic9MS2Kd-4ovTGbog9BH0mDEVKeXkIB81GAvybOVfXjCMkKjcOymWWiyrHICO2I3SVge1q9Zl5S-t8xrBr33ZpfJUrl3kbPSRLpw8gXtBlFiBbn=w1366-h617",
       "tegs": [
         "Все меню"
       ]
     },
     {
       "id": 10,
       "name": "Шницель",
       "price": 999,
       "weight": 530,
       "description": "Шницель - это традиционное австрийское блюдо, которое готовится из кусков мяса, обсыпанных панировочными сухарями и жареных в растительном масле до золотистой корочки. Шницель может быть приготовлен из свинины, телятины или индейки и подается с картофельным пюре и лимоном.",
       "image_url": "https://lh3.googleusercontent.com/fife/APg5EObMkzlytI53YE-u3JffkKSydKJGo6xkNeAZBgd6qzqLA3edzu2frhDqU5tzWBLcOBkvzgJ53QAD9zCoZc6EuMCu-UxgsdRPQlPIPQ8Mc3_NjNe3JiCDnYQp_87Kkqrevqws00x9k4jMjVvSSRN7OoiswWOEIAwpkWpHQGa9YJ_WQYq9etVGl0l0K_mJKoAiudZh08UxrEPQfP7N23l4fJxo4qwWW-RehJhiiAhZ84u2DW16g_nvKUE2G0SFESQBX6uha-lv5nTS8OfFjprsVj8phynQa8F736iE08HrepaOxYeqXjF2Y74JmoaWQlr9U0VU6t5hk8PQ0OmhIMXK5aCREQbA1xJtkOOqHa-et28IOgd67m0RBHF39pgO0HdW4r0CSg9t6pp1YdPfK7hO1WEhRiLpr0nsT-1AQzCBCrnoC05TbD4IrqeO3949Up-s3QFMicivoFxeqZPfwL86kKNM6_Ks9WIsO7OUFvX78kmwqo8rhNlTcbBJqgKruTx1_oZMxOS1jGvQ1k9lHxeaJt09-4XSNQsU9Tgfq-RfS8d6B5s0yWfkIuSDZvkKHGwuHewIvt-R-60ybLlFXO-C0TzpFTme9dU1RHI7KvzVkbYyMThnuSmOandGxp_oyVprt-91JsOoOQOijzEpOS_YJNazM0Ne2pvqOLrhuBdtG-lBgOkMV7r843sAMn1FNbJNX5SsTguBV5FONT74r_KOU_i-gAjQhiw6UhS-Hc4Ty0TNIWwd6yAdD-w2hqWNRPUwXwn6_Acrr4tCCXZXi8CZlfXK_a4SHCNfD7bpWbdhBlLSE1jGacHOaBxigvaBnDY_gI78S9AJykPPWCUTTFJntPrvc9ehiiVEN18rXWWLdyNkY0WDLA1-Y3VCLKeOB2YNup1q8qgMBApQO9EtrczwfJXzwyhPfWde4eqlSML4Kcp9uDEARgpE7HbeMx29IRkqfuCHz3B4MWKEKAnd1Eglk_HMI8Cv23-L0ZqLZRZ0l7hOSQW7TiMQq4Uc-kUXb0FkmfyrwlekQ53Yi6dBz0WK4acOw87QfYlYGOFGKxCVLix8nC_wJJmS9o51DMKZUowTyQ63QhPlwjmdbHsrGODppdwHiqinxqdEyTywyPc7aMA6FSu1vVsCQwRXQOPL7T-J5CzB2ySDZw1_g5m1IIUYP80Wk3K-QVJl7C3edAt3m_K1tT9WoayjDQisbl6G4kllzSs2pIGQK3fnzAc4Lihu-_Vshm98jPCup4OFbJtRLGMxFdxY3lfVzclU-HNgburXzKx2UBRNwhXvabnHMstirP6QrfBOtwfxvV9Xq9S4UQu7CxF33GcqMwi6I37z9bH0ypx-aiMPqhqfkL_IxPAfbvI1HALqxf2Eml55RQXPRwIXRxUBXL9FuYcJMEfm5kTsLnxgEZXP6m4E2zR6U6dtacSYJJ7f6Zdxfz0HUQRDo3JpNdVc61jjl3Hp2GL0aLoo0IkhelymFwIQMGwhr71DUh7I-AdYJ1YZlpmpzpS4Z6ZX0t7_q1Qin5LZ4IQyOeQengueQtu72jPwh2zM7JnxPS5NSdA4ERlLJkuBIUeOkn7aU9A0XbLxteP2k52rJNI4aOLlg9bcH2KOHyKJuNdO9WDHHMEXoP_ASM42kUdl_INcjxdrohy7=w1366-h617",
       "tegs": [
         "Все меню"
       ]
     },
     {
       "id": 11,
       "name": "Пельмени",
       "price": 499,
       "weight": 630,
       "description": "Что может быть лучше чем самые обычные пельмени, приготовленные с душой. Мягкое тесто и сочная говядина внтури делают вкус невероятным",
       "image_url": "https://lh3.googleusercontent.com/fife/APg5EObzr6k1HmsChN_hYDWn4dMke5KVpbWm2Ff2AnzB0ZEYCSuA5vkRehfvlW9KbwjCq1J5V6tzhzYa7MZTWED-4YTHHt3NBwARot_KdU5iBnh73HB3xgUgR4bmy6Ah0RbjR-50OPjoSMUqtLowMI8TwJ7rXxcSGeYemhr1SCFqKl2YbUmu3JY4Riz5mxO6WIcr35iXowqayz2gKFOsFW3KhUPMbR1QSq4mjUxwDrPZ82OVMLt4GMJJCNTV6HX1VHOGYvViaqikU1IN4kXgCZ5XUfVTXKAJclGjAiWQ6pf8C5Xw5NbAl76lWVHsOQqVbIqxig8uqnW-6K4rAx02AvF_t7ALDwLN8KXrmh58pJ5OPyrIReLa-RKDUe_fS72qSSO2zl8dVicY2ANVz7f5bpPNUMR8G0gXid1FbEW_9h9yA41MdemTw-rdjUPCA7J3n-rDZuELHTv3dNJ1QblSE_ee01AWa0ljbwTdDQOhdtQY2saHRPj2eLuRdGrgBtPSt64fuGTCygglSnrcJxWU6M8weuUp6FETrs-qWUYvXPVWZDma3db9TC3eAEugZdBQkdaD8yUqrF_l6cqxzVf4KqWmcF41vr5-8mrvQypbtVmoBMR15BZok1hksXJpMc4v4edimtqrg7svx5ytKUyjTiLxk9QFU8pHwiJpwji-A3TNjm7bOX09rvIcL9PhwF13KvV8l73fNIRAe00ByVI_UfBYROwITVGdteZPXASdo5tsSMcBwYt6yHD-ybOwNgkc2m-HG0aJThGoYxXoNHEHCULlwmBlEm4iI9TSUvnR8nEhzO1XBztQ_VkizZ1CUKi8DJ30jfFM1WIUQMIPJc4xP-HNBqrirmPB0AbpzeEI4oARePECl0drE4gj-uqxHzDluoS8Ns689Cc-6tET-NY6Lin_qSAxTzd9piBSp-_mvbgUkbIMfYZqMtt8DRtoviYYTzSL7_Iy3H2Aue2E72paNhyLGf4HIM8ydiQ5A-7vrSMJTnMIR4yiuT20UdWqzoh1rpO3RdmCtUlOrCgBUb4WU-52_1yZcs-wIso6fas70F08SE6-iYuvSyBiKh1Qeju5ujJ_OIOd4c2mYK4aUT5QCq842Rw86h092DBvXsBkks4No5XG6gE2TppSm6E8YeJE6le7Zp4AXvcXBCYfF4PzgDfI4kL8-LvaXy9klrqdpDi-Wht4pzCs924BsQTMQ94p-Bify7Jyyoi9EtiRJweHPwubcrRCAVgGObFgAZfmOZK9g3JgrhXPzq7DcPl37Wvz4W7gPoiejJA_25PMQZA5v0pM1UxG7QDesTdQ6TTUfBRxrL-dx1HDLwscxE-tp6zdFEYVHYIH77c3abfO4yXQBpmw-smquHczSYhKrYyGUhbO4b_zn6irBATn3TfEglYovwsRXjGAXtvyUMTFtadmNfedYWSB6AHbZop3NdwfTq5x2ri3967iGvHCspP61GNRHCkIRAmf-lm2pu1TuEIipxbR-cKjPLoXOsjTJYu9SRTdXwW-fJhJyHTiq6YxJ043mKstI4VdV76hBewXU2Bvcn6C9pH2PH-p_3LXKbXF5HHaoyChpGgWGtcKXt704Nd8tBxVbcqjNob7Jou3EPQALP3bif2fGHSTQS9oCahivvwC7uRb0nvtfOjw=w1366-h617",
       "tegs": [
         "Все меню"
       ]
     },
     {
       "id": 12,
       "name": "Блины",
       "price": 499,
       "weight": 430,
       "description": "Блины выпекаются из пшеничного дрожжевого теста. Подаются горячими с растопленным сливочным маслом или сметаной. Самый лучший вариант для быстрого и вкусного завтрака",
       "image_url": "https://lh3.googleusercontent.com/fife/APg5EObNRtXQjIL4-009Oik6eJK_OjvTjgrGkkyHk7O7hqj2Y6n5QPTNgFc_DBLMLidZXU_n1Frr2KKoMqu9MkUg-OgrY8RgF3B7rL8mRn-uWstQo1YcLxlHpA_eKGEzM2OO42C7lOJDJaV5FrHRRLauP4KpaFIH2KiE-_ocYk7LCPrv4WivPqEp6uWJfGls2JRlgNzPFnsPoayYAMSBYGimXFY8C4rE2gPXhzChxDk_oj9P7IRnwYNFSz6nWgPAIg9fceYaevinEWyqRPmZYBm7uv3YUVHxCSGwXrSZ8aRXWD3F2Rf6N2Abpj_oybfQaIbLzA6YuSuwcXAgs8nvpUB5H7H-p_CoUQRP-KeMR4JORtA9C4xez2-7ubTGKuLGB-pQS9TGjuTlXH6KKdymSUw7lfNPEMZie_ggr8OrgUdK2IErFCmnrm23Of7wWpQa3bkGH7I5UGgSyQFH8OVt2Bwf0tonCfkHoRorsbt-5riCD2qAML0Mecu6lImNHE6zQ6ocLrqGzKrzzhhN4NJCsTXxBzuo6EaB4mTVlnGdGB2IWv7X-Bnr2Yu4QzdjM4BLPoZpJbiMLqjuDUeuMYogQHMfCkfx6-Y-Zq7fANFhlvQ_mzX5XoC9WzLeLuhRPRi86buGlGtVk1rHTaMKlhumPdJj4OqBVU6XVm7EhIhaGF0l1eknnvrj8GB_neyctVfRoPEnkNJZFjO7lXpoB-PEJleNbl5QAaNo6IkcVdzqsfOAlY4EX5ms9S3JC4G4LN5N4gKue_VnMdD73gc881MHp2dcPxFntVhJOJhlUbzKGgleV4Fo2qrGYFvN17rNaHn_nc8ShR0vHd3wnfCK8zmOVzNnMNYWlBzvA0PA8xGXpZbSJ9xcbd4nAynJefFRmPuGsE4Je1kkd4-W6d2FWAHXWbDU6p8TAc4YNDAJNSTkuWaSAt-SPZ79C8lqGw4muR4hWxI7T24bh5-ioZbyLL6NL1rbmIwrZi9ZTCdnjexeUy4bLfSjv4WCqy0_Y_OH4dvS3X3_7fT0frGuzW6F62wj1HZlCUO4vqziOf3OkNq9elP-OggUK1DM0mqFg3-M_AxTNsyaFu75ijHA2zsvxUrEyGYJPbVPKUCvFmI2yTQR80c_A83W5kIwbYxdNQpxHVpWwWndGa3SndkZrMPw2IIY9uZGTCx9j-X3h_Oap3N8NaCiGNGup-gcs0UCXHD1kh3vTkZXz0PIpTZOSh8nCcbnAx3mPVVZexGXTfz7X-mrr95tlluJfJUfx8wn8MPQd2KD-qR_vXUlU1J2KiI-pEsnGxUbstNdHQ95PYMZWM1Z6_QWZcIrxUkS7dIut6q6cW8h6trtI1-74pFeH4ZbQvIcqgYvoAxA9A2FJ5d2ZEqr-tE1AaUIxylG6cMsvOFK4vdMbSybinS4Bp5pBHyX9aR-We0l_h_ZZSad-th78P3vUE92NqGZu_ghQd6VdJudVez2y-ya-w7fOY4Ye49ENa7qYvti3Tzu1cvKEJU_v76_uYjnE98e4y05qHuXBnTv2YWo4fWX4dx9-sl8oeH-VUKNkSo81vsEX9RonLhp5EPHAuQgCY0rkvippnsFVx8qztznJpnmfFUmAvfcxl-_NF6htLYSxsNpYf7HN8YOkldvcwQZykqjVDyr5wwb=w1366-h617",
       "tegs": [
         "Все меню"
       ]
     }
   ]
 }
 */
