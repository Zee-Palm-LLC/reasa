import 'package:flutter/widgets.dart';

import 'package:reasa/app/data/assets_path.dart';

class LanguageModel {
  String language;
  LanguageModel({
    required this.language,
  });
}

List<LanguageModel> language = [
  englishus,
  englishuk,
  nodummy,
  mandarin,
  hindi,
  spanish,
  french,
  spanish,
  french,
  begali,
  russian,
];

LanguageModel englishus = LanguageModel(
  language: "English (US)",
);

LanguageModel englishuk = LanguageModel(
  language: "English (UK)",
);

LanguageModel nodummy = LanguageModel(
  language: "nodummy",
);

LanguageModel mandarin = LanguageModel(
  language: "Mandarin",
);

LanguageModel hindi = LanguageModel(
  language: "Hindi",
);

LanguageModel spanish = LanguageModel(
  language: "Spanish",
);

LanguageModel french = LanguageModel(
  language: "French",
);

LanguageModel arabic = LanguageModel(language: "Arabic");

LanguageModel begali = LanguageModel(
  language: "Bengali",
);

LanguageModel russian = LanguageModel(
  language: "Russian",
);
