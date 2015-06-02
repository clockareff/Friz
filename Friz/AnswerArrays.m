//
//  AnswerArrays.m
//  FrizTest
//
//  Created by Colin Lockareff on 7/22/13.
//
//

#import "AnswerArrays.h"
#import "User.h"
#import "Friend.h"

User *person;

@implementation AnswerArrays

-(id) init: (User*) userInit
{
    if ((self = [super init]))
    {
        person = userInit;
    }
    return self;
}


-(NSString*) randomCollege
{
    NSMutableArray *colleges = [[NSMutableArray alloc] init];
    NSMutableArray *friends = [person getFriends];
    
    for (int i=0; i<[friends count]; i++)
    {
        if ([[[friends objectAtIndex: i] getCollege] length] !=0)
        {
            [colleges addObject: [[[person getFriends] objectAtIndex: i] getCollege]];
        }
    }
    
    {
//    [colleges addObject: @"Harvard University"];
//    [colleges addObject: @"Stanford University"];
//    [colleges addObject: @"Massachusetts Institute of Technology"];
//    [colleges addObject: @"University of California, Berkeley"];
//    [colleges addObject: @"California Institute of Technology"];
//    [colleges addObject: @"Princeton University"];
//    [colleges addObject: @"Columbia University"];
//    [colleges addObject: @"University of Chicago"];
//    [colleges addObject: @"Yale University"];
//    [colleges addObject: @"University of California, Los Angeles"];
//    [colleges addObject: @"Cornell University"];
//    [colleges addObject: @"University of Pennsylvania"];
//    [colleges addObject: @"University of California, San Diego"];
//    [colleges addObject: @"University of Washington"];
//    [colleges addObject: @"Johns Hopkins University"];
//    [colleges addObject: @"University of California, San Francisco"];
//    [colleges addObject: @"University of Wisconsin - Madison"];
//    [colleges addObject: @"University of Michigan"];
//    [colleges addObject: @"University of Illinois"];
//    [colleges addObject: @"New York University"];
//    [colleges addObject: @"University of Minnesota, Twin Cities"];
//    [colleges addObject: @"Northwestern University"];
//    [colleges addObject: @"Washington University in St. Louis"];
//    [colleges addObject: @"Rockefeller University"];
//    [colleges addObject: @"University of Colorado at Boulder"];
//    [colleges addObject: @"University of California, Santa Barbara"];
//    [colleges addObject: @"The University of Texas at Austin"];
//    [colleges addObject: @"Duke University"];
//    [colleges addObject: @"University of Maryland"];
//    [colleges addObject: @"University of North Carolina"];
//    [colleges addObject: @"University of California, Irvine"];
//    [colleges addObject: @"University of Southern California"];
//    [colleges addObject: @"University of California, Davis"];
//    [colleges addObject: @"The University of Texas"];
//    [colleges addObject: @"Pennsylvania State University"];
//    [colleges addObject: @"Vanderbilt University"];
//    [colleges addObject: @"Carnegie Mellon University"];
//    [colleges addObject: @"Purdue University"];
//    [colleges addObject: @"University of Pittsburgh"];
//    [colleges addObject: @"Rutgers"];
//    [colleges addObject: @"Brown University"];
//    [colleges addObject: @"The Ohio State University"];
//    [colleges addObject: @"Boston University"];
//    [colleges addObject: @"University of Florida"];
//    [colleges addObject: @"University of Arizona"];
//    [colleges addObject: @"Arizona State University"];
//    [colleges addObject: @"University of Utah"];
//    [colleges addObject: @"Indiana University"];
//    [colleges addObject: @"University of Rochester"];
//    [colleges addObject: @"Rice University"];
//    [colleges addObject: @"Texas A&M University"];
//    [colleges addObject: @"Michigan State University"];
//    [colleges addObject: @"Case Western Reserve University"];
//    [colleges addObject: @"Baylor College"];
//    [colleges addObject: @"Emory University"];
//    [colleges addObject: @"Georgia Institute of Technology"];
//    [colleges addObject: @"The University of Georgia"];
//    [colleges addObject: @"Tufts University"];
//    [colleges addObject: @"University of California, Riverside"];
//    [colleges addObject: @"University of California, Santa Cruz"];
//    [colleges addObject: @"University of Delaware"];
//    [colleges addObject: @"University of Hawaii"];
//    [colleges addObject: @"University of Iowa"];
//    [colleges addObject: @"University of Massachusetts Amherst"];
//    [colleges addObject: @"University of Massachusetts"];
//    [colleges addObject: @"University of Virginia"];
//    [colleges addObject: @"Colorado State University"];
//    [colleges addObject: @"Dartmouth College"];
//    [colleges addObject: @"George Mason University"];
//    [colleges addObject: @"North Carolina State University"];
//    [colleges addObject: @"Oregon State University"];
//    [colleges addObject: @"University of Illinois"];
//    [colleges addObject: @"University of Maryland"];
//    [colleges addObject: @"University of Miami"];
//    [colleges addObject: @"University of Nebraska"];
//    [colleges addObject: @"University of Tennessee"];
//    [colleges addObject: @"Brandeis University"];
//    [colleges addObject: @"Florida State University"];
//    [colleges addObject: @"Louisiana State University"];
//    [colleges addObject: @"Rensselaer Polytechnic Institute"];
//    [colleges addObject: @"George Washington University"];
//    [colleges addObject: @"University of Alabama"];
//    [colleges addObject: @"University of Connecticut"];
//    [colleges addObject: @"University of New Mexico"];
//    [colleges addObject: @"Thomas Jefferson University"];
//    [colleges addObject: @"University of Central Florida"];
//    [colleges addObject: @"University of Cincinnati"];
//    [colleges addObject: @"University of Colorado at Denver"];
//    [colleges addObject: @"University of Houston"];
//    [colleges addObject: @"University of Kansas"];
//    [colleges addObject: @"University of Kentucky"];
//    [colleges addObject: @"University of Missouri"];
//    [colleges addObject: @"University of Notre Dame"];
//    [colleges addObject: @"University of Oregon"];
//    [colleges addObject: @"University of South Florida"];
//    [colleges addObject: @"Washington State University"];
//    [colleges addObject: @"Brigham Young University"];
//    [colleges addObject: @"Clemson University"];
//    [colleges addObject: @"Drexel University"];
//    [colleges addObject: @"Georgetown University"];
//    [colleges addObject: @"Indiana University"];
//    [colleges addObject: @"Kansas State University"];
//    [colleges addObject: @"University of South Carolina"];
//    [colleges addObject: @"Northeastern University"];
//    [colleges addObject: @"Saint Louis University"];
//    [colleges addObject: @"San Diego State University"];
//    [colleges addObject: @"State University of New York"];
//    [colleges addObject: @"Syracuse University"];
//    [colleges addObject: @"Temple University"];
//    [colleges addObject: @"The University of Montana"];
//    [colleges addObject: @"Tulane University"];
//    [colleges addObject: @"University of Alaska"];
//    [colleges addObject: @"University of Nebraska"];
//    [colleges addObject: @"University of New Hampshire"];
//    [colleges addObject: @"University of Oklahoma"];
//    [colleges addObject: @"University of Rhode Island"];
//    [colleges addObject: @"University of Vermont"];
//    [colleges addObject: @"Wake Forest University"];
//    [colleges addObject: @"Auburn University"];
//    [colleges addObject: @"Boston College"];
//    [colleges addObject: @"Kent State University"];
//    [colleges addObject: @"Lehigh University"];
//    [colleges addObject: @"Montana State University"];
//    [colleges addObject: @"Southern Methodist University"];
//    [colleges addObject: @"Texas Tech University"];
//    [colleges addObject: @"The University of Texas"];
//    [colleges addObject: @"University of Arkansas"];
//    [colleges addObject: @"University of Louisville"];
//    [colleges addObject: @"University of Wyoming"];
//    [colleges addObject: @"Utah State University"];
}

    int randomIndex = arc4random() % [colleges count];
    return [colleges objectAtIndex: randomIndex];
}

-(NSString*) randomHighSchool
{
    NSMutableArray *highSchools = [[NSMutableArray alloc] init];
    NSMutableArray *friends = [person getFriends];
    
    for (int i=0; i<[friends count]; i++)
    {
        if ([[[friends objectAtIndex: i] getHighSchool] length] !=0)
        {
            [highSchools addObject: [[[person getFriends] objectAtIndex: i] getHighSchool]];
        }
    }
  
    {
//    [highSchools addObject: @"Stanton College Preparatory School"];           
//    [highSchools addObject: @"Suncoast Community"];
//    [highSchools addObject: @"Pine View School"];
//    [highSchools addObject: @"Westlake Academy"];
//    [highSchools addObject: @"Oxford Academy"];
//    [highSchools addObject: @"International School"];
//    [highSchools addObject: @"Corbett School"];
//    [highSchools addObject: @"Northside College Prep"];
//    [highSchools addObject: @"Gretchen Whitney"];
//    [highSchools addObject: @"Bronxville"];
//    [highSchools addObject: @"Jericho"];
//    [highSchools addObject: @"Hunter College"];
//    [highSchools addObject: @"George Mason"];
//    [highSchools addObject: @"Highland Park"];
//    [highSchools addObject: @"McNair Academic"];
//    [highSchools addObject: @"Lincoln Park Academy"];
//    [highSchools addObject: @"Walter Payton College Preparatory"];
//    [highSchools addObject: @"Indian Hill"];
//    [highSchools addObject: @"Locust Valley"];
//    [highSchools addObject: @"Great Neck South"];
//    [highSchools addObject: @"Mast Academy"];
//    [highSchools addObject: @"Pittsford Sutherland"];
//    [highSchools addObject: @"The Wheatley School"];
//    [highSchools addObject: @"Plano West Senior"];
//    [highSchools addObject: @"Walnut Hills"];
//    [highSchools addObject: @"Stuyvesant"];
//    [highSchools addObject: @"Henry M. Gunn"];
//    [highSchools addObject: @"Eastwood Academy"];
//    [highSchools addObject: @"Woods Charter School"];
//    [highSchools addObject: @"The Charter School of Wilmington"];
//    [highSchools addObject: @"Mission San Jose"];
//    [highSchools addObject: @"Monta Vista"];
//    [highSchools addObject: @"East Chapel Hill"];
//    [highSchools addObject: @"Pittsford Mendon"];
//    [highSchools addObject: @"Syosset"];
//    [highSchools addObject: @"Chagrin Falls"];
//    [highSchools addObject: @"Cold Spring Harbor"];
//    [highSchools addObject: @"Westwood"];
//    [highSchools addObject: @"Herricks"];
//    [highSchools addObject: @"Canyon Crest Academy"];
//    [highSchools addObject: @"Lynbrook"];
//    [highSchools addObject: @"Northview"];
//    [highSchools addObject: @"Saratoga"];
//    [highSchools addObject: @"Palos Verdes Peninsula"];
//    [highSchools addObject: @"Union County Magnet"];
//    [highSchools addObject: @"Dublin Jerome"];
//    [highSchools addObject: @"Newport"];
//    [highSchools addObject: @"Garden City"];
//    [highSchools addObject: @"Plano Senior"];
//    [highSchools addObject: @"Torrey Pines"];
//    [highSchools addObject: @"Centennial"];
//    [highSchools addObject: @"E. L. Vandermeulen"];
//    [highSchools addObject: @"James Madison"];
//    [highSchools addObject: @"Interlake"];
//    [highSchools addObject: @"Townsend Harris"];
//    [highSchools addObject: @"Harding Charter Preparatory"];
//    [highSchools addObject: @"Troy"];
//    [highSchools addObject: @"Whitney M. Young Magnet"];
//    [highSchools addObject: @"Booker T. Washington"];
//    [highSchools addObject: @"Allen D. Nease"];
//    [highSchools addObject: @"San Marino"];
//    [highSchools addObject: @"La Canada"];
//    [highSchools addObject: @"Clayton"];
//    [highSchools addObject: @"H. B. Plant"];
//    [highSchools addObject: @"West Windsor-Plainsboro South"];
//    [highSchools addObject: @"Van Nuys"];
//    [highSchools addObject: @"Belmont"];
//    [highSchools addObject: @"Diamond Bar"];
//    [highSchools addObject: @"John L. Miller Great Neck North"];
//    [highSchools addObject: @"Miramonte"];
//    [highSchools addObject: @"Ottawa Hills"];
//    [highSchools addObject: @"Ridge"];
//    [highSchools addObject: @"Edgemont"];
//    [highSchools addObject: @"Mountain Brook"];
//    [highSchools addObject: @"Brooklyn Technical"];
//    [highSchools addObject: @"Palm Harbor University"];
//    [highSchools addObject: @"Dover-Sherborn"];
//    [highSchools addObject: @"Winston Churchill"];
//    [highSchools addObject: @"Orange"];
//    [highSchools addObject: @"Solon"];
//    [highSchools addObject: @"Adlai E. Stevenson"];
//    [highSchools addObject: @"Edina"];
//    [highSchools addObject: @"Rye Neck"];
//    [highSchools addObject: @"Palos Verdes"];
//    [highSchools addObject: @"Westview"];
//    [highSchools addObject: @"South Side"];
//    [highSchools addObject: @"Northwood"];
//    [highSchools addObject: @"Westlake"];
//    [highSchools addObject: @"Hopkinton"];
//    [highSchools addObject: @"Weston"];
//    [highSchools addObject: @"Piedmont"];
//    [highSchools addObject: @"Bellevue"];
//    [highSchools addObject: @"Cresskill"];
//    [highSchools addObject: @"Bernards"];
//    [highSchools addObject: @"Harborfields"];
//    [highSchools addObject: @"Deerfield"];
//    [highSchools addObject: @"Pleasantville"];
//    [highSchools addObject: @"Eleanor Roosevelt"];
//    [highSchools addObject: @"Hinsdale Central"];
//    [highSchools addObject: @"Palo Alto"];
//    [highSchools addObject: @"Holmdel"];
//    [highSchools addObject: @"Conestoga"];
//    [highSchools addObject: @"Chatham"];
//    [highSchools addObject: @"Olentangy Liberty"];
//    [highSchools addObject: @"Cocoa Beach"];
//    [highSchools addObject: @"Bloomfield Middle"];
//    [highSchools addObject: @"Ladue Horton Watkins"];
//    [highSchools addObject: @"New Trier Township"];
//    [highSchools addObject: @"Minnetonka"];
//    [highSchools addObject: @"Niwot"];
//    [highSchools addObject: @"Benjamin Banneker"];
//    [highSchools addObject: @"School Without Walls Senior"];
//    [highSchools addObject: @"Lexington"];
//    [highSchools addObject: @"Oakwood"];
//    [highSchools addObject: @"Colleyville Heritage"];
//    [highSchools addObject: @"West Windsor-Plainsboro North"];
//    [highSchools addObject: @"Tenafly"];
//    [highSchools addObject: @"Oak Park"];
//    [highSchools addObject: @"Boca Raton Community"];
//    [highSchools addObject: @"Corona Del Mar"];
//    [highSchools addObject: @"Los Altos"];
//    [highSchools addObject: @"Northside Health Career"];
//    [highSchools addObject: @"Mountain Lakes"];
//    [highSchools addObject: @"Carroll Senior"];
//    [highSchools addObject: @"Thomas S. Wootton"];
//    [highSchools addObject: @"Sunny Hills"];
//    [highSchools addObject: @"Haas Hall Academy"];
//    [highSchools addObject: @"Glenbrook North"];
//    [highSchools addObject: @"Elizabeth"];
//    [highSchools addObject: @"Andover"];
//    [highSchools addObject: @"Fairview"];
//    [highSchools addObject: @"Lake Forest"];
//    [highSchools addObject: @"Irvine"];
//    [highSchools addObject: @"Summit"];
//    [highSchools addObject: @"New Providence"];
//    [highSchools addObject: @"West Morris Central"];
//    [highSchools addObject: @"Hastings"];
//    [highSchools addObject: @"Stone Bridge"];
//    [highSchools addObject: @"Marshfield"];
//    [highSchools addObject: @"Lovejoy"];
//    [highSchools addObject: @"Floral Park Memorial"];
//    [highSchools addObject: @"Cypress Bay"];
//    [highSchools addObject: @"Olentangy Orange"];
//    [highSchools addObject: @"Staples"];
//    [highSchools addObject: @"Highlands"];
//    [highSchools addObject: @"Haddonfield Memorial"];
//    [highSchools addObject: @"Amador Valley"];
//    [highSchools addObject: @"Hereford"];
//    [highSchools addObject: @"Westlake"];
//    [highSchools addObject: @"Arcadia"];
//    [highSchools addObject: @"Walnut"];
//    [highSchools addObject: @"Plano East Senior"];
//    [highSchools addObject: @"Upper St. Clair"];
//    [highSchools addObject: @"Aragon"];
//    [highSchools addObject: @"Centreville"];
//    [highSchools addObject: @"Chattahoochee"];
//    [highSchools addObject: @"Brighton"];
//    [highSchools addObject: @"Harriton"];
//    [highSchools addObject: @"Summit"];
//    [highSchools addObject: @"Brentwood"];
//    [highSchools addObject: @"Livingston"];
//    [highSchools addObject: @"Glen Ridge"];
//    [highSchools addObject: @"Carmel"];
//    [highSchools addObject: @"Eastside"];
//    [highSchools addObject: @"Dublin Coffman"];
//    [highSchools addObject: @"John F. Kennedy"];
//    [highSchools addObject: @"San Dieguito Academy"];
//    [highSchools addObject: @"Loudoun Valley"];
//    [highSchools addObject: @"South Forsyth"];
//    [highSchools addObject: @"Ward Melville"];
//    [highSchools addObject: @"Commack"];
//    [highSchools addObject: @"Alpharetta"];
//    [highSchools addObject: @"Hudson"];
//    [highSchools addObject: @"Greece Odyssey Academy"];
//    [highSchools addObject: @"Beechwood"];
//    [highSchools addObject: @"Farmington"];
//    [highSchools addObject: @"Ridgewood"];
//    [highSchools addObject: @"Libertyville"];
//    [highSchools addObject: @"Marjory Stoneman Douglas"];
//    [highSchools addObject: @"Madison"];
//    [highSchools addObject: @"Seven Lakes"];
//    [highSchools addObject: @"Richmond Community"];
//    [highSchools addObject: @"Cranford"];
//    [highSchools addObject: @"Northern Highlands Regional"];
//    [highSchools addObject: @"Oyster Bay"];
//    [highSchools addObject: @"East Brunswick"];
//    [highSchools addObject: @"Arnold O. Beckman"];
//    [highSchools addObject: @"Baton Rouge Magnet"];
//    [highSchools addObject: @"Dobbs Ferry"];
//    [highSchools addObject: @"Glen Rock"];
//    [highSchools addObject: @"San Ramon Valley"];
//    [highSchools addObject: @"Olentangy"];
//    [highSchools addObject: @"St. Louis Park Senior"];
//    [highSchools addObject: @"West Morris Mendham"];
//    [highSchools addObject: @"Cape Elizabeth"];
//    [highSchools addObject: @"Redwood"];
//    [highSchools addObject: @"Lakeville North"];
//    [highSchools addObject: @"George W. Hewlett"];
//    [highSchools addObject: @"New Hartford"];
//    [highSchools addObject: @"Duxbury"];
//    [highSchools addObject: @"Walt Whitman"];
//    [highSchools addObject: @"Upper Arlington"];
//    [highSchools addObject: @"Mahtomedi"];
//    [highSchools addObject: @"Skyline"];
//    [highSchools addObject: @"Beachwood"];
//    [highSchools addObject: @"John Hersey"];
//    [highSchools addObject: @"Memorial"];
//    [highSchools addObject: @"The Classical Academy"];
//    [highSchools addObject: @"Unionville"];
//    [highSchools addObject: @"Croton-Harmon"];
//    [highSchools addObject: @"Okemos"];
//    [highSchools addObject: @"William Fremd"];
//    [highSchools addObject: @"Eastchester"];
//    [highSchools addObject: @"Monte Vista"];
//    [highSchools addObject: @"Neuqua Valley"];
//    [highSchools addObject: @"Elwood-John H. Glenn"];
//    [highSchools addObject: @"Ridgefield"];
//    [highSchools addObject: @"Prospect"];
//    [highSchools addObject: @"Creekside"];
//    [highSchools addObject: @"Wayland"];
//    [highSchools addObject: @"Victor Senior"];
//    [highSchools addObject: @"Beverly Hills"];
//    [highSchools addObject: @"Mountain View"];
//    [highSchools addObject: @"Weaver Academy"];
//    [highSchools addObject: @"La Jolla"];
//    [highSchools addObject: @"Darien"];
//    [highSchools addObject: @"Smithtown West"];
//    [highSchools addObject: @"Pelham Memorial"];
//    [highSchools addObject: @"Alan C. Pope"];
//    [highSchools addObject: @"Eastview"];
//    [highSchools addObject: @"Valley Stream South"];
//    [highSchools addObject: @"Deep Run"];
//    [highSchools addObject: @"Rancho Bernardo"];
//    [highSchools addObject: @"Granite Bay"];
//    [highSchools addObject: @"John P. Stevens"];
//    [highSchools addObject: @"Brookfield Central"];
//    [highSchools addObject: @"Claudia Taylor Johnson"];
//    [highSchools addObject: @"Blue Valley North"];
//    [highSchools addObject: @"Pompano Beach"];
//    [highSchools addObject: @"Oak Mountain"];
//    [highSchools addObject: @"Mounds View"];
//    [highSchools addObject: @"Naperville Central"];
//    [highSchools addObject: @"High Tech"];
//    [highSchools addObject: @"Ernest W. Seaholm"];
//    [highSchools addObject: @"Clarkstown South"];
//    [highSchools addObject: @"Cheyenne Mountain"];
//    [highSchools addObject: @"Bridgewater-Raritan Regional"];
//    [highSchools addObject: @"Westfield"];
//    [highSchools addObject: @"New Berlin Eisenhower"];
//    [highSchools addObject: @"Cinco Ranch"];
//    [highSchools addObject: @"Wayzata"];
//    [highSchools addObject: @"Briar Woods"];
//    [highSchools addObject: @"Clarkstown North"];
//    [highSchools addObject: @"Madeira"];
//    [highSchools addObject: @"Glenbrook South"];
//    [highSchools addObject: @"Half Hollow Hills East"];
//    [highSchools addObject: @"Spanish River Community"];
//    [highSchools addObject: @"Williamsville East"];
//    [highSchools addObject: @"Richard Montgomery"];
//    [highSchools addObject: @"Kenston"];
//    [highSchools addObject: @"Mira Costa"];
//    [highSchools addObject: @"Cedarburg"];
//    [highSchools addObject: @"Eastern Technical"];
//    [highSchools addObject: @"Wyomissing Area"];
//    [highSchools addObject: @"New Hyde Park Memorial"];
//    [highSchools addObject: @"Falmouth"];
//    [highSchools addObject: @"Central"];
//    [highSchools addObject: @"Chapel Hill"];
//    [highSchools addObject: @"Zionsville Community"];
//    [highSchools addObject: @"Robinson Secondary School"];
//    [highSchools addObject: @"Urbana"];
//    [highSchools addObject: @"Central Bucks East"];
//    [highSchools addObject: @"The Woodlands College Park"];
//    [highSchools addObject: @"Barrington"];
//    [highSchools addObject: @"Grosse Pointe South"];
//    [highSchools addObject: @"West Lafayette"];
//    [highSchools addObject: @"Lower Merion"];
//    [highSchools addObject: @"Laguna Beach"];
//    [highSchools addObject: @"St. Anthony Village"];
//    [highSchools addObject: @"Green Hope"];
//    [highSchools addObject: @"Gray Stone Day School"];
//    [highSchools addObject: @"Avon"];
//    [highSchools addObject: @"Irvington"];
//    [highSchools addObject: @"Rumson Fair Haven Regional"];
//    [highSchools addObject: @"Thomas Jefferson"];
//    [highSchools addObject: @"Grapevine"];
//    [highSchools addObject: @"Watchung Hills Regional"];
//    [highSchools addObject: @"East Lake"];
//    [highSchools addObject: @"Hollis Brookline"];               
}

    int randomIndex = arc4random() % [highSchools count];
    return [highSchools objectAtIndex: randomIndex];
}

-(NSString*) randomWork
{
    NSMutableArray *companies = [[NSMutableArray alloc] init];
    NSMutableArray *friends = [person getFriends];
    
    for (int i=0; i<[friends count]; i++)
    {
        if ([[[friends objectAtIndex: i] getWork] length] !=0)
        {
            [companies addObject: [[friends objectAtIndex: i] getWork]];
        }
    }
    
    {
//    [companies addObject: @"Unified Payments"];
//    [companies addObject: @"Astrum Solar"];
//    [companies addObject: @"Edge Solutions"];
//    [companies addObject: @"Integrity Funding"];
//    [companies addObject: @"Gold & Silver Buyers"];
//    [companies addObject: @"Bluefin Payment Systems"];
//    [companies addObject: @"AdRoll"];
//    [companies addObject: @"Acquia"];
//    [companies addObject: @"Red Frog Events"];
//    [companies addObject: @"Cartagz"];
//    [companies addObject: @"Nasty Gal"];
//    [companies addObject: @"Livestream"];
//    [companies addObject: @"HighTower Advisors"];
//    [companies addObject: @"RateSpecial Interactive"];
//    [companies addObject: @"Xtreme Power"];
//    [companies addObject: @"uTest"];
//    [companies addObject: @"Campus Book Rentals"];
//    [companies addObject: @"Merchant Services LTD"];
//    [companies addObject: @"Complete Merchant Solutions"];
//    [companies addObject: @"BlueGrace Logistics"];
//    [companies addObject: @"Zantech IT Services"];
//    [companies addObject: @"Jackson Hunter Morris & Knight"];
//    [companies addObject: @"FederalConference.com"];
//    [companies addObject: @"ING Solutions"];
//    [companies addObject: @"Wireless Communications"];
//    [companies addObject: @"Leadnomics"];
//    [companies addObject: @"Spongecell"];
//    [companies addObject: @"MHD Enterprises"];
//    [companies addObject: @"Valuation Management Group"];
//    [companies addObject: @"Vets First Choice"];
//    [companies addObject: @"Lucid Technology"];
//    [companies addObject: @"Adap.tv"];
//    [companies addObject: @"Accolade"];
//    [companies addObject: @"EngagePoint"];
//    [companies addObject: @"OBXtek"];
//    [companies addObject: @"29 Prime"];
//    [companies addObject: @"WebiMax"];
//    [companies addObject: @"Datto"];
//    [companies addObject: @"Clearview Electric"];
//    [companies addObject: @"Credit Karma"];
//    [companies addObject: @"Strategic Communications"];
//    [companies addObject: @"Honey-Can-Do International"];
//    [companies addObject: @"OnForce Solar"];
//    [companies addObject: @"Inspira Marketing Group"];
//    [companies addObject: @"Solar Alliance of America"];
//    [companies addObject: @"I.T. Source"];
//    [companies addObject: @"Vitals"];
//    [companies addObject: @"Gemvara"];
//    [companies addObject: @"YMarketing"];
//    [companies addObject: @"BrokersWeb.com"];
//    [companies addObject: @"Vital Farms"];
//    [companies addObject: @"Elemental Technologies"];
//    [companies addObject: @"Edge Homes"];
//    [companies addObject: @"Altitude Digital"];
//    [companies addObject: @"MediaForge"];
//    [companies addObject: @"Quantum Networks"];
//    [companies addObject: @"Stella & Dot"];
//    [companies addObject: @"Innovative Construction"];
//    [companies addObject: @"AustinCSI"];
//    [companies addObject: @"Keen Technical Solutions"];
//    [companies addObject: @"Brafton"];
//    [companies addObject: @"Bottle Rocket Apps"];
//    [companies addObject: @"Plum Organics"];
//    [companies addObject: @"The Start Group"];
//    [companies addObject: @"CargoBarn"];
//    [companies addObject: @"Audience"];
//    [companies addObject: @"Spigit"];
//    [companies addObject: @"CardCash.com"];
//    [companies addObject: @"Desert Jet"];
//    [companies addObject: @"VRx"];
//    [companies addObject: @"GarbageMan, A Green Company"];
//    [companies addObject: @"Rocket Lawyer"];
//    [companies addObject: @"eGumball"];
//    [companies addObject: @"Connected Logistics"];
//    [companies addObject: @"Dream Finders Homes"];
//    [companies addObject: @"DBBest Technologies"];
//    [companies addObject: @"Modern Everyday"];
//    [companies addObject: @"Marketo"];
//    [companies addObject: @"Dynamic Recycling"];
//    [companies addObject: @"Innotion Enterprises"];
//    [companies addObject: @"Reputation Management Consultants"];
//    [companies addObject: @"iSirona"];
//    [companies addObject: @"Bohme"];
//    [companies addObject: @"Palo Alto Networks"];
//    [companies addObject: @"OtterBox"];
//    [companies addObject: @"Bizo"];
//    [companies addObject: @"Century Payments"];
//    [companies addObject: @"Pinnacle Solutions"];
//    [companies addObject: @"ReplaceMyContacts.com"];
//    [companies addObject: @"Armando Montelongo Companies"];
//    [companies addObject: @"M-Edge Accessories"];
//    [companies addObject: @"NextWorth Solutions"];
//    [companies addObject: @"C-DM Network"];
//    [companies addObject: @"The Joint"];
//    [companies addObject: @"GlobalMed"];
//    [companies addObject: @"BoomTown"];
//    [companies addObject: @"Peerless Network"];
//    [companies addObject: @"Asentra"];
//    [companies addObject: @"SugarSync"];
//    [companies addObject: @"Wall Street Network Solutions"];
//    [companies addObject: @"Onsite OHS"];
//    [companies addObject: @"Ontraport"];
//    [companies addObject: @"ShoeZoo.com"];
//    [companies addObject: @"The FlexPro Group"];
//    [companies addObject: @"Transcendent One"];
//    [companies addObject: @"Patriot Contractors"];
//    [companies addObject: @"Clarity Software Solutions"];
//    [companies addObject: @"Landmark Network"];
//    [companies addObject: @"FLS Energy"];
//    [companies addObject: @"Mavenir Systems"];
//    [companies addObject: @"Convert2Media"];
//    [companies addObject: @"PCI Strategic Management"];
//    [companies addObject: @"Precision Construction & Roofing"];
//    [companies addObject: @"Tellago"];
//    [companies addObject: @"Anjaneyap"];
//    [companies addObject: @"Matt Martin Real Estate Management"];
//    [companies addObject: @"Chobani"];
//    [companies addObject: @"Omatic Software"];
//    [companies addObject: @"Allied"];
//    [companies addObject: @"The Premier Group Staffing"];
//    [companies addObject: @"ActivEngage"];
//    [companies addObject: @"Digital Risk"];
//    [companies addObject: @"Choice Home Warranty"];
//    [companies addObject: @"Streamline Defense"];
//    [companies addObject: @"JMA Solutions"];
//    [companies addObject: @"Loan Resolution"];
//    [companies addObject: @"Black Elk Energy"];
//    [companies addObject: @"Movement Mortgage"];
//    [companies addObject: @"Axcient"];
//    [companies addObject: @"Central Logic"];
//    [companies addObject: @"Integrity Management Consulting"];
//    [companies addObject: @"Liazon"];
//    [companies addObject: @"EagleView Technologies"];
//    [companies addObject: @"Maestro Technologies"];
//    [companies addObject: @"Potomac Research Group"];
//    [companies addObject: @"Slingshot SEO"];
//    [companies addObject: @"DealerRater"];
//    [companies addObject: @"Modus"];
//    [companies addObject: @"Rapier Solutions"];
//    [companies addObject: @"A10 Networks"];
//    [companies addObject: @"TubeMogul"];
//    [companies addObject: @"Gotham Cigars"];
//    [companies addObject: @"Four Foods Group Holdings"];
//    [companies addObject: @"Discount Cleaning Products"];
//    [companies addObject: @"Likeable Media"];
//    [companies addObject: @"The Clearing"];
//    [companies addObject: @"AllEarth Renewables"];
//    [companies addObject: @"CarGurus"];
//    [companies addObject: @"Aspen Healthcare Services"];
//    [companies addObject: @"Drivers History"];
//    [companies addObject: @"nuCourse Distribution"];
//    [companies addObject: @"Lifecycle Construction Services"];
//    [companies addObject: @"NGCI"];
//    [companies addObject: @"Advice Interactive Group"];
//    [companies addObject: @"Momentum Resources"];
//    [companies addObject: @"Arvixe"];
//    [companies addObject: @"BrightSource Energy"];
//    [companies addObject: @"Abbyson Living"];                                     
//    [companies addObject: @"Veterans Enterprise Technology Solutions"];
//    [companies addObject: @"SIG"];
//    [companies addObject: @"Patient Conversation Media"];
//    [companies addObject: @"MangoApps"];
//    [companies addObject: @"Shipito.com"];
//    [companies addObject: @"Aardvark Event Logistics"];
//    [companies addObject: @"RuffleButts"];
//    [companies addObject: @"Ahead"];
//    [companies addObject: @"Rivet Software"];
//    [companies addObject: @"The Invisible Close"];
//    [companies addObject: @"Flip Flop Shops"];
//    [companies addObject: @"Tempus Nova"];
//    [companies addObject: @"Pardot"];
//    [companies addObject: @"Local Leads HQ"];
//    [companies addObject: @"Blue Corona"];
//    [companies addObject: @"Victor Securities"];
//    [companies addObject: @"Day Online Solutions"];
//    [companies addObject: @"Mills Group"];
//    [companies addObject: @"Ajax Union"];
//    [companies addObject: @"Refinery29"];
//    [companies addObject: @"Realgy"];
//    [companies addObject: @"Cadence Research & Consulting"];
//    [companies addObject: @"Townsend"];
//    [companies addObject: @"International Inspirations"];
//    [companies addObject: @"Williams Strength"];
//    [companies addObject: @"Internet Marketing Inc."];
//    [companies addObject: @"Analytic Strategies"];
//    [companies addObject: @"Charfen Institute"];
//    [companies addObject: @"DiscoverOrg"];
//    [companies addObject: @"Marketplace Homes"];
//    [companies addObject: @"NorAm International Partners"];
//    [companies addObject: @"Hernandez Consulting"];
//    [companies addObject: @"Pearl Media"];
//    [companies addObject: @"Crunchy Logistics"];
//    [companies addObject: @"Prodege"];
//    [companies addObject: @"RepEquity"];
//    [companies addObject: @"Universal Jet"];
//    [companies addObject: @"Techwave Consulting"];
//    [companies addObject: @"Gravitas Ventures"];
//    [companies addObject: @"Zenosys"];
//    [companies addObject: @"Tenon Tours"];
//    [companies addObject: @"PalmerHouse Properties"];
//    [companies addObject: @"AM Pierce & Associates"];
//    [companies addObject: @"School Tech Supply"];
//    [companies addObject: @"Packrite"];
//    [companies addObject: @"HappyFamily Brands"];
//    [companies addObject: @"Saratoga Roofing & Construction"];
//    [companies addObject: @"MoJack"];
//    [companies addObject: @"Qoncert"];
//    [companies addObject: @"Motivity Solutions"];
//    [companies addObject: @"Precious Metal Refining Services"];
//    [companies addObject: @"Vanguard Energy Partners"];
//    [companies addObject: @"uSamp"];
//    [companies addObject: @"Mophie"];
//    [companies addObject: @"FCi Federal"];
//    [companies addObject: @"SunDurance Energy"];
//    [companies addObject: @"Full Circle Marketing & Sales"];
//    [companies addObject: @"Blue Global"];
//    [companies addObject: @"FastSpring"];
//    [companies addObject: @"JG Tax Group"];
//    [companies addObject: @"J.Hilburn"];
//    [companies addObject: @"Recondo Technology"];
//    [companies addObject: @"Link America"];
//    [companies addObject: @"OverstockDeals.com"];
//    [companies addObject: @"Suzanne Evans Coaching"];
//    [companies addObject: @"Footage Firm"];
//    [companies addObject: @"Resource Financial"];
//    [companies addObject: @"Real Property Management"];
//    [companies addObject: @"SilkRoute"];
//    [companies addObject: @"Mav6"];
//    [companies addObject: @"Performance Indicator"];
//    [companies addObject: @"Millennial Media"];
//    [companies addObject: @"Electrical Distributors"];
//    [companies addObject: @"myFootpath"];
//    [companies addObject: @"Resonate"];
//    [companies addObject: @"LeanDog"];
//    [companies addObject: @"RTA Cabinet Store"];
//    [companies addObject: @"Yagoozon"];
//    [companies addObject: @"Careers In Transition"];
//    [companies addObject: @"OSB"];
//    [companies addObject: @"ESAC"];
//    [companies addObject: @"Votigo"];
//    [companies addObject: @"Capitol Media Solutions"];
//    [companies addObject: @"Independent Catalyst"];
//    [companies addObject: @"VDart"];
//    [companies addObject: @"Alex and Ani"];
//    [companies addObject: @"ConsumerSoft"];
//    [companies addObject: @"BuySellAds"];
//    [companies addObject: @"Ifbyphone"];
//    [companies addObject: @"Strategic AR"];
//    [companies addObject: @"New Wave Surgical"];
//    [companies addObject: @"MBL Technologies"];
//    [companies addObject: @"TISTA Science and Technology"];
//    [companies addObject: @"Transcend United Technologies"];
//    [companies addObject: @"EndoChoice"];
//    [companies addObject: @"Solution IT"];
//    [companies addObject: @"Cinium Financial Services"];
//    [companies addObject: @"Chrome River Technologies"];
//    [companies addObject: @"Mariposa MedSpa"];
//    [companies addObject: @"Clinipace Worldwide"];
//    [companies addObject: @"T-Force"];
//    [companies addObject: @"Phone.com"];
//    [companies addObject: @"The Brixton Group"];
//    [companies addObject: @" Janrain"];
//    [companies addObject: @"RainKing Solutions"];
//    [companies addObject: @"Drupal Connect"];
//    [companies addObject: @"Astonish Results"];
//    [companies addObject: @"Touchstorm"];
//    [companies addObject: @"Special Operations Solutions"];
//    [companies addObject: @"Atyeti"];
//    [companies addObject: @"MediaMath"];
//    [companies addObject: @"Swaim Logistics"];
//    [companies addObject: @"ACT Appraisal"];
//    [companies addObject: @"Tiger Fitness"];
//    [companies addObject: @"Mango Languages"];
//    [companies addObject: @"VAE"];
//    [companies addObject: @"Contour"];
//    [companies addObject: @"PROLIM"];
//    [companies addObject: @"Total Beauty Media Group"];
//    [companies addObject: @"Landmark Retail"];
//    [companies addObject: @"Viva Railings"];
//    [companies addObject: @"Citadel Insurance Services"];
//    [companies addObject: @"Evoke Research and Consulting"];
//    [companies addObject: @"UnitedLex"];
//    [companies addObject: @"BlackRapid"];
//    [companies addObject: @"Cal-American Homes"];
//    [companies addObject: @"Marin Software"];
//    [companies addObject: @"Sovereign Systems"];
//    [companies addObject: @"Bongo International"];
//    [companies addObject: @"Urban Office Products"];
//    [companies addObject: @"Medigap360"];
//    [companies addObject: @"DomainMarket.com"];
//    [companies addObject: @"Excet"];
//    [companies addObject: @"Facebook"];
//    [companies addObject: @"Clary Solar"];
//    [companies addObject: @"SCS Direct"];
//    [companies addObject: @"Public Engines"];
//    [companies addObject: @"Alligator Performance"];
//    [companies addObject: @"LINQ Services"];
//    [companies addObject: @"Revolution Foods"];
//    [companies addObject: @"On Deck"];
//    [companies addObject: @"Digital Video Networks"];
//    [companies addObject: @"Burry Foods"];
//    [companies addObject: @"Target Logistics"];
//    [companies addObject: @"RealSelf"];
//    [companies addObject: @"Round Sky"];
//    [companies addObject: @"Pivot Employment Platforms"];
//    [companies addObject: @"WeddingWire"];
//    [companies addObject: @"New Penn Financial"];
//    [companies addObject: @"InDemand Interpreting"];
//    [companies addObject: @"E4E Solutions"];
//    [companies addObject: @"Code 42 Software"];
//    [companies addObject: @"HubSpot"];
//    [companies addObject: @"MYTEK Network Solutions"];
//    [companies addObject: @"Free For All"];
//    [companies addObject: @"Verdi Consulting"];
//    [companies addObject: @"Pacific Global"];
//    [companies addObject: @"US Appraisal Group"];
//    [companies addObject: @"Daytner Construction"];
//    [companies addObject: @"Evolve IP"];
//    [companies addObject: @"Demandforce"];
//    [companies addObject: @"CPAlead"];
//    [companies addObject: @"Apex Resources"];
//    [companies addObject: @"American Group"];
//    [companies addObject: @"StrataShops"];
//    [companies addObject: @"Tailgate Clothing"];
//    [companies addObject: @"OpenSky"];
//    [companies addObject: @"Prodigy Resources"];
//    [companies addObject: @"REPAY - Realtime Electronic Payments"];
//    [companies addObject: @"VetsAmerica Business Consulting"];
//    [companies addObject: @"Complete Nutrition"];
//    [companies addObject: @"MetroSpec Technology"];
//    [companies addObject: @"Grand River"];
//    [companies addObject: @"Wastren Advantage"];
//    [companies addObject: @"Technology Support"];
//    [companies addObject: @"Forward Health"];
//    [companies addObject: @"BiblioLabs"];
//    [companies addObject: @"Bedgear"];
//    [companies addObject: @"TMG Financial Services"];
//    [companies addObject: @"Lukie Games"];
//    [companies addObject: @"InGenesis"];
//    [companies addObject: @"ChromoLogic"];
//    [companies addObject: @"Gazelle"];
//    [companies addObject: @"Enstoa"];
//    [companies addObject: @"Avaap"];
//    [companies addObject: @"ScanDigital"];
//    [companies addObject: @"Driven Local"];
//    [companies addObject: @"Hawaii Energy Connection"];
//    [companies addObject: @"BookPal"];
//    [companies addObject: @"Linode"];
//    [companies addObject: @"Propel Fuels"];
//    [companies addObject: @"SpringAhead"];
//    [companies addObject: @"Business Insider"];
//    [companies addObject: @"MapMyFitness"];
//    [companies addObject: @"NextLot"];
//    [companies addObject: @"Popchips"];
//    [companies addObject: @"Universal Understanding"];
//    [companies addObject: @"Dovetail Insurance"];
//    [companies addObject: @"Impact Makers"];
//    [companies addObject: @"ShayCore Enterprises"];
//    [companies addObject: @"JWB Real Estate Capital"];
//    [companies addObject: @"DocuLynx"];
//    [companies addObject: @"B3 Solutions"];
//    [companies addObject: @"Content Marketing Institute"];
//    [companies addObject: @"The Trademark Company"];
//    [companies addObject: @"Soft Tech Consulting"];
//    [companies addObject: @"Mail Shark"];
//    [companies addObject: @"Allied Wallet"];
//    [companies addObject: @"Plan B Burger Bar"];
//    [companies addObject: @"American Partners"];
//    [companies addObject: @"Network Solutions Provider"];
//    [companies addObject: @"Boston Technologies"];
//    [companies addObject: @"Pod1"];
//    [companies addObject: @"Rally Point Management"];
//    [companies addObject: @"FluidEdge Consulting"];
//    [companies addObject: @"Aden+Anais"];
//    [companies addObject: @"ePropertySites.com"];
//    [companies addObject: @"Rescue One Financial"];
//    [companies addObject: @"Macro Energy"];
//    [companies addObject: @"Kramer Direct"];
//    [companies addObject: @"Envisage Information Systems"];
//    [companies addObject: @"Thrillist Media Group"];
//    [companies addObject: @"TDBBS"];
//    [companies addObject: @"CFN Services"];
//    [companies addObject: @"Visual Logic Group"];
//    [companies addObject: @"Digital Management"];
//    [companies addObject: @"NetWrix"];                                     
//    [companies addObject: @"Avondale Strategic Partners"];
//    [companies addObject: @"Tiny Tots Therapy"];
//    [companies addObject: @"Rockfarm Logistics"];
//    [companies addObject: @"ClearOne Advantage"];
//    [companies addObject: @"e-Cycle"];
//    [companies addObject: @"Teknicks"];
//    [companies addObject: @"Sunwarrior"];
//    [companies addObject: @"Securis"];
//    [companies addObject: @"BioResource International"];
//    [companies addObject: @"Quincy Bioscience"];
//    [companies addObject: @"Lumitec"];
//    [companies addObject: @"North Star Group"];
//    [companies addObject: @"MSi SSL"];
//    [companies addObject: @"DefySupply.com"];
//    [companies addObject: @"Advanced Chemical Concepts"];
//    [companies addObject: @"ScribeAmerica"];
//    [companies addObject: @"Smashburger"];
//    [companies addObject: @"Gnarus Advisors"];
//    [companies addObject: @"Iconic Development"];
//    [companies addObject: @"Slate Rock Safety"];
//    [companies addObject: @"Triad Semiconductor"];
//    [companies addObject: @"DreamBrands"];
//    [companies addObject: @"NW Auto Recyclers"];
//    [companies addObject: @"WealthClasses"];
//    [companies addObject: @"Consumer United"];
//    [companies addObject: @"Wound Care Advantage"];
//    [companies addObject: @"Braintree"];
//    [companies addObject: @"Medicare.com"];
//    [companies addObject: @"Star2Star Communications"];
//    [companies addObject: @"ChaiONE"];
//    [companies addObject: @"Prudent Infotech"];                                     
//    [companies addObject: @"One Source Networks"];
//    [companies addObject: @"USP&E Global"];
//    [companies addObject: @"Shockoe Commerce"];
//    [companies addObject: @"Deluxe Marketing"];
//    [companies addObject: @"ShopAtHome.com"];
//    [companies addObject: @"MyTicketIn.com"];
//    [companies addObject: @"BOS Security"];
//    [companies addObject: @"Gilligan & Ferneman"];
//    [companies addObject: @"OmniPoint"];
//    [companies addObject: @"Webmarketing123"];
//    [companies addObject: @"JESS3"];
//    [companies addObject: @"Renewable Energy Group"];
//    [companies addObject: @"Paragon Micro"];
//    [companies addObject: @"Insurance Care Direct"];
//    [companies addObject: @"Acumen"];
//    [companies addObject: @"EarthLED.com"];
//    [companies addObject: @"Three Pillar Global"];
//    [companies addObject: @"Launchpad Advertising"];
//    [companies addObject: @"Graybach"];
//    [companies addObject: @"Standard Solar"];
//    [companies addObject: @"FM Facility Maintenance"];
//    [companies addObject: @"Global Telesourcing"];
//    [companies addObject: @"Utopia"];
//    [companies addObject: @"Elicere"];
//    [companies addObject: @"Old Town IT"];
//    [companies addObject: @"StanSource"];
//    [companies addObject: @"Rise Interactive"];
//    [companies addObject: @"Varrow"];
//    [companies addObject: @"R2 Unified Technologies"];
//    [companies addObject: @"Infosemantics"];
//    [companies addObject: @"PrizeLogic"];
//    [companies addObject: @"Sonatype"];
//    [companies addObject: @"Integrity Express Logistics"];
//    [companies addObject: @"CLEAResult"];
//    [companies addObject: @"Petticoat-Schmitt Civil Contractors"];
//    [companies addObject: @"Erickson Builders"];
//    [companies addObject: @"Rhythm Engineering"];
//    [companies addObject: @"FortuneBuilders.com"];
//    [companies addObject: @"YETI Coolers"];
//    [companies addObject: @"ProtectCell"];                                     
//    [companies addObject: @"C2S Technologies"];
//    [companies addObject: @"Intuitive Technology Group"];
//    [companies addObject: @"CFC Print Solutions"];
//    [companies addObject: @"aimClear®"];
//    [companies addObject: @"Matrix Energy Services"];
//    [companies addObject: @"Pothos"];
//    [companies addObject: @"Ninety Five 5"];
//    [companies addObject: @"AirWatch"];
//    [companies addObject: @"A+ Government Solutions"];
//    [companies addObject: @"Veteran Corps of America"];
//    [companies addObject: @"Night Vision Entertainment"];
//    [companies addObject: @"Citywide Restoration"];
//    [companies addObject: @"ROCS Entry Level Staffing"];
//    [companies addObject: @"ASE Direct"];
//    [companies addObject: @"The Pedowitz Group"];
//    [companies addObject: @"Mobifusion"];
//    [companies addObject: @"TreeFrog Data Solutions"];
//    [companies addObject: @"Cogent Data Solutions"];
//    [companies addObject: @"Stonegate Mortgage"];
//    [companies addObject: @"WillowTree Apps"];
//    [companies addObject: @"Lulus.com"];
//    [companies addObject: @"MyNaturalMarket"];
//    [companies addObject: @"Metalogix"];
//    [companies addObject: @"RevGen Partners"];
//    [companies addObject: @"SNS LOGISTICS"];
//    [companies addObject: @"Teknetex"];
//    [companies addObject: @"QSS International"];
//    [companies addObject: @"Dean Media Group"];
//    [companies addObject: @"Summit Learning Services"];
//    [companies addObject: @"LongView International Technology Solutions"];
//    [companies addObject: @"MicroTech"];
//    [companies addObject: @"SEO.com"];
//    [companies addObject: @"HeadStream"];
//    [companies addObject: @"Sweet Spot Marketing"];
//    [companies addObject: @"AA Metals"];
//    [companies addObject: @"OuterBox Solutions"];
//    [companies addObject: @"Arteris"];
//    [companies addObject: @"CAF Environmental Solutions"];
//    [companies addObject: @"Polu Kai Services"];
//    [companies addObject: @"Position Logic"];
//    [companies addObject: @"MCT Trading"];                                     
}
    
    int randomIndex = arc4random() % [companies count];
    return [companies objectAtIndex: randomIndex];
}



-(NSString*) randomCity
{
    NSMutableArray *cities = [[NSMutableArray alloc] init];
    NSMutableArray *friends = [person getFriends];
    
    for (int i=0; i<[friends count]; i++)
    {
        if ([[[friends objectAtIndex: i] getAddress] length] !=0)
        {
            [cities addObject: [[friends objectAtIndex: i] getAddress]];
        }
    }
    
    {
//    [cities addObject: @"New York, New York"];
//    [cities addObject: @"Los Angeles,California"];
//    [cities addObject: @"Chicago, Illinois"];
//    [cities addObject: @"Houston, Texas"];
//    [cities addObject: @"Philadelphia, Pennsylvania"];
//    [cities addObject: @"Phoenix, Arizona"];
//    [cities addObject: @"San Diego, California"];
//    [cities addObject: @"Dallas, Texas"];
//    [cities addObject: @"San Antonio, Texas"];
//    [cities addObject: @"Detroit, Michigan"];
//    [cities addObject: @"San Jose, California"];
//    [cities addObject: @"Indianapolis, Indiana"];
//    [cities addObject: @"San Francisco, California"];
//    [cities addObject: @"Jacksonville, Florida"];
//    [cities addObject: @"Columbus, Ohio"];
//    [cities addObject: @"Memphis, Tennessee"];
//    [cities addObject: @"Austin, Texas"];
//    [cities addObject: @"Baltimore, Maryland"];
//    [cities addObject: @"Milwaukee, Wisconsin"];
//    [cities addObject: @"Boston	Massachusetts"];
//    [cities addObject: @"Washington, District of Columbia"];
//    [cities addObject: @"Charlotte, North Carolina"];
//    [cities addObject: @"El Paso, Texas"];
//    [cities addObject: @"Seattle, Washington"];
//    [cities addObject: @"Denver, Colorado"];
//    [cities addObject: @"Louisville, Kentucky"];
//    [cities addObject: @"Fort Worth, Texas"];
//    [cities addObject: @"Nashville, Tennessee"];
//    [cities addObject: @"Portland, Oregon"];
//    [cities addObject: @"Oklahoma City, Oklahoma"];
//    [cities addObject: @"Tucson, Arizona"];
//    [cities addObject: @"Las Vegas, Nevada"];
//    [cities addObject: @"New Orleans, Louisiana"];
//    [cities addObject: @"Cleveland, Ohio"];
//    [cities addObject: @"Long Beach, California"];
//    [cities addObject: @"Albuquerque, New Mexico"];
//    [cities addObject: @"Kansas City, Missouri"];
//    [cities addObject: @"Fresno, California"];
//    [cities addObject: @"Virginia Beach, Virginia"];
//    [cities addObject: @"Atlanta, Georgia"];
//    [cities addObject: @"Omaha, Nebraska"];
//    [cities addObject: @"Sacramento, California"];
//    [cities addObject: @"Mesa, Arizona"];
//    [cities addObject: @"Oakland, California"];
//    [cities addObject: @"Tulsa, Oklahoma"];
//    [cities addObject: @"Minneapolis, Minnesota"];
//    [cities addObject: @"Honolulu, Hawaii"];
//    [cities addObject: @"Miami, Florida"];
//    [cities addObject: @"Colorado Springs, Colorado"];
//    [cities addObject: @"Wichita, Kansas"];
//    [cities addObject: @"St. Louis, Missouri"];
//    [cities addObject: @"Santa Ana, California"];
//    [cities addObject: @"Arlington, Texas"];
//    [cities addObject: @"Pittsburgh, Pennsylvania"];
//    [cities addObject: @"Cincinnati, Ohio"];
//    [cities addObject: @"Anaheim, California"];
//    [cities addObject: @"Toledo, Ohio"];
//    [cities addObject: @"Tampa, Florida"];
//    [cities addObject: @"Buffalo, New York"];
//    [cities addObject: @"Raleigh, North Carolina"];
//    [cities addObject: @"St. Paul, Minnesota"];
//    [cities addObject: @"Aurora, Colorado"];
//    [cities addObject: @"Corpus Christi, Texas"];
//    [cities addObject: @"Newark, New Jersey"];
//    [cities addObject: @"Lexington-Fayette, Kentucky"];
//    [cities addObject: @"Anchorage, Alaska"];
//    [cities addObject: @"Riverside, California"];
//    [cities addObject: @"Fort Wayne, Indiana"];
//    [cities addObject: @"St. Petersburg, Florida"];
//    [cities addObject: @"Bakersfield, California"];
//    [cities addObject: @"Stockton, California"];
//    [cities addObject: @"Birmingham, Alabama"];
//    [cities addObject: @"Jersey City, New Jersey"];
//    [cities addObject: @"Norfolk, Virginia"];
//    [cities addObject: @"Greensboro, North Carolina"];
//    [cities addObject: @"Baton Rouge, Louisiana"];
//    [cities addObject: @"Lincoln, Nebraska"];
//    [cities addObject: @"Hialeah, Florida"];
//    [cities addObject: @"Plano, Texas"];
//    [cities addObject: @"Glendale, Arizona"];
//    [cities addObject: @"Rochester, New York"];
//    [cities addObject: @"Akron, Ohio"];
//    [cities addObject: @"Garland, Texas"];
//    [cities addObject: @"Madison, Wisconsin"];
//    [cities addObject: @"Fremont, California"];
//    [cities addObject: @"Scottsdale, Arizona"];
//    [cities addObject: @"Winston-Salem, North Carolina"];
//    [cities addObject: @"Montgomery, Alabama"];
//    [cities addObject: @"Shreveport, Louisiana"];
//    [cities addObject: @"Chesapeake, Virginia"];
//    [cities addObject: @"Lubbock, Texas"];
//    [cities addObject: @"Des Moines, Iowa"];
//    [cities addObject: @"Fayetteville, North Carolina"];
//    [cities addObject: @"Mobile, Alabama"];
//    [cities addObject: @"Grand Rapids, Michigan"];
//    [cities addObject: @"Richmond, Virginia"];
//    [cities addObject: @"Spokane, Washington"];
//    [cities addObject: @"Yonkers, New York"];
//    [cities addObject: @"Boise City, Idaho"];
//    [cities addObject: @"Glendale, California"];
//    [cities addObject: @"Augusta-Richmond County, Georgia"];
//    [cities addObject: @"Orlando, Florida"];
//    [cities addObject: @"Tacoma, Washington"];
//    [cities addObject: @"Irving, Texas"];
//    [cities addObject: @"Modesto, California"];
//    [cities addObject: @"Huntington Beach, California"];
//    [cities addObject: @"Arlington, Virginia"];
//    [cities addObject: @"San Bernardino, California"];
//    [cities addObject: @"Durham, North Carolina"];
//    [cities addObject: @"Columbus, Georgia"];
//    [cities addObject: @"Jackson, Mississippi"];
//    [cities addObject: @"Reno, Nevada"];
//    [cities addObject: @"Little Rock, Arkansas"];
//    [cities addObject: @"Salt Lake City, Utah"];
//    //    Newport News, Virginia
//    //    Chandler, Arizona
//    //    Laredo, Texas
//    //    Henderson, Nevada
//    //    Knoxville, Tennessee
//    //    Chula Vista, California
//    //    Amarillo, Texas
//    [cities addObject: @"Providence, Rhode Island"];
//    //    Worcester, Massachusetts
//    //    Oxnard, California
//    [cities addObject: @"Fort Lauderdale, Florida"];
//    [cities addObject: @"Dayton, Ohio"];
//    //    Garden Grove, California
//    //    Oceanside, California
//    //    Huntsville, Alabama
//    //    Tempe, Arizona
//    //    Ontario, California
//    //    Chattanooga, Tennessee
//    //    Santa Clarita, California
//    //    Tallahassee, Florida
//    //    Springfield, Missouri
//    //    Springfield, Massachusetts
//    //    Rockford, Illinois
//    //    Overland Park, Kansas
//    //    Paterson, New Jersey
//    //    Santa Rosa, California
//    //    Pomona, California
//    [cities addObject: @"Kansas City, Kansas"];
//    //    Fontana, California
//    //    Irvine, California
//    //    Vancouver, Washington
//    //    Hampton, Virginia
//    [cities addObject: @"Syracuse, New York"];
//    //    Aurora, Illinois
//    //    Lakewood, Colorado
//    //    Salinas, California
//    //    Brownsville, Texas
//    //    Moreno Valley, California
//    //    Pasadena, Texas
//    //    Hayward, California
//    //    Hollywood, Florida
//    //    Bridgeport, Connecticut
//    [cities addObject: @"Eugene, Oregon"];
//    //    Pembroke Pines, Florida
//    //    Torrance, California
//    //    Warren, Michigan
//    [cities addObject: @"Salem, Oregon"];
//    [cities addObject: @"Pasadena, California"];
//    //    Escondido, California
//    //    Savannah, Georgia
//    //    Sunnyvale, California
//    //    Orange, California
//    //    Alexandria, Virginia
//    //    Naperville, Illinois
//    //    Rancho Cucamonga, California
//    //    Corona, California
//    //    Grand Prairie, Texas
//    //    Fullerton, California
//    //    Sioux Falls, South Dakota
//    //    Mesquite, Texas
//    //    Flint, Michigan
//    //    Sterling Heights, Michigan
//    [cities addObject: @"Hartford, Connecticut"];
//    [cities addObject: @"New Haven, Connecticut"];
//    //    Topeka, Kansas
//    //    Concord, California
//    //    Cedar Rapids, Iowa
//    //    Evansville, Indiana
//    //    Elizabeth, New Jersey
//    //    Fort Collins, Colorado
//    //    Coral Springs, Florida
//    //    Columbia, South Carolina
//    //    Lansing, Michigan
//    //    Lancaster, California
//    //    North Las Vegas, Nevada
//    [cities addObject: @"Palmdale, California"];
//    [cities addObject: @"Stamford, Connecticut"];
//    //    Thousand Oaks, California
//    //    Vallejo, California
//    //    Gilbert, Arizona
//    //    El Monte, California
//    //    Abilene, Texas
//    [cities addObject: @"Ann Arbor, Michigan"];
//    //    Waco, Texas
//    //    Independence, Missouri
//    //    Beaumont, Texas
//    //    Peoria, Illinois
//    //    Gainesville, Florida
//    //    Inglewood, California
//    //    Bellevue, Washington
//    //    Springfield, Illinois
//    //    Simi Valley, California
//    //    Lafayette, Louisiana
//    //    Peoria, Arizona
//    //    Carrollton, Texas
//    //    Clearwater, Florida
//    //    Costa Mesa, California
//    //    West Valley City, Utah
//    //    South Bend, Indiana
//    //    Joliet, Illinois
//    //    Downey, California
//    //    Waterbury, Connecticut
//    //    Manchester, New Hampshire
//    //    McAllen, Texas
//    //    Allentown, Pennsylvania
//    //    Provo, Utah
//    //    West Covina, California
//    //    Lowell, Massachusetts
//    //    Norwalk, California
//    //    Wichita Falls, Texas
//    //    Clarksville, Tennessee
//    //    Erie, Pennsylvania
//    //    Daly City, California
//    //    Cape Coral, Florida
//    [cities addObject: @"Berkeley, California"];
//    //    Green Bay, Wisconsin
//    //    Gary, Indiana
//    //    Centennial, Colorado
//    [cities addObject: @"Santa Clara, California"];
//    //    Arvada, Colorado
//    //    Pueblo, Colorado
//    [cities addObject: @"Cambridge, Massachusetts"];
//    //    Westminster, Colorado
//    //    San Buenaventura, California
//    //    Miami Gardens, Florida
//    [cities addObject: @"Athens, Georgia"];
//    //    Livonia, Michigan
//    //    Burbank, California
//    //    Portsmouth, Virginia
//    //    Pompano Beach, Florida
//    //    Richmond, California
//    //    Charleston, South Carolina
//    //    Davenport, Iowa
//    //    Dearborn, Michigan
//    //    Cary, North Carolina
//    //    Macon, Georgia
//    //    Fairfield, California
//    //    Norman, Oklahoma
//    //    South Gate, California
//    //    Everett, Washington
//    //    Visalia, California
//    //    El Cajon, California
//    //    Midland, Texas
//    //    Elgin, Illinois
//    //    Roanoke, Virginia
//    [cities addObject: @"Boulder, Colorado"];
//    //    Albany, New York
//    //    Brockton, Massachusetts
//    //    New Bedford, Massachusetts
//    //    Olathe	Kansas
//    //    Compton	California
//    //    Mission Viejo	California
//    //    Rialto	California
//    //    San Mateo	California
//    //    Lawton	Oklahoma
//    //    Richardson	Texas
//    //    Fall River	Massachusetts
//    //    Billings	Montana
//    //    Antioch	California
//    //    Kenosha	Wisconsin
//    //    Fargo	North Dakota
//    //    Gresham	Oregon
//    //    Odessa	Texas
//    //    Killeen	Texas
//    //    Carson	California
//    //    Vista	California
//    //    Wilmington	North Carolina
//    //    Santa Barbara	California
//    //    Vacaville	California
//    //    Rochester	Minnesota
//    //    Lynn	Massachusetts
//    //    Port St. Lucie	Florida
//    //    Sandy	Utah
//    //    San Angelo	Texas
//    //    Waukegan	Illinois
//    //    Quincy	Massachusetts
//    //    Westminster	California
//    //    Miami Beach	Florida
//    //    Nashua	New Hampshire
//    //    Westland	Michigan
//    //    High Point	North Carolina
//    //    Duluth	Minnesota
//    //    Sunrise	Florida
//    //    Columbia	Missouri
//    //    Warwick	Rhode Island
//    //    Parma	Ohio
//    //    Cicero	Illinois
//    //    Trenton	New Jersey
//    //    Citrus Heights	California
//    //    Alhambra	California
//    //    Federal Way	Washington
//    //    Bloomington	Minnesota
//    //    Lakeland	Florida
//    //    Sioux City	Iowa
//    //    Sandy Springs	Georgia
//    //    Tyler	Texas
//    //    Orem	Utah
//    //    Santa Monica	California
//    //    Hawthorne	California
//    //    Whittier	California
//    //    Newton	Massachusetts
//    //    Denton	Texas
//    //    Yakima	Washington
//    //    Thornton	Colorado
//    //    Boca Raton	Florida
//    //    Plantation	Florida
//    //    Norwalk	Connecticut
//    //    West Palm Beach	Florida
//    //    Hammond	Indiana
//    //    Davie	Florida
//    //    Farmington Hills	Michigan
//    //    Decatur	Illinois
//    //    Racine	Wisconsin
//    //    Youngstown	Ohio
//    //    Elk Grove	California
//    //    North Charleston	South Carolina
//    //    Roswell	Georgia
//    //    Redding	California
//    //    Reading	Pennsylvania
//    //    Roseville	California
//    //    Troy	Michigan
//    //    Canton	Ohio
//    //    Spokane Valley	Washington
//    //    Fort Smith	Arkansas
//    //    Broken Arrow	Oklahoma
//    //    Kent	Washington
//    //    Lawrence	Kansas
//    //    Beaverton	Oregon
//    //    Camden	New Jersey
//    //    San Leandro	California
//    //    Palm Bay	Florida
//    //    West Jordan	Utah
//    //    Cranston	Rhode Island
//    //    Lakewood	California
//    //    Carlsbad	California
//    //    Yuma	Arizona
//    //    Clifton	New Jersey
//    //    Newport Beach	California
//    //    Tuscaloosa	Alabama
//    //    Lewisville	Texas
//    //    Greeley	Colorado
//    //    Southfield	Michigan
//    //    Santa Maria	California
//    //    Buena Park	California
//    //    Ogden	Utah
//    //    Somerville	Massachusetts
//    //    Chico	California
//    //    Kalamazoo	Michigan
//    //    Albany	Georgia
//    //    Arlington Heights	Illinois
//    //    Lake Forest	California
//    //    Baldwin Park	California
//    //    Scranton	Pennsylvania
//    //    Redwood City	California
//    //    Schaumburg	Illinois
//    //    Danbury	Connecticut
//    //    Miramar	Florida
//    //    Largo	Florida
//    //    Deerfield Beach	Florida
//    //    Evanston	Illinois
//    //    St. Joseph	Missouri
//    //    Livermore	California
//    //    Las Cruces	New Mexico
//    //    Melbourne	Florida
//    //    Pawtucket	Rhode Island
//    //    Bellflower	California
//    //    Longview	Texas
//    //    Asheville	North Carolina
//    //    Napa	California
//    //    Wilmington	Delaware
//    //    Alameda	California
//    //    New Rochelle	New York
//    //    Longmont	Colorado
//    //    Lawrence	Massachusetts
//    //    Lake Charles	Louisiana
//    //    New Britain	Connecticut
//    //    Gulfport	Mississippi
//    //    Hillsboro	Oregon
//    //    Bethlehem	Pennsylvania
//    //    Bloomington	Indiana
//    //    Lee's Summit	Missouri
//    //    Murfreesboro	Tennessee
//    //    Muncie	Indiana
//    //    Mountain View	California
//    //    Champaign	Illinois
//    //    Appleton	Wisconsin
//    //    Kenner	Louisiana
//    //    Deltona	Florida
//    //    Chino	California
//    //    Lynwood	California
//    //    Clovis	California
//    //    East Orange	New Jersey
//    //    Wyoming	Michigan
//    //    Rochester Hills	Michigan
//    //    College Station	Texas
//    //    Upland	California
//    //    Waterloo	Iowa
//    //    Lorain	Ohio
//    //    Temecula	California
//    //    Edmond	Oklahoma
//    //    Mount Vernon	New York
//    //    Passaic	New Jersey
//    //    Bellingham	Washington
//    //    Tustin	California
//    //    Pontiac	Michigan
//    //    Gastonia	North Carolina
//    //    Brooklyn Park	Minnesota
//    //    Union City	California
//    //    Chino Hills	California
//    //    Union City	New Jersey
//    //    Lauderhill	Florida
//    //    Sparks	Nevada
//    //    Baytown	Texas
//    //    Palatine	Illinois
//    //    Medford	Oregon
//    //    Plymouth	Minnesota
//    //    Taylor	Michigan
//    //    Bryan	Texas
//    //    Springfield	Ohio
//    //    Jacksonville	North Carolina
//    //    Waukesha	Wisconsin
//    //    Bloomington	Illinois
//    //    Lynchburg	Virginia
//    //    Sugar Land	Texas
//    //    Merced	California
//    //    Walnut Creek	California
//    //    Victorville	California
//    //    Pleasanton	California
//    //    Portland	Maine
//    //    Suffolk	Virginia
//    //    Redlands	California
//    //    Daytona Beach	Florida
//    //    Eagan	Minnesota
//    //    Redondo Beach	California
//    //    Pico Rivera	California
//    //    Oshkosh	Wisconsin
//    //    Hoover	Alabama
//    //    Skokie	Illinois
//    //    Santa Fe	New Mexico
//    //    Hesperia	California
//    //    St. Clair Shores	Michigan
//    //    Iowa City	Iowa
//    //    Laguna Niguel	California
//    //    Milpitas	California
//    //    Greenville	North Carolina
//    //    Montebello	California
//    //    Eau Claire	Wisconsin
//    //    Bayonne	New Jersey
//    //    Schenectady	New York
//    //    Coon Rapids	Minnesota
//    //    Saginaw	Michigan
//    //    Marietta	Georgia
//    //    Lafayette	Indiana
//    //    Huntington Park	California
//    //    West Allis	Wisconsin
//    //    St. Charles	Missouri
//    //    Round Rock	Texas
//    //    Johns Creek	Georgia
//    //    South San Francisco	California
//    //    Hamilton	Ohio
//    //    North Little Rock	Arkansas
//    //    Boynton Beach	Florida
//    //    Victoria	Texas
//    //    Utica	New York
//    //    Janesville	Wisconsin
//    //    Delray Beach	Florida
//    //    Bristol	Connecticut
//    //    Burnsville	Minnesota
//    //    Monterey Park	California
//    //    Rapid City	South Dakota
//    //    Royal Oak	Michigan
//    //    Jackson	Tennessee
//    //    St. Cloud	Minnesota
//    //    North Miami	Florida
//    //    Anderson	Indiana
//    //    Terre Haute	Indiana
//    //    La Habra	California
//    //    Kennewick	Washington
//    //    Hemet	California
//    //    Fayetteville	Arkansas
//    //    Waltham	Massachusetts
//    //    Davis	California
//    //    Haverhill	Massachusetts
//    //    Yorba Linda	California
//    //    Layton	Utah
//    //    Rocky Mount	North Carolina
//    //    Harlingen	Texas
//    //    Taylorsville	Utah
//    //    Palo Alto	California
//    //    Lakewood	Washington
//    //    Dearborn Heights	Michigan
//    //    Council Bluffs	Iowa
//    //    Dothan	Alabama
//    //    Meriden	Connecticut
//    //    Encinitas	California
//    //    Tracy	California
//    //    Gardena	California
//    //    Missoula	Montana
//    //    Dubuque	Iowa
//    //    Kettering	Ohio
//    //    Port Arthur	Texas
//    //    Galveston	Texas
//    //    Camarillo	California
//    //    Lodi	California
//    //    Pittsburg	California
//    //    Great Falls	Montana
//    //    Des Plaines	Illinois
//    //    Bolingbrook	Illinois
//    //    Turlock	California
//    //    Lancaster	Pennsylvania
//    //    Greenville	South Carolina
//    //    Concord	North Carolina
//    //    Lakewood	Ohio
//    //    Bossier City	Louisiana
//    //    Diamond Bar	California
//    //    Malden	Massachusetts
//    //    Mount Prospect	Illinois
//    //    San Rafael	California
//    //    Taunton	Massachusetts
//    //    Pensacola	Florida
//    //    Elyria	Ohio
//    //    Johnson City	Tennessee
//    //    McKinney	Texas
//    //    North Richland Hills	Texas
//    //    Tamarac	Florida
//    //    San Marcos	California
//    //    Santa Cruz	California
//    //    Bismarck	North Dakota
//    //    Vineland	New Jersey
//    //    Jonesboro	Arkansas
//    //    Medford	Massachusetts
//    //    Wheaton	Illinois
//    //    Niagara Falls	New York
//    //    Auburn	Washington
//    //    Paramount	California
//    //    Eden Prairie	Minnesota
//    //    Oak Lawn	Illinois
//    //    Temple	Texas
//    //    Pine Bluff	Arkansas
//    //    Fountain Valley	California
//    //    Petaluma	California
//    //    La Mesa	California
//    //    Nampa	Idaho
//    //    Chicopee	Massachusetts
//    //    Apple Valley	California
//    //    National City	California
//    //    Midwest City	Oklahoma
//    //    Owensboro	Kentucky
//    //    Decatur	Alabama
//    //    Margate	Florida
//    //    Berwyn	Illinois
//    //    Florissant	Missouri
//    //    Rancho Cordova	California
//    //    Rosemead	California
//    //    Carmel	Indiana
//    //    Springfield	Oregon
//    //    Missouri City	Texas
//    //    Cheyenne	Wyoming
//    //    Battle Creek	Michigan
//    //    Charleston	West Virginia
//    //    White Plains	New York
//    //    Arcadia	California
//    //    Shoreline	Washington
//    //    Hempstead	New York
//    //    Frederick	Maryland
//    //    Flagstaff	Arizona
//    //    Santee	California
//    //    Monroe	Louisiana
//    //    Gaithersburg	Maryland
//    //    Folsom	California
//    //    Rio Rancho	New Mexico
//    //    Bend	Oregon
//    //    Cupertino	California
//    //    Elkhart	Indiana
//    //    Euclid	Ohio
//    //    Carson City	Nevada
//    //    Sarasota	Florida
//    //    Oak Park	Illinois
//    //    West Haven	Connecticut
//    //    Bowie	Maryland
//    //    Fort Myers	Florida
//    //    La Crosse	Wisconsin
//    //    Loveland	Colorado
//    //    Murrieta	California
//    //    Huntington	West Virginia
//    //    Flower Mound	Texas
//    //    Mansfield	Ohio
//    //    Middletown	Ohio
//    //    Cerritos	California
//    //    Pocatello	Idaho
//    //    Renton	Washington
//    //    St. Peters	Missouri
//    //    Orland Park	Illinois
//    //    Maple Grove	Minnesota
//    //    Minnetonka	Minnesota
//    //    Yuba City	California
//    //    Idaho Falls	Idaho
//    //    Ames	Iowa
//    //    O'Fallon	Missouri
//    //    Weston	Florida
//    //    Rock Hill	South Carolina
//    //    Sheboygan	Wisconsin
//    //    Milford	Connecticut
//    //    Biloxi	Mississippi
//    //    Cleveland Heights	Ohio
//    //    San Clemente	California
//    //    Manteca	California
//    //    Mentor	Ohio
//    //    Indio	California
//    //    St. George	Utah
//    //    Bradenton	Florida
//    //    Warner Robins	Georgia
//    //    Woodland	California
//    //    Casper	Wyoming
//    //    Hoffman Estates	Illinois
//    //    Downers Grove	Illinois
//    //    Bowling Green	Kentucky
//    //    Glendora	California
//    //    Corvallis	Oregon
//    //    Altoona	Pennsylvania
//    //    Cuyahoga Falls	Ohio
//    //    Grand Forks	North Dakota
//    //    Tinley Park	Illinois
//    //    Troy	New York
//    //    Kissimmee	Florida
//    //    Edinburg	Texas
//    //    Harrisburg	Pennsylvania
//    //    Mount Pleasant	South Carolina
//    //    East Providence	Rhode Island
//    //    Shawnee	Kansas
//    //    Blue Springs	Missouri
//    //    Peabody	Massachusetts
//    //    New Brunswick	New Jersey
//    //    Danville	Virginia
//    //    Poway	California
//    //    Warren	Ohio
//    //    Roseville	Michigan
//    //    Barnstable Town	Massachusetts
//    //    Colton	California
//    //    Chapel Hill	North Carolina
//    //    Springdale	Arkansas
//    //    Plainfield	New Jersey
//    //    Rockville	Maryland
//    //    Novato	California
//    //    Ocala	Florida
//    //    Novi	Michigan
//    //    Edina	Minnesota
//    //    Pharr	Texas
//    //    Revere	Massachusetts
//    //    Perth Amboy	New Jersey
//    //    Binghamton	New York
//    //    Bedford	Texas
//    //    West Des Moines	Iowa
//    //    Pinellas Park	Florida
//    //    Wauwatosa	Wisconsin
//    //    Rancho Santa Margarita	California
//    //    Mishawaka	Indiana
//    //    Woodbury	Minnesota
//    //    La Mirada	California
//    //    Covina	California
//    //    Enid	Oklahoma
//    //    Kokomo	Indiana
//    //    Chesterfield	Missouri
//    //    Placentia	California
//    //    Alpharetta	Georgia
//    //    Cypress	California
//    //    Port Orange	Florida
//    //    East Lansing	Michigan
//    //    Watsonville	California
//    //    Alexandria	Louisiana
//    //    Mission	Texas
//    //    Franklin	Tennessee
//    //    Auburn	Alabama
//    //    Newark	Ohio
//    //    Euless	Texas
//    //    Valdosta	Georgia
//    //    Hattiesburg	Mississippi
//    //    Pearland	Texas
//    //    West New York	New Jersey
//    //    Apple Valley	Minnesota
//    //    Porterville	California
//    //    Burlington	North Carolina
//    //    Tulare	California
//    //    League City	Texas
//    //    Salina	Kansas
//    //    Manhattan	Kansas
//    //    Pittsfield	Massachusetts
//    //    Middletown	Connecticut
//    //    Grand Junction	Colorado
//    //    Joplin	Missouri
//    //    Redmond	Washington
//    //    Normal	Illinois
//    //    Murray	Utah
//    //    Blaine	Minnesota
//    //    Kentwood	Michigan
//    //    Kingsport	Tennessee
//    //    Roswell	New Mexico
//    //    Rowlett	Texas
//    //    Allen	Texas
//    //    Wilson	North Carolina
//    //    Kirkland	Washington
//    //    Portage	Michigan
//    //    San Ramon	California
//    //    Highland	California
//    //    Azusa	California
//    //    Palm Desert	California
//    //    Smyrna	Georgia
//    //    Bellevue	Nebraska
//    //    San Luis Obispo	California
//    //    Coconut Creek	Florida
//    //    Bartlett	Tennessee
//    //    St. Louis Park	Minnesota
//    //    Bell Gardens	California
//    //    Moline	Illinois
//    //    Methuen	Massachusetts
//    //    Strongsville	Ohio
//    //    Freeport	New York
//    //    Madera	California
//    //    Conway	Arkansas
//    //    Lakeville	Minnesota
//    //    Grand Island	Nebraska
//    //    Woonsocket	Rhode Island
//    //    Buffalo Grove	Illinois
//    //    Glenview	Illinois
//    //    Olympia	Washington
//    //    Elmhurst	Illinois
//    //    Covington	Kentucky
//    //    Wilkes-Barre	Pennsylvania
//    //    Cathedral City	California
//    //    Palm Springs	California
//    //    Hackensack	New Jersey
//    //    Tigard	Oregon
//    //    Menifee	California
//    //    Coral Gables	Florida
//    //    Logan	Utah
//    //    Grapevine	Texas
//    //    Newark	California
//    //    Lombard	Illinois
//    //    Lake Havasu City	Arizona
//    //    Belleville	Illinois
//    //    Fond du Lac	Wisconsin
//    //    Oakland Park	Florida
//    //    Fairfield	Ohio
//    //    Hanford	California
//    //    Attleboro	Massachusetts
//    //    Hutchinson	Kansas
//    //    Midland	Michigan
//    //    Lima	Ohio
//    //    Danville	California
//    //    Texas City	Texas
//    //    North Miami Beach	Florida
//    //    Gilroy	California
//    //    Leominster	Massachusetts
//    //    Yucaipa	California
//    //    Greenville	Mississippi
//    //    Bountiful	Utah
//    //    Rohnert Park	California
//    //    Meridian	Mississippi
//    //    Altamonte Springs	Florida
//    //    Moore	Oklahoma
//    //    York	Pennsylvania
//    //    Lompoc	California
//    //    Rancho Palos Verdes	California
//    //    La Puente	California
//    //    Albany	Oregon
//    //    Hendersonville	Tennessee
//    //    Titusville	Florida
//    //    Concord	New Hampshire
//    //    Quincy	Illinois
//    //    Sumter	South Carolina
//    //    Jefferson City	Missouri
//    //    East Point	Georgia
//    //    Sayreville	New Jersey
//    //    Kearny	New Jersey
//    //    Carol Stream	Illinois
//    //    Littleton	Colorado
//    //    Salem	Massachusetts
//    //    Atlantic City	New Jersey
//    //    Harrisonburg	Virginia
//    //    Lenexa	Kansas
//    //    Fort Pierce	Florida
//    //    Goldsboro	North Carolina
//    //    San Bruno	California
//    //    Spartanburg	South Carolina
//    //    Charlottesville	Virginia
//    //    Westfield	Massachusetts
//    //    Muskegon	Michigan
//    //    Lincoln Park	Michigan
//    //    Aliso Viejo	California
//    //    Rogers	Arkansas
//    //    San Gabriel	California
//    //    Holyoke	Massachusetts
//    //    Jupiter	Florida
//    //    Blacksburg	Virginia
//    //    Burlington	Vermont
//    //    Beverly	Massachusetts
//    //    Delano	California
//    //    Rock Island	Illinois
//    //    Broomfield	Colorado
//    //    Edmonds	Washington
//    //    Linden	New Jersey
//    //    Columbus	Indiana
//    //    Stillwater	Oklahoma
//    //    Findlay	Ohio
//    //    DeKalb	Illinois
//    //    Sanford	Florida
//    //    Muskogee	Oklahoma
//    //    Haltom City	Texas
//    //    Richmond	Indiana
//    //    Lawrence	Indiana
//    //    Fishers	Indiana
//    //    Calumet City	Illinois
//    //    Fitchburg	Massachusetts
//    //    Richland	Washington
//    //    Campbell	California
//    //    Conroe	Texas
//    //    Culver City	California
//    //    Gadsden	Alabama
//    //    Wellington	Florida
//    //    Brookfield	Wisconsin
//    //    Hoboken	New Jersey
//    //    Wausau	Wisconsin
//    //    New Braunfels	Texas
//    //    North Lauderdale	Florida
//    //    Farmington	New Mexico
//    //    New Berlin	Wisconsin
//    //    Beavercreek	Ohio
//    //    State College	Pennsylvania
//    //    Pacifica	California
//    //    Crystal Lake	Illinois
//    //    Everett	Massachusetts
//    //    Hanover Park	Illinois
//    //    Huber Heights	Ohio
//    //    Shelton	Connecticut
//    //    El Centro	California
//    //    Urbana	Illinois
//    //    New Albany	Indiana
//    //    DeSoto	Texas
//    //    Sierra Vista	Arizona
//    //    Germantown	Tennessee
//    //    Park Ridge	Illinois
//    //    University City	Missouri
//    //    Hickory	North Carolina
//    //    Stanton	California
//    //    Cleveland	Tennessee
//    //    Woburn	Massachusetts
//    //    Kannapolis	North Carolina
//    //    Marion	Ohio
//    //    Avondale	Arizona
//    //    Rocklin	California
//    //    Bremerton	Washington
//    //    Monrovia	California
//    //    Chester	Pennsylvania
//    //    Bartlett	Illinois
//    //    Panama City	Florida
//    //    Hagerstown	Maryland
//    //    Greenwood	Indiana
//    //    Meridian	Idaho
//    //    Bay City	Michigan
//    //    Bell	California
//    //    Streamwood	Illinois
//    //    Marlborough	Massachusetts
//    //    Minot	North Dakota
//    //    Coppell	Texas
//    //    Ormond Beach	Florida
//    //    Addison	Illinois
//    //    San Marcos	Texas
//    //    Perris	California
//    //    Florence	Alabama
//    //    Hurst	Texas
//    //    Valley Stream	New York
//    //    Palm Beach Gardens	Florida
//    //    Wheeling	Illinois
//    //    Dunedin	Florida
//    //    Jackson	Michigan
//    //    Cedar Falls	Iowa
//    //    Norwich	Connecticut
//    //    Duncanville	Texas
//    //    Hot Springs	Arkansas
//    //    Annapolis	Maryland
//    //    North Chicago	Illinois
//    //    Martinez	California
//    //    West Hollywood	California
//    //    Beloit	Wisconsin
//    //    Lake Oswego	Oregon
//    //    Fort Lee	New Jersey
//    //    Lewiston	Maine
//    //    Lake Worth	Florida
//    //    Rome	Georgia
//    //    Brea	California
//    //    Lancaster	Ohio
//    //    Westerville	Ohio
//    //    Long Beach	New York
//    //    Leavenworth	Kansas
//    //    Cape Girardeau	Missouri
//    //    Greenfield	Wisconsin
//    //    Maplewood	Minnesota
//    //    Frisco	Texas
//    //    Torrington	Connecticut
//    //    Sherman	Texas
//    //    Dana Point	California
//    //    Alamogordo	New Mexico
//    //    Cottonwood Heights	Utah
//    //    Huntsville	Texas
//    //    Chelsea	Massachusetts
//    //    Holland	Michigan
//    //    San Dimas	California
//    //    Twin Falls	Idaho
//    //    Coeur d'Alene	Idaho
//    //    Manassas	Virginia
//    //    Rome	New York
//    //    Ceres	California
//    //    Texarkana	Texas
//    //    Hollister	California
//    //    Sammamish	Washington
//    //    Bartlesville	Oklahoma
//    //    Elk Grove Village	Illinois
//    //    Longview	Washington
//    //    Puyallup	Washington
//    //    Richfield	Minnesota
//    //    Danville	Illinois
//    //    Hallandale Beach	Florida
//    //    Prescott	Arizona
//    //    Tupelo	Mississippi
//    //    Manitowoc	Wisconsin
//    //    Morgan Hill	California
//    //    North Olmsted	Ohio
//    //    Claremont	California
//    //    Pasco	Washington
//    //    Eastpointe	Michigan
//    //    Manhattan Beach	California
//    //    Del Rio	Texas
//    //    Hilton Head Island	South Carolina
//    //    Bullhead City	Arizona
//    //    Montclair	California
//    //    Pekin	Illinois
//    //    Beverly Hills	California
//    //    San Juan Capistrano	California
//    //    Lynnwood	Washington
//    //    Butte-Silver Bow	Montana
//    //    Galesburg	Illinois
//    //    Roseville	Minnesota
//    //    Upper Arlington	Ohio
//    //    Portage	Indiana
//    //    Temple City	California
//    //    Petersburg	Virginia
//    //    Brunswick	Ohio
//    //    Northbrook	Illinois
//    //    Bethel Park	Pennsylvania
//    //    Lufkin	Texas
//    //    Parkersburg	West Virginia
//    //    Columbia	Tennessee
//    //    Roy	Utah
//    //    Palm Coast	Florida
//    //    North Tonawanda	New York
//    //    Seaside	California
//    //    Wildwood	Missouri
//    //    Pleasant Hill	California
//    //    Bonita Springs	Florida
//    //    Watertown	Massachusetts
//    //    Collierville	Tennessee
//    //    Michigan City	Indiana
//    //    Wheat Ridge	Colorado
//    //    Houma	Louisiana
//    //    Cedar Hill	Texas
//    //    Chicago Heights	Illinois
//    //    Oro Valley	Arizona
//    //    Menomonee Falls	Wisconsin
//    //    Mankato	Minnesota
//    //    Clovis	New Mexico
//    //    New Iberia	Louisiana
//    //    Gahanna	Ohio
//    //    Moorhead	Minnesota
//    //    Northglenn	Colorado
//    //    Stow	Ohio
//    //    Oak Park	Michigan
//    //    Keizer	Oregon
//    //    Surprise	Arizona
//    //    East Chicago	Indiana
//    //    Marion	Indiana
//    //    Port Huron	Michigan
//    //    Dover	Delaware
//    //    Reynoldsburg	Ohio
//    //    Apache Junction	Arizona
//    //    La Porte	Texas
//    //    West Sacramento	California
    }
    
    int randomIndex = arc4random() % [cities count];
    return [cities objectAtIndex: randomIndex];
}

-(NSString*) randomHometown
{
    NSMutableArray *cities = [[NSMutableArray alloc] init];
    NSMutableArray *friends = [person getFriends];
    
    for (int i=0; i<[friends count]; i++)
    {
        if ([[[friends objectAtIndex: i] getHometown] length] !=0)
        {
            [cities addObject: [[friends objectAtIndex: i] getHometown]];
        }
    }
    int randomIndex = arc4random() % [cities count];
    return [cities objectAtIndex: randomIndex];
}
    
@end