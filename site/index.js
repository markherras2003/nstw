
    /*document
        .getElementById('surveyPrev')
        .style
        .display = !survey.isFirstPage
            ? "inline"
            : "none";
    document
        .getElementById('surveyNext')
        .style
        .display = !survey.isFirstPage
            ? "none"
            : "none";
    document
        .getElementById('surveyNext')
        .style
        .display = !survey.isLastPage
                ? "inline"
                : "none";           
    document
        .getElementById('surveyComplete')
        .style
        .display = !survey.isLastPage
            ? "inline"
            : "none";
    document
        .getElementById('surveyProgress')
        .innerText = "Page " + (
    survey.currentPageNo + 1) + " of " + survey.visiblePageCount + ".";
    if (document.getElementById('surveyPageNo')) 
        document
            .getElementById('surveyPageNo')
            .value = survey.currentPageNo;
    */
   // alert('test');

    



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
    goNextPageAutomatic: true,
    showNavigationButtons: false,
    pages: [
    
        {
            questions: [
            
                {
                    type: "html",
                    name: "info",
                    html: "<div id='firstpage' class='testing'></div>"
                },      
            
                
                {
                    type: "text", name: "name", title: "Name (Optional) :", isRequired: false, "colCount": 2,
                },
            
         
                {
                    "type": "imagepicker",
                    "name": "gender",
                    "isRequired": true,
                    "title": "I am a :",
                    "colCount": 4,
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
                    type: "html",
                    name: "info",
                    html: "<div id='secondpage' class='testing2'></div>"
                },


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
                    type: "html",
                    name: "info",
                    html: "<div id='thirdpage' class='testing'></div>"
                },


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
      

                {
                    type: "html",
                    name: "info",
                    html: "<div id='fourthpage' class='testing2'></div>"
                },


                {
                    type: "radiogroup",
                    name: "haveAttend",
                    title: "Is this your first time to attend the event (NSTW)?",
                    isRequired: true,
                    choices: [
                        "Yes", "No" 
                    ],
                    colCount: 0
                },

                {
                    "type": "imagepicker",
                    "name": "lastevent",
                    "isRequired": true,
                    "visibleIf": "{haveAttend} = 'No'",
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


                {
                    
                    "type": "imagepicker",
                    "name": "event",
                    "title": "How did you know about the NSTW 2018?",
                    //"visibleIf": "{haveAttend} = 'No' or {haveAttend} = 'Yes'",
                    "visibleIf": "{haveAttend} = 'Yes'",
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



            ]
        },

      
        {
            questions: [
      

                {
                    type: "html",
                    name: "info",
                    html: "'<div class='clear:both;'></div><div id='fifthpage' class='testing2'></div>",
                },

            
            
                {
                    
                    "type": "imagepicker",
                    "name": "event",
                    "title": "How did you know about the NSTW 2018?",
                    //"visibleIf": "{haveAttend} = 'No' or {haveAttend} = 'Yes'",
                    "visibleIf": "{haveAttend} = 'No'",
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
                    "type": "imagepicker",
                    "name": "marketplace",
                    "title": "How did you know about the Marketplace?",
                    "visibleIf": "{haveAttend} = 'Yes'",
                    "isRequired": true,
                    "colCount": 4,
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
            

            ]
        },


        {
            questions: [
      

                {
                    type: "html",
                    name: "info",
                    html: "'<div class='clear:both;'><div id='sixthpage' class='testing3'></div>",
                },

                {
                    "type": "imagepicker",
                    "name": "marketplace",
                    "title": "How did you know about the Marketplace?",
                    "visibleIf": "{haveAttend} = 'No'",
                    "isRequired": true,
                    "colCount": 4,
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
                    type: "radiogroup",
                    name: "havePurchased",
                    title: "Have you purchased anything from Marketplace?",
                    "visibleIf": "{haveAttend} = 'Yes'",
                    isRequired: true,
                    choices: [
                        "Yes", "No" 
                    ],
                    colCount: 0
                },

            

              

            ]
        },
  
  
    
    ]
};

window.survey = new Survey.Model(json);

survey.onComplete.add(function(result) {
    document.querySelector('#surveyResult').innerHTML = "<div style='text-align: center;padding-bottom: 15px;'>Redirecting in <span id='time'>5</span> seconds!</div>";
   // document.querySelector('#surveyResult2').innerHTML = "<div style='text-align: center;padding-bottom: 15px;'>Redirecting in <span id='time'>5</span> seconds!</div>";
    //localStorage["mdata"] =  JSON.stringify(result.data);
    //document.querySelector('#surveyResult').innerHTML = localStorage["mdata"]; 
    var datas = localStorage["mdata"];
    $.ajax({
        type: "POST",
        url: "http://localhost/nstw/insert_record.php",
        data: { jsondata: datas },
        
        dataType: "text",
        crossDomain: true,
        cache: false,
        beforeSend: function() {
            //$("#insert").val('Connecting...');
        },
        success: function (data) {
            alert(data);
            setTimeout(() => {
                //window.location.href  = 'index.html';
            }, 5000);
        }
    });
});

$("#surveyElement").Survey({ model: survey});



//doOnCurrentPageChanged(survey);

//, onCurrentPageChanged: doOnCurrentPageChanged
//$("#surveyElement2").Survey({ model: survey.currentPageNo = 1});
/*
$('body').on('click', '.next-btn', function() {
    $('.question-container').removeClass('slideInFromLeft');
    $('.question-container').addClass('slideInFromRight');
    console.log("You clicked NEXT");
  });
  $('body').on('click', '.prev-btn', function() {
    $('.question-container').addClass('slideInFromLeft');
    $('.question-container').removeClass('slideInFromRight');
    console.log("You clicked PREVIOUS");
});
*/