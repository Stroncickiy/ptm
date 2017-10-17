package org.mechatronics.controller;

import org.mechatronics.dto.ActionResult;
import org.mechatronics.model.News;
import org.mechatronics.repositories.NewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class NewsController {
    @Autowired
    private NewsRepository newsRepository;

    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public String news() {
        return "news";
    }

    @ResponseBody
    @RequestMapping(path = "/admin/news/add", method = RequestMethod.POST)
    public ActionResult addNews(@RequestParam String title, @RequestParam String description,
            @RequestParam("image") MultipartFile image) {
        ActionResult actionResult = new ActionResult();
        News news = new News();
        news.setTitle(title);
        news.setDescription(description);
        try {
            news.setImage(image.getBytes());
            News savedNews = newsRepository.save(news);
            actionResult.setInfo("Direction added successfully");
            actionResult.setSuccess(savedNews != null && savedNews.getId() != null);
        } catch (Exception e) {
            actionResult.setInfo("Error during saving" + e.getMessage());
        }
        return actionResult;
    }

    @RequestMapping(path = "/images/news", method = RequestMethod.GET)
    public ResponseEntity<byte[]> getDirectionImage(@RequestParam("id") Long directionId) {
        return new ResponseEntity<>(newsRepository.findOne(directionId).getImage(), HttpStatus.OK);
    }
}
