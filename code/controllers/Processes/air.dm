/datum/controller/process/air/setup()
	name = "air"
	schedule_interval = 20 // every 2 seconds
	start_delay = 4

	if(!air_master)
		air_master = new
		air_master.Setup()

/datum/controller/process/air/doWork()
	if(!air_processing_killed)
		if(!air_master.Tick()) //Runtimed.
			air_master.failed_ticks++

			if(air_master.failed_ticks > 5)
//NOT ANYMORE BITCh!				to_world("<SPAN CLASS='danger'>RUNTIME'S IN ATMOS TICKER.  Killing air simulation!</SPAN>")

				log_error("### ZAS SHUTDOWN")

				message_admins("ZASALERT: Shutting down! status: [air_master.tick_progress]")
				log_admin("ZASALERT: Shutting down! status: [air_master.tick_progress]")

				air_processing_killed = TRUE
				air_master.failed_ticks = 0
