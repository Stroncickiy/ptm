package org.mechatronics.controller;

import org.mechatronics.dto.ActionResult;
import org.mechatronics.model.Direction;
import org.mechatronics.repositories.DirectionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.websocket.server.PathParam;

@Controller
public class DirectionController {
    @Autowired
    private DirectionRepository directionRepository;

    @ResponseBody
    @RequestMapping(path = "/admin/directions/add", method = RequestMethod.POST)
    public ActionResult addDirection(@RequestParam String title, @RequestParam String description,
            @RequestParam("image") MultipartFile image) {
        ActionResult actionResult = new ActionResult();
        Direction direction = new Direction();
        direction.setTitle(title);
        direction.setDescription(description);
        try {
            direction.setImage(image.getBytes());
            Direction savedDirection = directionRepository.save(direction);
            actionResult.setInfo("Direction added successfully");
            actionResult.setSuccess(savedDirection != null && savedDirection.getId() != null);
        } catch (Exception e) {
            actionResult.setInfo("Error during saving" + e.getMessage());
        }
        return actionResult;
    }

    @RequestMapping(path = "/images/direction", method = RequestMethod.GET)
    public ResponseEntity<byte[]> getDirectionImage(@RequestParam("id") Long directionId) {
        return new ResponseEntity<>(directionRepository.findOne(directionId).getImage(),
                HttpStatus.OK);
    }



}
