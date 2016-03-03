package com.justapad;

public class Diff {

    public Part[] patch;

    static class Part {
        public int count;
        public String value;
        public boolean removed;
        public boolean added;
    }
}
