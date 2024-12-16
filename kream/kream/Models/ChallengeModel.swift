//
//  ChallengeModel.swift
//  kream
//
//  Created by 김미주 on 07/11/2024.
//

import Foundation
import UIKit

struct ChallengeModel {
    let image: String
    let id: String
}

extension ChallengeModel {
    static func dummy() -> [ChallengeModel] {
        return [
            ChallengeModel(image: "https://s3-alpha-sig.figma.com/img/999a/ac4f/8290511532eeec15c78ddcf3dec05b24?Expires=1735516800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=mn5XY0oIH~wdF2bQeZyh3XkjRAg3s7DJ9Xi0HKxx9mE1C2ptrWWIMvaULcoeitAwOj~f6cazbWflu8U18SPCAuukpeiRIDh-rfJNeiZq7FED-KkysPL1l2l4ZfUE~hCfQhTToJzPEajfe3zz0cqggQSBmCVNjAx3W9rqntJfXpOub~QZMo-0TBRkoWdZF8P5BSFMUpf9JFfEVA95gLg5fMkqmLtVE1liAO2yEOzyBeOpKUVQF5kNCbuZQSm-~8P9OdJGsB8xP6U5jl~KckX6qN5R9BHdyV4Byw0NGR5e1xkODuPRiwHt5FUXnFBZGn5kaUSXXNlPKOaJVivtBZd8BQ__", id: "@katarinabluu"),
            ChallengeModel(image: "https://s3-alpha-sig.figma.com/img/ca87/468e/5d814c960a1a06130e85528296c08042?Expires=1735516800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=iJvnlMZtJ5jqVFAQySZ1rbQDzbQlLT8WMoKmmQPDFIqfq9wM9eiMQ7EFqwTwMrKrX0PH260LSufiiHqmzLLF0IADjt46sU9MX9tXpLItNhECzUMneTyEmwKo1tPbr4nYKYmS1I~q2-1SBpxANCXu7dL4iwYB6v5vkp8yQcYlqQgi7ZaZakBfR7MkSupYcgWM9XKW-gFTJmx5FGQevUxKm5zlXMuEuMlhoiK8BXVQJfRmMxZ4-kMEhj9nv7z72ugzRRexuTzC1XiMRoZUZWOF2wsddQ-y1I247VlmOnTvTXYFQiRSyJD8lYXEIpJeRAcBcM-9ytfY-IlTP8g1Xrmc~Q__", id: "@imwinter"),
            ChallengeModel(image: "https://s3-alpha-sig.figma.com/img/e6d3/d6d7/e302cef496c775bbc7ee11b1a49f53fa?Expires=1735516800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dj8zo9UnIeTWe7XMwk4s~opfOoiyq58n3vQBIl-SrWzOzxrnjxIPjTYjCf3FgIRsCJOpj7IG3wlQRouaUpewZe0bfgR491JWFFhjUWUO1DzrZaqdO9ZFuNgfvi7eir7hVG5W-EBIr7JMkORmLCYQ3O4qiUultrjg9cPtp~-3iTrB6Jya8rMXrrCMRmWngrU4oGMyBhxTRRcC0sF3y~L-4~rXAN8~g-SjF6yNN-T~Hmg9axE~agNxM~Xhzs5fsvOTStJlwG9r7JLraVgZJlLkgOWwpZ6cIO0tc8oYIGY~oyoFEF8Cj0MaBuS5C5FUZbDYrswvJMUGhOnQNhgjRyv67A__", id: "@thousand_wooo"),
            ChallengeModel(image: "https://scontent-gmp1-1.cdninstagram.com/v/t51.29350-15/373256155_275926591886709_1604099095223248090_n.heic?stp=dst-jpg_e35_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi45NTJ4MTE4OC5zZHIuZjI5MzUwLmRlZmF1bHRfaW1hZ2UifQ&_nc_ht=scontent-gmp1-1.cdninstagram.com&_nc_cat=109&_nc_ohc=6idwnpb2qZoQ7kNvgEXvO4v&_nc_gid=9593ffec37a74e87a94681df9a271f38&edm=APoiHPcBAAAA&ccb=7-5&ig_cache_key=MzE4MzYzMDA1ODQ4MzU3MjU0NQ%3D%3D.3-ccb7-5&oh=00_AYCbkW7bI6EcDYIg2rqge_flbIzFLeaMl8tAM8VXLhCIHA&oe=676640E0&_nc_sid=22de04", id: "@hm_son7"),
            ChallengeModel(image: "https://scontent-gmp1-1.cdninstagram.com/v/t51.29350-15/458417441_1886222511874826_2034288790610920851_n.jpg?stp=dst-jpg_e35_p1080x1080_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE3OTUuc2RyLmYyOTM1MC5kZWZhdWx0X2ltYWdlIn0&_nc_ht=scontent-gmp1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=drTULuXvqyQQ7kNvgHCQg9b&_nc_gid=3d31afac53ae4d5cb885a9e73d4a0ce3&edm=AP4sbd4BAAAA&ccb=7-5&ig_cache_key=MzQ0OTgyMzc2NDM1NzA2MzQyMQ%3D%3D.3-ccb7-5&oh=00_AYACESK67rF8OU4HFLPX5E8SMl3Suloy6VjOaky4mN8mTQ&oe=67661989&_nc_sid=7a9f4b", id: "@brenjohnson_"),
            ChallengeModel(image: "https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/469027143_18469550224051069_4822346852509563556_n.jpg?stp=dst-jpg_e35_p1080x1080_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDAuc2RyLmY3NTc2MS5kZWZhdWx0X2ltYWdlIn0&_nc_ht=scontent-gmp1-1.cdninstagram.com&_nc_cat=101&_nc_ohc=7v19eOuNGm4Q7kNvgE4ZXgF&_nc_gid=abc6a46190db47eca413ba9b35bd26da&edm=AP4sbd4BAAAA&ccb=7-5&ig_cache_key=MzUxNDQyMzUzNDQ4NDQ3ODcyNw%3D%3D.3-ccb7-5&oh=00_AYDb-pdEovmi3ZFIhIw70roSBcFaMWgkM2Mtkv3WTVX_Pw&oe=67663F24&_nc_sid=7a9f4b", id: "@mickyvdven"),
            ChallengeModel(image: "https://scontent-gmp1-1.cdninstagram.com/v/t39.30808-6/448830655_18457028401053342_3368541222299729482_n.jpg?stp=dst-jpg_e35_p1080x1080_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDAuc2RyLmYzMDgwOC5kZWZhdWx0X2ltYWdlIn0&_nc_ht=scontent-gmp1-1.cdninstagram.com&_nc_cat=106&_nc_ohc=Nwcb2RndqZIQ7kNvgHh3mZy&_nc_gid=daf8be5f2da146048947e444941e9f49&edm=AP4sbd4AAAAA&ccb=7-5&ig_cache_key=MzM5NDY0NTI2MzM3OTc0NzMxNQ%3D%3D.3-ccb7-5&oh=00_AYDX8EPiC0RSbSwScwcPCiyl2vG-J11LyYUhhXmwq4BpVg&oe=67661E5C&_nc_sid=7a9f4b", id: "@lucasbergvall"),
            ChallengeModel(image: "https://scontent-gmp1-1.cdninstagram.com/v/t39.30808-6/459602061_18456931861048153_4665607077221529048_n.jpg?stp=dst-jpg_e35_p1080x1080_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE1OTYuc2RyLmYzMDgwOC5kZWZhdWx0X2ltYWdlIn0&_nc_ht=scontent-gmp1-1.cdninstagram.com&_nc_cat=101&_nc_ohc=XEZd8W8QiwYQ7kNvgERo9n5&_nc_gid=7bad473cbf4c4ba0a869a379f0613776&edm=APoiHPcAAAAA&ccb=7-5&ig_cache_key=MzQ1NzA3NDMyOTQwOTAyNzU1OQ%3D%3D.3-ccb7-5&oh=00_AYC-6xzQgrPcGKBEYSwjQzmPQ5tHlgR_17Q35thKLdnH2Q&oe=676620BF&_nc_sid=22de04", id: "@cutiromero2"),
            ChallengeModel(image: "https://scontent-gmp1-1.cdninstagram.com/v/t51.29350-15/426017001_273818055737394_5521197352087193381_n.jpg?stp=dst-jpg_e35_p1080x1080_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE3OTYuc2RyLmYyOTM1MC5kZWZhdWx0X2ltYWdlIn0&_nc_ht=scontent-gmp1-1.cdninstagram.com&_nc_cat=106&_nc_ohc=UNINMCsRhs0Q7kNvgEAaTuI&_nc_gid=b39ddd738c1e441592c874a098f81d97&edm=APoiHPcBAAAA&ccb=7-5&ig_cache_key=MzI5NzY1NTk4MzExODI1NTM1MA%3D%3D.3-ccb7-5&oh=00_AYBijNE5MDIF7rp6Tuao23Ecx-AbzMLXfl8AC2sxGmY0hA&oe=6766291D&_nc_sid=22de04", id: "@madders"),
            ChallengeModel(image: "https://scontent-gmp1-1.cdninstagram.com/v/t51.29350-15/468567625_1078718336878454_1578349801967857936_n.jpg?stp=dst-jpg_e35_p1080x1080_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDAuc2RyLmYyOTM1MC5kZWZhdWx0X2ltYWdlIn0&_nc_ht=scontent-gmp1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=S9DQoWAc55AQ7kNvgGIpq95&_nc_gid=ca5cf5bac42c45778e03e9579eb9b4fb&edm=AP4sbd4BAAAA&ccb=7-5&ig_cache_key=MzUxMDAxMzI0NjU2MTU3MTAxNQ%3D%3D.3-ccb7-5&oh=00_AYAA878qQ3VUHlSJHvkq3ZV0JN49t3mnPu6rv9Cg6ecNug&oe=67662006&_nc_sid=7a9f4b", id: "@solanke")
        ]
    }
}
