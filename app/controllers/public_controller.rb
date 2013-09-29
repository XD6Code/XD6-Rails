class PublicController < ApplicationController
    before_action :get_posts, only: [:home, :news]
    before_action :get_projects, only: [:home]
    before_action :get_updates, only: [:home]
    before_action :get_upcoming, only: [:home]

    def home

    end

    def about

    end

    def news

    end

    def contact

    end

    private
        def get_posts
            @posts = [{:id => 1, :title => "Some Title", :time => Time.now, :content => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur adipiscing sodales libero quis auctor. Phasellus non placerat orci. Donec ac dolor dignissim dui suscipit pellentesque quis non erat. Nunc vitae placerat sapien. Ut iaculis volutpat dignissim. Donec a nisi augue."},
            {:id => 2, :title => "", :time => Time.now + 2.week, :content => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur adipiscing sodales libero quis auctor. Phasellus non placerat orci. Donec ac dolor dignissim dui suscipit pellentesque quis non erat. Nunc vitae placerat sapien. Ut iaculis volutpat dignissim. Donec a nisi augue."}]
        end
        def get_projects
            @projects = [{:id => 1, :title => "Project #1", :links => [{:href => "#", :title => "Demo"},{:href => "#", :title => "Documentation"},{:href => "#", :title => "Source"}], :content => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum suscipit interdum. Nunc non pulvinar ipsum. Ut ac mollis eros, vel tristique urna. Ut nisi dui, blandit sit amet facilisis vel, volutpat at lectus. Cras blandit leo at leo adipiscing cursus. Nunc hendrerit fringilla augue, ut adipiscing diam tempus vitae. Nulla facilisi. Donec magna velit, euismod at sapien gravida, euismod tincidunt nibh. Cras condimentum nisi vitae lacus lobortis elementum. Maecenas pretium mollis urna, at eleifend urna scelerisque id. Aliquam erat volutpat. Cras molestie enim quis interdum condimentum. Nam varius velit sed tellus pellentesque, quis viverra risus ultrices."},
                        {:id => 2, :title => "Project #2", :links => [{:href => "#", :title => "Demo"},{:href => "#", :title => "Documentation"},{:href => "#", :title => "Source"}], :content => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum suscipit interdum. Nunc non pulvinar ipsum. Ut ac mollis eros, vel tristique urna. Ut nisi dui, blandit sit amet facilisis vel, volutpat at lectus. Cras blandit leo at leo adipiscing cursus. Nunc hendrerit fringilla augue, ut adipiscing diam tempus vitae. Nulla facilisi. Donec magna velit, euismod at sapien gravida, euismod tincidunt nibh. Cras condimentum nisi vitae lacus lobortis elementum. Maecenas pretium mollis urna, at eleifend urna scelerisque id. Aliquam erat volutpat. Cras molestie enim quis interdum condimentum. Nam varius velit sed tellus pellentesque, quis viverra risus ultrices."}]

        end
        def get_updates
            @updates = [{:id => 1, :project => "Project #1", :percentage => "50%"},{:id => 2, :project => "Project #2", :percentage => "30%"}]
        end
        def get_upcoming
            @upcoming_projects = [{:id => 1, :project => "Project #1", :percentage => "20%"},{:id => 2, :project => "Project #2", :percentage => "90%"}]
        end
end