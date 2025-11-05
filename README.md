# 🔧 SysOps Automation at DataPulse Inc.

**🧠 Story: Managing Processes and Automating Logs**

You just joined **DataPulse Inc.**, a data analytics company that
monitors multiple background services and processes. Your supervisor has asked you to automate several tasks to ensure the system runs
efficiently and the logs are well-documented.

------------------------------------------------------------------------

## 📂 Filesystem Overview

    ls -R datapulse/
    datapulse/:
    scripts  services  logs

    datapulse/scripts:
    analyze.sh
    backup.sh

    datapulse/services:
    analytics.service
    backup.service

    datapulse/logs:
    (old logs here)

------------------------------------------------------------------------

## ⚙️ Phase 1: Process Management

Your first task is to manage running processes related to analytics and
backups.

1.  Run both scripts (`analyze.sh` and `backup.sh`) as **background
    jobs**.\
2.  Use `ps` or `top` to verify they're running and note down their
    **PIDs**.\
3.  Increase the priority of `analyze.sh` (give it more CPU time) using
    the **nice/renice** command.\
4.  Send the output of `ps -l` to a file called `process_report.txt`
    inside the `logs` folder.\
    *(Hint: Use redirection `>`)*\
5.  Stop the backup process temporarily, then bring it back to the
    foreground.

------------------------------------------------------------------------

## 🧭 Phase 2: Service Monitoring

Your company uses **systemd** to manage services.

1.  Use `systemctl status` to check whether `analytics.service` and
    `backup.service` are active.\
2.  Redirect both outputs (stdout + stderr) into a single file called
    `service_status.log` in the `logs` folder.\
    *(Hint: Use `&>`)*\
3.  Append today's date to the end of `service_status.log` using a
    redirection operator.\
4.  If any command fails, capture the error message into a file called
    `error.log`.

------------------------------------------------------------------------

## 🧩 Phase 3: Log Processing

Now it's time to organize and analyze your logs.

1.  Combine the contents of `process_report.txt` and
    `service_status.log` into a single file called `daily_summary.txt`
    using **pipes**.\
    *(Hint: `cat` and `tee` are useful here.)*\

2.  Use a **here-document** to write the following message into
    `report_header.txt`:

        <<EOF
        DataPulse Daily System Report
        Generated on: $(date)
        EOF

3.  Concatenate `report_header.txt` and `daily_summary.txt` into a new
    file called `final_report.txt`.\

4.  Count the number of lines in `final_report.txt` using a pipeline
    (`cat | wc -l`) and append the result to the same file.

------------------------------------------------------------------------

## 📝 Phase 4: Documentation

Inside the `logs` directory:

1.  Create a new text file called `command_history.txt`.\
2.  Paste all the commands you used to complete the previous phases.\
3.  Save the file using **nano** or **vim**.
