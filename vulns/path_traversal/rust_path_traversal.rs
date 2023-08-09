// This is rust testcode not a script with a shebang

#![feature(proc_macro_hygiene, decl_macro)]
#[macro_use] extern crate rocket;

use rocket::response::content::Html;
use rocket::response::NamedFile;
use rocket_contrib::json::Json;
use std::path::PathBuf;
use std::path::Path;
use tokio::fs::File;
use rocket::http::{CookieJar, Cookie};
use rocket::request::{self, Request, FromRequest};


#[get("/")]
fn index() -> &'static str {
    "Hello, world!"
}

#[get("/path?<file>")]
fn path(file: String) -> Option<NamedFile> {
    let path = "static/".to_owned() + &file;
    // ruleid: rust-rocket-path-traversal
    let f1 = NamedFile::open(Path::new(&path)).ok();
    // ruleid: rust-rocket-path-traversal
    let f2 = rocket::fs::NamedFile::open(&path).await?;
    // ruleid: rust-rocket-path-traversal
    let f3 = File::open(&path).await?;
    // ruleid: rust-rocket-path-traversal
    let f4 = std::fs::File::create(&path)?;
    // ruleid: rust-rocket-path-traversal
    let f5 = std::fs::File::open(&path)?;
    // ruleid: rust-rocket-path-traversal
    let f6 = std::fs::read_dir(&path);
    // ruleid: rust-rocket-path-traversal
    let f8 = tokio::fs::read_dir(&path);

    // ruleid: rust-rocket-path-traversal
    let p2 = Path::new(file)
    // ruleid: rust-rocket-path-traversal
    let f7 = NamedFile::open(Path::new("static/").join(p2)).ok()
}

#[get("/")]
fn index(cookies: &CookieJar<'_>) -> Template {

    let cookie = cookies.get("cookie-name");
    let value = cookie.unwrap().value();

    let path = "static/".to_owned() + &value;
    // ruleid: rust-rocket-path-traversal
    let f1 = NamedFile::open(Path::new(&path)).ok();
}

#[get("/message")]
fn message<'a>(jar: &'a CookieJar<'_>) -> Option<&'a str> {

    let cookie = jar.get("cookie-name");
    let value = cookie.unwrap().value();

    let path = "static/".to_owned() + &value;
    // ruleid: rust-rocket-path-traversal
    let f1 = NamedFile::open(Path::new(&path)).ok();
}

#[get("/message")]
fn message<'r>(jar: &'r CookieJar<'_>) -> Option<&'r str> {

    let cookie = jar.get("cookie-name");
    let value = cookie.unwrap().value();

    let path = "static/".to_owned() + &value;
    // ruleid: rust-rocket-path-traversal
    let f1 = NamedFile::open(Path::new(&path)).ok();
}

#[get("/path-secure/<file..>")]
fn path2(file: PathBuf) -> Option<NamedFile> {
    // ok: rust-rocket-path-traversal
    NamedFile::open(Path::new("static/").join(file)).ok()
}

#[get("/path-also-secure?<file>")]
fn path3(file: PathBuf) -> Option<NamedFile> {
    // ok: rust-rocket-path-traversal
    NamedFile::open(Path::new("static/").join(file)).ok()
}

#[rocket::async_trait]
impl<'r> FromRequest<'r> for SecFetchMetadata {
    type Error = ();

    async fn from_request(request: &'r Request<'_>) -> request::Outcome<Self, ()> {
        let value = request.headers().get_one("headername");
        // ruleid: rust-rocket-path-traversal
        let f = NamedFile::open(Path::new("static/").join(value)).ok();

        let c = request.cookies().get("name").unwrap().value();
        // ruleid: rust-rocket-path-traversal
        let f2 = NamedFile::open(Path::new("static/").join(c)).ok();

    }
}

#[rocket::async_trait]
impl<'r> FromRequest<'r> for MyDataType {
    type Error = ();

    async fn from_request(request: &'p Request<'_>) -> request::Outcome<Self, ()> {
        let value = request.headers().get_one("headername");
        // ruleid: rust-rocket-path-traversal
        let f = NamedFile::open(Path::new("static/").join(value)).ok();

        let c = request.cookies().get("name").unwrap().value();
        // ruleid: rust-rocket-path-traversal
        let f2 = NamedFile::open(Path::new("static/").join(c)).ok();

    }
}

fn main() {
    rocket::ignite()
        .mount("/",
              routes!
              [
                index,
                xss,
                xss2,
                path,
                path2
              ]
        )
        .launch();
}
