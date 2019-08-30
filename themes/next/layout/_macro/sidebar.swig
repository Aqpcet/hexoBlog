{% macro render(display_toc) %}
  <div class="sidebar-toggle">
    <div class="sidebar-toggle-line-wrap">
      <span class="sidebar-toggle-line sidebar-toggle-line-first"></span>
      <span class="sidebar-toggle-line sidebar-toggle-line-middle"></span>
      <span class="sidebar-toggle-line sidebar-toggle-line-last"></span>
    </div>
  </div>

  <aside class="sidebar">
    <div class="sidebar-inner">

      {%- set display_toc = theme.toc.enable and display_toc %}
      {%- if display_toc %}
        {%- set next_toc_number = page.toc_number | default(theme.toc.number) %}
        {%- set next_toc_max_depth = page.toc_max_depth | default(theme.toc.max_depth) | default(6) %}
        {%- set toc = toc(page.content, { "class": "nav", list_number: next_toc_number, max_depth: next_toc_max_depth }) %}
        {%- set display_toc = toc.length > 1 and display_toc %}
      {%- endif %}

      <ul class="sidebar-nav motion-element">
        <li class="sidebar-nav-toc">
          {{ __('sidebar.toc') }}
        </li>
        <li class="sidebar-nav-overview">
          {{ __('sidebar.overview') }}
        </li>
      </ul>

      <!--noindex-->
      <div class="post-toc-wrap sidebar-panel">
        {%- if display_toc %}
          <div class="post-toc motion-element">{{ toc }}</div>
        {%- endif %}
      </div>
      <!--/noindex-->

      <div class="site-overview-wrap sidebar-panel">
        {{ partial('_partials/sidebar/site-overview.swig', {}, {cache: theme.cache.enable}) }}

        {{- next_inject('sidebar') }}
      </div>

      {%- if theme.back2top.enable and theme.back2top.sidebar %}
        <div class="back-to-top motion-element">
          <i class="fa fa-arrow-up"></i>
          <span>0%</span>
        </div>
      {%- endif %}


      {#
      <!-- Aplayer背景音乐 暂时没有https,先取消音乐-->
      <link rel="stylesheet" href="/dist/APlayer.min.css">
      <div id="aplayer"></div>
      <script type="text/javascript" src="/dist/APlayer.min.js"></script>
      <script type="text/javascript" src="/dist/music.js"></script>
      #}


      <!-- 地球仪访问地点显示 -->
      <script type="text/javascript" src="//rf.revolvermaps.com/0/0/6.js?i=5kqhmrx8uen&amp;m=7&amp;c=e63100&amp;cr1=ffffff&amp;f=arial&amp;l=0&amp;bv=90&amp;lx=-420&amp;ly=420&amp;hi=20&amp;he=7&amp;hc=a8ddff&amp;rs=80" async="async"></script>

     

    </div>
  </aside>
  <div id="sidebar-dimmer"></div>
{% endmacro %}
