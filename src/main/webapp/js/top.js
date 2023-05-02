$(document).ready(function(){

	$('div.login').hide();

	$('div.buy_box').on('click',function(){
		$('div.login').fadeToggle();		
	});
		
	$('div.menu_buttn').on('click',function(){
		$('div.gnb').slideToggle(1000);		
	});
		
	$('div.gnb>ul>li.men3').on('click',function(){
		$('.temp_02').slideToggle();							
	});
	
	$('div.gnb>ul>li.men2').on('click',function(){
		$('.temp_03').slideToggle();							
	});
	
	$(window).resize(function(){		
		if($('body').width()>768){
			$("div.gnb").hide();			
		}});	
	});

function GettingHere(){
		location.href='GettingHere.html';
	}
	
function LineupPage(){
		location.href='LineupPage.html';
	}
	
function FAQ(){
		location.href='FAQ.html';
	}
	
function nosalive(){
		location.href='index.html';
	}
	
function ticket(){
		location.href='ticket.html';
	}
	
function sponsors(){
		location.href='sponsors.html';
	}
function atthefestival(){
		location.href='atthefestival.html';
	}

function schedule(){
		location.href='images/Lineup/allLineUp.jpg';
}