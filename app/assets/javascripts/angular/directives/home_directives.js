    TaskMasterApp.directive('addClassDirective',[function() {
        return {
            link: function(scope,elem,attr) { // This function is helping with navigation bar, it's making menu buttons big if you have small screen device, and small if you have big screen device
                elem.on('click',function() {
                    if (!($("a button").hasClass("btn-block m-t-10"))) {
                        $("a button").addClass("btn-block m-t-10").removeClass("m-r-20");

                    } else {
                        $("#collapse").on('hidden.bs.collapse', function() {
                            $("a button").removeClass("btn-block m-t-10").addClass("m-r-20");                  
                        });
                    }
                })
            },
            restrict: 'A'
        }
    }]);
    TaskMasterApp.directive('loginButton',function() {
        return {
            link: function(scope,elem,attr) {
                elem.on('click',function() {
                    
                })
            }
        }
    })
