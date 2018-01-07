class JavaVersionChecker {
    
    public static void main(String[] args) {
        String version = System.getProperty("java.version");
        System.out.println("Java version: " + version);
        if (Integer.parseInt(version.split("\\.")[1]) < 8) {
            System.out.println("Wrong java version is set: " + version + ". Installer requires at least java 1.8");
            System.exit(-1);
        }
    }
}
