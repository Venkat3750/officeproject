package com.spring.application;

import com.spring.application.Bean.ServerStatus;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

@SpringBootApplication
public class AutoApplication {

	public static void main(String[] args) {
		SpringApplication.run(AutoApplication.class, args);
	}

		public static  ArrayList<ServerStatus> getStatus()
		{
			ArrayList<ServerStatus> serverStatusArrayList= new ArrayList<>();
			String line="";
			BufferedReader reader;
			try {
				reader = new BufferedReader(new FileReader(
						"/Users/venkataguruprasad/Documents/project/text.txt"));
				line = reader.readLine();
				while (line != null) {
					if (line.contains("successful")) {
						System.out.println(line);
						ServerStatus serverStatus=new ServerStatus();
						String[] parts = line.split("at");
						serverStatus.setStatus(parts[0]);
						serverStatus.setTime(parts[1]);
						serverStatusArrayList.add(serverStatus);

					}
					line = reader.readLine();
				}

				reader.close();
			}
			catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}



			return serverStatusArrayList;
		}
	public static  ArrayList<String> getTime()
	{
		ArrayList<String> status=new ArrayList<>();
		ArrayList<String> time=new ArrayList<>();
		String line="";
		BufferedReader reader;
		try {
			reader = new BufferedReader(new FileReader(
					"/Users/venkataguruprasad/Documents/project/text.txt"));
			line = reader.readLine();
			while (line != null) {
				if (line.contains("successful")) {
					System.out.println(line);

					String[] parts = line.split("at");
						status.add(parts[0]);
						time.add(parts[1]);


					line = reader.readLine();
				}
			}

			reader.close();
		}
		catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}



		return time;
	}


}
