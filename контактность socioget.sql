--██████████████████████████████████████████████████████████
--█─██─█────█─██─█───█────█─██─█───█─██─█────█────█───█─████
--█─█─██─██─█─██─██─██─██─█─█─███─██─██─█─██─█─██─██─██─████
--█──███─██─█────██─██────█──████─██────█─██─█─█████─██────█
--█─█─██─██─█─██─██─██─██─█─█─███─██─██─█─██─█─██─██─██─██─█
--█─██─█────█─██─██─██─██─█─██─██─██─██─█────█────██─██────█
--██████████████████████████████████████████████████████████


select distinct

	ph.id

from
	i_collect.dbo.phone as ph
	inner join
			(
				select
					cl.r_phone_id,
					cl.id,
					cl.r_debt_id

				from
					i_collect.dbo.contact_log as cl
					inner join i_collect.dbo.phone as p on cl.r_phone_id = p.id

				where
					p.dsc like 'поиск%07.12.2015' --'%Socioget%'
					and cl.result in
									(--обещания
											120239,120189,120190,120202,120200,120198,
											120201,120199,120197,120237,120228,120218,
											120236,120227,120217,120234,120225,120216,
											120232,120224,120215,120231,120222,120214,
											120188,120187,120186,320271,320272,320273,
											320321,320319,320317,320320,320318,320316,
											320312,320311,320310,320309,320308,320307,
											320302,320301,320300,320295,320294,320293,
											320292,320291,320290,320285,320284,320283,
											838,839,840,816,818,820,817,819,821,861,
											862,863,866,867,868,873,874,875,714,1,15,
											715,11,16,717,201,706,718,207,707
									)

					--and cl.result in 
					--				(
					--					120239,120190,120189,120191,120202,120200,
					--					120198,120196,120194,120201,120199,120197,
					--					120195,120193,120237,120228,120218,120240,
					--					120236,120227,120217,120213,120210,120207,
					--					120204,120234,120225,120216,120212,120209,
					--					120206,120203,120232,120224,120215,120241,
					--					120231,120222,120214,120211,120208,120205,
					--					120192,120188,120187,120186,120185,120184,
					--					120183,120182,320271,320272,320273,320274,
					--					320321,320319,320317,320315,320322,320320,
					--					320318,320316,320314,320313,320312,320311,
					--					320310,320309,320308,320307,320306,320305,
					--					320304,320303,320302,320301,320300,320299,
					--					320298,320297,320296,320295,320294,320293,
					--					320292,320291,320290,320289,320288,320287,
					--					320286,320285,320284,320283,320282,320281,
					--					320280,320279,838,839,840,841,842,816,818,
					--					820,822,824,827,830,817,819,821,823,828,825,
					--					831,829,826,832,861,862,863,864,865,866,
					--					867,868,870,869,871,872,873,874,875,876,878,
					--					877,879,881,880,882,320163,714,1,15,3,4,715,
					--					11,16,13,327,5,321,717,201,706,203,204,718,
					--					207,707,209,713,712,220,205
					--				)

					
			)cl		on cl.r_phone_id = ph.id

