
var CurrentUser = Backbone.Model.extend({
  url: '/places/user'

});  



var Story = Backbone.Model.extend({

  delete: function(){

   story_list_view.collection.remove(this);
   // this.delete()
  },

  edit: function(){
    form_view.edit(this)
  }

})

var StoryView = Backbone.View.extend({
  initialize: function(){
    // the button

    var self = this;
    this.listenTo( story_list_view.collection, "remove", function(model){
      model.destroy({
        url: "/stories/"+model.id
      });
    })
    window.current_user.fetch({
      success: function(){
        self.render();
      }
    });


  },
  template: function(attrs){
    var html_string = $('#story_template').html();
    var template_func = _.template(html_string)
    return template_func(attrs)
  },
  render: function(){
    var self = this;
    this.$el.html(this.template(this.model.attributes))

    console.log(current_user);
      console.log("-------------current user--------------");
      console.log(window.current_user.id);
      console.log("-------------author--------------------");
      console.log(this.model.get('user_id'));

     if (current_user.id === this.model.get('user_id') || current_user.id === 1 ) {

    // ========================================
    // ===== WARNING:  DANGER.JS  AHEAD =======
    // ========================================
    
    // super duper advanced button magic begins
      var model_proto = this.model.__proto__;
      _.each(model_proto, function(value, prop){
          // console.log(prop)
        

            if (prop !== "constructor") {
              var $button = $("<button>"+prop+"</button>");
              // need a callback
              // console.log(value)
              $button.on("click", function(e){
                self.model[prop]();
              })
              self.$el.append($button);
            }
          
        })
      }
    // super advanced magic ends
   }
})

var FormView = Backbone.View.extend({

  initialize: function(){
   
    // hides the update button
    this.$('.update_button').hide();

    
  },

  el: function(){
    return $('#new_story_form');
  },

  edit: function(model){
    var form_view = this;
    // visibly swaps the edit/create buttons
    this.$('.create_button').hide();
    this.$('.update_button').show();

    // inserts attributes into my form inputs
    this.$('#story_title_input').val(model.get("title"));
    this.$('#story_body_input').val(model.get("body"));
    this.$('#new_place_id').val(model.get("place_id"));
    this.$('#new_user_id').val(model.get("user_id"));
    

    // attach an on click callback function
    this.$('.update_button').on("click", function(e){
      // this is the callback function body
      e.preventDefault();

      // updates attributes of model
      model.set({
        "title": form_view.$('#story_title_input').val(),
        "body": form_view.$('#story_body_input').val(),
        "place_id": form_view.$('#new_place_id').val(),
        "user_id": form_view.$('#new_user_id').val(),
      
      })

      // makes ajax call to server to "save" changes
      model.save({}, {
        url: "/places/"+model.id
      })

      form_view.$('.create_button').show();
      form_view.$('.update_button').hide();

      // unbinds this "update" callback from the button
      $(this).off("click");


    })   
  },

  events: {
    "click .create_button" : "submitCallback",
    "click .update_button" : "updateCallback"
  },

  submitCallback: function(e){
    e.preventDefault();
    
    var array_of_input_data = this.$el.serializeArray();



    // console.log(array_of_input_data)
    story_list_view.collection.create({
      title: array_of_input_data[0].value,  // $('#name_input').val()
      body: array_of_input_data[1].value,
      place_id: array_of_input_data[2].value,
      user_id: array_of_input_data[3].value,
      
    });
    this.resetValues()
  },

  resetValues: function(){
    _.each( this.$('input') , function(input){
      $(input).val('');
    })
  }

})


var StoryCollection = Backbone.Collection.extend({
  
  initialize: function(){
    
  },

  url: "/stories",


  model: Story

})

var StoryListView = Backbone.View.extend({

  initialize: function(){
    


    var place_id = parseInt(location.pathname.replace('/places/', ''));
    window.place_id = place_id

    this.collection = new StoryCollection();
    
    this.listenTo(this.collection, "all", this.render );
    this.collection.fetch({data: {place_id: place_id}});
    this.views = [];

    // console.log("place_id", _.where(places, {id: place_id}))
    

  },

  el: function(){
    return $('#story_list');
  },

  render: function(place_id){
    

    var self = this;

    // first, remove old views
    _.each( this.views, function(view){
      view.remove();
    })

    // then, attach new ones sync'd to existing models
    _.each( this.collection.models , function(story){

        
        var story_view = new StoryView({
          model: story
        });
       
        // console.log(this, "this?");

        self.$el.append(story_view.$el);
        self.views.push(story_view);
      
    })
  }

})


$(function(){

  window.form_view = new FormView();
  
  window.story_list_view = new StoryListView();

  window.current_user = new CurrentUser();

  window.current_user.fetch();

  $.getJSON("/places.json", function(data){
    window.places = data;
    var height = $( window ).height();
    var storyCont = $( '#story-container' ).height();
    //alert( height + " " + storyCont )
    if ( height > storyCont ) {
        $('#story-container').css( 'padding-bottom', 1.5*(height - storyCont) ); 
    }
    
    // $("body").css({

    //   // background: "url("+_.where(places, {id: place_id})[0]["background_img"]+")",

    //   // height: document.body.clientHeight
    //   // height: "1000 px"
    // });
    

    // debugger
  })

    //   $("body").on("resize", function(e){

    
    //   $(e.target).css("height", "document.body.clientHeight");
    //  // $(e.target).css("height", "1000px");
    // // $(e.target).css("background-size", "cover");
    //   })


  
  // $('#main_container').append($('#heading_template').html())

 })