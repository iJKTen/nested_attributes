$(document).ready(function() {

    $("[data-add-new]").click(function(e){
        e.preventDefault();

        let $this = $(this);
        let newElemId = $this.attr("data-add-new");
        let attrName = $this.attr("data-regex");
        let $elem = $(newElemId);
        let $children = $elem.children().clone();
        $children.find("input, select, textarea").each(function(){
            let $this = $(this);
            $this.val("");
            $this.attr("name", function(){
                return attrName.replace("_x_", new Date().getTime())
            });
            console.log($this.attr("name"));
        });
        $elem.prepend($children);
    });
});
