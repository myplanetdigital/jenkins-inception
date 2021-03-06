module Hub
  class GitHubAPI
    def create_webhook(project, hook_data)
      url = "https://%s/repos/%s/%s/hooks" %
        [api_host(project.host), project.owner, project.name]
      res = post(url, hook_data)
      res.error! unless res.success?
    end

    def force_auth
      url = "https://api.github.com/user"
      res = post(url)
    end
  end
end
