## Rotten Tomatoes

This is a movies app displaying box office using the [Rotten Tomatoes API](http://developer.rottentomatoes.com/docs/read/JSON).

Time spent: 11 hours

### Features

#### Required

- [x] User can view a list of movies. Poster images load asynchronously.
- [x] User can view movie details by tapping on a cell.
- [x] User sees loading state while waiting for the API.
- [x] User sees error message when there is a network error: http://cl.ly/image/1l1L3M460c3C
- [x] User can pull to refresh the movie list.

#### Optional

- [x] For the larger poster, load the low-res first and switch to high-res when complete.
- [x] Add a search bar: pretty simple implementation of searching against the existing table view data.
- [ ] All images fade in.
- [ ] All images should be cached in memory and disk: AppDelegate has an instance of `NSURLCache` and `NSURLRequest` makes a request with `NSURLRequestReturnCacheDataElseLoad` cache policy. I tested it by turning off wifi and restarting the app.
- [ ] Customize the highlight and selection effect of the cell.
- [ ] Customize the navigation bar.
- [ ] Add a tab bar for Box Office and DVD.

### Walkthrough
![Video Walkthrough](https://cloud.githubusercontent.com/assets/3673740/6123153/665a3d94-b0b3-11e4-8aa8-87a32ee053b8.gif)

Credits
---------
* [Rotten Tomatoes API](http://developer.rottentomatoes.com/docs/read/JSON)
* [AFNetworking](https://github.com/AFNetworking/AFNetworking)
* Gif created with [LiceCap](http://www.cockos.com/licecap/)
