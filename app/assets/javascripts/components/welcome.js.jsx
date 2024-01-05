
function SignupLoginButtons(props) {
    return (
        <div>
            <button type="button" className="btn btn-primary">Sign Up</button>
            <button type="button" className="btn btn-primary">Log In</button>
        </div>
    );
}
function Welcome(props) {
  return (
    <React.Fragment>
        <h1>Welcome to my forum!</h1>
        <SignupLoginButtons />
        <br />
        <a href="fposts/new">New Post</a>
    </React.Fragment>
  );
}
