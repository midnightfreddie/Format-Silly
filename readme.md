# But Why?

This is just one of those silly things that for some reason I suddenly had a need to apply unnecessary Unicode combining accents/glyphs to strings.

Then I realized this would be a decent excuse to do some test-driven development and creating a module, neither of which I have really done yet but have been intending to do. And as I keep telling people who ask how to learn Powershell, just do something you have an interest in, even if it's stupid. So here we are: A module with a function to return strings with Unicode combining characters to the characters.

There are actually features I want to work on, but I'll write tests first where appropriate:

- Allow pipeline input
- Implement as advanced function
- Have parameter to control to which characters to apply the combining codepoint
- Fix it so the string can be longer than the number of combining characters
