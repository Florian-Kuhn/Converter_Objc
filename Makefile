default: compile

compile: 
	xcodebuild -workspace Converter.xcworkspace -scheme Converter -sdk iphonesimulator8.1 -derivedDataPath build clean build

test: 
	xcodebuild -workspace Converter.xcworkspace -scheme Converter -sdk iphonesimulator8.1 -derivedDataPath build -destination 'platform=iOS Simulator,name=iPhone 6' test

deploy:
	ipa build -d build
