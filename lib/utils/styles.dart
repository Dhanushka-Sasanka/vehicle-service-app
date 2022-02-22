import 'package:flutter/material.dart';

import 'colors.dart';

const TextStyle kHeader1 = TextStyle(
    fontSize: 25, fontWeight: FontWeight.bold, color: kInverseActiveColor);

const TextStyle kNormalTextLg =
    TextStyle(fontSize: 16, color: kInverseActiveColor);
TextStyle kBoldTextLg = kNormalTextLg.copyWith(fontWeight: FontWeight.bold);
TextStyle kNormalTextMd = kNormalTextLg.copyWith(fontSize: 13);
TextStyle kBoldTextMd = kNormalTextMd.copyWith(fontWeight: FontWeight.bold);
TextStyle kLinkTextLg = kNormalTextLg.copyWith(color: kLinkColor);
TextStyle kLinkTextMd = kNormalTextMd.copyWith(color: kLinkColor);
