package com.justapad;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

@Controller
public class JustAPadController {

    @MessageMapping("/justapad")
    @SendTo("/topic/justapad")
    public Diff update(Diff diff) throws Exception {
        // need to threat conflicts
        return diff;
    }

}
