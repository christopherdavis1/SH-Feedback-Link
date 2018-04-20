# SH-Feedback-Link
A small and messy but hopefully (at least minimally) helpful chunk of code for loading a feedback link from a button press in the app. 

# What's in here? 
This little thing is comprised of two View Controllers...
- ViewController (the main view...mostly just holding the feedback button.)
- WebViewController (Loads the site. More on this in a second.)
- A bunch of assets (more on that below too)

## The UI
This project has all of the styling for the feedback button as runtime attributes. There's also a small extension in UIViewExtensions.swift that tells the shadow color from UIColor to cgColor.
There are also several icons in the assets folder, namely : 
- The feedback icon
- The back icon (leftIcon)
- the right icon (rightIcon)
- The reload icon (refreshIcon)
- the share icon (unused in this project, originally planned for the toolbar on the webView)

## The Structure 
The **ViewController** segues to a navigation controller that directs to the **WebViewController**. 
The **WebViewController** has four actions : 
- Done (close the URL and return to the main view)
- Reload
- goBack
- goForward

I'm currently just passing in the Trello URL, because we don't have the Typeforms ready yet.  

-- 

Anyhow. It's likely that all of this is garbage. But if it helps at least a little, I'll be excited! I'm learning Swift, so any chance to write it is a learning experience.
