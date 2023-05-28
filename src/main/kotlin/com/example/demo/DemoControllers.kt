package com.example.demo

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping

@RestController
@RequestMapping("/api/health")
class DemoController() {

  @GetMapping("")
  fun health(): String {
    return "OK from com.example.demo";
  }
}
