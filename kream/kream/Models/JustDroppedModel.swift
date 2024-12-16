//
//  JustDroppedModel.swift
//  kream
//
//  Created by 김미주 on 07/11/2024.
//

import Foundation
import UIKit

struct JustDroppedModel {
    let image: String
    let imageColor: UIColor
    let trade: String
    let saved: UIImage
    let brand: String
    let goods: String
    let price: String
}

extension JustDroppedModel {
    static func dummy() -> [JustDroppedModel] {
        return [
            JustDroppedModel(image: "https://kream-phinf.pstatic.net/MjAyMzA0MTBfMjUy/MDAxNjgxMTAxNjY1NDk0.fkn9D3pI-6p5IpOf8Y7RtX0q8OV2F2IiGQuFNxW2_F8g.qJsWIZF9DgxakelnDy3kudukcX3aojiU4g7LDENN3Asg.JPEG/a_b90ed2b733a645d79c85b66b90753abb.jpg?type=m", imageColor: UIColor(red: 234/255, green: 240/255, blue: 245/255, alpha: 1), trade: "거래 20.4만", saved: .iconSavedNone, brand: "Matin Kim", goods: "Matin Kim Logo Coating Jumper", price: "228,000원"),
            JustDroppedModel(image: "https://s3-alpha-sig.figma.com/img/3888/3485/40338332862dec62a2a1370c053f1e3d?Expires=1735516800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=poG~PHG2S1WUrczRHX~~OjF8T8cEhSrtwVf~En1WHxGOSvshu2qGjeR3cD~0~8SXl0S0C5rMXMzETSZy-Cc3jFfz-VSyrS31m5xW2U-D0dNZimixXqQm63ztjatp5-O3i5h9v0eoaorcL85J4njZyicb2hMJ-paoQRXTzbmXXNbUW2W0MZpj3gqNSAC1A4ZNGxnHIVSIOnWEuMon3-FEAetzzAVTQ~a7N3iEThaVXnXcVEJBZfp17FZ2PoceKWVmNWmYTiH~rKF6pB~ltd~EVNPRd~-uo5jpUqi8kh9tvRySEMVGd-sxdrWfI1m~caaTPJiCKFTkORdOdDvUES9DgA__", imageColor: UIColor(red: 234/255, green: 240/255, blue: 245/255, alpha: 1), trade: "거래 12.8만", saved: .iconSavedNone, brand: "MLB", goods: "청키라이너 뉴욕양키스", price: "139,000원"),
            JustDroppedModel(image: "https://s3-alpha-sig.figma.com/img/44e5/158d/85a822e2d9940249bee1e726f0fa4df1?Expires=1735516800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LX9aKFthTMK0GePaHGlHqJBDQNBW0Mq18Uu48Ys5UUn7FwDaouN8MC2e5lboAMPPRMc0P5lzvryTM7qcqy0OFNN4pB-Ny1vyYle66LkRnV2ciZ19CtTr5fcA078zPLN~qQUGllwrB-r9Y57gj13ak2qIpHT1CCxq2bUUXXtiBkj35grwql7YHsSxXi-F1bWaP12jprBAh~tFYiAa9QV-cRam3-4OBdZvZZCW6wgHEPJ81Ev30Hp~fCwdm-tE6600Lc4Xyvrvi6FbpFYQoyaHBpIZ2VcFr1Wbtv62O5MxrIw3FzZ2tMqSBYG6JtlmTrr0dGlQMvfs8bXA8sYQSWd06Q__", imageColor: UIColor(red: 246/255, green: 237/255, blue: 236/255, alpha: 1), trade: "거래 15.6만", saved: .iconSavedFilled, brand: "Jordan", goods: "Jordan 1 Retro High OG Yellow Ochre", price: "228,000원"),
            JustDroppedModel(image: "https://s3-alpha-sig.figma.com/img/6405/60ad/f845a3a967992652b95e739c468ce356?Expires=1735516800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Yt6dd4AZ~LZKHuMWJimg~zDTjOiX-g1~dP4YYbT0aOaJILwifQ-2f62eHtbv3PpqVqJo0u3eH2IuSuqPEmS3KgfQuCzJD93qw41Qd6HnJxTWYfvY-dPWwszcfOxvkf3UkMVe5WZscZr7wy18GvrL0M7f2NMCDqSuIY61KlTxhgsx6502diMFKf-8viUbo5xRosXsWv1RsNuGqCUiAB2sKYO-wKGZIy6-NJIxtlAH-6WnKflO0lR9HSLH9zL3J-ARl6FoGambQ1dSYdRLoZWIrc~-UFmIZnxoF5jvxiG3F9eQybXV0lx8j6EpVfnwGCXDLt7dK27Wa3N8PKESVaHQLw__", imageColor: UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1), trade: "거래 12.8만", saved: .iconSavedNone, brand: "Human Made", goods: "Human Made x Kaws Varsity Jacket #1 Black", price: "2,000,000원"),
            JustDroppedModel(image: "https://kream-phinf.pstatic.net/MjAyMzA5MjJfMTMw/MDAxNjk1MzYxNjU3NzAw.gElha67RtSfiLIbIoXmLPGtmcr1xrk158xHqLnU3KGgg.n4_89g-cC5yuJ4wZoZA3zPmv9LCu06xC5zafTToLpqAg.PNG/a_2203d56bec564a7a97faaeb44205f49d.png?type=m", imageColor: UIColor(red: 234/255, green: 240/255, blue: 245/255, alpha: 1), trade: "거래 2.3만", saved: .iconSavedNone, brand: "Nike", goods: "(W) Nike Air Force 1 '07 Cacao Wow", price: "153,000원"),
            JustDroppedModel(image: "https://kream-phinf.pstatic.net/MjAyNDA0MzBfMjQ4/MDAxNzE0NDU3NTA0NDY3.uhHmPo2eTps4vJOLZCvUL8GgAVe1IrNp5Fu52AT0sYsg.eBsb4V70QlcClcsiNF_8hNoQsMn9wgDSjOUD_KRt9tYg.JPEG/a_443c30cc26c94409a67739527b03412f.jpg?type=m_webp", imageColor: UIColor(red: 234/255, green: 240/255, blue: 245/255, alpha: 1), trade: "거래 1,362", saved: .iconSavedFilled, brand: "Monamhee", goods: "Monamhee x NOS7 SON.hee Keyring Cream", price: "72,000원"),
            JustDroppedModel(image: "https://kream-phinf.pstatic.net/MjAyMjEyMjhfMTc4/MDAxNjcyMjE1ODk4NzM4.oQP20W08nILfsDMLk9tC3opGhpCU6KoZcQhZj99WO2Qg.E_TskrCsmvRHNLspFSIowa4CPnpo9sO-0MEBJOz3BXUg.PNG/a_f8fc94b095eb41119cf1a7d2c95149cb.png?type=m_webp", imageColor: UIColor(red: 246/255, green: 237/255, blue: 236/255, alpha: 1), trade: "거래 3,649", saved: .iconSavedFilled, brand: "UGG", goods: "(W) UGG Funkette Slides Chestnut", price: "143,000원"),
            JustDroppedModel(image: "https://kream-phinf.pstatic.net/MjAyMjAxMDVfMTQ1/MDAxNjQxMzQ3MzA1OTMw.JsL8-rc-1812N33IQVAvyHYKpw1K6vnuWYR-dtzySwUg.gVXiel30kqYXEBxlem5z32DfvvYGP9sYeQqOD1BIHtQg.JPEG/a_f67dc30ce0fc4d24a83b3b00e387b1c9.jpg?type=m_webp", imageColor: UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1), trade: "거래 27", saved: .iconSavedNone, brand: "Acne Studios", goods: "Acne Studios Mohair Check Scarf Pink Light Blue Green", price: "1,350,000원"),
            JustDroppedModel(image: "https://kream-phinf.pstatic.net/MjAyNDA2MDRfMjM2/MDAxNzE3NDk0MDc4Nzk1.6uPkVGnPYFl3EfQmA98Jk_DeAX1Jue6rZmZrhObex3wg.Z2peIOPLBTHDgjuii1yZg1aGRrxXvmlszjYBKj0-GWQg.JPEG/a_acf8a9bf1df1494ab830ce7e992d98b0.jpg?type=l_webp", imageColor: UIColor(red: 234/255, green: 240/255, blue: 245/255, alpha: 1), trade: "거래 976", saved: .iconSavedFilled, brand: "Nike", goods: "Nike Tottenham Hotspur 2024/25 Dri-Fit Stadium Home Jersey White (Non Marking Ver.)", price: "98,000원"),
            JustDroppedModel(image: "https://kream-phinf.pstatic.net/MjAyMzEyMTJfOTcg/MDAxNzAyMzY1ODEwODMz.rtiqGTsGifGRlidS-g1G4XhN0_UL6sUV2hsTDmRyhYQg.LoXOBx1EZfdmUD46HnZVT-GUd386oNTIusBWucGmSCIg.PNG/a_ef42d977123f44d0b314a3e72c3cc58c.png?type=m_webp", imageColor: UIColor(red: 234/255, green: 240/255, blue: 245/255, alpha: 1), trade: "거래 8,460", saved: .iconSavedNone, brand: "Adidas", goods: "Adidas VL Court 2.0 Cream Brown", price: "60,000원")
            
        ]
    }
}
