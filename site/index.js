//var mainurl = 'http://192.168.1.222/nstw-new/nstw/';
var mainurl = 'http://192.168.1.20/marketplace/';
//var mainurl = 'http://localhost/nstw/nstw/';

function doOnCurrentPageChanged(survey) {
 

    document
        .getElementById('surveyPrev')
        .style
        .display = !survey.isFirstPage
            ? "inline"
            : "none";
   /* document
        .getElementById('surveyNext')
        .style
        .display = !survey.isLastPage
            ? "inline"
            : "none";
    document
        .getElementById('surveyComplete')
        .style
        .display = survey.isLastPage
            ? "inline"
            : "none";
    */
           /* document
        .getElementById('surveyProgress')
        .innerText = "Page " + (
    survey.currentPageNo + 1) + " of " + survey.visiblePageCount + ".";
    if (document.getElementById('surveyPageNo')) 
        document
            .getElementById('surveyPageNo')
            .value = survey.currentPageNo;
*/

var f = survey.currentPageNo;
//alert(f);
    localStorage["curpage"] = survey.currentPageNo;
    var lpage = survey.isLastPage;
    if (lpage == true) {
        survey.completeLastPage();
    }    

    
    }

    function myNext() {
       
    }


Survey.defaultBootstrapCss.navigationButton = "btn btn-green";
Survey.defaultBootstrapCss.rating.item = "btn btn-default my-rating";
Survey.Survey.cssType = "bootstrap";

Survey.JsonObject.metaData.addProperty("checkbox", {name: "group:string", default: "g0"});

Survey.StylesManager.applyTheme("darkblue");





var myCss = {
    matrix: {
        root: "table table-striped"
    },
    navigationButton: "button btn-lg"
};



var json = {
    //showProgressBar: "top",
    goNextPageAutomatic: false,
    showNavigationButtons: false,

    pages: [
    
        {
            questions: [
      
                {
                    type: "html",
                    name: "info",
                    html: "<div style='position:absolute;top:20%;left:40%;background:#fff;padding:5px;'><img src='images/logos.png' alt=''></div><h3 id='ss'>www.oneSTore.ph</h3><h3 id='ee'>Evaluate Us To Win a Prize</h3><h3 id='rr'><a id='nextDestination' href='onclick=survey.nextPage();'>Go</a></h3>",
                },

        ]
    },
    
    
        {
            questions: [
                
                {
                    type: "text", name: "name", title: "Name (Optional) :", isRequired: false, "colCount": 2,
                },
            
         
                {
                    "type": "imagepicker",
                    "name": "gender",
                    "isRequired": true,
                    "title": "I am a :",
                    "choices": [
                        {
                            "value": "Male",
                            "imageLink": "images/male.png",
                        }, {
                            "value": "Female",
                            "imageLink": "images/female.png"
                        },
                    ]
                },

            ],

        },
    
    
    
    
        {
            questions: [
      
            
                {
                    "type": "imagepicker",
                    "name": "agebracket",
                    "isRequired": true,
                    "colCount": 5,
                    "title": "Age Bracket",
                    "choices": [
                        {
                            "value": "1",
                            "imageLink": "images/age-1.png"
                        }, {
                            "value": "2",
                            "imageLink": "images/age-2.png"
                        }, {
                            "value": "3",
                            "imageLink": "images/age-3.png"
                        }, {
                            "value": "4",
                            "imageLink": "images/age-4.png"
                        }, {
                            "value": "5",
                            "imageLink": "images/age-5.png"
                    },
                        
                        
                    ]
                },


            ]
        },

  {
            questions: [
      


                {
                    "type": "imagepicker",
                    "name": "organization",
                    "isRequired": true,
                    "colCount": 5,
                    "title": "Type of Organization",
                    "choices": [
                        {
                            "value": "1",
                            "imageLink": "images/academe.png"
                        }, {
                            "value": "2",
                            "imageLink": "images/goverment.png"
                        }, {
                            "value": "3",
                            "imageLink": "images/industry.png"
                        }, {
                            "value": "4",
                            "imageLink": "images/organization.png"
                        },
                            {
                            "value": "5",
                            "imageLink": "images/private.png"
                            },
                        
                    ]
                },



            ]
        },
  
  
  
        {
            questions: [
      
               /* {
                    type: "radiogroup",
                    name: "haveAttend",
                    title: "Is this your first time to attend the event (NSTW)?",
                    isRequired: true,
                    choices: [
                        "Yes", "No" 
                    ]
                    colCount: 0
                },
                */

                {
                    "type": "imagepicker",
                    "name": "haveAttend",
                    "isRequired": true,
                    "title": "Is this your first time to attend the event (NSTW)?",
                    "choices": [
                        {
                            "value": "Yes",
                            "imageLink": "images/Yes.png"
                        }, {
                            "value": "No",
                            "imageLink": "images/No.png"
                        },
                        
                    ]
                },



            ]

        },
    
    
        {
            questions: [

                {
                    "type": "imagepicker",
                    "name": "lastevent",
                    "isRequired": true,
                    "visibleIf": "{haveAttend} = 'No'",
                    "colCount": 5,
                    "title": "How was your experience of the last event? (NSTW 2017)",
                    "choices": [
                        {
                            "value": "1",
                            "imageLink": "images/rate-1.png"
                        }, {
                            "value": "2",
                            "imageLink": "images/rate-2.png"
                        }, {
                            "value": "3",
                            "imageLink": "images/rate-2-1.png"
                        }, {
                            "value": "4",
                            "imageLink": "images/rate-3.png"
                        }, {
                            "value": "5",
                            "imageLink": "images/rate-4.png"
                        },
                        
                    ],         
                },

            ]
        },
    
    
        {
        questions: [

                {
                    
                    "type": "imagepicker",
                    "name": "event",
                    "title": "How did you know about the NSTW 2018?",
                    "visibleIf": "{haveAttend} = 'Yes'or {haveAttend}='No",
                    "multiSelect": true,
                    "isRequired": true,
                    "colCount": 5,
                    "choices": [
                        {
                            "value": "1",
                            "imageLink": "images/tv.png"
                        }, {
                            "value": "2",
                            "imageLink": "images/radio.png"
                        }, {
                            "value": "3",
                            "imageLink": "images/newspaper.png"
                        }, {
                            "value": "4",
                            "imageLink": "images/network.png"
                        }, {
                            "value": "5",
                            "imageLink": "images/ads.png"
                        },{
                            "value": "6",
                            "imageLink": "images/wom.png"
                        },{
                            "value": "7",
                            "imageLink": "images/invitation.png"
                        },
                        
                    ],       

            },
        
        
            {
                type: "html",
                name: "info",
                "visibleIf": "{haveAttend} = 'Yes' or {haveAttend} = 'No'",
                html: "<div style='text-align:center;text-transform:uppercase;font-weight:200;font-size:2em;'>Multiple Selection Allowed</div>",
            },
        
            ]
        },


        {
            questions: [
                {
                    "type": "imagepicker",
                    "name": "marketplace",
                    "title": "How did you know about the Marketplace?",
                    "visibleIf": "{haveAttend} = 'Yes' or {haveAttend} = 'No'",
                    "isRequired": true,
                    "colCount": 5,
                    "multiSelect": true,
                    "choices": [
                        {
                            "value": "1",
                            "imageLink": "images/tv.png"
                        }, {
                            "value": "2",
                            "imageLink": "images/radio.png"
                        }, {
                            "value": "3",
                            "imageLink": "images/newspaper.png"
                        }, {
                            "value": "4",
                            "imageLink": "images/network.png"
                        }, {
                            "value": "5",
                            "imageLink": "images/ads.png"
                        },{
                            "value": "6",
                            "imageLink": "images/wom.png"
                        },{
                            "value": "7",
                            "imageLink": "images/invitation.png"
                        },
                        
                    ],  
                },

                {
                    type: "html",
                    name: "info",
                    "visibleIf": "{haveAttend} = 'Yes' or {haveAttend} = 'No'",
                    html: "<div style='text-align:center;text-transform:uppercase;font-weight:200;font-size:2em;'>Multiple Selection Allowed</div>",
                }
            ]
        },


        {
            questions: [
/*
                {
                    type: "radiogroup",
                    name: "havePurchased",
                    title: "Have you purchased anything from Marketplace?",
                    isRequired: true,
                    choices: [
                        "Yes", "No" 
                    ],
                    colCount: 0
                },
*/
                {
                    "type": "imagepicker",
                    "name": "havePurchased",
                    "isRequired": true,
                    "colCount": 4,
                    "title": "Have you purchased anything from Marketplace?",
                    "choices": [
                        {
                            "value": "Yes",
                            "imageLink": "images/Yes.png"
                        }, {
                            "value": "No",
                            "imageLink": "images/No.png"
                        },
                        
                    ]
                },

            ]
            
        },

        {
            questions: [
            
                {
                    "type": "imagepicker",
                    "name": "transaction",
                    "visibleIf": "{havePurchased} = 'Yes'",
                    "colCount": 5,
                    "isRequired": true,
                    "title": "How satisfied are you with our OneSTore Vendo machine mode of transaction? ",
                    "choices": [
                        {
                            "value": "1",
                            "imageLink": "images/rate-1.png"
                        }, {
                            "value": "2",
                            "imageLink": "images/rate-2.png"
                        }, {
                            "value": "3",
                            "imageLink": "images/rate-2-1.png"
                        }, {
                            "value": "4",
                            "imageLink": "images/rate-3.png"
                        }, {
                            "value": "5",
                            "imageLink": "images/rate-4.png"
                        },{
                            "value": "6",
                            "imageLink": "images/na.png"
                        },
                        
                    ],        
                },

        

/*
                {
                    type: "html",
                    name: "info",
                    html: "<div style='text-align:center;text-transform:uppercase;font-weight:200;font-size:2em;'>Skip if Not Applicable</div>",
                }
            */
            
            ]

        },

        {
            questions: [
            
                {
                    "type": "imagepicker",
                    "name": "transaction2",
                    "visibleIf": "{havePurchased} = 'Yes'",
                    "colCount": 5,
                    "isRequired": true,
                    "title": "How satisfied are you with our over-the-counter mode of transaction?",
                    "choices": [
                        {
                            "value": "1",
                            "imageLink": "images/rate-1.png"
                        }, {
                            "value": "2",
                            "imageLink": "images/rate-2.png"
                        }, {
                            "value": "3",
                            "imageLink": "images/rate-2-1.png"
                        }, {
                            "value": "4",
                            "imageLink": "images/rate-3.png"
                        }, {
                            "value": "5",
                            "imageLink": "images/rate-4.png"
                        },{
                            "value": "6",
                            "imageLink": "images/na.png"
                        },
                        
                    ],        
                },
/*
                {
                    type: "html",
                    name: "info",
                    html: "<div style='text-align:center;text-transform:uppercase;font-weight:200;font-size:2em;'>Skip if Not Applicable</div>",
                }
            
         */   
            ]

        },


        {
            questions: [


                {
                    "type": "imagepicker",
                    "name": "pricing",
                    "isRequired": true,
                    "colCount": 5,
                    "title": "How satisfied are you with the price vis-a-vis the product",
                    "visibleIf": "{havePurchased} = 'Yes'",
                    "choices": [
                        {
                            "value": "1",
                            "imageLink": "images/rate-1.png"
                        }, {
                            "value": "2",
                            "imageLink": "images/rate-2.png"
                        }, {
                            "value": "3",
                            "imageLink": "images/rate-2-1.png"
                        }, {
                            "value": "4",
                            "imageLink": "images/rate-3.png"
                        }, {
                            "value": "5",
                            "imageLink": "images/rate-4.png"
                        },
                    ],                  
                },


            ]
        },


        {
            questions: [

                
                {
                    "type": "imagepicker",
                    "name": "relationship",
                    "isRequired": true,
                    "title": "How satisfied are you with the level of customer service we provide?",
                    "visibleIf": "{havePurchased} = 'Yes'",
                    "colCount": 5,
                    "choices": [
                        {
                            "value": "1",
                            "imageLink": "images/rate-1.png"
                        }, {
                            "value": "2",
                            "imageLink": "images/rate-2.png"
                        }, {
                            "value": "3",
                            "imageLink": "images/rate-2-1.png"
                        }, {
                            "value": "4",
                            "imageLink": "images/rate-3.png"
                        }, {
                            "value": "5",
                            "imageLink": "images/rate-4.png"
                        },
                        
                    ],         
                },


            ]
        },



        {
            questions: [

                // No


                {
                    "type": "imagepicker",
                    "name": "overall",
                    "isRequired": true,
                    "visibleIf": "{havePurchased} = 'No' or {havePurchased}='Yes'",
                     "colCount": 5,
                    "title": "How will you rate your overall experience in the marketplace?",
                    "choices": [
                        {
                            "value": "1",
                            "imageLink": "images/rate-1.png"
                        }, {
                            "value": "2",
                            "imageLink": "images/rate-2.png"
                        }, {
                            "value": "3",
                            "imageLink": "images/rate-2-1.png"
                        }, {
                            "value": "4",
                            "imageLink": "images/rate-3.png"
                        }, {
                            "value": "5",
                            "imageLink": "images/rate-4.png"
                        },
                        
                        
                    ],        
                },
               

            ]

        },


 


        {
            questions: [


                

                {
                    "type": "imagepicker",
                    "name": "thumbs",
                    "isRequired": true,
                    "visibleIf": "{havePurchased} = 'No' or {havePurchased} = 'Yes'",
                    "title": "How likely will you recommend Marketplace to your family and friends?",
                    "choices": [
                        {
                            "value": "1",
                            "imageLink": "images/Like.png"
                        }, {
                            "value": "0",
                            "imageLink": "images/Dislike.png"
                        },
                    ]
                } ,



            ]

        },


        {
            questions: [


                

                {
                    "type": "imagepicker",
                    "name": "insights",
                    "isRequired": true,
                    "colCount": 1,
                    "title": "Your insights about the Marketplace :",
                    "multiSelect": true,
                    "visibleIf": "{havePurchased} = 'No' or {havePurchased} = 'Yes'",
                    "choices": [
                        {
                            "value": "1",
                            "imageLink": "images/c1.png"
                        }, {
                            "value": "2",
                            "imageLink": "images/c2.png"
                        }, {
                            "value": "3",
                            "imageLink": "images/c3.png"
                        }, {
                            "value": "4",
                            "imageLink": "images/c4.png"
                        }, {
                            "value": "5",
                            "imageLink": "images/c5.png"
                        },                    
                        
                    ],                  
                },

                {
                    type: "html",
                    name: "info",
                    "visibleIf": "{havePurchased} = 'No' or {havePurchased} = 'Yes'",
                    html: "<div style='position:absolute;top:5%;right:15%;font-size:28px;text-transform:uppercase;color:#ffffff;'>Multiple Selection Allowed</div>",
                },

            ]
            

        },


        {
            questions: [


                {
                    type: "comment",
                    name: "reactions",
                    "visibleIf": "{havePurchased} = 'No' or {havePurchased} = 'Yes'",
                    title: "What would you like to suggest to improve our services?",
                    value: "Type Suggestion here",
                },


            ]

        },
// FOR PRIZES
        {
            questions: [


               /* {
                    type: "text",
                    name: "winwin",
                    isRequired: true,
                    "visibleIf": "{havePurchased} = 'No' or {havePurchased} = 'Yes'",
                    title: "",
                    validators: [{type:"numeric", minValue: 1, maxValue: 18}],
                },
            */

                {
                    "type": "imagepicker",
                    "name": "winwin",
                    "isRequired": true,
                    "colCount": 5,
                    "title": "Please choose a number from [1-20] for a chance to win?",
                    "visibleIf": "{havePurchased} = 'No' or {havePurchased} = 'Yes'",
                    "choices": [
                        {
                            "value": "1",
                            "imageLink": "images/numbers/1.png"
                        }, {
                            "value": "2",
                            "imageLink": "images/numbers/2.png"
                        }, {
                            "value": "3",
                            "imageLink": "images/numbers/3.png"
                        }, {
                            "value": "4",
                            "imageLink": "images/numbers/4.png"
                        }, {
                            "value": "5",
                            "imageLink": "images/numbers/5.png"
                        }, {
                            "value": "6",
                            "imageLink": "images/numbers/6.png"
                        },  {
                            "value": "7",
                            "imageLink": "images/numbers/7.png"
                        },   {
                            "value": "8",
                            "imageLink": "images/numbers/8.png"
                        },   {
                            "value": "9",
                            "imageLink": "images/numbers/9.png"
                        },   {
                            "value": "10",
                            "imageLink": "images/numbers/10.png"
                        },   {
                            "value": "11",
                            "imageLink": "images/numbers/11.png"
                        },   {
                            "value": "12",
                            "imageLink": "images/numbers/12.png"
                        },   {
                            "value": "13",
                            "imageLink": "images/numbers/13.png"
                        },   {
                            "value": "14",
                            "imageLink": "images/numbers/14.png"
                        },   {
                            "value": "15",
                            "imageLink": "images/numbers/15.png"
                        },   {
                            "value": "16",
                            "imageLink": "images/numbers/16.png"
                        }, {
                            "value": "17",
                            "imageLink": "images/numbers/17.png"
                        }, {
                            "value": "18",
                            "imageLink": "images/numbers/18.png"
                        }, {
                            "value": "19",
                            "imageLink": "images/numbers/19.png"
                        }, {
                            "value": "20",
                            "imageLink": "images/numbers/20.png"
                        },
                        
                    ],                  
                },


            ]

        },


        {
            questions: [

                {
                    type: "html",
                    name: "info",
                    "visibleIf": "{havePurchased} = 'No' or {havePurchased} = 'Yes'",
                    html: "<a id='surveyComplete2' href='#' onclick='survey.completeLastPage();' class='ui-link' style='display: inline;'><img src='images/survey_button.png' alt=''></a>"

                },

            ]

        },
    
    ]
};

window.survey = new Survey.Model(json);
survey.showQuestionNumbers = 'off';
survey.onComplete.add(function (result) {

    localStorage["mdata"] =  JSON.stringify(result.data);
    var datas = localStorage["mdata"];
    var obj = JSON.parse(datas);
    var mywin = obj.winwin;
    var winwin = Math.floor(Math.random() * 18);
    $.ajax({
        type: "POST",
        url: mainurl + "insert_record.php",
        data: { jsondata: datas },
        dataType: "text",
        crossDomain: true,
        cache: false,
        beforeSend: function() {
            //$("#insert").val('Connecting...');
        },
        success: function (data) {
            if (data == 'success') {
                if (winwin == mywin || winwin==5  || winwin==8 || winwin==13 ||winwin==18) {
                    document.querySelector('#surveyResult').innerHTML = "<div style='text-align: center;padding-bottom: 15px;font-size:28px;'><h3 style='color:red;font-size:48px;'>You won a Prize</h3><br/>Redirecting in few seconds or Click <a href='index.html'>here</a></div>"; 
                    setTimeout(() => {
                        window.location.href  = 'index.html';
                    }, 20000);
                } else {
                    document.querySelector('#surveyResult').innerHTML = "<div style='text-align: center;padding-bottom: 15px;'>Redirecting in few seconds or Click <a href='index.html'>here</a></div>";  
                    setTimeout(() => {
                        window.location.href  = 'index.html';
                    }, 2500);
                }

        }else{
            alert('Error Saving');
        }
        }
    });
});
survey.data = {
    name: ' ',
    reactions: ' ',
};
$("#surveyElement").Survey({ model: survey, onCurrentPageChanged: doOnCurrentPageChanged});

$('body').on('click', '#surveyNext', function () {
    //var y = document.getElementById('surveyPageNo').value;
   // alert('tesrt');
    $('.wrapper').hide(0);
    $('#surveyElement').hide();
    $('.wrapper').removeClass('bg0');
    $('.wrapper').removeClass('bg1');
    $('.wrapper').removeClass('bg2');
    $('.wrapper').removeClass('bg3');
    $('.wrapper').removeClass('bg4');
    $('.wrapper').removeClass('bg5');
    $('.wrapper').removeClass('bg6');
    $('.wrapper').removeClass('bg7');
    $('.wrapper').removeClass('bg8');
    $('.wrapper').removeClass('bg9');   
    var nums = Math.floor(Math.random() * 9);
    var pg = localStorage["curpage"];
    if (pg == 1 || pg == 4 || pg == 7 || pg == 9) {
        nums = 0;
    }
    if (pg == 2 || pg == 10 || pg == 11) {
        nums = 1;
    }
    if (pg == 7 || pg == 8 || pg == 9) {
        nums = 4;
    }
    $('.wrapper').addClass('bg'+nums);
    $(".wrapper").animate({ width: 'toggle' }, 500);
    $('#surveyElement').show(500);
});
$('body').on('click', '#surveyPrev', function () {
    $('.wrapper').hide(0);
    $('#surveyElement').hide();
    $('.wrapper').removeClass('bg0');
    $('.wrapper').removeClass('bg1');
    $('.wrapper').removeClass('bg2');
    $('.wrapper').removeClass('bg3');
    $('.wrapper').removeClass('bg4');
    $('.wrapper').removeClass('bg5');
    $('.wrapper').removeClass('bg6');
    $('.wrapper').removeClass('bg7');
    $('.wrapper').removeClass('bg8');
    $('.wrapper').removeClass('bg9');   
    var pg = localStorage["curpage"];
    if (pg == 1 || pg == 4 || pg == 7 || pg == 9) {
        nums = 0;
    }
    if (pg == 2 || pg == 10 || pg == 11) {
        nums = 1;
    }
    if (pg == 7 || pg == 8 || pg == 9) {
        nums = 4;
    }
    var nums = Math.floor(Math.random() * 9);
    $('.wrapper').addClass('bg'+nums);
    $(".wrapper").animate({ width: 'toggle' },500);
    $('#surveyElement').show(500);
});

    
$(function(){
    // Bind the swipeleftHandler callback function to the swipe event on div.box
    $( ".wrapper" ).on( "swipeleft", swipeleftHandler );
   
    // Callback function references the event target and adds the 'swipeleft' class to it
    function swipeleftHandler( event ){
        //$(event.target).addClass("swipeleft");
   
        
        //$("#surveyComplete").click();
    }

     // Bind the swipeleftHandler callback function to the swipe event on div.box
     $( ".wrapper" ).on( "swiperight", swiperightHandler );
   
     // Callback function references the event target and adds the 'swipeleft' class to it
     function swiperightHandler( event ){
         //$(event.target).addClass("swipeleft");
            $("#surveyPrev").click();
     }
  });

  $('body').on('click', '#nextDestination', function () {
    $("#surveyNext").click();
  });   
  doOnCurrentPageChanged(survey);


