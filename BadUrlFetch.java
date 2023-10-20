package com.ripple.service.auth_proxy;

import java.io.*;
import java.net.*;
import java.util.*;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.client.methods.HttpGet;

public class BadUrlFetch {
	private static final String HTTP_FETCH_URL = "http://api.covid19api.com/summary";
	private static final String HTTPS_FETCH_URL = "https://api.covid19api.com/summary";

	// sast should complain about hard-coded password
	private static final String RAW = "abcd1234";
	private static final String ENC = Base64.getEncoder().encodeToString(RAW.getBytes());

	public void fetchUsingHttpURLConnection() throws IOException {
		URL url = new URL(HTTP_FETCH_URL); // sast should complain about lack of TLS
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Authorization", "Basic " + ENC); // sast should complain about using Basic Auth
		conn.connect();
		System.out.println(conn.getResponseCode());
	}

	public void fetchUsingHttpsURLConnection() throws IOException {
		URL url = new URL(HTTPS_FETCH_URL);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.connect();
		System.out.println(conn.getResponseCode());
	}

	public void fetchUsingHttpComponents() throws IOException {
		HttpGet httpGet = new HttpGet(HTTP_FETCH_URL); // sast should complain about lack of TLS
		httpGet.setHeader("Authorization", "Basic " + ENC); // sast should complain about using Basic Auth
		HttpClients.createDefault().execute(httpGet);
	}

	public void fetchUsingHttpsComponents() throws IOException {
		HttpGet httpGet = new HttpGet(HTTPS_FETCH_URL);
		HttpClients.createDefault().execute(httpGet);
	}
}
