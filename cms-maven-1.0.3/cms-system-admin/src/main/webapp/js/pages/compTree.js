/*
 *  Document   : compTree.js
 *  Author     : pixelcave
 *  Description: Custom javascript code used in Tree View Lists page
 */

var CompTree = function() {

    return {
        init: function() {
            /*
             *  Easy Tree plugin, for more examples you can check out http://www.easyjstree.com/
             */

            // Initialize default tree view list
           // $('#easy-tree1').easytree();

            // Initialize tree view list with extra options
            var easytree=$('#easy-tree2').easytree({
                disableIcons: true,
                enableDnd: true,
                //stateChanged: stateChanged
                 //toggled:toggled
                 opened:toggled
            });
            function toggled(event, nodes, node){
            	alert("触发");
            	alert(node.val());
            }
             function stateChanged(nodes, nodesJson) {
        //updateWhiteboard('StateChanged');
       // alert("helloo");
       //alert(nodes);
      var currentlySelected = $('#easy-tree2 :selected').val();
      alert(currentlySelected.val());
//       var node = easytree.getNode(currentlySelected);
//       alert(node);
    }
          
        }
    };
}();