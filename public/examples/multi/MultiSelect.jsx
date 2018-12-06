// MultiSelect = require("react-selectize").MultiSelect

Form = createReactClass({
    
    // render :: a -> ReactElement
    render: function(){
        var self = this, 
            options = ["apple", "mango", "grapes", "melon", "strawberry"].map(function(fruit){
                return {label: fruit, value: fruit}
            });
        return <MultiSelect options = {options} placeholder = "Select fruits"></MultiSelect>
    }
    
});

render(<Form/>, mountNode)