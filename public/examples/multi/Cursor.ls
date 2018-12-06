create-react-class = require \create-react-class
Form = create-react-class do
    
    # render :: () -> ReactElement
    render: ->
        React.create-element MultiSelect,
            placeholder: "Select youtube channels"

            # set anchor to undefined, to lock the cursor at the start
            # anchor :: Item
            anchor: @state.anchor 

            options: @state.channels
            values: @state.selected-channels
            on-values-change: (selected-channels) !~> 
                
                # lock the cursor at the end
                @set-state do 
                    anchor: last selected-channels
                    selected-channels: selected-channels

    # get-initial-state :: () -> UIState
    get-initial-state: ->
        channels = ["Dude perfect", "In a nutshell", "Smarter everyday", "Vsauce", "Veratasium"]
            |> map ~> label: it, value: it
        anchor: last channels
        channels: channels
        selected-channels: [last channels]
                
render (React.create-element Form, null), mount-node