use strict;
use warnings;

# this is what you'd use to get html and images
use LWP::Simple;

sub main {
    print "Downloading...\n";
    #print the html to the console
    #print get("http://www.google.com");

    #save the html to a file called home.html in the pwd
    #getstore("http://www.google.com", "home.html");

    #single quotes won't interpret special characters.
    #this grabs an image and saves it as goog.jpg
    #getstore('http://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png', 'goog.jpg');

    my $code = getstore('http://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png', 'goog.jpg');

    #this will check if the code is a success or failure on the getstore. 200 is a success.
    if($code == 200){
        print "Success\n";
    }
    else {
        print "Failed\n";
    }

    print "Finished\n";
}

main();