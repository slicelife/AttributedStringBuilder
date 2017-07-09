//: Playground - noun: a place where people can play

import UIKit
import AttributedStringBuilder

var str = "Hello, playground"

let builder = AttributedStringBuilder()

let shadow = NSShadow()
shadow.shadowColor = UIColor.brown
shadow.shadowBlurRadius = 5

builder.defaultAttributes = [
    .textColor( UIColor.red ),
    .font( UIFont.systemFont(ofSize: 16, weight: UIFontWeightSemibold) ),
    .underline(true),
    .strikethrough(true),
    .shadow(shadow)
]

builder
    .text("Hello, it's a")
    .space(attributes: [.strikethrough(false), .underline(false)])
    .text("blue", attributes: [.textColor(UIColor.blue),
                               .shadow(nil),
                               .baselineOffset(10),
                               .underlineColor(UIColor.orange),
                               .strikethroughColor(UIColor.green),
                               .expansion(1)]
    )
    .tabs(2)
    .text(" word")
    .newlines(2)
    .text(" init", attributes: [.strikethrough(false), .kerning(3)])

builder.attributedString