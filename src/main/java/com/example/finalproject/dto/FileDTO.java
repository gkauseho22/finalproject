package com.example.finalproject.dto;

import com.example.finalproject.entity.File;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class FileDTO {

    private Long id;
    private String origFilename;
    private String filename;
    private String filePath;

    @Builder
    public FileDTO(Long id, String origFilename, String filename, String filePath) {
        this.id = id;
        this.origFilename = origFilename;
        this.filename = filename;
        this.filePath = filePath;
    }

    public File toEntity(){
        File build = File.builder()
                .id(id)
                .origFilename(origFilename)
                .filename(filename)
                .filePath(filePath)
                .build();
        return  build;

    }
}
