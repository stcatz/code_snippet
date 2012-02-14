      def stat
        stats = {}
        stats[:pid], stats[:comm], stats[:state], stats[:ppid], stats[:pgrp],
        stats[:session], stats[:tty_nr], stats[:tpgid], stats[:flags],
        stats[:minflt], stats[:cminflt], stats[:majflt], stats[:cmajflt],
        stats[:utime], stats[:stime], stats[:cutime], stats[:cstime],
        stats[:priority], stats[:nice], _, stats[:itrealvalue],
        stats[:starttime], stats[:vsize], stats[:rss], stats[:rlim],
        stats[:startcode], stats[:endcode], stats[:startstack], stats[:kstkesp],
        stats[:kstkeip], stats[:signal], stats[:blocked], stats[:sigignore],
        stats[:sigcatch], stats[:wchan], stats[:nswap], stats[:cnswap],
        stats[:exit_signal], stats[:processor], stats[:rt_priority],
        stats[:policy] = File.read("/proc/#{@pid}/stat").scan(/\(.*?\)|\w+/)
        stats
      end
