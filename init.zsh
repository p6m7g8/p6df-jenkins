######################################################################
#<
#
# Function: p6df::modules::jenkins::version()
#
#>
######################################################################
p6df::modules::jenkins::version() { echo "0.0.1" }

######################################################################
#<
#
# Function: p6df::modules::jenkins::deps()
#
#>
######################################################################
p6df::modules::jenkins::deps() { ModuleDeps=() }

######################################################################
#<
#
# Function: p6df::modules::jenkins::langs()
#
#>
######################################################################
p6df::modules::jenkins::langs() {

    p6df::modules::jenkins::cli::get
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::init()
#
#>
######################################################################
p6df::modules::jenkins::init() {

    JENKINS_HOST=$P6_JENKINS_HOST

    alias p6jl=p6_jenkins_jobs_list
    alias p6jg=p6_jenkins_job_get
    alias p6jc=p6_jenkins_job_create
    alias p6ju=p6_jenkins_jobs_update
}

######################################################################
#<
#
# Function: p6df::prompt::jenkins::line()
#
#>
######################################################################
p6df::prompt::jenkins::line() {

    p6_jenkins_prompt_info
}

######################################################################
#<
#
# Function: p6_jenkins_prompt_info()
#
#  Returns:
#	str - str
#
#>
######################################################################
p6_jenkins_prompt_info() {

    local str

    if ! p6_string_blank "$JENKINS_URL"; then
        str="jenkins: $JENKINS_URL ($JENKINS_USER_ID)"
    fi

    if p6_string_blank "$str"; then
        p6_return_void
    else
        p6_return_str "$str"
    fi
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::cli::get()
#
#>
######################################################################
p6df::modules::jenkins::cli::get() {

    mkdir -p $P6_DFZ_SRC_DIR/p6m7g8/p6df-jenkins/libexec/
    curl -o $P6_DFZ_SRC_DIR/p6m7g8/p6df-jenkins/libexec/jenkins-cli.jar http://$JENKINS_HOST/jnlpJars/jenkins-cli.jar
}

######################################################################
#<
#
# Function: p6_jenkins_cli_wrapper()
#
#>
######################################################################
p6_jenkins_cli_wrapper() {

    java -jar $P6_DFZ_SRC_DIR/p6m7g8/p6df-jenkins/libexec/jenkins-cli.jar -webSocket "$@"
}

######################################################################
#<
#
# Function: p6_jenkins_jobs_list()
#
#>
######################################################################
p6_jenkins_jobs_list() {

    p6_jenkins_cli_wrapper list-jobs
}

######################################################################
#<
#
# Function: p6_jenkins_job_get(job_name)
#
#  Args:
#	job_name - 
#
#>
######################################################################
p6_jenkins_job_get() {
    local job_name="$1"

    p6_jenkins_cli_wrapper get-job $job_name
}

######################################################################
#<
#
# Function: p6_jenkins_job_build(job_name)
#
#  Args:
#	job_name - 
#
#>
######################################################################
p6_jenkins_job_build() {
    local job_name="$1"

    p6_jenkins_cli_wrapper build $job_name
}

######################################################################
#<
#
# Function: p6_jenkins_job_tail(job_name)
#
#  Args:
#	job_name - 
#
#>
######################################################################
p6_jenkins_job_tail() {
    local job_name="$1"

    p6_jenkins_cli_wrapper console $job_name -f
}