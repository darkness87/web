var ctx = document.getElementById('myChart').getContext('2d');
ctx.canvas.width = 1000; 
ctx.canvas.height = 300;

var mixedChart = new Chart(ctx, {
    type: 'bar',
    data: {
        datasets: [{
            label: '나의 현재 점수 위치',
            // backgroundColor: 'rgb(255, 99, 132)',
            borderColor: 'rgb(255, 99, 132)',
            data: [10, 15, 25, 30],
            
            fill: false,
            // Changes this dataset to become a line
            type: 'line'
        }, {
            label: '학과평균',
            backgroundColor: '#C3E5E9',
            // borderColor: 'rgb(255, 99, 132)',
            data: [20, 20, 30, 40],
            width: 100
        }],
        labels: ['2018년 1학기', '2018년 2학기', '2019년 1학기', '2019년 2학기']
    },
    options: {
        scales: {
            xAxes: [{
                barPercentage: 0.4
            }],
            yAxes: [{
                ticks: {
                    beginAtZero:true,
                    min: 0,
                    max: 50   
                }
            }]    
        }
    }
});
// ctx.canvas.parentNode.style.width = '1000px';
