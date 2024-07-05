import Foundation

public struct Data {
    
    var n = 0.0
    
    var top10 = ["A"]
    
    var selected = 0
    
    var weights = [5.5, 5,5, 5.5, 5.5, 5.5, 5.5, 5.5, 5.5, 5.5, 5.5, 5.5]
    
    let messages = ["The city of New York City is located in the state of New York. 8,405,837 people call this place home, and it is known for its Statue of Liberty, Wall Street, and Times Square!",
                    "The city of Los Angeles is located in the state of California. 3,884,307 people call this place home, and it is known for its Hollywood Sign, Walk of Fame, and Santa Monica Pier!",
                    "The city of Chicago is located in the state of Illinois. 2,718,782 people call this place home, and it is known for its Willis Tower, 'The Bean', and deep-dish pizza!",
                    "The city of Houston is located in the state of Texas. 2,195,914 people call this place home, and it is known for its Johnson Space Center, The Galleria, and its various museums!",
                    "The city of Philadelphia is located in the state of Pennsylvania. 1,553,165 people call this place home, and it is known for its Independence Hall, Benjamin Franklin Parkway, and cheesesteaks!",
                    "The city of Phoenix is the capital of the state of Arizona. 1,513,367 people call this place home, and it is known for its Camelback Mountain, Chase Tower, and Native American heritage!",
                    "The city of San Antonio is located in the state of Texas. 1,409,019 people call this place home, and it is known for its Alamo, San Fernando Cathedral, and Spanish heritage!",
                    "The city of San Diego is located in the state of California. 1,355,896 people call this place home, and it is known for its various beaches, Balboa Park, and San Diego Zoo!",
                    "The city of Dallas is located in the state of Texas. 1,257,676 people call this place home, and it is known for its Dealey Plaza, Reunion Tower, and Pioneer Plaza!",
                    "The city of San Jose is located in the state of California. 998,537 people call this place home, and it is known for its Silicon Valley, Santana Row, and educational institutions!",
                    "The city of Austin is the capital of the state of Texas. 885,400 people call this place home, and it is known for its Texas State Capital, South Congress Avenue, and music festivals!",
                    "The city of Indianapolis is the capital of the state of Indiana. 843,393 people call this place home, and it is known for its Indianapolis Motor Speedway, Monument Circle, and cultural districts!",
                    "The city of Jacksonville is located in the state of Florida. 842583 people call this place home, and it is known for its Jacksonville Beach, Mayport Naval Station, and St. Johns River!",
                    "The city of San Francisco is located in the state of California. 837,442 people call this place home, and it is known for its Golden Gate Bridge, Alcatraz Island, and Fisherman's Wharf!",
                    "The city of Columbus is the capital of the state of Ohio. 822,553 people call this place home, and it is known for its Ohio State University, German Village, and North Market!",
                    "The city of Charlotte is located in the state of North Carolina. 792,862 people call this place home, and it is known for its Bank of America Stadium, NASCAR Hall of Fame, and Discovery Place!",
                    "The city of Fort Worth is located in the state of Texas. 792,727 people call this place home, and it is known for its Western culture, stockyards, and Sundance Square!",
                    "The city of Detroit is located in the state of Michigan. 688,701 people call this place home, and it is known for its Motown music, automobile industry, and Detroit Institute of Arts!",
                    "The city of El Paso is located in the state of Texas. 674,433 people call this place home, and it is known for its Franklin Mountains State Park, El Paso Mission Trail, and Wyler Aerial Tramway!",
                    "The city of Memphis is located in the state of Tennessee. 653,450 people call this place home, and it is known for its Beale Street, National Civil Rights Museum, and Sun Studio!",
                    "The city of Seattle is located in the state of Washington. 652,405 people call this place home, and it is known for its Space Needle, Pike Place Market, and Chihuly Glass Gardens!",
                    "The city of Denver is the capital of the state of Colorado. 649,495 people call this place home, and it is known for its skiing hills, Red Rocks Amphitheatre, and Denver Art Museum!",
                    "The city of Washington D.C. is the capital of the United States of America. 646,449 people call this place home, and it is known for its National Mall, Smithsonian Institution, and White House!",
                    "The city of Boston is the capital of the state of Massachusetts. 645,966 people call this place home, and it is known for its Freedom Trail, Harvard University, and Boston Commons!",
                    "The city of Nashville is the capital of the state of Tennessee. 634,464 people call this place home, and it is known for its Country Music Hall of Fame, Grand Ole Opry, and Ryman Auditorium!",
                    "The city of Baltimore is located in the state of Maryland. 622,104 people call this place home, and it is known for its Inner Harbor, Fort McHenry National Monument, and National Aquarium!",
                    "The city of Oklahoma City is the capital of the state of Oklahoma. 610,613 people call this place home, and it is known for its Bricktown, National Cowboy Museum, and National Western Heritage Museum!",
                    "The city of Louisville is located in the state of Kentucky. 609,893 people call this place home, and it is known for its Churchill Downs, bourbon distilleries, and Slugger Museum!",
                    "The city of Portland is located in the state of Oregon. 609,456 people call this place home, and it is known for its International Rose Test Garden, Portland Japanese Garden, and Pittock Mansion!",
                    "The city of Las Vegas is located in the state of Nevada. 603,488 people call this place home, and it is known for its casinos, high-end dining, and never-ending performances!",
                    "The city of Milwaukee is located in the state of Wisconsin. 599,164 people call this place home, and it is known for its breweries, Harley-Davidon Museum, and Milwaukee Art Museum!",
                    "The city of Albuquerque is located in the state of New Mexico. 556,495 people call this place home, and it is known for its Old Town, International Balloon Fiesta, and Petroglyph National Monument!",
                    "The city of Tucson is located in the state of Arizona. 526,116 people call this place home, and it is known for its Saguaro National Park, Sonora Desert Museum, and Tucson Botanical Gardens!",
                    "The city of Fresno is located in the state of California. 509,924 people call this place home, and it is known for its Yosemite National Park, Tower District, and Fresno Art Museum!",
    ]
    
    let names = ["New York", "Los Angeles", "Chicago", "Houston", "Philadelphia", "Phoenix", "San Antonio", "San Diego", "Dallas", "San Jose", "Austin", "Indianapolis", "Jacksonville", "San Francisco", "Columbus", "Charlotte", "Fort Worth", "Detroit", "El Paso", "Memphis", "Seattle", "Denver", "Washington", "Boston", "Nashville", "Baltimore", "Oklahoma City", "Louisville", "Portland", "Las Vegas", "Milwaukee", "Albuquerque", "Tucson", "Fresno"]
    
    let population = [8405837, 3884307, 2718782, 2195914, 1553165, 1513367, 1409019, 1355896, 1257676, 998537, 885400, 843393, 842583, 837442, 822553, 792862, 792727, 688701, 674433, 653450, 652405, 649495, 646449, 645966, 634464, 622104, 610613, 609893, 609456, 603488, 599164, 556495, 526116, 509924]
    
    let crime = [[0.07571, 46.67143], [-0.96143, 59.72381], [0.99714, 57.68095], [0.32571, 60.40476], [-0.47571, 65.42857], [0.68571, 48.70476], [-0.27714, 50.88571], [-0.24, 39.96667], [-0.20429, 50.27143], [-1.21857, 56.47619], [-0.39857, 40.20952], [0.65143, 52.54286], [-1.23143, 67.72381], [2.57857, 35.82381], [0.29286, 42.51905], [0.33429, 42.5619], [0.0, 45.0], [-0.23714, 74.98571], [0.0, 32.0], [0.03571, 74.47143], [0.97857, 40.79048], [0.51, 38.66667], [0.47571, 55.90476], [-0.37, 39.46667], [0.0, 47.8], [1.61857, 61.02381], [0.0, 52.5], [-1.20571, 64.99524], [1.04714, 41.81429], [-1.32857, 65.80952], [0.61857, 61.82381], [2.67714, 49.24762], [0.15571, 50.1381], [-0.03857, 60.94286]]
    
    let housing = [[37.12, 498.07], [26.92, 727.27], [11.54, 303.84], [23.05, 275.4], [15.53, 283.28], [38.26, 359.11], [24.51, 264.16], [59.1, 744.1], [30.44, 299.79], [85.8, 1481.6], [36.92, 414.37], [21.92, 235.12], [33.45, 289.95], [17.5, 1207.5], [15.87, 251.37], [31.66, 311.31], [30.44, 299.79], [2.23, 232.88], [17.55, 183.65], [16.51, 227.76], [36.48, 633.03], [49.32, 527.52], [28.61, 497.56], [28.55, 591.15], [31.49, 312.24], [10.8, 339.45], [18.64, 176.99], [13.59, 217.89], [37.2, 478.0], [37.06, 350.86], [17.12, 298.12], [30.54, 257.29], [33.32, 282.72], [26.8, 330.8]]
    
    let income = [[-705.0, 69407.0], [1477.0, 67418.0], [2382.5, 61811.0], [1524.5, 52450.0], [2712.5, 47474.0], [3752.0, 60931.0], [586.0, 53751.0], [3767.5, 85507.0], [1331.5, 55332.0], [5242.0, 115893.0], [2064.5, 75413.0], [4409.0, 49661.0], [823.0, 56975.0], [-1016.5, 123859.0], [542.0, 57118.0], [3693.0, 63483.0], [1439.5, 65356.0], [1087.5, 33965.0], [1349.5, 48542.0], [261.5, 43794.0], [4147.5, 102486.0], [2992.0, 75646.0], [-1089.0, 92266.0], [132.5, 79018.0], [697.5, 63462.0], [2237.5, 50177.0], [1861.0, 55492.0], [1164.5, 54853.0], [1368.0, 76321.0], [516.5, 58713.0], [1222.5, 44192.0], [1472.5, 55567.0], [2970.5, 44365.0], [4044.5, 53161.0]]
    
    let taxes = [0.0, 0.151, 0.189, 0.459, 0.333, 0.403, 0.459, 0.151, 0.459, 0.151, 0.459, 0.415, 0.428, 0.151, 0.371, 0.377, 0.459, 0.459, 0.459, 0.522, 0.327, 0.39, 0.245, 0.277, 0.522, 0.289, 0.434, 0.396, 0.321, 0.396, 0.314, 0.358, 0.403, 0.151]
    
    let appreciation = [0.66, 0.373, 0.356, 0.678, 0.45, 0.916, 0.731, 0.67, 0.816, 0.52, 0.894, 0.742, 0.897, 0.204, 0.525, 0.842, 0.816, 0.105, 0.737, 0.592, 0.512, 0.822, 0.496, 0.423, 0.807, 0.266, 0.801, 0.513, 0.672, 0.862, 0.464, 0.938, 1.0, 0.685]
    
    let walkability = [0.989, 0.775, 0.865, 0.528, 0.843, 0.461, 0.416, 0.596, 0.517, 0.573, 0.472, 0.348, 0.292, 1.0, 0.461, 0.292, 0.393, 0.573, 0.393, 0.449, 0.831, 0.685, 0.865, 0.933, 0.326, 0.719, 0.382, 0.382, 0.753, 0.472, 0.697, 0.483, 0.483, 0.528]
    
    let public_transportation = [1.0, 0.596, 0.73, 0.404, 0.753, 0.404, 0.348, 0.416, 0.438, 0.449, 0.393, 0.281, 0.236, 0.865, 0.337, 0.303, 0.247, 0.404, 0.247, 0.315, 0.674, 0.506, 0.775, 0.809, 0.247, 0.596, 0.191, 0.303, 0.551, 0.404, 0.551, 0.326, 0.393, 0.371]
    
    let climate_change = [0.765, 0.765, 0.894, 0.36, 0.959, 0.503, 0.36, 0.765, 0.36, 0.765, 0.36, 0.861, 0.305, 0.765, 0.814, 0.594, 0.36, 1.0, 0.36, 0.66, 0.937, 0.947, 0.742, 0.905, 0.66, 0.814, 0.485, 0.569, 0.765, 0.562, 0.926, 0.613, 0.503, 0.765]
    
    let restaurants = [0.31, 0.474, 0.388, 0.365, 0.405, 0.294, 0.191, 0.313, 0.379, 0.247, 0.257, 0.239, 0.22, 0.811, 0.242, 0.312, 0.481, 0.615, 0.129, 0.221, 0.691, 0.501, 1.0, 0.84, 0.353, 0.473, 0.244, 0.217, 0.451, 0.446, 0.26, 0.165, 0.172, 0.202]
    
    let schools = [0.88, 0.2, 0.6, 0.24, 0.82, 0.0, 0.24, 0.2, 0.44, 0.2, 0.24, 0.54, 0.16, 0.2, 0.64, 0.14, 0.24, 0.42, 0.24, 0.18, 0.74, 0.84, 0.5, 0.9, 0.18, 0.76, 0.12, 0.4, 0.52, 0.04, 0.62, 0.06, 0.0, 0.2]
    
    let college = [0.852, 0.643, 0.825, 0.643, 0.774, 0.7, 0.679, 0.797, 0.698, 0.964, 0.992, 0.69, 0.875, 0.964, 0.686, 0.749, 0.698, 0.747, 0.515, 0.679, 0.852, 0.945, 1.0, 0.894, 0.779, 0.663, 0.673, 0.605, 0.726, 0.51, 0.652, 0.641, 0.559, 0.464]
    
}
