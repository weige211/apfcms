/*
 *  Document   : readyDashboard.js
 *  Author     : pixelcave
 *  Description: Custom javascript code used in Dashboard page
 */

var ReadyDashboard = function() {

    return {
        init: function() {
            /* With CountTo, Check out examples and documentation at https://github.com/mhuggins/jquery-countTo */
            $('[data-toggle="counter"]').each(function(){
                var $this = $(this);

                $this.countTo({
                    speed: 1000,
                    refreshInterval: 25,
                    onComplete: function() {
                        if($this.data('after')) {
                            $this.html($this.html() + $this.data('after'));
                        }
                    }
                });
            });

            /* Mini Line Charts with jquery.sparkline plugin, for more examples you can check out http://omnipotent.net/jquery.sparkline/#s-about */
            var widgetChartLineOptions = {
                type: 'line',
                width: '200px',
                height: '109px',
                tooltipOffsetX: -25,
                tooltipOffsetY: 20,
                lineColor: '#9bdfe9',
                fillColor: '#9bdfe9',
                spotColor: '#555555',
                minSpotColor: '#555555',
                maxSpotColor: '#555555',
                highlightSpotColor: '#555555',
                highlightLineColor: '#555555',
                spotRadius: 3,
                tooltipPrefix: '',
                tooltipSuffix: ' 访问量'//,
                //tooltipFormat: '{{prefix}}{{y}}{{suffix}}'
            };
            $('#widget-dashchart-sales').sparkline('html', widgetChartLineOptions);

            /*
             * Flot Charts Jquery plugin is used for charts
             *
             * For more examples or getting extra plugins you can check http://www.flotcharts.org/
             * Plugins included in this template: pie, resize, stack, time
             */

            // Get the element where we will attach the chart
            var chartClassicDash    = $('#chart-classic-dash');

            // Data for the chart
            var dataEarnings        = [[1, 1900], [2, 2300], [3, 3200], [4, 2500], [5, 4200], [6, 3100], [7, 3600], [8, 2500], [9, 4600], [10, 3700], [11, 4200], [12, 5200]];
            var dataSales           = [[1, 850], [2, 750], [3, 1500], [4, 900], [5, 1500], [6, 1150], [7, 1500], [8, 900], [9, 1800], [10, 1700], [11, 1900], [12, 2550]];
            var dataTickets         = [[1, 130], [2, 330], [3, 220], [4, 350], [5, 150], [6, 275], [7, 280], [8, 380], [9, 120], [10, 330], [11, 190], [12, 410]];

            var dataMonths          = [[1, '一月'], [2, '二月'], [3, '三月'], [4, '四月'], [5, '五月'], [6, '六月'], [7, '七月'], [8, '八月'], [9, '九月'], [10, '十月'], [11, '十一月'], [12, '十二月']];

            // Classic Chart
            $.plot(chartClassicDash,
                [
                    {
                        label: '文章数量',
                        data: dataEarnings,
                        lines: {show: true, fill: true, fillColor: {colors: [{opacity: .6}, {opacity: .6}]}},
                        points: {show: true, radius: 5}
                    },
                    {
                        label: '访问量',
                        data: dataSales,
                        lines: {show: true, fill: true, fillColor: {colors: [{opacity: .6}, {opacity: .6}]}},
                        points: {show: true, radius: 5}
                    },
                    {
                        label: '用户数',
                        data: dataTickets,
                        lines: {show: true, fill: true, fillColor: {colors: [{opacity: .6}, {opacity: .6}]}},
                        points: {show: true, radius: 5}
                    }
                ],
                {
                    colors: ['#5ccdde', '#454e59', '#ffffff'],
                    legend: {show: true, position: 'nw', backgroundOpacity: 0},
                    grid: {borderWidth: 0, hoverable: true, clickable: true},
                    yaxis: {show: false, tickColor: '#f5f5f5', ticks: 3},
                    xaxis: {ticks: dataMonths, tickColor: '#f9f9f9'}
                }
            );

            // Creating and attaching a tooltip to the classic chart
            var previousPoint = null, ttlabel = null;
            chartClassicDash.bind('plothover', function(event, pos, item) {

                if (item) {
                    if (previousPoint !== item.dataIndex) {
                        previousPoint = item.dataIndex;

                        $('#chart-tooltip').remove();
                        var x = item.datapoint[0], y = item.datapoint[1];

                        if (item.seriesIndex === 0) {
                            ttlabel = '<strong>' + y + '</strong>';
                        } else if (item.seriesIndex === 1) {
                            ttlabel = '<strong>' + y + '</strong>';
                        } else {
                            ttlabel = '<strong>' + y + '</strong>';
                        }

                        $('<div id="chart-tooltip" class="chart-tooltip">' + ttlabel + '</div>')
                            .css({top: item.pageY - 45, left: item.pageX + 5}).appendTo("body").show();
                    }
                }
                else {
                    $('#chart-tooltip').remove();
                    previousPoint = null;
                }
            });
        }
    };
}();