package com.spring.application;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

@SpringBootApplication
public class AutoApplication {

	public static void main(String[] args) {
		SpringApplication.run(AutoApplication.class, args);
	}

	public static String getServerData() {
		String data = "" ;
		String line="";
		String l="";
		BufferedReader reader;
		try {

			reader = new BufferedReader(new FileReader(
					"/Users/venkataguruprasad/Documents/project/text.txt"));
			line= reader.readLine();
			while (line != null) {
				if(line.contains("successful"))
				{
					System.out.println(line);
					if(line!=null) {
						data += line;
						data += '\n';
					}

				}

				// read next line
				line = reader.readLine();

			}
			reader.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return data;
	}

}
