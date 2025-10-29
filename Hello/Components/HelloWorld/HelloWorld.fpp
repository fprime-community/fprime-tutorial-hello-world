module Hello {
    @ Hello World Tutorial Component
    active component HelloWorld {

        # One async command/port is required for active components
        
        @ Command to issue greeting with maximum length of 20 characters
        async command SAY_HELLO(
            greeting: string size 20 @< Greeting to repeat in the Hello event
        )

        @ Greeting event with maximum greeting length of 20 characters
        event Hello(
            greeting: string size 20 @< Greeting supplied from the SAY_HELLO command
        ) severity activity high format "I say: {}"

        @ A count of the number of greetings issued
        telemetry GreetingCount: U32



        ###############################################################################
        # Standard AC Ports: Required for Channels, Events, Commands, and Parameters  #
        ###############################################################################
        @ Port for requesting the current time
        time get port timeCaller

        @ Port for sending command registrations
        command reg port cmdRegOut

        @ Port for receiving commands
        command recv port cmdIn

        @ Port for sending command responses
        command resp port cmdResponseOut

        @ Port for sending textual representation of events
        text event port logTextOut

        @ Port for sending events to downlink
        event port logOut

        @ Port for sending telemetry channels to downlink
        telemetry port tlmOut

        @ Port to return the value of a parameter
        param get port prmGetOut

        @Port to set the value of a parameter
        param set port prmSetOut

    }
}