class RedirectLog {
    
    public static func redirectConsoleLogToDocumentFolder() {
        var paths: [AnyObject] = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        var documentsDirectory = paths[0] as? String ?? ""
        var errPath = "\(documentsDirectory)/error_log.txt"
        let debugPath: String = "\(documentsDirectory)/debug_log.txt"

        freopen(errPath.cStringUsingEncoding(NSASCIIStringEncoding) ?? [], "a+", stderr)
        freopen(debugPath.cStringUsingEncoding(NSASCIIStringEncoding) ?? [], "a+", stdout)
    }
}