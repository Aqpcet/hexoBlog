<script type="text/javascript">
/* 鼠标特效 */
var a_idx = 0;
jQuery(document).ready(function($) {
    $("body").click(function(e) {
        var a = new Array("(*￣3￣)╭ 富强","(*￣3￣)╭民主","(*￣3￣)╭文明","(*￣3￣)╭和谐","(*￣3￣)╭自由","(*￣3￣)╭平等","(*￣3￣)╭公正","(*￣3￣)╭法治","(*￣3￣)╭爱国",
		"(*￣3￣)╭敬业","(*￣3￣)╭诚信","(*￣3￣)╭友善");
        var $i = $("<span></span>").text(a[a_idx]);
        a_idx = (a_idx + 1) % a.length;
        var x = e.pageX,
        y = e.pageY;
        $i.css({
            "z-index": 999999999999999999999999999999999999999999999999999999999999999999999,
            "top": y - 20,
            "left": x,
            "position": "absolute",
            "font-weight": "bold",
            "color": "rgb("+~~(255*Math.random())+","+~~(255*Math.random())+","+~~(255*Math.random())+")"
        });
        $("body").append($i);
        $i.animate({
            "top": y - 180,
            "opacity": 0
        },
        1500,
        function() {
            $i.remove();
        });
    });
});
</script>